#import <UIKit/UIKit.h>
#import "NewItemViewController.h"
#import "LoginViewController.h"
#import "MenuViewController.h"
#import "EditItemViewController.h"
#import "MenuListViewController.h"

@interface WelcomeScreenViewController : UIViewController <UITextFieldDelegate>{
    UISearchBar *aSearchBar;
}

@property (nonatomic, retain) IBOutlet UISearchBar *aSearchBar;


- (IBAction)touchView;// hides the keyboard when the user taps in the view's area
- (IBAction)testButton;
- (IBAction)test1;
- (IBAction)test2;
@end
