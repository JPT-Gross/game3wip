import java.util.ArrayList;

class MiniGames {
    int numOfGames = 1;
    MiniGame[] miniGames = {testGame};
    ArrayList<String> recentGames = new ArrayList<String>();
    
    public MiniGame miniGameChooser() {
        int randGame;
        do {
            randGame = (int)random(numOfGames - 1);
        } while(recentGames.contains(miniGames[randGame].name));
        return miniGames[randGame];
    }
    
    public void purgeRecentGames() {
        if (recentGames.size() > 3) {
            recentGames.remove(0);
        }
    }
    
    public void startMiniGame() {
        config.minigameResults(miniGameChooser().play());
    }
}
