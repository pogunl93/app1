#import "BranchObject.h"

@implementation BranchObject

@synthesize theMenu;






- (void)dealloc
{
    [theMenu release];
    [super dealloc];
}
@end
