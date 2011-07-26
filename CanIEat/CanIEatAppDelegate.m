#import "CanIEatAppDelegate.h"

@implementation CanIEatAppDelegate


@synthesize window=window, tbc;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // create the root nav, view and tabbar item
    WelcomeScreenViewController *rootVC = [[WelcomeScreenViewController alloc] init];
    UINavigationController *rootNC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    rootVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Search" image:[UIImage imageNamed:@"06-magnify"] tag:0];
    
    // create order nav, view and tabbar item
    MyOrderViewController *orderVC = [[MyOrderViewController alloc] init];
    orderVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"My Order" image:[UIImage imageNamed:@"36-toolbox.png"] tag:0];
    UINavigationController *orderNC = [[UINavigationController alloc] initWithRootViewController:orderVC];
    
    // create a menu nav, view and its tabbar item
    MenuCategoriesViewController *menuVC = [[MenuCategoriesViewController alloc] init];
    UINavigationController *menuNC = [[UINavigationController alloc] initWithRootViewController:menuVC];
    menuVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu" image:[UIImage imageNamed:@"48-fork-and-knife.png"] tag:0];
    
    // create locations nav, view and tabbar item
    LocationsViewController *locationsVC = [[LocationsViewController alloc] init];
    UINavigationController *locationsNC = [[UINavigationController alloc] initWithRootViewController:locationsVC];
    locationsVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Locations" image:[UIImage imageNamed:@"73-radar.png"] tag:0];
    
    // settings nav, view and tabbar item
    SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
    UINavigationController *settingsNC = [[UINavigationController alloc] initWithRootViewController:settingsVC];
    settingsVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings" image:[UIImage imageNamed:@"20-gear2.png"] tag:0];
    
    tbc = [[UITabBarController alloc] init];// init tab bar controller
    tbc.viewControllers = [NSArray arrayWithObjects: rootNC, orderNC, menuNC, locationsNC, settingsNC, nil];
    
    // memory management
    [rootNC release]; [rootVC release];
    [orderVC release]; [orderNC release];
    [menuVC release]; [menuNC release];
    [settingsVC release]; [settingsNC release];
    [locationsVC release]; [locationsNC release];
    
    [window addSubview:tbc.view];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [tbc release];
    [window release];
    [super dealloc];
}

@end
