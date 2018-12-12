(module
 (type $ii (func (param i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $iI (func (param i32) (result i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $I (func (result i64)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $IIII (func (param i64 i64 i64) (result i64)))
 (type $Ii (func (param i64) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $~lib/env/ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_done))
 (import "env" "action_data_size" (func $~lib/ultrain-ts-lib/internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/ultrain-ts-lib/internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "db_find_i64" (func $~lib/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "current_receiver" (func $~lib/env/current_receiver (result i64)))
 (import "env" "db_store_i64" (func $~lib/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "current_sender" (func $~lib/ultrain-ts-lib/internal/action.d/env.current_sender (result i64)))
 (import "env" "db_iterator_i64" (func $~lib/env/db_iterator_i64 (param i64 i64 i64) (result i64)))
 (import "env" "db_get_i64" (func $~lib/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "ts_sha1" (func $~lib/ultrain-ts-lib/internal/crypto.d/env.ts_sha1 (param i32 i32 i32 i32)))
 (import "env" "db_update_i64" (func $~lib/env/db_update_i64 (param i32 i64 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00")
 (data (i32.const 16) "\01\00\00\00!\00")
 (data (i32.const 24) "\01\00\00\00\"\00")
 (data (i32.const 32) "\01\00\00\00#\00")
 (data (i32.const 40) "\01\00\00\00$\00")
 (data (i32.const 48) "\01\00\00\00%\00")
 (data (i32.const 56) "\01\00\00\00&\00")
 (data (i32.const 64) "\01\00\00\00\'\00")
 (data (i32.const 72) "\01\00\00\00(\00")
 (data (i32.const 80) "\01\00\00\00)\00")
 (data (i32.const 88) "\01\00\00\00*\00")
 (data (i32.const 96) "\01\00\00\00+\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00-\00")
 (data (i32.const 120) "\01\00\00\00.\00")
 (data (i32.const 128) "\01\00\00\00/\00")
 (data (i32.const 136) "\01\00\00\000\00")
 (data (i32.const 144) "\01\00\00\001\00")
 (data (i32.const 152) "\01\00\00\002\00")
 (data (i32.const 160) "\01\00\00\003\00")
 (data (i32.const 168) "\01\00\00\004\00")
 (data (i32.const 176) "\01\00\00\005\00")
 (data (i32.const 184) "\01\00\00\006\00")
 (data (i32.const 192) "\01\00\00\007\00")
 (data (i32.const 200) "\01\00\00\008\00")
 (data (i32.const 208) "\01\00\00\009\00")
 (data (i32.const 216) "\01\00\00\00:\00")
 (data (i32.const 224) "\01\00\00\00;\00")
 (data (i32.const 232) "\01\00\00\00<\00")
 (data (i32.const 240) "\01\00\00\00=\00")
 (data (i32.const 248) "\01\00\00\00>\00")
 (data (i32.const 256) "\01\00\00\00?\00")
 (data (i32.const 264) "\01\00\00\00@\00")
 (data (i32.const 272) "\01\00\00\00A\00")
 (data (i32.const 280) "\01\00\00\00B\00")
 (data (i32.const 288) "\01\00\00\00C\00")
 (data (i32.const 296) "\01\00\00\00D\00")
 (data (i32.const 304) "\01\00\00\00E\00")
 (data (i32.const 312) "\01\00\00\00F\00")
 (data (i32.const 320) "\01\00\00\00G\00")
 (data (i32.const 328) "\01\00\00\00H\00")
 (data (i32.const 336) "\01\00\00\00I\00")
 (data (i32.const 344) "\01\00\00\00J\00")
 (data (i32.const 352) "\01\00\00\00K\00")
 (data (i32.const 360) "\01\00\00\00L\00")
 (data (i32.const 368) "\01\00\00\00M\00")
 (data (i32.const 376) "\01\00\00\00N\00")
 (data (i32.const 384) "\01\00\00\00O\00")
 (data (i32.const 392) "\01\00\00\00P\00")
 (data (i32.const 400) "\01\00\00\00Q\00")
 (data (i32.const 408) "\01\00\00\00R\00")
 (data (i32.const 416) "\01\00\00\00T\00")
 (data (i32.const 424) "\01\00\00\00U\00")
 (data (i32.const 432) "\01\00\00\00V\00")
 (data (i32.const 440) "\01\00\00\00W\00")
 (data (i32.const 448) "\01\00\00\00X\00")
 (data (i32.const 456) "\01\00\00\00Y\00")
 (data (i32.const 464) "\01\00\00\00Z\00")
 (data (i32.const 472) "\01\00\00\00[\00")
 (data (i32.const 480) "\01\00\00\00\\\00")
 (data (i32.const 488) "\01\00\00\00]\00")
 (data (i32.const 496) "\01\00\00\00^\00")
 (data (i32.const 504) "\01\00\00\00_\00")
 (data (i32.const 512) "\01\00\00\00`\00")
 (data (i32.const 520) "\01\00\00\00a\00")
 (data (i32.const 528) "\01\00\00\00b\00")
 (data (i32.const 536) "\01\00\00\00c\00")
 (data (i32.const 544) "\01\00\00\00d\00")
 (data (i32.const 552) "\01\00\00\00e\00")
 (data (i32.const 560) "\01\00\00\00f\00")
 (data (i32.const 568) "\01\00\00\00g\00")
 (data (i32.const 576) "\01\00\00\00h\00")
 (data (i32.const 584) "\01\00\00\00i\00")
 (data (i32.const 592) "\01\00\00\00j\00")
 (data (i32.const 600) "\01\00\00\00k\00")
 (data (i32.const 608) "\01\00\00\00l\00")
 (data (i32.const 616) "\01\00\00\00m\00")
 (data (i32.const 624) "\01\00\00\00n\00")
 (data (i32.const 632) "\01\00\00\00o\00")
 (data (i32.const 640) "\01\00\00\00p\00")
 (data (i32.const 648) "\01\00\00\00q\00")
 (data (i32.const 656) "\01\00\00\00r\00")
 (data (i32.const 664) "\01\00\00\00s\00")
 (data (i32.const 672) "\01\00\00\00t\00")
 (data (i32.const 680) "\01\00\00\00u\00")
 (data (i32.const 688) "\01\00\00\00v\00")
 (data (i32.const 696) "\01\00\00\00w\00")
 (data (i32.const 704) "\01\00\00\00x\00")
 (data (i32.const 712) "\01\00\00\00y\00")
 (data (i32.const 720) "\01\00\00\00z\00")
 (data (i32.const 728) "\01\00\00\00{\00")
 (data (i32.const 736) "\01\00\00\00|\00")
 (data (i32.const 744) "\01\00\00\00}\00")
 (data (i32.const 752) "\01\00\00\00~\00")
 (data (i32.const 760) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1272) "\f8\02\00\00_\00\00\00")
 (data (i32.const 1280) "\04\00\00\00U\00G\00A\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1424) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1520) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 1624) "\10\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 1664) "\04\00\00\00r\00o\00c\00k\00")
 (data (i32.const 1680) "\06\00\00\00s\00.\00r\00o\00c\00k\00")
 (data (i32.const 1696) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1760) "\t\00\00\00a\00d\00d\00P\00e\00r\00s\00o\00n\00")
 (data (i32.const 1784) "\00\00\00\00")
 (data (i32.const 1792) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00")
 (data (i32.const 1904) "%\00\00\00y\00o\00u\00 \00a\00r\00e\00 \00a\00l\00l\00 \00r\00e\00a\00d\00y\00 \00i\00n\00 \00t\00h\00e\00 \00r\00o\00c\00k\00e\00r\00 \00l\00i\00s\00t\00.\00")
 (data (i32.const 1984) "#\00\00\00o\00n\00l\00y\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00o\00w\00n\00e\00r\00 \00c\00a\00n\00 \00r\00o\00c\00k\00 \00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 2064) "\0e\00\00\00c\00u\00r\00s\00o\00r\00.\00c\00o\00u\00n\00t\00 \00=\00")
 (data (i32.const 2096) "\1a\00\00\00c\00u\00r\00s\00o\00r\00 \00i\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00.\00")
 (data (i32.const 2152) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 2224) "\0d\00\00\00\00\00\00\00.............\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2256) "\b0\08\00\00\0d\00\00\00")
 (data (i32.const 2264) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2280) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2336) "7\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 2456) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/utils/PrintableChar i32 (i32.const 1272))
 (global $~lib/ultrain-ts-lib/src/log/Log (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_A i32 (i32.const 65))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/ultrain-ts-lib/src/asset/SYS (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $~lib/ultrain-ts-lib/src/crypto/HexDigital i32 (i32.const 1624))
 (global $~lib/ultrain-ts-lib/src/crypto/CHAR0 i32 (i32.const 48))
 (global $~lib/ultrain-ts-lib/src/crypto/CHAR9 i32 (i32.const 57))
 (global $~lib/ultrain-ts-lib/src/crypto/CHARa i32 (i32.const 97))
 (global $~lib/ultrain-ts-lib/src/crypto/CHARf i32 (i32.const 102))
 (global $~lib/ultrain-ts-lib/src/crypto/CHARA i32 (i32.const 65))
 (global $~lib/ultrain-ts-lib/src/crypto/CHARF i32 (i32.const 70))
 (global $contract/RockContract/rockstable i32 (i32.const 1664))
 (global $contract/RockContract/rockscope i32 (i32.const 1680))
 (global $~lib/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $HEAP_BASE i32 (i32.const 2564))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "apply" (func $contract/RockContract/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 16 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/arraybuffer/computeSize (; 17 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 19 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<u8>#constructor (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/string/String#charCodeAt (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const -1
   return
  end
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
 )
 (func $~lib/internal/memory/memcpy (; 22 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    get_local $2
    if (result i32)
     get_local $1
     i32.const 3
     i32.and
    else     
     get_local $2
    end
    if
     block
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
     end
     br $continue|0
    end
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     get_local $2
     i32.const 16
     i32.ge_u
     if
      block
       get_local $0
       get_local $1
       i32.load
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
      end
      br $continue|1
     end
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    block (result i32)
     get_local $0
     tee_local $5
     i32.const 1
     i32.add
     set_local $0
     get_local $5
    end
    block (result i32)
     get_local $1
     tee_local $5
     i32.const 1
     i32.add
     set_local $1
     get_local $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 3
       i32.and
       set_local $5
       get_local $5
       i32.const 1
       i32.eq
       br_if $case0|2
       get_local $5
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       get_local $1
       i32.load
       set_local $3
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 3
       i32.sub
       set_local $2
       block $break|3
        loop $continue|3
         get_local $2
         i32.const 17
         i32.ge_u
         if
          block
           get_local $1
           i32.const 1
           i32.add
           i32.load
           set_local $4
           get_local $0
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 5
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 4
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 9
           i32.add
           i32.load
           set_local $4
           get_local $0
           i32.const 8
           i32.add
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 13
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 12
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 16
           i32.add
           set_local $1
           get_local $0
           i32.const 16
           i32.add
           set_local $0
           get_local $2
           i32.const 16
           i32.sub
           set_local $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      get_local $1
      i32.load
      set_local $3
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 2
      i32.sub
      set_local $2
      block $break|4
       loop $continue|4
        get_local $2
        i32.const 18
        i32.ge_u
        if
         block
          get_local $1
          i32.const 2
          i32.add
          i32.load
          set_local $4
          get_local $0
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 6
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 4
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 10
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 8
          i32.add
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 14
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 12
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 16
          i32.add
          set_local $1
          get_local $0
          i32.const 16
          i32.add
          set_local $0
          get_local $2
          i32.const 16
          i32.sub
          set_local $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     get_local $1
     i32.load
     set_local $3
     block (result i32)
      get_local $0
      tee_local $5
      i32.const 1
      i32.add
      set_local $0
      get_local $5
     end
     block (result i32)
      get_local $1
      tee_local $5
      i32.const 1
      i32.add
      set_local $1
      get_local $5
     end
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     block $break|5
      loop $continue|5
       get_local $2
       i32.const 19
       i32.ge_u
       if
        block
         get_local $1
         i32.const 3
         i32.add
         i32.load
         set_local $4
         get_local $0
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 7
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 4
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 11
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 8
         i32.add
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 15
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 12
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 16
         i32.add
         set_local $1
         get_local $0
         i32.const 16
         i32.add
         set_local $0
         get_local $2
         i32.const 16
         i32.sub
         set_local $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  if (result i32)
   get_local $3
  else   
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
  end
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      get_local $0
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $2
        i32.const 1
        i32.sub
        set_local $2
        block (result i32)
         get_local $0
         tee_local $3
         i32.const 1
         i32.add
         set_local $0
         get_local $3
        end
        block (result i32)
         get_local $1
         tee_local $3
         i32.const 1
         i32.add
         set_local $1
         get_local $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $0
        get_local $1
        i64.load
        i64.store
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        i32.const 8
        i32.add
        set_local $0
        get_local $1
        i32.const 8
        i32.add
        set_local $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     get_local $2
     if
      block
       block (result i32)
        get_local $0
        tee_local $3
        i32.const 1
        i32.add
        set_local $0
        get_local $3
       end
       block (result i32)
        get_local $1
        tee_local $3
        i32.const 1
        i32.add
        set_local $1
        get_local $3
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 1
       i32.sub
       set_local $2
      end
      br $continue|2
     end
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      get_local $0
      get_local $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $0
        get_local $2
        i32.const 1
        i32.sub
        tee_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        get_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     get_local $2
     if
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.gt_s
  if
   get_local $1
   get_global $~lib/internal/arraybuffer/MAX_BLENGTH
   i32.le_s
   i32.eqz
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   get_local $2
   call $~lib/internal/arraybuffer/computeSize
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
    block $~lib/memory/memory.fill|inlined.1
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $5
     get_local $3
     get_local $4
     get_local $5
     call $~lib/internal/memory/memset
    end
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    set_local $5
    block $~lib/memory/memory.copy|inlined.0
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $4
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $3
     get_local $4
     get_local $3
     get_local $2
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.fill|inlined.2
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $6
     get_local $3
     get_local $4
     get_local $6
     call $~lib/internal/memory/memset
    end
    get_local $5
    return
   end
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<u8>#push (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 0
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 1073741816
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.0
   get_local $3
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   get_local $1
   i32.store8 offset=8
  end
  get_local $5
 )
 (func $~lib/utf8util/toUTF8Array (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $2
     call $~lib/string/String#charCodeAt
     set_local $3
     get_local $3
     i32.const 128
     i32.lt_s
     if
      get_local $1
      get_local $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      get_local $3
      i32.const 2048
      i32.lt_s
      if
       get_local $1
       i32.const 192
       get_local $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       get_local $1
       i32.const 128
       get_local $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       get_local $3
       i32.const 55296
       i32.lt_s
       tee_local $4
       if (result i32)
        get_local $4
       else        
        get_local $3
        i32.const 57344
        i32.ge_s
       end
       if
        get_local $1
        i32.const 224
        get_local $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        get_local $2
        i32.const 1
        i32.add
        set_local $2
        i32.const 65536
        get_local $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        get_local $0
        get_local $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        set_local $3
        get_local $1
        i32.const 240
        get_local $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  get_local $1
 )
 (func $~lib/utf8util/string2cstr (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $~lib/utf8util/toUTF8Array
  set_local $1
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 8
  i32.add
 )
 (func $~lib/env/ultrain_assert (; 28 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  i32.const 1
  i32.and
  i32.const 0
  i32.eq
  if
   i32.const 0
   get_local $1
   call $~lib/utf8util/string2cstr
   call $~lib/env/ultrainio_assert
  end
 )
 (func $~lib/ultrain-ts-lib/src/utils/toUTF8Array (; 29 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $2
     call $~lib/string/String#charCodeAt
     set_local $3
     get_local $3
     i32.const 128
     i32.lt_s
     if
      get_local $1
      get_local $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      get_local $3
      i32.const 2048
      i32.lt_s
      if
       get_local $1
       i32.const 192
       get_local $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       get_local $1
       i32.const 128
       get_local $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       get_local $3
       i32.const 55296
       i32.lt_s
       tee_local $4
       if (result i32)
        get_local $4
       else        
        get_local $3
        i32.const 57344
        i32.ge_s
       end
       if
        get_local $1
        i32.const 224
        get_local $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        get_local $2
        i32.const 1
        i32.add
        set_local $2
        i32.const 65536
        get_local $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        get_local $0
        get_local $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        set_local $3
        get_local $1
        i32.const 240
        get_local $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        get_local $1
        i32.const 128
        get_local $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  get_local $1
 )
 (func $~lib/ultrain-ts-lib/src/utils/string2cstr (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $~lib/ultrain-ts-lib/src/utils/toUTF8Array
  set_local $1
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 8
  i32.add
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#s (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  call $~lib/ultrain-ts-lib/src/utils/string2cstr
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s
  get_local $0
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#i (; 32 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  get_local $1
  get_local $2
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i
  get_local $0
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#flush (; 33 ;) (type $iv) (param $0 i32)
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_done
 )
 (func $~lib/ultrain-ts-lib/src/asset/StringToSymbol (; 34 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.load
  set_local $2
  get_local $2
  i32.const 255
  i32.and
  i32.const 7
  i32.le_u
  i32.const 1296
  call $~lib/env/ultrain_assert
  i64.const 0
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $1
     get_local $4
     i32.const 255
     i32.and
     call $~lib/string/String#charCodeAt
     i32.const 255
     i32.and
     set_local $5
     get_local $5
     get_global $~lib/ultrain-ts-lib/src/asset/CHAR_A
     i32.lt_u
     tee_local $6
     if (result i32)
      get_local $6
     else      
      get_local $5
      get_global $~lib/ultrain-ts-lib/src/asset/CHAR_Z
      i32.gt_u
     end
     if
      get_global $~lib/ultrain-ts-lib/src/log/Log
      i32.const 1520
      call $~lib/ultrain-ts-lib/src/log/Logger#s
      get_local $5
      i64.extend_u/i32
      i32.const 16
      call $~lib/ultrain-ts-lib/src/log/Logger#i
      call $~lib/ultrain-ts-lib/src/log/Logger#flush
     else      
      get_local $3
      get_local $5
      i64.extend_u/i32
      i64.const 8
      get_local $4
      i32.const 1
      i32.add
      i32.const 255
      i32.and
      i64.extend_u/i32
      i64.mul
      i64.shl
      i64.or
      set_local $3
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
  get_local $0
  i32.const 255
  i32.and
  i64.extend_u/i32
  i64.or
  set_local $3
  get_local $3
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#_Contract_super (; 35 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  get_local $1
  i64.store
 )
 (func $~lib/ultrain-ts-lib/lib/name/char_to_symbol (; 36 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 97
   i32.sub
   i32.const 6
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 49
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 53
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 49
   i32.sub
   i32.const 1
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  i64.const 0
 )
 (func $~lib/ultrain-ts-lib/lib/name/N (; 37 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $1
  i64.const 0
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    i32.const 12
    i32.le_u
    i32.eqz
    br_if $break|0
    block
     i64.const 0
     set_local $4
     get_local $3
     get_local $1
     i32.lt_u
     tee_local $5
     if (result i32)
      get_local $3
      i32.const 12
      i32.le_u
     else      
      get_local $5
     end
     if
      get_local $0
      get_local $3
      call $~lib/string/String#charCodeAt
      i32.const 255
      i32.and
      call $~lib/ultrain-ts-lib/lib/name/char_to_symbol
      set_local $4
     end
     get_local $3
     i32.const 12
     i32.lt_u
     if
      get_local $4
      i64.const 31
      i64.and
      set_local $4
      get_local $4
      i64.const 64
      i64.const 5
      get_local $3
      i32.const 1
      i32.add
      i64.extend_u/i32
      i64.mul
      i64.sub
      i64.shl
      set_local $4
     else      
      get_local $4
      i64.const 15
      i64.and
      set_local $4
     end
     get_local $2
     get_local $4
     i64.or
     set_local $2
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/ultrain-ts-lib/src/account/NAME (; 38 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  call $~lib/ultrain-ts-lib/lib/name/N
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver (; 39 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<Rock>#constructor (; 40 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 24
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i64.const 0
    i64.store
    get_local $4
    i64.const 0
    i64.store offset=8
    get_local $4
    i64.const 0
    i64.store offset=16
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $2
  i64.store offset=8
  get_local $0
  get_local $3
  i64.store offset=16
  get_local $0
 )
 (func $contract/RockContract/RockContract#constructor (; 41 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  drop
  get_local $1
  drop
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 16
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i64.const 0
    i64.store
    get_local $2
    i32.const 0
    i32.store offset=8
    get_local $2
    i32.const 0
    i32.store offset=12
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  call $~lib/ultrain-ts-lib/src/contract/Contract#_Contract_super
  get_local $0
  i32.const 0
  get_global $contract/RockContract/rockstable
  call $~lib/ultrain-ts-lib/src/account/NAME
  get_local $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  get_global $contract/RockContract/rockscope
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<Rock>#constructor
  i32.store offset=12
  get_local $0
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor (; 42 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 16
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    i64.const 0
    i64.store
    get_local $3
    i64.const 0
    i64.store offset=8
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
  get_local $2
  i64.store offset=8
  get_local $0
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#setActionName (; 43 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  get_local $0
  i32.const 0
  get_local $1
  get_local $2
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor
  i32.store offset=8
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#onInit (; 44 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  block $~lib/memory/memory.fill|inlined.3
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/datastream/DataStream#constructor (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    i32.const 0
    i32.store
    get_local $3
    i32.const 0
    i32.store offset=4
    get_local $3
    i32.const 0
    i32.store offset=8
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
 )
 (func $~lib/ultrain-ts-lib/src/contract/DataStreamFromCurrentAction (; 47 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/ultrain-ts-lib/internal/action.d/env.action_data_size
  set_local $0
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $1
  get_local $1
  i32.load
  get_local $0
  call $~lib/ultrain-ts-lib/internal/action.d/env.read_action_data
  drop
  i32.const 0
  get_local $1
  i32.load
  get_local $0
  call $~lib/datastream/DataStream#constructor
  set_local $2
  get_local $2
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#getDataStream (; 48 ;) (type $ii) (param $0 i32) (result i32)
  call $~lib/ultrain-ts-lib/src/contract/DataStreamFromCurrentAction
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/char_to_symbol_ex (; 49 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 46
  i32.eq
  if
   i64.const 0
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 95
  i32.eq
  if
   i64.const 1
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 48
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 57
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 48
   i32.sub
   i32.const 2
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 97
   i32.sub
   i32.const 12
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  get_local $0
  i32.const 255
  i32.and
  i32.const 65
  i32.ge_u
  tee_local $1
  if (result i32)
   get_local $0
   i32.const 255
   i32.and
   i32.const 90
   i32.le_u
  else   
   get_local $1
  end
  if
   get_local $0
   i32.const 65
   i32.sub
   i32.const 38
   i32.add
   i32.const 255
   i32.and
   i64.extend_u/i32
   return
  end
  i64.const 255
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NEX (; 50 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor
  set_local $1
  i64.const 0
  set_local $2
  get_local $0
  i32.load
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $4
     call $~lib/string/String#charCodeAt
     call $~lib/ultrain-ts-lib/lib/name_ex/char_to_symbol_ex
     set_local $5
     get_local $4
     i32.const 9
     i32.le_s
     if
      get_local $2
      get_local $5
      i64.const 6
      get_local $4
      i64.extend_s/i32
      i64.mul
      i64.shl
      i64.or
      set_local $2
     else      
      get_local $4
      i32.const 10
      i32.eq
      if
       get_local $5
       i64.const 15
       i64.and
       set_local $6
       get_local $2
       get_local $6
       i64.const 6
       get_local $4
       i64.extend_s/i32
       i64.mul
       i64.shl
       i64.or
       set_local $2
       get_local $1
       get_local $2
       i64.store offset=8
       get_local $5
       i64.const 48
       i64.and
       i64.const 4
       i64.shr_u
       set_local $7
       get_local $7
       set_local $2
      else       
       get_local $2
       get_local $5
       i64.const 6
       get_local $4
       i32.const 11
       i32.sub
       i64.extend_s/i32
       i64.mul
       i64.const 2
       i64.add
       i64.shl
       i64.or
       set_local $2
      end
     end
     get_local $3
     i32.const 10
     i32.le_s
     if
      get_local $1
      get_local $2
      i64.store offset=8
     else      
      get_local $1
      get_local $2
      i64.store
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NameEx._eq (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i64.load
  get_local $1
  i64.load
  i64.eq
  tee_local $2
  if (result i32)
   get_local $0
   i64.load offset=8
   get_local $1
   i64.load offset=8
   i64.eq
  else   
   get_local $2
  end
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#isAction (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load offset=8
  get_local $1
  call $~lib/ultrain-ts-lib/lib/name_ex/NEX
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx._eq
 )
 (func $~lib/datastream/DataStream#read<u64> (; 53 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i64.load
  set_local $1
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
  get_local $1
 )
 (func $~lib/dbmanager/DBManager<Rock>#find (; 54 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load offset=16
  get_local $0
  i64.load
  get_local $1
  call $~lib/env/db_find_i64
  set_local $2
  get_local $2
 )
 (func $~lib/dbmanager/DBManager<Rock>#exists (; 55 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  call $~lib/dbmanager/DBManager<Rock>#find
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $~lib/datastream/DataStream#isMeasureMode (; 56 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const 0
  i32.eq
 )
 (func $~lib/datastream/DataStream#write<u64> (; 57 ;) (type $iIv) (param $0 i32) (param $1 i64)
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=8
   i32.add
   get_local $1
   i64.store
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#write<u8> (; 58 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $0
   i32.load
   get_local $0
   i32.load offset=8
   i32.add
   get_local $1
   i32.store8
  end
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#writeVarint32 (; 59 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $continue|0
   block
    get_local $1
    i32.const 127
    i32.and
    set_local $2
    get_local $1
    i32.const 7
    i32.shr_u
    set_local $1
    get_local $2
    get_local $1
    i32.const 0
    i32.gt_u
    if (result i32)
     i32.const 1
    else     
     i32.const 0
    end
    i32.const 7
    i32.shl
    i32.or
    set_local $2
    get_local $0
    get_local $2
    call $~lib/datastream/DataStream#write<u8>
   end
   get_local $1
   br_if $continue|0
  end
 )
 (func $~lib/datastream/DataStream#writeString (; 60 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.load
  set_local $2
  get_local $0
  get_local $2
  call $~lib/datastream/DataStream#writeVarint32
  get_local $2
  i32.const 0
  i32.eq
  if
   return
  end
  get_local $1
  call $~lib/utf8util/toUTF8Array
  set_local $3
  get_local $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   get_local $3
   i32.load
   i32.const 8
   i32.add
   set_local $4
   block $~lib/memory/memory.copy|inlined.1
    get_local $0
    i32.load
    get_local $0
    i32.load offset=8
    i32.add
    set_local $5
    block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
     get_local $3
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    set_local $6
    get_local $5
    get_local $4
    get_local $6
    call $~lib/internal/memory/memmove
   end
  end
  get_local $0
  get_local $0
  i32.load offset=8
  block $~lib/array/Array<u8>#get:length|inlined.1 (result i32)
   get_local $3
   i32.load offset=4
  end
  i32.const 1
  i32.sub
  i32.add
  i32.store offset=8
 )
 (func $contract/RockContract/Rock#serialize (; 61 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $1
  get_local $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  get_local $1
  get_local $0
  i32.load offset=8
  call $~lib/datastream/DataStream#writeString
 )
 (func $~lib/datastream/DataStream.measure<Rock> (; 62 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  set_local $1
  get_local $0
  get_local $1
  call $contract/RockContract/Rock#serialize
  get_local $1
  i32.load offset=8
 )
 (func $contract/RockContract/Rock#primaryKey (; 63 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<Rock>#emplace (; 64 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  get_local $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 1792
  call $~lib/env/ultrain_assert
  get_local $2
  call $~lib/datastream/DataStream.measure<Rock>
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $4
  i32.const 0
  get_local $4
  i32.load
  get_local $3
  call $~lib/datastream/DataStream#constructor
  set_local $5
  get_local $2
  get_local $5
  call $contract/RockContract/Rock#serialize
  get_local $2
  call $contract/RockContract/Rock#primaryKey
  set_local $6
  get_local $0
  i64.load offset=16
  get_local $0
  i64.load
  get_local $1
  get_local $6
  get_local $5
  i32.load
  get_local $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
 )
 (func $contract/RockContract/RockContract#addPerson (; 65 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  block (result i32)
   i32.const 12
   call $~lib/memory/memory.allocate
   set_local $2
   get_local $2
   i64.const 0
   i64.store
   get_local $2
   i32.const 1784
   i32.store offset=8
   get_local $2
  end
  set_local $2
  get_local $2
  get_local $1
  i64.store
  get_local $0
  i32.load offset=12
  get_local $1
  call $~lib/dbmanager/DBManager<Rock>#exists
  set_local $3
  get_local $3
  i32.eqz
  if
   get_local $0
   i32.load offset=12
   get_local $0
   call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
   get_local $2
   call $~lib/dbmanager/DBManager<Rock>#emplace
  else   
   i32.const 0
   i32.const 1904
   call $~lib/env/ultrain_assert
  end
 )
 (func $~lib/datastream/DataStream#read<u8> (; 66 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i32.load8_u
  set_local $1
  get_local $0
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  get_local $1
 )
 (func $~lib/ultrain-ts-lib/src/action/Action.get:sender (; 67 ;) (type $I) (result i64)
  call $~lib/ultrain-ts-lib/internal/action.d/env.current_sender
 )
 (func $~lib/dbmanager/Cursor<Rock>#constructor (; 68 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i64)
  (local $5 i32)
  get_local $1
  get_local $3
  get_local $2
  call $~lib/env/db_iterator_i64
  set_local $4
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $4
  i64.const 4294967295
  i64.and
  i32.wrap/i64
  i32.store
  get_local $0
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  i32.store offset=8
  get_local $0
  get_local $0
  i32.load
  i32.store offset=4
  get_local $0
 )
 (func $~lib/dbmanager/DBManager<Rock>#cursor (; 69 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i64.load offset=8
  get_local $0
  i64.load
  get_local $0
  i64.load offset=16
  call $~lib/dbmanager/Cursor<Rock>#constructor
 )
 (func $~lib/dbmanager/Cursor<Rock>#get:count (; 70 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=8
 )
 (func $~lib/ultrain-ts-lib/src/crypto/Crypto#_Crypto_super (; 71 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  i32.const 0
  get_local $1
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  i32.store
 )
 (func $~lib/ultrain-ts-lib/src/crypto/SHA1#constructor (; 72 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  drop
  i32.const 20
  drop
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  i32.const 20
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#_Crypto_super
  get_local $0
 )
 (func $~lib/dbmanager/Cursor<Rock>#upper_bound (; 73 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=8
  i32.add
  i32.const 1
  i32.sub
 )
 (func $~lib/dbmanager/Cursor<Rock>#hasNext (; 74 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.le_s
  tee_local $1
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $0
   call $~lib/dbmanager/Cursor<Rock>#upper_bound
   i32.le_s
  else   
   get_local $1
  end
 )
 (func $~lib/datastream/DataStream#readVarint32 (; 75 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  set_local $1
  i32.const 0
  set_local $2
  block $break|0
   loop $continue|0
    block
     get_local $0
     call $~lib/datastream/DataStream#read<u8>
     set_local $3
     get_local $1
     get_local $3
     i32.const 127
     i32.and
     i32.const 7
     block (result i32)
      get_local $2
      tee_local $4
      i32.const 1
      i32.add
      set_local $2
      get_local $4
     end
     i32.mul
     i32.shl
     i32.or
     set_local $1
    end
    get_local $3
    i32.const 128
    i32.and
    br_if $continue|0
   end
  end
  get_local $1
 )
 (func $~lib/datastream/DataStream#readString (; 76 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  call $~lib/datastream/DataStream#readVarint32
  set_local $1
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 1784
   return
  end
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   get_global $~lib/datastream/HEADER_SIZE
   get_local $1
   i32.const 1
   i32.shl
   i32.add
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $3
  get_local $3
  get_local $1
  i32.store
  get_local $3
  set_local $2
  i32.const 0
  set_local $4
  block $break|0
   loop $continue|0
    get_local $4
    get_local $1
    i32.lt_u
    if
     block
      get_local $0
      call $~lib/datastream/DataStream#read<u8>
      set_local $5
      get_local $2
      i32.const 2
      get_local $4
      i32.mul
      i32.add
      get_local $5
      i32.store16 offset=4
      get_local $4
      i32.const 1
      i32.add
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
 )
 (func $contract/RockContract/Rock#deserialize (; 77 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  get_local $0
  get_local $1
  call $~lib/datastream/DataStream#readString
  i32.store offset=8
 )
 (func $~lib/dbmanager/Cursor<Rock>#get (; 78 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  i32.ge_s
  tee_local $1
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $0
   call $~lib/dbmanager/Cursor<Rock>#upper_bound
   i32.le_s
  else   
   get_local $1
  end
  i32.const 2096
  call $~lib/env/ultrain_assert
  block (result i32)
   i32.const 12
   call $~lib/memory/memory.allocate
   set_local $1
   get_local $1
  end
  set_local $2
  get_local $0
  i32.load offset=4
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $4
  i32.const 0
  get_local $4
  i32.load
  get_local $3
  call $~lib/datastream/DataStream#constructor
  set_local $5
  get_local $0
  i32.load offset=4
  get_local $4
  i32.load
  get_local $3
  call $~lib/env/db_get_i64
  drop
  get_local $2
  get_local $5
  call $contract/RockContract/Rock#deserialize
  get_local $2
 )
 (func $~lib/array/Array<u8>#__set (; 79 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 0
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 1073741816
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.1
   get_local $3
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   get_local $2
   i32.store8 offset=8
  end
 )
 (func $~lib/array/Array<u8>#__get (; 80 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<String>#__get (; 81 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/internal/string/allocateUnsafe (; 82 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.gt_s
  tee_local $1
  if (result i32)
   get_local $0
   get_global $~lib/internal/string/MAX_LENGTH
   i32.le_s
  else   
   get_local $1
  end
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   get_global $~lib/internal/string/HEADER_SIZE
   get_local $0
   i32.const 1
   i32.shl
   i32.add
   set_local $1
   get_local $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $2
  get_local $2
  get_local $0
  i32.store
  get_local $2
 )
 (func $~lib/internal/string/copyUnsafe (; 83 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $5
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $6
  get_local $4
  i32.const 1
  i32.shl
  set_local $7
  get_local $5
  get_local $6
  get_local $7
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 84 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 2264
   set_local $1
  end
  get_local $0
  i32.load
  set_local $2
  get_local $1
  i32.load
  set_local $3
  get_local $2
  get_local $3
  i32.add
  set_local $4
  get_local $4
  i32.const 0
  i32.eq
  if
   i32.const 1784
   return
  end
  get_local $4
  call $~lib/internal/string/allocateUnsafe
  set_local $5
  get_local $5
  i32.const 0
  get_local $0
  i32.const 0
  get_local $2
  call $~lib/internal/string/copyUnsafe
  get_local $5
  get_local $2
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $5
 )
 (func $~lib/string/String.__concat (; 85 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 2264
   set_local $0
  end
  get_local $0
  get_local $1
  call $~lib/string/String#concat
 )
 (func $~lib/ultrain-ts-lib/lib/name/RN (; 86 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i64.const 0
  i64.eq
  if
   i32.const 136
   return
  end
  i32.const 2256
  set_local $1
  get_local $0
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    i32.const 12
    i32.le_u
    i32.eqz
    br_if $break|0
    block
     get_local $2
     get_local $3
     i32.const 0
     i32.eq
     if (result i64)
      i64.const 15
     else      
      i64.const 31
     end
     i64.and
     i32.wrap/i64
     set_local $4
     i32.const 2152
     get_local $4
     call $~lib/string/String#charCodeAt
     i32.const 255
     i32.and
     set_local $5
     get_local $1
     i32.const 12
     get_local $3
     i32.sub
     get_local $5
     call $~lib/array/Array<u8>#__set
     get_local $2
     get_local $3
     i32.const 0
     i32.eq
     if (result i64)
      i64.const 4
     else      
      i64.const 5
     end
     i64.shr_u
     set_local $2
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1784
  set_local $3
  i32.const 1
  set_local $5
  block $break|1
   i32.const 12
   set_local $4
   loop $repeat|1
    get_local $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|1
    get_local $1
    get_local $4
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    i32.const 46
    i32.eq
    tee_local $6
    if (result i32)
     get_local $5
    else     
     get_local $6
    end
    if
     nop
    else     
     i32.const 0
     set_local $5
     get_local $1
     get_local $4
     call $~lib/array/Array<u8>#__get
     i32.const 32
     i32.sub
     set_local $6
     get_global $~lib/ultrain-ts-lib/src/utils/PrintableChar
     get_local $6
     i32.const 255
     i32.and
     call $~lib/array/Array<String>#__get
     get_local $3
     call $~lib/string/String.__concat
     set_local $3
    end
    get_local $4
    i32.const 1
    i32.sub
    set_local $4
    br $repeat|1
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $~lib/ultrain-ts-lib/src/account/RNAME (; 87 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/ultrain-ts-lib/lib/name/RN
 )
 (func $~lib/ultrain-ts-lib/src/crypto/Crypto#get:buffer (; 88 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.load
 )
 (func $~lib/ultrain-ts-lib/src/crypto/Crypto#get:bufferSize (; 89 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  set_local $1
  get_local $1
  i32.load offset=8
  get_local $1
  i32.load offset=4
  i32.sub
  i32.const 0
  i32.shr_s
 )
 (func $~lib/string/String#charAt (; 90 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const 1784
   return
  end
  i32.const 1
  call $~lib/internal/string/allocateUnsafe
  set_local $2
  get_local $2
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
  i32.store16 offset=4
  get_local $2
 )
 (func $~lib/ultrain-ts-lib/src/crypto/to_hex (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1784
  set_local $2
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $0
     get_local $3
     i32.add
     i32.load8_u
     set_local $4
     get_local $4
     i32.const 255
     i32.and
     set_local $5
     get_local $2
     get_global $~lib/ultrain-ts-lib/src/crypto/HexDigital
     get_local $5
     i32.const 4
     i32.shr_u
     call $~lib/string/String#charAt
     call $~lib/string/String.__concat
     get_global $~lib/ultrain-ts-lib/src/crypto/HexDigital
     get_local $5
     i32.const 15
     i32.and
     call $~lib/string/String#charAt
     call $~lib/string/String.__concat
     set_local $2
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/ultrain-ts-lib/src/crypto/Crypto#toString (; 92 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#get:buffer
  get_local $0
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#get:bufferSize
  call $~lib/ultrain-ts-lib/src/crypto/to_hex
 )
 (func $~lib/ultrain-ts-lib/src/crypto/SHA1#hash (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  call $~lib/ultrain-ts-lib/src/utils/string2cstr
  get_local $1
  i32.load
  get_local $0
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#get:buffer
  get_local $0
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#get:bufferSize
  call $~lib/ultrain-ts-lib/internal/crypto.d/env.ts_sha1
  get_local $0
  call $~lib/ultrain-ts-lib/src/crypto/Crypto#toString
 )
 (func $~lib/string/String#substr (; 94 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  set_local $3
  get_local $2
  set_local $4
  get_local $0
  i32.load
  set_local $5
  get_local $3
  i32.const 0
  i32.lt_s
  if
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
   set_local $3
  end
  get_local $4
  tee_local $6
  i32.const 0
  tee_local $7
  get_local $6
  get_local $7
  i32.gt_s
  select
  tee_local $6
  get_local $5
  get_local $3
  i32.sub
  tee_local $7
  get_local $6
  get_local $7
  i32.lt_s
  select
  set_local $8
  get_local $8
  i32.const 0
  i32.le_s
  if
   i32.const 1784
   return
  end
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  get_local $9
  i32.const 0
  get_local $0
  get_local $3
  get_local $8
  call $~lib/internal/string/copyUnsafe
  get_local $9
 )
 (func $~lib/dbmanager/DBManager<Rock>#modify (; 95 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $2
  call $contract/RockContract/Rock#primaryKey
  call $~lib/dbmanager/DBManager<Rock>#find
  set_local $3
  get_local $3
  i32.const 0
  i32.ge_s
  i32.const 2336
  call $~lib/env/ultrain_assert
  get_local $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 2456
  call $~lib/env/ultrain_assert
  get_local $2
  call $~lib/datastream/DataStream.measure<Rock>
  set_local $4
  i32.const 0
  get_local $4
  call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
  set_local $5
  i32.const 0
  get_local $5
  i32.load
  get_local $4
  call $~lib/datastream/DataStream#constructor
  set_local $6
  get_local $2
  get_local $6
  call $contract/RockContract/Rock#serialize
  get_local $3
  get_local $1
  get_local $6
  i32.load
  get_local $6
  i32.load offset=8
  call $~lib/env/db_update_i64
 )
 (func $~lib/dbmanager/Cursor<Rock>#next (; 96 ;) (type $iv) (param $0 i32)
  get_local $0
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $contract/RockContract/RockContract#rock (; 97 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/ultrain-ts-lib/src/action/Action.get:sender
  get_local $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  i64.eq
  i32.const 1984
  call $~lib/env/ultrain_assert
  get_local $0
  i32.load offset=12
  call $~lib/dbmanager/DBManager<Rock>#cursor
  set_local $2
  get_global $~lib/ultrain-ts-lib/src/log/Log
  i32.const 2064
  call $~lib/ultrain-ts-lib/src/log/Logger#s
  get_local $2
  call $~lib/dbmanager/Cursor<Rock>#get:count
  i64.extend_u/i32
  i32.const 10
  call $~lib/ultrain-ts-lib/src/log/Logger#i
  call $~lib/ultrain-ts-lib/src/log/Logger#flush
  i32.const 0
  call $~lib/ultrain-ts-lib/src/crypto/SHA1#constructor
  set_local $3
  block $break|0
   loop $continue|0
    get_local $2
    call $~lib/dbmanager/Cursor<Rock>#hasNext
    if
     block
      get_local $2
      call $~lib/dbmanager/Cursor<Rock>#get
      set_local $4
      get_local $4
      i32.load offset=8
      i32.const 1784
      i32.eq
      tee_local $5
      if (result i32)
       get_local $1
       i32.const 255
       i32.and
       i32.const 0
       i32.gt_u
      else       
       get_local $5
      end
      if
       get_local $3
       get_local $4
       i64.load
       call $~lib/ultrain-ts-lib/src/account/RNAME
       call $~lib/ultrain-ts-lib/src/crypto/SHA1#hash
       i32.const 0
       i32.const 7
       call $~lib/string/String#substr
       set_local $5
       get_local $4
       get_local $5
       i32.const 0
       i32.const 5
       call $~lib/string/String#substr
       i32.store offset=8
       get_local $1
       i32.const 1
       i32.sub
       set_local $1
       get_local $0
       i32.load offset=12
       get_local $0
       call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
       get_local $4
       call $~lib/dbmanager/DBManager<Rock>#modify
      end
      get_local $2
      call $~lib/dbmanager/Cursor<Rock>#next
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#onStop (; 98 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $contract/RockContract/apply (; 99 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  get_local $0
  get_local $1
  i64.eq
  if
   i32.const 0
   get_local $0
   call $contract/RockContract/RockContract#constructor
   set_local $4
   get_local $4
   get_local $2
   get_local $3
   call $~lib/ultrain-ts-lib/src/contract/Contract#setActionName
   get_local $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#onInit
   get_local $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#getDataStream
   set_local $5
   get_local $4
   i32.const 1760
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    get_local $5
    call $~lib/datastream/DataStream#read<u64>
    set_local $6
    get_local $4
    get_local $6
    call $contract/RockContract/RockContract#addPerson
   end
   get_local $4
   i32.const 1664
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    get_local $5
    call $~lib/datastream/DataStream#read<u8>
    set_local $7
    get_local $4
    get_local $7
    call $contract/RockContract/RockContract#rock
   end
   get_local $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#onStop
  end
 )
 (func $start (; 100 ;) (type $v)
  (local $0 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  nop
  block (result i32)
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
  end
  set_global $~lib/ultrain-ts-lib/src/log/Log
  i32.const 4
  i32.const 1280
  call $~lib/ultrain-ts-lib/src/asset/StringToSymbol
  set_global $~lib/ultrain-ts-lib/src/asset/SYS
  get_global $~lib/ultrain-ts-lib/src/asset/SYS
  i64.const 8
  i64.shr_u
  set_global $~lib/ultrain-ts-lib/src/asset/SYS_NAME
 )
 (func $null (; 101 ;) (type $v)
 )
)
