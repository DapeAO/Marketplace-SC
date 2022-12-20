#![no_std]

elrond_wasm::imports!();
elrond_wasm::derive_imports!();

#[derive(TypeAbi, NestedEncode, NestedDecode, TopEncode, TopDecode, PartialEq)]
pub enum Status {
    Submitted,
    Completed,
    Deleted
}

#[derive(TypeAbi, TopEncode, TopDecode)]
pub struct Offer<M: ManagedTypeApi> {
    pub id: u64,
    pub nft_holder: ManagedAddress<M>,
    pub amount: BigUint<M>,
    pub token_id: EgldOrEsdtTokenIdentifier<M>,
    pub nonce: u64,
    pub status: Status
}

#[elrond_wasm::contract]
pub trait Marketplace {

   #[init]
   fn init(&self) -> SCResult<()> {
       self.offers_count().set_if_empty(&1u64);
       Ok(())
   }

   // only-owner

   #[only_owner]
   #[endpoint(withdrawBalance)]
   fn withdraw_balance(&self) {
       let caller = self.blockchain().get_caller();
       let sc_balance = self.blockchain().get_sc_balance(&EgldOrEsdtTokenIdentifier::egld(), 0);
       
       self.send().direct_egld(
           &caller,
           &sc_balance
       );
   }

   // endpoint 

   #[payable("*")]
   #[endpoint(createDapeAOOffer)]
   fn create_dapeao_offer(
       &self,
       #[payment_token] token_id: EgldOrEsdtTokenIdentifier, // the collection the nft_holder wants to sell
       #[payment_nonce] nonce: u64, // the nonce of the nft of the collection
       amount: BigUint, // amount to pay for the spender
    ) -> SCResult<u64> {
        let caller = self.blockchain().get_caller();
        require!(amount >= 0, "The amount specified is below zero");

        // creation of the offer and storage
        let id = self.offers_count().get();
        self.offers_from(&caller).update(|vec| vec.push(id));

        self.all_offers().update(|vec| vec.push(id));
        self.all_dapeao_offers().update(|vec| vec.push(id));
        self.offers_count().set(&id + 1);
        
        let offer = Offer {
            id,
            nft_holder: caller,
            amount,
            token_id,
            nonce,
            status: Status::Submitted
        };
        
        self.offers_with_id(&id).set(offer);
        Ok(id)
    }

    #[payable("*")]
    #[endpoint(createFreeFeesOffer)]
    fn create_freefees_offer(
        &self,
        #[payment_token] token_id: EgldOrEsdtTokenIdentifier, // the collection the nft_holder wants to sell
        #[payment_nonce] nonce: u64, // the nonce of the nft of the collection
        amount: BigUint, // amount to pay for the spender
     ) -> SCResult<u64> {
         let caller = self.blockchain().get_caller();
         require!(amount >= 0, "The amount specified is below zero");
 
         // creation of the offer and storage
         let id = self.offers_count().get();
         self.offers_from(&caller).update(|vec| vec.push(id));

         self.all_offers().update(|vec| vec.push(id));
         self.all_freefees_offers().update(|vec| vec.push(id));
         self.offers_count().set(&id + 1);
         
         let offer = Offer {
             id,
             nft_holder: caller,
             amount,
             token_id,
             nonce,
             status: Status::Submitted
         };
         
         self.offers_with_id(&id).set(offer);
         Ok(id)
     }

    #[endpoint(deleteOffer)]
    fn delete_offer(
        &self,
        id: u64 // id of the offer
    ) -> SCResult<u64> {
        let caller = self.blockchain().get_caller();
        let mut offer = self.offers_with_id(&id).get();
        require!(offer.nft_holder == caller, "You are not the creator of this offer");
        require!(offer.status == Status::Submitted, "Offer deleted or completed");
        
        self.send().direct(
            &caller,
            &offer.token_id,
            offer.nonce,
            &BigUint::from(1u64)
        );
        
        offer.status = Status::Deleted;
        self.offers_with_id(&id).set(offer);
        Ok(id)
    }

