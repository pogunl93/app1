#import "AddMenuItemViewController.h"

@implementation AddMenuItemViewController
@synthesize aRestaurant, aMenuItem, sv, name, keywords, numberOfSides, numberOfToppings, category, price, description;


- (IBAction)addMenuItem// performed when the user hits the create new item
{
    if (aMenuItem == nil)   aMenuItem = [[MenuObject alloc] init];

    aMenuItem.name = [NSMutableString stringWithString: name.text];  
    aMenuItem.price = [price.text doubleValue];
    aMenuItem.description = [NSMutableString stringWithString: description.text];    
    aMenuItem.keywords = [NSMutableArray arrayWithCapacity:10];// init autoreleased array
    // creates an array of strings that are separated by ", " and converts to a mutable array
    aMenuItem.keywords = [[keywords.text componentsSeparatedByString: @", "] mutableCopy];
    aMenuItem.category = [NSMutableString stringWithString:category.text];
    aMenuItem.numberOfSides = [numberOfSides.text intValue]; 
    aMenuItem.numberOfToppings = [numberOfToppings.text intValue];
    
    [self displaySampleOutput];
}


- (IBAction)userEntersTextField:(UITextField *)tf
{
    self.title = tf.placeholder;// set the label to the placeholder's text
}

- (IBAction)userLeavesTextField:(UITextField *)tf// called when a user leaves any textfield
{
    [self resignFirstResponder];// this will hide the keyboard once the return key is hit
}

- (void)dealloc
{
    [sv dealloc];
    [name dealloc];
    [description dealloc];
    [price dealloc];
    [keywords dealloc];
    [category dealloc];
    [numberOfSides dealloc];
    [numberOfToppings dealloc];
    [aMenuItem.keywords release];
    [aMenuItem release];
    [aRestaurant release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Add a New Item";
    sv.contentSize = CGSizeMake(327, 800);
    sv.clipsToBounds = YES;
    
    // create a border for the uitextview
    description.layer.borderWidth = 1.0f;
    description.layer.borderColor = [[UIColor lightGrayColor] CGColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.name = nil;
    self.sv = nil;
    self.description = nil;
    self.price = nil;
    self.keywords = nil;
    self.category = nil;
    self.numberOfToppings = nil;
    self.numberOfSides = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


// for testing!!!!!!!!!!!!!!!!!!!!!!!!


- (void)displaySampleOutput
{
    NSLog(@"this item will be called: %@", aMenuItem.name);
    NSLog(@"this will be its description %@", aMenuItem.description);
    NSLog(@"the size of the array is: %d", aMenuItem.keywords.count);
    NSLog(@"number of sides: %d", aMenuItem.numberOfSides);
    NSLog(@"the keywords are: %@", aMenuItem.keywords);
    NSLog(@"the categories are: %@", aMenuItem.category);

}

@end
