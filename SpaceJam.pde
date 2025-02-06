Config config;
Splash splash;

void settings() {
    fullScreen();
}

void setup() {
    config = new Config();
    splash = new Splash();
    splash.preload();
    surface.setSize(config.windowWidth, config.windowHeight);
    //surface.setLocation(0, 0);
}

void draw() {
    //TODO pull the SplashScreen class and display
    background(255);
    splash.display();
    //TODO pull the MainMenu class and display
}
