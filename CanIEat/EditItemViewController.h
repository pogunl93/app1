#import <UIKit/UIKit.h>
#import "ReviewItemVC.h"

@interface EditItemViewController : UIViewController {
    //retrieve the data pertinent to the given item from the server and fill the fields with the data.
    UIScrollView *sv;
    UIView *dummyView;
    UIButton *aButton;
}

@property (retain) IBOutlet UIView *dummyView;
@property (retain) IBOutlet UIButton *aButton;

- (IBAction)testInput;

@end
