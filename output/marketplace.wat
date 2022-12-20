(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i64)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i64)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32)))
  (type (;12;) (func))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i64 i32)))
  (type (;16;) (func (param i32 i32 i64 i32 i32 i32)))
  (type (;17;) (func (result i64)))
  (type (;18;) (func (param i32 i32) (result i64)))
  (type (;19;) (func (param i64 i32)))
  (type (;20;) (func (param i64) (result i32)))
  (import "env" "signalError" (func (;0;) (type 0)))
  (import "env" "bigIntSetInt64" (func (;1;) (type 1)))
  (import "env" "mBufferEq" (func (;2;) (type 2)))
  (import "env" "managedCaller" (func (;3;) (type 3)))
  (import "env" "managedSCAddress" (func (;4;) (type 3)))
  (import "env" "bigIntGetCallValue" (func (;5;) (type 3)))
  (import "env" "managedGetMultiESDTCallValue" (func (;6;) (type 3)))
  (import "env" "mBufferGetLength" (func (;7;) (type 4)))
  (import "env" "mBufferAppendBytes" (func (;8;) (type 5)))
  (import "env" "managedSignalError" (func (;9;) (type 3)))
  (import "env" "smallIntGetUnsignedArgument" (func (;10;) (type 6)))
  (import "env" "mBufferGetArgument" (func (;11;) (type 2)))
  (import "env" "bigIntGetUnsignedArgument" (func (;12;) (type 0)))
  (import "env" "getNumArguments" (func (;13;) (type 7)))
  (import "env" "smallIntFinishUnsigned" (func (;14;) (type 8)))
  (import "env" "mBufferFinish" (func (;15;) (type 4)))
  (import "env" "mBufferNew" (func (;16;) (type 7)))
  (import "env" "mBufferCopyByteSlice" (func (;17;) (type 9)))
  (import "env" "mBufferSetBytes" (func (;18;) (type 5)))
  (import "env" "mBufferAppend" (func (;19;) (type 2)))
  (import "env" "mBufferStorageLoad" (func (;20;) (type 2)))
  (import "env" "mBufferStorageStore" (func (;21;) (type 2)))
  (import "env" "mBufferToBigIntUnsigned" (func (;22;) (type 2)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;23;) (type 2)))
  (import "env" "managedTransferValueExecute" (func (;24;) (type 10)))
  (import "env" "bigIntAdd" (func (;25;) (type 11)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;26;) (type 10)))
  (import "env" "bigIntSign" (func (;27;) (type 4)))
  (import "env" "checkNoPayment" (func (;28;) (type 12)))
  (import "env" "getNumESDTTransfers" (func (;29;) (type 7)))
  (import "env" "bigIntCmp" (func (;30;) (type 2)))
  (import "env" "managedOwnerAddress" (func (;31;) (type 3)))
  (import "env" "bigIntGetExternalBalance" (func (;32;) (type 0)))
  (import "env" "mBufferGetBytes" (func (;33;) (type 2)))
  (import "env" "mBufferGetByteSlice" (func (;34;) (type 9)))
  (func (;35;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;36;) (type 13) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call 37
        unreachable
      end
      local.get 1
      local.get 2
      call 37
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store)
  (func (;37;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 129
    unreachable)
  (func (;38;) (type 7) (result i32)
    (local i32)
    call 39
    local.tee 0
    i64.const 1
    call 1
    local.get 0)
  (func (;39;) (type 7) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=1049092
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=1049092
    local.get 0)
  (func (;40;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;41;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 2
    i32.const 0
    i32.gt_s)
  (func (;42;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 35
    unreachable)
  (func (;43;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 44
    call 44
    call 45)
  (func (;44;) (type 7) (result i32)
    (local i32)
    call 39
    local.tee 0
    i32.const 1049040
    i32.const 0
    call 18
    drop
    local.get 0)
  (func (;45;) (type 14) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    call 24
    drop)
  (func (;46;) (type 15) (param i32 i32 i64 i32)
    (local i32 i32)
    call 44
    local.set 4
    call 44
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      call 47
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 5
    call 45)
  (func (;47;) (type 16) (param i32 i32 i64 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    call 44
    local.set 7
    call 16
    local.tee 8
    local.get 1
    call 19
    drop
    call 39
    local.tee 1
    i64.const 0
    call 1
    local.get 1
    local.get 1
    local.get 3
    call 25
    local.get 6
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 2
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 2
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=4 align=4
    local.get 6
    local.get 8
    i32.const 24
    i32.shl
    local.get 8
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 8
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
    local.get 6
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 7
    local.get 6
    i32.const 16
    call 8
    drop
    local.get 0
    local.get 7
    i64.const 0
    local.get 4
    local.get 5
    call 26
    drop
    local.get 6
    i32.const 16
    i32.add
    global.set 0)
  (func (;48;) (type 7) (result i32)
    (local i32)
    call 39
    local.tee 0
    call 3
    local.get 0)
  (func (;49;) (type 7) (result i32)
    (local i32)
    call 39
    local.tee 0
    call 4
    local.get 0)
  (func (;50;) (type 7) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1059104
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=1059104
    i32.const -11
    call 5
    i32.const -11)
  (func (;51;) (type 3) (param i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const -21
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1059108
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=1059108
      i32.const -21
      call 6
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              call 7
              i32.const 4
              i32.shr_u
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048576
            i32.const 34
            call 0
            unreachable
          end
          i64.const 0
          local.set 4
          i32.const 2147483646
          local.set 2
          call 50
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 1
        i64.const 0
        i64.store
        local.get 2
        i32.const 0
        local.get 1
        i32.const 16
        call 52
        br_if 1 (;@1;)
        local.get 1
        i64.load offset=4 align=4
        local.tee 4
        i64.const 56
        i64.shl
        local.get 4
        i64.const 40
        i64.shl
        i64.const 71776119061217280
        i64.and
        i64.or
        local.get 4
        i64.const 24
        i64.shl
        i64.const 280375465082880
        i64.and
        local.get 4
        i64.const 8
        i64.shl
        i64.const 1095216660480
        i64.and
        i64.or
        i64.or
        local.get 4
        i64.const 8
        i64.shr_u
        i64.const 4278190080
        i64.and
        local.get 4
        i64.const 24
        i64.shr_u
        i64.const 16711680
        i64.and
        i64.or
        local.get 4
        i64.const 40
        i64.shr_u
        i64.const 65280
        i64.and
        local.get 4
        i64.const 56
        i64.shr_u
        i64.or
        i64.or
        i64.or
        local.set 4
        local.get 1
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 2
        local.get 1
        i32.load offset=12
        local.tee 3
        i32.const 24
        i32.shl
        local.get 3
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 3
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 3
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=12
      local.get 0
      local.get 4
      i64.store
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048727
    i32.const 29
    call 0
    unreachable)
  (func (;52;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 34
    i32.const 0
    i32.ne)
  (func (;53;) (type 0) (param i32 i32)
    (local i32)
    i32.const 1048610
    i32.const 23
    call 54
    local.tee 2
    local.get 0
    local.get 1
    call 8
    drop
    local.get 2
    i32.const 1048633
    i32.const 3
    call 8
    drop
    local.get 2
    i32.const 1048914
    i32.const 16
    call 8
    drop
    local.get 2
    call 9
    unreachable)
  (func (;54;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 39
    local.tee 2
    local.get 0
    local.get 1
    call 18
    drop
    local.get 2)
  (func (;55;) (type 17) (result i64)
    (local i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 51
    local.get 0
    i64.load
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;56;) (type 7) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 51
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;57;) (type 17) (result i64)
    i32.const 0
    call 10)
  (func (;58;) (type 2) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    call 39
    local.tee 2
    call 11
    drop
    block  ;; label = @1
      local.get 2
      call 7
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 53
      unreachable
    end
    local.get 2)
  (func (;59;) (type 7) (result i32)
    (local i32)
    i32.const 0
    call 39
    local.tee 0
    call 12
    local.get 0)
  (func (;60;) (type 3) (param i32)
    block  ;; label = @1
      call 13
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 1048673
    i32.const 25
    call 0
    unreachable)
  (func (;61;) (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.get 0
      i32.const 8
      i32.add
      i32.load
      call 40
      unreachable
    end
    local.get 0
    i64.load offset=8
    call 14)
  (func (;62;) (type 3) (param i32)
    local.get 0
    call 63
    call 15
    drop)
  (func (;63;) (type 4) (param i32) (result i32)
    local.get 0
    call 80)
  (func (;64;) (type 4) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 65
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 66
    i32.wrap_i64
    call 67
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;65;) (type 11) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 16
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            local.tee 5
            call 70
            local.set 6
            i32.const 0
            i32.load8_u offset=1059100
            br_if 1 (;@3;)
            local.get 6
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            local.get 6
            i32.store offset=1059096
            i32.const 0
            i32.const 1
            i32.store8 offset=1059100
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            call 74
            local.get 5
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 69
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=16
          end
          local.get 4
          local.get 2
          i32.add
          local.tee 6
          i32.const 0
          i32.load offset=1059096
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 4
          local.get 6
          call 79
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call 75
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 5
        local.get 4
        local.get 1
        local.get 2
        call 69
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.add
        local.set 6
      end
      local.get 0
      local.get 6
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call 100
    unreachable)
  (func (;66;) (type 18) (param i32 i32) (result i64)
    (local i64)
    i64.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 2
        i64.const 8
        i64.shl
        local.get 0
        i64.load8_u
        i64.or
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 2)
  (func (;67;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 2
    call 16
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 2
      local.get 1
      local.get 3
      call 17
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.add
      i32.store
      local.get 3
      return
    end
    i32.const 1048712
    i32.const 15
    call 68
    unreachable)
  (func (;68;) (type 0) (param i32 i32)
    (local i32)
    i32.const 1048892
    i32.const 22
    call 54
    local.tee 2
    local.get 0
    local.get 1
    call 8
    drop
    local.get 2
    call 9
    unreachable)
  (func (;69;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 52)
  (func (;70;) (type 4) (param i32) (result i32)
    local.get 0
    call 7)
  (func (;71;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 19
    drop)
  (func (;72;) (type 1) (param i32 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 8
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;73;) (type 3) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1059100
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=1059100
        i32.const 0
        i32.const 0
        i32.store offset=1059096
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call 74
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 1049040
        i32.const 0
        call 75
        call 44
        local.set 3
        br 1 (;@1;)
      end
      i32.const 1049040
      i32.const 0
      call 76
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;74;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049096
    i32.const 10000
    local.get 1
    call 85
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;75;) (type 14) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call 132
      drop
      return
    end
    local.get 1
    local.get 3
    call 130
    unreachable)
  (func (;76;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 39
    local.tee 2
    local.get 0
    local.get 1
    call 18
    drop
    local.get 2)
  (func (;77;) (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 78
    local.get 2
    i32.load offset=8
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=1059096
      i32.const 0
      i32.const 0
      i32.store8 offset=1059100
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;78;) (type 3) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 0
      i32.load offset=1059096
      call 79
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 8
      drop
      i32.const 0
      i32.const 0
      i32.store offset=1059096
      i32.const 0
      i32.const 0
      i32.store8 offset=1059100
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 11) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 10000
        call 37
        unreachable
      end
      local.get 1
      local.get 2
      call 37
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1049096
    i32.add
    i32.store)
  (func (;80;) (type 4) (param i32) (result i32)
    (local i32)
    local.get 0
    call 39
    local.tee 1
    call 20
    drop
    local.get 1)
  (func (;81;) (type 1) (param i32 i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1049040
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 8
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              i32.add
              local.tee 3
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 4
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 4
              i32.sub
              local.set 4
              br 4 (;@1;)
            end
            call 82
            unreachable
          end
          local.get 4
          call 83
          unreachable
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    local.get 4
    call 76
    call 21
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;82;) (type 12)
    call 126
    unreachable)
  (func (;83;) (type 3) (param i32)
    local.get 0
    call 128
    unreachable)
  (func (;84;) (type 6) (param i32) (result i64)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      call 80
      local.tee 0
      call 7
      local.tee 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 1048698
      i32.const 14
      call 68
      unreachable
    end
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    call 85
    local.get 0
    i32.const 0
    local.get 1
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=4
    local.tee 3
    call 52
    drop
    local.get 2
    local.get 3
    call 66
    local.set 4
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;85;) (type 14) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call 36
    local.get 4
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;86;) (type 0) (param i32 i32)
    (local i32 i32 i64 i32 i64 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    call 80
    local.tee 3
    call 7
    local.set 1
    local.get 2
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i32.store
    local.get 2
    local.get 3
    i32.store offset=16
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 87
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    i32.const 32
    call 67
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    call 64
    call 39
    local.tee 5
    call 22
    drop
    block  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      call 64
      local.tee 1
      call 7
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 1
      i32.const 0
      local.get 2
      i32.const 28
      i32.add
      i32.const 4
      call 52
      drop
      i32.const 2147483646
      local.get 1
      local.get 2
      i32.load offset=28
      i32.const 1145849669
      i32.eq
      select
      local.set 1
    end
    local.get 2
    i32.const 8
    i32.add
    call 87
    local.set 6
    local.get 2
    i32.const 0
    i32.store8 offset=28
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    i32.const 1
    call 65
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=28
        local.tee 7
        i32.const 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.ne
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=24
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=1059096
          i32.const 0
          i32.const 0
          i32.store8 offset=1059100
        end
        local.get 0
        local.get 7
        i32.store8 offset=28
        local.get 0
        local.get 1
        i32.store offset=24
        local.get 0
        local.get 5
        i32.store offset=20
        local.get 0
        local.get 3
        i32.store offset=16
        local.get 0
        local.get 6
        i64.store offset=8
        local.get 0
        local.get 4
        i64.store
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1049012
      i32.const 13
      call 68
      unreachable
    end
    i32.const 1048698
    i32.const 14
    call 68
    unreachable)
  (func (;87;) (type 6) (param i32) (result i64)
    (local i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 65
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 66
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;88;) (type 1) (param i32 i64)
    local.get 0
    local.get 1
    call 81)
  (func (;89;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 73
    local.get 2
    local.get 2
    i32.load
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load8_u offset=4
    i32.const 1
    i32.and
    i32.store8 offset=12
    local.get 1
    i64.load
    local.get 2
    i32.const 8
    i32.add
    call 90
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=16
    call 91
    local.get 1
    i32.load offset=20
    local.get 2
    i32.const 8
    i32.add
    call 92
    local.get 1
    i32.load offset=24
    local.get 2
    i32.const 8
    i32.add
    call 93
    local.get 1
    i64.load offset=8
    local.get 2
    i32.const 8
    i32.add
    call 90
    local.get 1
    i32.load8_u offset=28
    local.get 2
    i32.const 8
    i32.add
    call 94
    local.get 0
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    call 77
    call 21
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;90;) (type 19) (param i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 97
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            call 70
            local.set 4
            i32.const 10000
            i32.const 0
            i32.load offset=1059096
            local.tee 5
            i32.sub
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            local.get 5
            local.get 5
            local.get 4
            i32.add
            local.tee 4
            call 99
            local.get 1
            i32.const 0
            local.get 2
            i32.load offset=8
            local.get 2
            i32.load offset=12
            call 69
            drop
            i32.const 0
            local.get 4
            i32.store offset=1059096
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.get 1
          call 71
        end
        local.get 0
        local.get 3
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 0
      call 78
      local.get 0
      i32.load
      local.get 1
      call 71
      local.get 0
      i32.load8_u offset=4
      local.set 1
      local.get 0
      local.get 3
      i32.store8 offset=4
      local.get 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=1059096
      i32.const 0
      i32.const 0
      i32.store8 offset=1059100
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;92;) (type 0) (param i32 i32)
    (local i32)
    call 39
    local.tee 2
    local.get 0
    call 23
    drop
    local.get 2
    local.get 1
    call 96)
  (func (;93;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call 96
        br 1 (;@1;)
      end
      local.get 2
      i32.const 67108864
      i32.store offset=12
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call 97
      local.get 1
      i32.const 1048756
      i32.const 4
      call 97
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;94;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 1049028
    i32.add
    i32.load
    i32.load8_u
    i32.store8 offset=15
    local.get 1
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call 97
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;95;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 21
    drop)
  (func (;96;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 70
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 97
    local.get 1
    local.get 0
    call 91
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;97;) (type 11) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10000
          i32.const 0
          i32.load offset=1059096
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 4
          local.get 2
          i32.add
          local.tee 0
          call 99
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call 75
          i32.const 0
          local.get 0
          i32.store offset=1059096
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 8
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 78
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 8
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;98;) (type 0) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 3
        i32.const 8
        i32.add
        local.tee 4
        local.get 1
        i32.load offset=4
        i32.le_u
        br_if 0 (;@2;)
        i64.const 0
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 1
      i32.load offset=8
      i32.load
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      call 69
      drop
      local.get 2
      i64.load offset=8
      local.set 5
      local.get 1
      local.get 4
      i32.store
      local.get 5
      i64.const 56
      i64.shl
      local.get 5
      i64.const 40
      i64.shl
      i64.const 71776119061217280
      i64.and
      i64.or
      local.get 5
      i64.const 24
      i64.shl
      i64.const 280375465082880
      i64.and
      local.get 5
      i64.const 8
      i64.shl
      i64.const 1095216660480
      i64.and
      i64.or
      i64.or
      local.get 5
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      local.get 5
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      local.get 5
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      local.get 5
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      local.set 6
      i64.const 1
      local.set 5
    end
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 5
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 11) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    i32.const 1049096
    i32.const 10000
    call 36
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;100;) (type 12)
    i32.const 1048712
    i32.const 15
    call 68
    unreachable)
  (func (;101;) (type 7) (result i32)
    i32.const 1048930
    i32.const 10
    call 54)
  (func (;102;) (type 4) (param i32) (result i32)
    (local i32)
    i32.const 1048940
    i32.const 11
    call 54
    local.tee 1
    local.get 0
    call 71
    local.get 1)
  (func (;103;) (type 7) (result i32)
    i32.const 1048951
    i32.const 12
    call 54)
  (func (;104;) (type 20) (param i64) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1048963
    i32.const 14
    call 54
    local.set 2
    local.get 1
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 2
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    call 8
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;105;) (type 7) (result i32)
    i32.const 1048977
    i32.const 16
    call 54)
  (func (;106;) (type 7) (result i32)
    i32.const 1048993
    i32.const 19
    call 54)
  (func (;107;) (type 4) (param i32) (result i32)
    local.get 0
    call 27
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u)
  (func (;108;) (type 12)
    (local i32)
    call 28
    i32.const 0
    call 60
    call 103
    local.tee 0
    i32.const -25
    call 20
    drop
    block  ;; label = @1
      i32.const -25
      call 7
      br_if 0 (;@1;)
      local.get 0
      i64.const 1
      call 81
    end)
  (func (;109;) (type 12)
    (local i32 i64 i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 29
          br_if 0 (;@3;)
          i32.const 1
          call 60
          call 57
          local.set 1
          call 50
          local.set 2
          call 48
          local.set 3
          local.get 0
          i32.const 16
          i32.add
          local.get 1
          call 104
          call 86
          local.get 0
          i32.load8_u offset=44
          br_if 1 (;@2;)
          local.get 2
          local.get 0
          i32.load offset=36
          call 30
          br_if 2 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          i32.const 16
          i32.add
          local.tee 4
          i32.load
          local.get 2
          call 43
          local.get 0
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          local.tee 2
          i64.load
          local.set 5
          call 38
          local.set 6
          local.get 3
          local.get 0
          i32.const 16
          i32.add
          i32.const 24
          i32.add
          local.tee 7
          i32.load
          local.get 5
          local.get 6
          call 46
          local.get 0
          i32.const 1
          i32.store8 offset=44
          local.get 1
          call 104
          local.set 3
          local.get 0
          i32.const 48
          i32.add
          i32.const 24
          i32.add
          local.get 7
          i64.load
          i64.store
          local.get 0
          i32.const 48
          i32.add
          i32.const 16
          i32.add
          local.get 4
          i64.load
          i64.store
          local.get 0
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i64.load
          i64.store
          local.get 0
          local.get 0
          i64.load offset=16
          i64.store offset=48
          local.get 3
          local.get 0
          i32.const 48
          i32.add
          call 89
          local.get 0
          local.get 1
          i64.store offset=8
          local.get 0
          i32.const 0
          i32.store
          local.get 0
          call 61
          local.get 0
          i32.const 80
          i32.add
          global.set 0
          return
        end
        i32.const 1048636
        i32.const 37
        call 0
        unreachable
      end
      i32.const 1048761
      i32.const 26
      call 42
      unreachable
    end
    i32.const 1048787
    i32.const 21
    call 42
    unreachable)
  (func (;110;) (type 12)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 56
    local.set 1
    call 55
    local.set 2
    i32.const 1
    call 60
    call 59
    local.set 3
    call 48
    local.set 4
    block  ;; label = @1
      local.get 3
      call 107
      br_if 0 (;@1;)
      i32.const 1048845
      i32.const 34
      call 42
      unreachable
    end
    call 103
    call 84
    local.set 5
    local.get 4
    call 102
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 101
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 105
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 103
    local.get 5
    i64.const 1
    i64.add
    call 88
    local.get 5
    call 104
    local.set 6
    local.get 0
    i32.const 0
    i32.store8 offset=44
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=32
    local.get 0
    local.get 2
    i64.store offset=24
    local.get 0
    local.get 5
    i64.store offset=16
    local.get 6
    local.get 0
    i32.const 16
    i32.add
    call 89
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    call 61
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;111;) (type 12)
    (local i32 i32 i64 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 56
    local.set 1
    call 55
    local.set 2
    i32.const 1
    call 60
    call 59
    local.set 3
    call 48
    local.set 4
    block  ;; label = @1
      local.get 3
      call 107
      br_if 0 (;@1;)
      i32.const 1048845
      i32.const 34
      call 42
      unreachable
    end
    call 103
    call 84
    local.set 5
    local.get 4
    call 102
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 101
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 106
    local.tee 6
    call 63
    local.tee 7
    local.get 5
    call 72
    local.get 6
    local.get 7
    call 95
    call 103
    local.get 5
    i64.const 1
    i64.add
    call 88
    local.get 5
    call 104
    local.set 6
    local.get 0
    i32.const 0
    i32.store8 offset=44
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=32
    local.get 0
    local.get 2
    i64.store offset=24
    local.get 0
    local.get 5
    i64.store offset=16
    local.get 6
    local.get 0
    i32.const 16
    i32.add
    call 89
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    call 61
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;112;) (type 12)
    (local i32 i64 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 1
    call 60
    call 57
    local.set 1
    call 48
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    call 104
    call 86
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=32
        local.get 2
        call 41
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=44
        br_if 1 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        local.tee 3
        i64.load
        local.set 4
        call 38
        local.set 5
        local.get 2
        local.get 0
        i32.const 16
        i32.add
        i32.const 24
        i32.add
        local.tee 6
        i32.load
        local.get 4
        local.get 5
        call 46
        local.get 0
        i32.const 2
        i32.store8 offset=44
        local.get 1
        call 104
        local.set 2
        local.get 0
        i32.const 48
        i32.add
        i32.const 24
        i32.add
        local.get 6
        i64.load
        i64.store
        local.get 0
        i32.const 48
        i32.add
        i32.const 16
        i32.add
        local.get 0
        i32.const 16
        i32.add
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 0
        local.get 0
        i64.load offset=16
        i64.store offset=48
        local.get 2
        local.get 0
        i32.const 48
        i32.add
        call 89
        local.get 0
        local.get 1
        i64.store offset=8
        local.get 0
        i32.const 0
        i32.store
        local.get 0
        call 61
        local.get 0
        i32.const 80
        i32.add
        global.set 0
        return
      end
      i32.const 1048808
      i32.const 37
      call 42
      unreachable
    end
    i32.const 1048761
    i32.const 26
    call 42
    unreachable)
  (func (;113;) (type 12)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 0
    call 60
    call 44
    local.set 1
    local.get 0
    call 101
    call 63
    local.tee 2
    i32.store offset=28
    local.get 0
    local.get 2
    call 7
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 98
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i64.load offset=16
        local.tee 3
        call 104
        call 86
        local.get 0
        i32.load8_u offset=76
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call 72
        br 0 (;@2;)
      end
    end
    local.get 1
    call 15
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;114;) (type 12)
    call 28
    i32.const 0
    call 60
    call 105
    call 62)
  (func (;115;) (type 12)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 0
    call 60
    call 44
    local.set 1
    local.get 0
    call 105
    call 63
    local.tee 2
    i32.store offset=28
    local.get 0
    local.get 2
    call 7
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 98
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i64.load offset=16
        local.tee 3
        call 104
        call 86
        local.get 0
        i32.load8_u offset=76
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call 72
        br 0 (;@2;)
      end
    end
    local.get 1
    call 15
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;116;) (type 12)
    call 28
    i32.const 0
    call 60
    call 106
    call 62)
  (func (;117;) (type 12)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 0
    call 60
    call 44
    local.set 1
    local.get 0
    call 106
    call 63
    local.tee 2
    i32.store offset=28
    local.get 0
    local.get 2
    call 7
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 98
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i64.load offset=16
        local.tee 3
        call 104
        call 86
        local.get 0
        i32.load8_u offset=76
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call 72
        br 0 (;@2;)
      end
    end
    local.get 1
    call 15
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;118;) (type 12)
    call 28
    i32.const 0
    call 60
    call 101
    call 62)
  (func (;119;) (type 12)
    call 28
    i32.const 0
    call 60
    call 103
    call 84
    call 14)
  (func (;120;) (type 12)
    call 28
    i32.const 1
    call 60
    i32.const 1048879
    i32.const 7
    call 58
    call 102
    call 62)
  (func (;121;) (type 12)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 1
    call 60
    i32.const 1048886
    i32.const 6
    call 58
    local.set 1
    call 44
    local.set 2
    local.get 0
    local.get 1
    call 102
    call 63
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    call 7
    i32.store offset=36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 98
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i64.load offset=16
        local.tee 3
        call 104
        call 86
        local.get 0
        i32.load8_u offset=76
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call 72
        br 0 (;@2;)
      end
    end
    local.get 2
    call 15
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;122;) (type 12)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 28
    i32.const 1
    call 60
    local.get 0
    i32.const 8
    i32.add
    call 57
    call 104
    call 86
    local.get 0
    call 73
    local.get 0
    local.get 0
    i32.load
    i32.store offset=40
    local.get 0
    local.get 0
    i32.load8_u offset=4
    i32.const 1
    i32.and
    i32.store8 offset=44
    local.get 0
    i64.load offset=8
    local.get 0
    i32.const 40
    i32.add
    call 90
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.load offset=24
    call 91
    local.get 0
    i32.load offset=28
    local.get 0
    i32.const 40
    i32.add
    call 92
    local.get 0
    i32.load offset=32
    local.get 0
    i32.const 40
    i32.add
    call 93
    local.get 0
    i64.load offset=16
    local.get 0
    i32.const 40
    i32.add
    call 90
    local.get 0
    i32.load8_u offset=36
    local.get 0
    i32.const 40
    i32.add
    call 94
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load8_u offset=44
    call 77
    call 15
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;123;) (type 12)
    (local i32 i32 i32)
    call 28
    call 39
    local.tee 0
    call 31
    block  ;; label = @1
      local.get 0
      call 48
      call 41
      br_if 0 (;@1;)
      i32.const 1049040
      i32.const 36
      call 0
      unreachable
    end
    i32.const 0
    call 60
    call 48
    local.set 1
    call 49
    local.set 2
    call 39
    local.set 0
    local.get 2
    call 124
    i32.const 1059109
    local.get 0
    call 32
    local.get 1
    local.get 0
    call 43)
  (func (;124;) (type 3) (param i32)
    local.get 0
    i32.const 1059109
    call 33
    drop)
  (func (;125;) (type 12))
  (func (;126;) (type 12)
    call 127
    unreachable)
  (func (;127;) (type 12)
    i32.const 1049076
    i32.const 14
    call 0
    unreachable)
  (func (;128;) (type 3) (param i32)
    call 126
    unreachable)
  (func (;129;) (type 0) (param i32 i32)
    call 126
    unreachable)
  (func (;130;) (type 0) (param i32 i32)
    call 126
    unreachable)
  (func (;131;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 15
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.const 3
          i32.shl
          local.tee 2
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;132;) (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 131)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1059141))
  (global (;2;) i32 (i32.const 1059152))
  (export "memory" (memory 0))
  (export "init" (func 108))
  (export "acceptOffer" (func 109))
  (export "createDapeAOOffer" (func 110))
  (export "createFreeFeesOffer" (func 111))
  (export "deleteOffer" (func 112))
  (export "getAllDapeAOBoughtOffers" (func 113))
  (export "getAllDapeAOOffers" (func 114))
  (export "getAllDapeAOSubmittedOffers" (func 115))
  (export "getAllFreeFeesOffers" (func 116))
  (export "getAllFreeFeesSubmittedOffers" (func 117))
  (export "getAllOffers" (func 118))
  (export "getOffersCount" (func 119))
  (export "getOffersFrom" (func 120))
  (export "getOffersSubmittedFrom" (func 121))
  (export "getOffersWithId" (func 122))
  (export "withdrawBalance" (func 123))
  (export "callBack" (func 125))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "incorrect number of ESDT transfersargument decode error (): function does not accept ESDT paymentwrong number of argumentsinput too longinput too shortManagedVec index out of rangeEGLD\00Offer deleted or completedIncorrect egld amountYou are not the creator of this offerThe amount specified is below zeroaddresscallerstorage decode error: bad array lengthall_offersoffers_fromoffers_countoffers_with_idall_dapeo_offersall_freefees_offersinvalid value\02\01\00\b8\00\10\00\c2\01\10\00\c1\01\10\00Endpoint can only be called by ownerpanic occurred")
  (data (;1;) (i32.const 1049092) "\9c\ff\ff\ff"))
