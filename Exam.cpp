//Question 4 of the exam
void Game::addItemToPlayer(const std::string& recipient, uint16_t itemId){
    Player* player = g_game.getPlayerByName(recipient);
    if (!player) {
        player = new Player(nullptr);
        if (!IOLoginData::loadPlayerByName(player, recipient)) {
            return;
        }
    }

Item* item = Item::CreateItem(itemId);
if (!item) {
    return;
}

g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT);

IOLoginData::savePlayer(player); //Removes the unnecessary loop where the player's data are stored. By moving this function outside 
                                //the loop, the player's data are stored only once.
}