    #[payable("EGLD")]
    #[endpoint(acceptOffer)]
    fn accept_offer(
        &self, id: u64 ) -> SCResult<u64> {

        let payment_amount = self.call_value().egld_value();

        let caller = self.blockchain().get_caller();

        let mut offer = self.offers_with_id(&id).get();
        require!(offer.status == Status::Submitted, "Offer deleted or completed");
        require!(payment_amount == offer.amount, "Incorrect egld amount");

        // send egld to previous holder
        self.send().direct_egld(
            &offer.nft_holder,
            &payment_amount
        );

        // send the nft to the caller
        self.send().direct(
            &caller,
            &offer.token_id,
            offer.nonce,
            &BigUint::from(1u64)
        );

        // update status
        offer.status = Status::Completed;
        self.offers_with_id(&id).set(offer);

        Ok(id)
    }

    // view

    #[view(getOffersSubmittedFrom)]
    fn get_offers_submitted_from(&self, caller: ManagedAddress) -> ManagedVec<u64> {
        let mut submitted_from_vec = ManagedVec::new();
        let offers = self.offers_from(&caller).get();
        for id in &offers {
            match self.offers_with_id(&id).get().status {
                Status::Submitted => submitted_from_vec.push(id),
                _ => (),
            }
        }
        submitted_from_vec
    }

    #[view(getAllDapeAOSubmittedOffers)]
    fn get_all_dapeo_submitted_offers(&self) -> ManagedVec<u64> {
        let mut all_offers_vec = ManagedVec::new();
        let offers = self.all_dapeao_offers().get();

        for id in &offers {
            match self.offers_with_id(&id).get().status {
                Status::Submitted => all_offers_vec.push(id),
                _ => (),
            }
        }
        all_offers_vec
    }

    #[view(getAllFreeFeesSubmittedOffers)]
    fn get_all_freefees_submitted_offers(&self) -> ManagedVec<u64> {
        let mut all_offers_vec = ManagedVec::new();
        let offers = self.all_freefees_offers().get();

        for id in &offers {
            match self.offers_with_id(&id).get().status {
                Status::Submitted => all_offers_vec.push(id),
                _ => (),
            }
        }
        all_offers_vec
    }

    #[view(getAllDapeAOBoughtOffers)]
    fn get_all_bought_offers(&self) -> ManagedVec<u64> {
        let mut all_offers_vec = ManagedVec::new();
        let offers = self.all_offers().get();

        for id in &offers {
            match self.offers_with_id(&id).get().status {
                Status::Completed => all_offers_vec.push(id),
                _ => (),
            }
        }
        all_offers_vec
    }

   // storage

   #[view(getOffersCount)]
   #[storage_mapper("offers_count")] // know an offer details based on its id
   fn offers_count(&self) -> SingleValueMapper<u64>;

   #[view(getOffersWithId)]
   #[storage_mapper("offers_with_id")] // know an offer details based on its id
   fn offers_with_id(&self, id: &u64) -> SingleValueMapper<Offer<Self::Api>>;

   #[view(getOffersFrom)]
   #[storage_mapper("offers_from")] // offers made from a certain address, we store the id of the offers
   fn offers_from(&self, address: &ManagedAddress) -> SingleValueMapper<ManagedVec<u64>>;

   #[view(getAllOffers)]
   #[storage_mapper("all_offers")] // all offers made, we store the id of the offers
   fn all_offers(&self) -> SingleValueMapper<ManagedVec<u64>>;

   #[view(getAllDapeAOOffers)]
   #[storage_mapper("all_dapeo_offers")] // all offers made, we store the id of the offers
   fn all_dapeao_offers(&self) -> SingleValueMapper<ManagedVec<u64>>;

   #[view(getAllFreeFeesOffers)]
   #[storage_mapper("all_freefees_offers")] // all offers made, we store the id of the offers
   fn all_freefees_offers(&self) -> SingleValueMapper<ManagedVec<u64>>;
}