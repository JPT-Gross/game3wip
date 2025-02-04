class MiniGame {
    Config config = new Config();
    Timer timer = new Timer();
    boolean objectiveComplete;
    
    public void Minigame(Boolean objComp) {
        objectiveComplete = objComp;
    }
    
    public String play(double timerLength) {
        timer.startTimer(timerLength, config.miniTimerMult);
        if (timer.timerEnd) {
            if (objectiveComplete) {
                return "WIN";
            } else {
                return "LOSE";
            }
        }
        return "KEEP PLAYING MAN";
    }
}
