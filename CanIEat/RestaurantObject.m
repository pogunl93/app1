#import "RestaurantObject.h"

@implementation RestaurantObject

@synthesize theMenu;






- (void)dealloc
{
    [theMenu release];
    [super dealloc];
}
@end
