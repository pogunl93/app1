#import <UIKit/UIKit.h>
#import "MenuObject.h"
#import "EstablishmentObject.h"
#import "WelcomeScreenViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface NewItemViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    EstablishmentObject *aRestaurant;// will give us access to the menu
    MenuObject *aMenuItem;// will allow us to create a new menu item
    UITextField *price, *name, *keywords, *numberOfSides, *numberOfToppings, *category;;
    UITextView *description;
    UIView *secondView, *labelView, *labelView2;
    id activeField;
    UIScrollView *sv;
    UILabel *alertLabel, *priceAsterisk, *toppingsAsterisk, *sidesAsterisk, *imageLabel, *cameraAlertLabel;
    UIButton *xButton, *takePhoto, *useImage, *xButton2, *infoButton, *infoButton2;// button to close the popover
    NSNumberFormatter *aFormatter;// will verify numeric input for the numberOfSides, toppings, etc.
    UIImageView *anImageView;
}

@property (retain) EstablishmentObject *aRestaurant;
@property (retain) MenuObject *aMenuItem;

// outlets
@property (retain) IBOutlet UITextField *price, *name, *keywords, *numberOfSides, *numberOfToppings, *category;
@property (retain) IBOutlet UITextView *description;
@property (retain) IBOutlet UIView *secondView, *labelView, *labelView2;
@property (retain) id activeField;
@property (retain) IBOutlet UILabel *alertLabel, *priceAsterisk, *toppingsAsterisk, *sidesAsterisk, *imageLabel, *cameraAlertLabel;
@property (retain) IBOutlet UIButton *xButton, *takePhoto, *useImage, *xButton2, *infoButton, *infoButton2;
@property (retain) NSNumberFormatter *aFormatter;
@property (retain) IBOutlet UIImageView *anImageView;


- (IBAction)addMenuItem;// will save the new menu item
- (IBAction)touchView;// will hide the keyboard once the user taps on the view
- (IBAction)getInfo:(UIButton *)aButton;// will create the info popover for the keywords field
- (IBAction)chooseImage;// choose image from preexisting images
- (IBAction)shootPhoto:(id)sender;// take a picture to use as the image
- (IBAction)closePopover:(UIButton *)aButton;// closes popover


- (void)setUpScrollView;// initilize and set up the UIScrollView
- (void)setUpDelegates;// set the outlets' delegates to be the UIView;

// for testing only
- (void)displaySampleOutput;
- (void)createDummyItem;

@end
