#import <Foundation/Foundation.h>

@interface BranchObject : NSObject {
    // kind of restaurant. what is its category(s)?
    // its location(s). might have more than one location
    NSMutableArray *theMenu;// this structure will hold the menus
    // linked words: kinds of food, dishes by name (pizza, burger, etc) and price tag
}

@property (retain) NSMutableArray *theMenu;
@end
