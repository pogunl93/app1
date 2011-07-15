#import "MenuObject.h"

@implementation MenuObject

@synthesize name, price, description, keywords, numberOfSides, category, numberOfToppings, image;

- (void)dealloc
{
    [name release];
    [description release];
    [keywords release];
    [image release];
    [super dealloc];
}

@end
