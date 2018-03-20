#########################################################################
#  OpenKore - Packet Receiveing
#  This module contains functions for Receiveing packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
########################################################################
# Korea (kRO) #bysctnightcore
# The majority of private servers use eAthena, this is a clone of kRO
package Network::Receive::kRO::RagexeRE_2014_01_15e;

use strict;
use base qw(Network::Receive::kRO::RagexeRE_2013_08_07a);

1;
=pod
#if PACKETVER == 20140115
// shuffle packets
	packet(0x035f,6,clif->pTickSend,2); // added in 2014-01-08bRagexeRE // CZ_REQUEST_TIME
	packet(0x0360,6,clif->pReqClickBuyingStore,2); // added in 2014-01-08bRagexeRE // CZ_REQ_CLICK_TO_BUYING_STORE
	packet(0x0361,6,clif->pDropItem,2,4); // added in same version  // CZ_ITEM_THROW
	packet(0x0366,90,clif->pUseSkillToPosMoreInfo,2,4,6,8,10); // added in 2014-01-08bRagexeRE // CZ_USE_SKILL_TOGROUND_WITHTALKBOX
	packet(0x0367,8,clif->pMoveFromKafra,2,4); // added in same version  // CZ_MOVE_ITEM_FROM_STORE_TO_BODY
	packet(0x0368,6,clif->pSolveCharName,2); // added in 2014-01-08bRagexeRE // CZ_REQNAME_BYGID
	packet(0x0369,7,clif->pActionRequest,2,6); // added in 2014-01-08bRagexeRE // CZ_REQUEST_ACT
	packet(0x0437,5,clif->pWalkToXY,2); // added in 2014-01-08bRagexeRE // CZ_REQUEST_MOVE
	packet(0x0438,10,clif->pUseSkillToPos,2,4,6,8); // added in 2014-01-08bRagexeRE // CZ_USE_SKILL_TOGROUND
	packet(0x0802,6,clif->pGetCharNameRequest,2); // added in same version  // CZ_REQNAME
	packet(0x0815,-1,clif->pReqOpenBuyingStore,2,4,8,9,89); // added in 2014-01-08bRagexeRE // CZ_REQ_OPEN_BUYING_STORE
	packet(0x0817,2,clif->pReqCloseBuyingStore,0); // added in 2013-11-27aRagexeRE // CZ_REQ_CLOSE_BUYING_STORE
	packet(0x0819,-1,clif->pSearchStoreInfo,2,4,5,9,13,14,15); // added in 2014-01-08bRagexeRE // CZ_SEARCH_STORE_INFO
	packet(0x0835,2,clif->pSearchStoreInfoNextPage,0); // added in 2013-10-30aRagexe // CZ_SEARCH_STORE_INFO_NEXT_PAGE
	packet(0x0838,12,clif->pSearchStoreInfoListItemClick,2,6,10); // added in 2014-01-08bRagexeRE // CZ_SSILIST_ITEM_CLICK
	packet(0x083c,10,clif->pUseSkillToId,2,4,6); // added in 2014-01-08bRagexeRE // CZ_USE_SKILL
	packet(0x0865,36,clif->pStoragePassword,0); // added in same version  // CZ_ACK_STORE_PASSWORD
	packet(0x0887,-1,clif->pReqTradeBuyingStore,2,4,8,12); // added in same version  // CZ_REQ_TRADE_BUYING_STORE
	packet(0x088a,8,clif->pDull/*,XXX*/); // added in same version  // CZ_JOIN_BATTLE_FIELD
	packet(0x088e,8,clif->pMoveToKafra,2,4); // added in same version  // CZ_MOVE_ITEM_FROM_BODY_TO_STORE
	packet(0x089b,26,clif->pFriendsListAdd,2); // added in same version  // CZ_ADD_FRIENDS
	packet(0x08a7,5,clif->pChangeDir,2,4); // added in same version  // CZ_CHANGE_DIRECTION
	packet(0x092d,5,clif->pHomMenu,2,4); // added in same version  // CZ_COMMAND_MER
	packet(0x0940,6,clif->pTakeItem,2); // added in same version  // CZ_ITEM_PICKUP
	packet(0x095b,4,clif->pDull/*,XXX*/); // added in same version  // CZ_GANGSI_RANK
	packet(0x095d,26,clif->pPartyInvite2,2); // added in same version  // CZ_PARTY_JOIN_REQ
	packet(0x0965,-1,clif->pItemListWindowSelected,2,4,8); // added in same version  // CZ_ITEMLISTWIN_RES
	packet(0x0966,19,clif->pWantToConnection,2,6,10,14,18); // added in same version  // CZ_ENTER
	packet(0x096a,18,clif->pPartyBookingRegisterReq,2,4); // added in same version  // CZ_PARTY_BOOKING_REQ_REGISTER
#endif
#if PACKETVER >= 20140115
// new packets
// changed packet sizes
#endif

#if PACKETVER == 20140115
	packetKeys(0x63224335,0x0F3A1F27,0x6D217B24);
#endif

=cut
