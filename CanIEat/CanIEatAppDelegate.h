#import <UIKit/UIKit.h>
#import "NewItemViewController.h"
#import "WelcomeScreenViewController.h"
#import "MyOrderViewController.h"
#import "LocationsViewController.h"
#import "SettingsViewController.h"
#import "MenuViewController.h"
#import "MenuCategoriesViewController.h"


@interface CanIEatAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *tbc;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tbc;

@end
