--Question 1 of the exam.
function onLogout(player)
    local storageValue = player:getStorageValue(1000)
    if storage == nil then
        print("Error: player:getStorageValue is returning nil")
        return false
    end

    if storageValue == 1 then --sets the storageValue to 1, meaning it's true
       local successStorage == addEvent(releaseStorage, 1000, player)
    end

    return true --return the boolean true.
end


--Question 2 of the exam
function printSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT playerName FROM guilds WHERE max_members < %d;"
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))

    --this for loops goes through each guild name and print the guild's name
    for guildRow in resultId:rows() do
        print(guildRow.name) --prints the guild's name in rows.
    end
end


--Question 3 of the exam
function remove_player_from_PlayerParty(playerId, membername)
    player = Player(playerId) -- set playerID in a party
    local party = player:getParty() -- Fetches the party members 

    for players in remove_player_from_PlayerParty do
        if players == Player(membername) then --If players is the part of the member fetch that player
            party:removeMember(Player(membername)) --player gets removed from the party.
         end
    end
end