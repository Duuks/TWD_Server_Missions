
_return=false;diag_log format["GROUP: Create %1",_this];_leader=_this select 0;_groupName=_this select 1;_token=_this select 2;if !([_leader,_token]call EPOCH_server_getPToken)exitWith{};if(_groupName !="")then{_groupID=getPlayerUID _leader;_leaderName=if(alive _leader)then{name _leader}else{"Dead Player"};_contentArray=[_groupName,_leaderName,EPOCH_group_upgrade_lvl_SEPXVar select 0,[],[]];[["groupUpdate",_contentArray],(owner _leader)]call EPOCH_sendPublicVariableClient;[["groupUidUpdate",_groupID],(owner _leader)]call EPOCH_sendPublicVariableClient;_leader setVariable["GROUP",_groupID];["Group",_groupID,_contentArray]call EPOCH_server_hiveSET;_return=true;};_return
