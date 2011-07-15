#import <Foundation/Foundation.h>

@interface MenuObject : NSObject {
    double price;
    NSMutableString *name, *description, *category;
    NSMutableArray *keywords;
    NSInteger numberOfSides, numberOfToppings;
    UIImage *image;// we can have predertmined images for the items and give the user the option of modifying them.
    // category of dish: sandwich, entree, drink, dessert, etc
}

@property double price;
@property (retain) NSMutableString *name, *description, *category;
@property NSInteger numberOfSides, numberOfToppings;
// mutable so that the user can modify the choices
@property (retain) NSMutableArray *keywords;
@property (retain) UIImage *image;

@end
