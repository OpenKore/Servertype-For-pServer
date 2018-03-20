#########################################################################
#  OpenKore - Packet sending
#  This module contains functions for sending packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
########################################################################
#bysctnightcore
package Network::Send::kRO::RagexeRE_2017_11_01b;

use strict;
use base qw(Network::Send::kRO::RagexeRE_2017_10_25b);

sub new {
	my ($class) = @_;
	my $self = $class->SUPER::new(@_);
	
	my %packets = (
		'0957' => ['actor_action', 'a4 C', [qw(targetID type)]],
		'0860' => ['actor_info_request', 'a4', [qw(ID)]],
		'0876' => ['actor_look_at', 'v C', [qw(head body)]],
		'094D' => ['actor_name_request', 'a4', [qw(ID)]],
		'095A' => ['buy_bulk_buyer', 'a4 a4 a*', [qw(buyerID buyingStoreID itemInfo)]], #Buying store
		'094A' => ['buy_bulk_closeShop'],			
		'089B' => ['buy_bulk_openShop', 'a4 c a*', [qw(limitZeny result itemInfo)]], #Selling store
		'088E' => ['buy_bulk_request', 'a4', [qw(ID)]], #6
		'0939' => ['character_move', 'a3', [qw(coordString)]],
		'0872' => ['friend_request', 'a*', [qw(username)]],# len 26
		'085B' => ['homunculus_command', 'v C', [qw(commandType, commandID)]],
		'0835' => ['item_drop', 'a2 v', [qw(ID amount)]],
		'08AB' => ['item_list_window_selected', 'v V V a*', [qw(len type act itemInfo)]],
		'0962' => ['item_take', 'a4', [qw(ID)]],
		'0368' => ['map_login', 'a4 a4 a4 V C', [qw(accountID charID sessionID tick sex)]],
		'0899' => ['party_join_request_by_name', 'Z24', [qw(partyName)]],
		'086C' => ['skill_use', 'v2 a4', [qw(lv skillID targetID)]],
		'0966' => ['skill_use_location', 'v4', [qw(lv skillID x y)]],
		'091B' => ['storage_item_add', 'a2 V', [qw(ID amount)]],
		'08A0' => ['storage_item_remove', 'a2 V', [qw(ID amount)]],
		'022D' => ['storage_password'],
		'0438' => ['sync', 'V', [qw(time)]],		
	);
	
	$self->{packet_list}{$_} = $packets{$_} for keys %packets;
	
	my %handlers = qw(
		actor_action 0957
		actor_info_request 0860
		actor_look_at 0876
		actor_name_request 094D
		buy_bulk_buyer 095A
		buy_bulk_closeShop 094A
		buy_bulk_openShop 089B
		buy_bulk_request 088E
		character_move 0939
		friend_request 0872
		homunculus_command 085B
		item_drop 0835
		item_list_window_selected 08AB
		item_take 0962
		map_login 0368
		party_join_request_by_name 0899
		skill_use 086C
		skill_use_location 0966
		storage_item_add 091B
		storage_item_remove 08A0
		storage_password 022D
		sync 0438
	);
	
	while (my ($k, $v) = each %packets) { $handlers{$v->[0]} = $k}
	
	$self->{packet_lut}{$_} = $handlers{$_} for keys %handlers;
#	elif PACKETVER == 20171101 // 2017-11-01bRagexeRE
#	packet_keys(0x7056317F,0x7EEE0589,0x02672373);
#		use = $key1 $key3 $key2
#	$self->cryptKeys(0x7056317F,0x02672373,0x7EEE0589);


	return $self;
}

1;