#import "AddEditMenuItemViewController.h"

@implementation AddEditMenuItemViewController
@synthesize theRestaurant, aMenuItem;

- (IBAction)addEditNewMenuItem
{
    aMenuItem.name = name.text; 
    [self displaySampleOutput];
}

- (IBAction)userEntersTextField:(UITextField *)tf
{
    topLabel.text = tf.placeholder;// set the label to the placeholder's text
}

- (IBAction)userLeavesTextField
{
    [self resignFirstResponder];// this will hide the keyboard once the return key is hit
}

- (void)dealloc
{
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
}

@end
