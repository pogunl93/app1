#import "AddEditMenuItemViewController.h"

@implementation AddEditMenuItemViewController
@synthesize theRestaurant, aMenuItem;

- (IBAction)addEditNewMenuItem
{
    //aMenuItem.name = name.text;// the problem might lay in the fact that the string is inmutable and I am assigning it another value after initializing it. look at the nsstring class as well as properties for strings and the copy argument! 
    [self displaySampleOutput];
}

- (IBAction)userEntersTextField:(UITextField *)tf
{
    topLabel.text = tf.placeholder;// set the label to the placeholder's text
}

- (IBAction)userLeavesTextField:(UITextField *)tf
{
    if (aMenuItem.name == nil) {
         aMenuItem.name = [[NSMutableString alloc] init];
    } else [aMenuItem.name release];
   
    aMenuItem.name = [NSMutableString stringWithString: name.text];
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
    NSLog(@"the first text field has the following string: %@", name.text);// this is the way to print out arguments in the command line.
    NSLog(@"aMenuItemName has the following string: %@", aMenuItem.name);
}

@end
