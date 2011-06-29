#import <Foundation/Foundation.h>

@interface MenuObject : NSObject {
    double price;
    NSString *itemName;
    NSString *description;// an item's description
    NSMutableArray *possibleSideChoices;// stores the possible side choices for each item
//    NSString *sideChoice;
//    int numberOfOrdersForThisItem;
    NSMutableArray *keywords;
    // optional: image of the item. we can have predertmined images for the items
    // category of dish
}

@property double price;
@property int numberOfOrdersForThisItem;
@property (retain) NSString *itemName, *description, *sideChoice;

// mutable so that the user can modify the choices
@property (retain) NSMutableArray *possibleSideChoices, *keywords;

- (void)enterPrice: (int)x;
- (void)enterDescription: (NSString *)aString;
- (void)enterItemName: (NSString *)aString;
- (void)enterSideChoice: (NSString *)choice;
- (void)enterPossibleSideChoice: (NSString *)aString;// only one side is added
- (void)enterPossibleSideChoices:(NSArray *)arr;// more than one side is added
- (void)enterKeyword: (NSString *)aString; 
- (void)enterKeywords: (NSArray *)arr;

@end
