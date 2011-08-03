#import <UIKit/UIKit.h>
#import "NewItemViewController.h"
#import "LoginViewController.h"
#import "MenuViewController.h"
#import "EditItemViewController.h"
#import "MenuListViewController.h"

@interface WelcomeScreenViewController : UIViewController <UITextFieldDelegate>{
    UIButton *button;
}

@property (retain) IBOutlet UIButton *button;

- (IBAction)testButton;
- (IBAction)test1;
- (IBAction)test2;
@end
