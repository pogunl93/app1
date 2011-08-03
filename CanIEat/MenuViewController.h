#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MenuViewController : UIViewController {
    UILabel *name, *price, *description; 
    UIImageView *imageView;
    UIView *secondView;
}

@property (retain) IBOutlet UILabel *name, *price, *description;
//@property (retain) IBOutlet UITextView *description;
@property (retain) IBOutlet UIImageView *imageView;
@property (retain) IBOutlet UIView *secondView;

@end
