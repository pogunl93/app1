#import "MenuObject.h"

@implementation MenuObject

@synthesize name, price, sideChoices, description, keywords;

- (void)enterSideChoice:(NSString *)choice
{
    [self.sideChoices addObject:choice];
}

- (void)enterSideChoices:(NSArray *)arr
{
    [self.sideChoices addObjectsFromArray:arr];
}

- (void)enterKeyword:(NSString *)aString
{
    [self.keywords  addObject:aString];
}

- (void)enterKeywords:(NSArray *)arr
{
    [self.keywords addObjectsFromArray:arr];
}

- (void)dealloc
{
    [name release];
    [sideChoices release];
    [description release];
    [keywords release];
    [super dealloc];
}

@end
