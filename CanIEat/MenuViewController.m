#import "MenuViewController.h"

@implementation MenuViewController

@synthesize name, price, imageView, description, secondView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
{    // Do any additional setup after loading the view from its nib.
    [super viewDidLoad];
    self.title = @"Menu";

    
// set up scrollview
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];// the phone's screen will be returned as the frame
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:appFrame];
    sv.contentSize = secondView.bounds.size;
    sv.contentInset = UIEdgeInsetsMake(0, 0, 44, 0);// a little extra space (padding) at the bottom of the screen to make up for the space taken by the tab bar.
    
    
// set up the image
    [imageView setImage:[UIImage imageNamed:@"steak_&_potatoes.jpg"]];
    imageView.layer.borderWidth = 1.0f;
    imageView.layer.borderColor = [[UIColor blackColor] CGColor];
        
    
// add the dummy menu item. TEMPORARY. FOR TESTING ONLY
    name.text = @"Steak & Potatoes";
    price.text = @"$7.50";
    description.text = @"A juicy romanian steak cooked to order, seasoned with paprika, red wine and oregano. Accompanied by a side of french fries. It will satisfy any apetite. Prepare yourself for a great mealll. Understand what it is. this is the thing that i have a problem with. There once was a thing that said hello and then i said hi. It is clear";
   
    //[description sizeToFit];
    //description.lineBreakMode = UILineBreakModeWordWrap;
    
    
    [sv addSubview:secondView];// add the secondary view to the scroll view
    [self.view addSubview:sv];
    [sv flashScrollIndicators];// show the user the scrollbar inidicators
    
    
// memory mgmt.
    [secondView release];
    [sv release];
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
