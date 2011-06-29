#import "ChangeMenuViewController.h"

@implementation ChangeMenuViewController
@synthesize theRestaurant, aMenuItem;

- (IBAction)createNewItem
{
    //theRestaurant.theMenu addObject:<#(id)#>
}
- (IBAction)itemName
{
    
}









- (void)dealloc
{
    [theRestaurant release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
