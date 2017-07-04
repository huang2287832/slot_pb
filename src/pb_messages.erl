-module(pb_messages).

-export([msg_type/1, msg_code/1, decoder_for/1]).

-spec msg_type(non_neg_integer()) -> atom().

msg_type(100) -> loginReq;
msg_type(101) -> loginResp;
msg_type(102) -> errResp;
msg_type(103) -> beatHeartReq;
msg_type(104) -> beatHeartResp;
msg_type(105) -> gmReq;
msg_type(106) -> gmResp;
msg_type(107) -> kickUserPush;
msg_type(108) -> getBalanceReq;
msg_type(109) -> getBalanceResp;
msg_type(110) -> balancePush;
msg_type(200) -> spinReq;
msg_type(201) -> spinResp;
msg_type(202) -> guessReq;
msg_type(203) -> guessResp;
msg_type(204) -> restoreReq;
msg_type(205) -> restoreResp;
msg_type(206) -> lgDataReq;
msg_type(207) -> lgDataResp;
msg_type(208) -> lgActionReq;
msg_type(209) -> lgActionResp;
msg_type(210) -> dbGetBalanceReq;
msg_type(211) -> dbGetBalanceResp;
msg_type(212) -> jpGetBalanceReq;
msg_type(213) -> jpGetBalanceResp;
msg_type(214) -> jpBalancePush;
msg_type(_) -> undefined.

-spec msg_code(atom()) -> non_neg_integer().

msg_code(loginReq) -> 100;
msg_code(loginResp) -> 101;
msg_code(errResp) -> 102;
msg_code(beatHeartReq) -> 103;
msg_code(beatHeartResp) -> 104;
msg_code(gmReq) -> 105;
msg_code(gmResp) -> 106;
msg_code(kickUserPush) -> 107;
msg_code(getBalanceReq) -> 108;
msg_code(getBalanceResp) -> 109;
msg_code(balancePush) -> 110;
msg_code(spinReq) -> 200;
msg_code(spinResp) -> 201;
msg_code(guessReq) -> 202;
msg_code(guessResp) -> 203;
msg_code(restoreReq) -> 204;
msg_code(restoreResp) -> 205;
msg_code(lgDataReq) -> 206;
msg_code(lgDataResp) -> 207;
msg_code(lgActionReq) -> 208;
msg_code(lgActionResp) -> 209;
msg_code(dbGetBalanceReq) -> 210;
msg_code(dbGetBalanceResp) -> 211;
msg_code(jpGetBalanceReq) -> 212;
msg_code(jpGetBalanceResp) -> 213;
msg_code(jpBalancePush) -> 214.

-spec decoder_for(non_neg_integer()) -> module().


decoder_for(100) -> slot_pb;
decoder_for(101) -> slot_pb;
decoder_for(102) -> slot_pb;
decoder_for(103) -> slot_pb;
decoder_for(104) -> slot_pb;
decoder_for(105) -> slot_pb;
decoder_for(106) -> slot_pb;
decoder_for(107) -> slot_pb;
decoder_for(108) -> slot_pb;
decoder_for(109) -> slot_pb;
decoder_for(110) -> slot_pb;
decoder_for(200) -> slot_spin_pb;
decoder_for(201) -> slot_spin_pb;
decoder_for(202) -> slot_spin_pb;
decoder_for(203) -> slot_spin_pb;
decoder_for(204) -> slot_spin_pb;
decoder_for(205) -> slot_spin_pb;
decoder_for(206) -> slot_spin_pb;
decoder_for(207) -> slot_spin_pb;
decoder_for(208) -> slot_spin_pb;
decoder_for(209) -> slot_spin_pb;
decoder_for(210) -> slot_jp_pb;
decoder_for(211) -> slot_jp_pb;
decoder_for(212) -> slot_jp_pb;
decoder_for(213) -> slot_jp_pb;
decoder_for(214) -> slot_jp_pb.