#import <UIKit/UIKit.h>
#import "NewItemViewController.h"
#import "LoginViewController.h"
#import "MenuViewController.h"
#import "EditItemViewController.h"

@interface WelcomeScreenViewController : UIViewController {
    UIButton *button;
}

@property (retain) IBOutlet UIButton *button;

- (IBAction)testButton;
- (IBAction)test1;
- (IBAction)test2;
@end
