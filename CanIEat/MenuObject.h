#import <Foundation/Foundation.h>

@interface MenuObject : NSObject {
    double price;
    NSString *name;
    NSString *description;// an item's description
    NSMutableArray *sideChoices;// stores the possible side choices for each item
    NSMutableArray *keywords;
    // optional: image of the item. we can have predertmined images for the items
    // category of dish
}

@property double price;
//@property int numberOfOrdersForThisItem;
@property (retain) NSString *name, *description;

// mutable so that the user can modify the choices
@property (retain) NSMutableArray *sideChoices, *keywords;

- (void)enterSideChoice: (NSString *)aString;// only one side is added
- (void)enterSideChoices:(NSArray *)arr;// more than one side is added
- (void)enterKeyword: (NSString *)aString; 
- (void)enterKeywords: (NSArray *)arr;

@end
