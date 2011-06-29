#import <UIKit/UIKit.h>
#import "MenuObject.h"
#import "RestaurantObject.h"

@interface ChangeMenuViewController : UIViewController {
    RestaurantObject *theRestaurant;
    MenuObject *aMenuItem;
}

@property (retain) RestaurantObject *theRestaurant;
@property (retain) MenuObject *aMenuItem;

- (IBAction)itemName;
- (IBAction)createNewItem;
@end
