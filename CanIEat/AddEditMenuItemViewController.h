#import <UIKit/UIKit.h>
#import "MenuObject.h"
#import "EstablishmentObject.h"
#import "WelcomeScreenViewController.h"

@interface AddEditMenuItemViewController : UIViewController {
    EstablishmentObject *theRestaurant;// will give us access to the menu
    MenuObject *aMenuItem;// will allow us to create a new menu item
    IBOutlet UITextField *price;
    IBOutlet UITextField *name;
    IBOutlet UITextField *description;
    IBOutlet UITextField *keywords;
    IBOutlet UITextField *sideChoices;
    IBOutlet UILabel *topLabel;
    IBOutlet UILabel *testingLabel;
}

@property (retain) EstablishmentObject *theRestaurant;
@property (retain) MenuObject *aMenuItem;

- (IBAction)userEntersTextField:(UITextField *)tf;
- (IBAction)userLeavesTextField:(UITextField *)tf;
- (IBAction)addEditNewMenuItem;


// for testing only
- (void)displaySampleOutput;

@end
