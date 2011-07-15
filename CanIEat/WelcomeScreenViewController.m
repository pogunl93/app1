#import "WelcomeScreenViewController.h"
#import "ItemsToOrderByCategoryViewController.h"


@implementation WelcomeScreenViewController



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

-(IBAction)menuPressed:(UIButton *)butPressed
{
    ItemsToOrderByCategoryViewController *categoriesVC = [[ItemsToOrderByCategoryViewController alloc] init];
    categoriesVC.title = @"Categories";
    [self.navigationController pushViewController:categoriesVC animated:YES];
    [categoriesVC release];
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
- (IBAction)testButton
{
    AddMenuItemViewController *testView = [[AddMenuItemViewController alloc] init];
    [self.navigationController pushViewController:testView animated:YES];
}


@end
