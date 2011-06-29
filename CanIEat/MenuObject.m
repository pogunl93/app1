#import "MenuObject.h"

@implementation MenuObject

@synthesize itemName, price, sideChoice, possibleSideChoices, numberOfOrdersForThisItem, description, keywords;

- (void)enterPrice:(int)x
{   
    self.price = x;
}

- (void)enterItemName:(NSString *)aString
{
    self.itemName = aString;
}

- (void)enterDescription:(NSString *)aString
{
    self.description = aString;
}

- (void)enterSideChoice:(NSString *)choice
{
    self.sideChoice = choice;
}

- (void)enterPossibleSideChoice:(NSString *)choice
{
    [self.possibleSideChoices addObject:choice];
}

- (void)enterPossibleSideChoices:(NSArray *)arr
{
        [self.possibleSideChoices addObjectsFromArray:arr];
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
    [itemName release];
    [sideChoice release];
    [possibleSideChoices release];
    [description release];
    [super dealloc];
}

@end
