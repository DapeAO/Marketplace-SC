USER_PEM="/Users/paulwtcz/Documents/Projets/Elrond/Account/walletKey.pem"
PROXY="https://gateway.elrond.com"
CHAIN_ID="1"

WASM_PATH="/Users/paulwtcz/Documents/Projets/Elrond/SmartContract/marketplace/output/marketplace.wasm"
CONTRACT_ADDRESS="erd1qqqqqqqqqqqqqpgqkd2u6zflt5fmmeh4rz36e8q37qwllpe26y2qxznwfk"

deploy() {
    erdpy --verbose contract deploy --project=${PROJECT} \
    --recall-nonce --metadata-payable --pem=${USER_PEM} \
    --gas-limit=60000000 \
    --send --outfile="deploy-devnet.interaction.json" \
    --proxy=${PROXY} --chain=${CHAIN_ID} || return
}

upgradeSC() {
    erdpy --verbose contract upgrade ${CONTRACT_ADDRESS} --recall-nonce --metadata-payable \
        --bytecode=${WASM_PATH} \
        --pem=${USER_PEM} \
        --gas-limit=60000000 \
        --proxy=${PROXY} --chain=${CHAIN_ID} \
        --send || return
}