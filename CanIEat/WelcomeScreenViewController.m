#import "WelcomeScreenViewController.h"

@implementation WelcomeScreenViewController

@synthesize button;

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
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




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
    EditItemViewController *eVC = [[EditItemViewController alloc] init];
    [self.navigationController pushViewController:eVC animated:YES];
    [eVC release];
}
@end
