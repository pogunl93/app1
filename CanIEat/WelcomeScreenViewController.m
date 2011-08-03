#import "WelcomeScreenViewController.h"

@implementation WelcomeScreenViewController

@synthesize aSearchBar;

// will hide the keyboard if the user taps on the view
- (IBAction)touchView
{
    [self.aSearchBar resignFirstResponder];
}


#pragma mark - sdk methods
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
     //   [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
   // [self setup];
    [super awakeFromNib];
}

- (void)dealloc
{
    //[button release];
    [aSearchBar release];
    
    
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"CanIEat";

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.aSearchBar = nil;
    //self.button = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



#pragma mark - test methods

// for testing!!!!
- (IBAction)test1
{
    MenuViewController *mVC = [[MenuViewController alloc] init];
    [self.navigationController pushViewController:mVC animated:YES];
    [mVC release];
}


- (IBAction)testButton
{
    NewItemViewController *testVC = [[NewItemViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];
    [testVC release];
}

- (IBAction)test2
{
    MenuListViewController *eVC = [[MenuListViewController alloc] init];
    [self.navigationController pushViewController:eVC animated:YES];
    [eVC release];
}
@end
