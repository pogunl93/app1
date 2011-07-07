#import "AddEditMenuItemViewController.h"

@implementation AddEditMenuItemViewController
@synthesize theRestaurant, aMenuItem;

- (IBAction)addEditNewMenuItem// performed when the user hits the create new item
{
    if (aMenuItem == nil) {// initialize a new menuItem
        aMenuItem = [[MenuObject alloc] init];
    } //else [aMenuItem.name release];

    aMenuItem.name = [NSMutableString stringWithString: name.text];  
    aMenuItem.price = [price.text doubleValue];
    [aMenuItem.name retain];
    NSLog(@"this item will be called: %@", aMenuItem.name);
    NSLog(@"this will be its price %f", aMenuItem.price);

    [self displaySampleOutput];
}

- (IBAction)userEntersTextField:(UITextField *)tf
{
    topLabel.text = tf.placeholder;// set the label to the placeholder's text
}

- (IBAction)userLeavesTextField:(UITextField *)tf// called when a user leaves any textfield
{
    [self resignFirstResponder];// this will hide the keyboard once the return key is hit
}

- (void)dealloc
{
    [aMenuItem release];
    [theRestaurant release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scroll.pagingEnabled = YES;
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




// for testing!!!!!!!!!!!!!!!!!!!!!!!!





- (void)displaySampleOutput
{
    testingLabel.text = name.text;
    NSLog(@"the first text field has the following string: %@", name.text);// this is the way to print out arguments in the command line.
    NSLog(@"aMenuItem.name has the following string: %@", aMenuItem.name);
}

@end
