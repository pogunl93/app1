#import "MenuObject.h"

@implementation MenuObject

@synthesize itemName, price, sideChoice, possibleSideChoices, numberOfOrdersForThisItem, description;

- (void)dealloc
{
    [itemName release];
    [sideChoice release];
    [possibleSideChoices release];
    [description release];
    [super dealloc];
}


@end
