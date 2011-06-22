#import <Foundation/Foundation.h>

@interface MenuObject : NSObject {
    double price;
    NSString *itemName;
    NSString *description;// an item's description
    NSMutableArray *possibleSideChoices;// stores the possible side choices for each item
    NSString *sideChoice;
    int numberOfOrdersForThisItem;
    NSArray *keywords;
    // optional: image of the item. we can have predertmined images for the items
    // category of dish
}


@property double price;
@property int numberOfOrdersForThisItem;
@property (retain) NSString *itemName;
@property (retain) NSString *description;
@property (retain) NSMutableArray *possibleSideChoices;// mutable so that the user can modify the choices
@property (retain) NSString *sideChoice;

@end
