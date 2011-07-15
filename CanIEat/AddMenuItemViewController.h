#import <UIKit/UIKit.h>
#import "MenuObject.h"
#import "EstablishmentObject.h"
#import "WelcomeScreenViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AddMenuItemViewController : UIViewController {
    EstablishmentObject *aRestaurant;// will give us access to the menu
    MenuObject *aMenuItem;// will allow us to create a new menu item
    IBOutlet UITextField *price, *name, *keywords, *numberOfSides, *numberOfToppings, *category;;
    IBOutlet UITextView *description;
    IBOutlet UIScrollView *sv;
}

@property (retain) EstablishmentObject *aRestaurant;
@property (retain) MenuObject *aMenuItem;
@property (nonatomic, retain) IBOutlet UIScrollView *sv;
@property (nonatomic, retain) IBOutlet UITextField *price, *name, *keywords, *numberOfSides, *numberOfToppings, *category;
@property (nonatomic, retain) IBOutlet UITextView *description;

- (IBAction)userEntersTextField:(UITextField *)tf;
- (IBAction)userLeavesTextField:(UITextField *)tf;
- (IBAction)addMenuItem;
//- (IBAction)addImage;// will add an image for a menu item

// for testing only
- (void)displaySampleOutput;

@end
