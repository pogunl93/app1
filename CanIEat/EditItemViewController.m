#import "EditItemViewController.h"

@implementation EditItemViewController

@synthesize dummyView, aButton;

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
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    sv = [[UIScrollView alloc] initWithFrame:appFrame];
    [sv setScrollEnabled:YES];
    //sv.pagingEnabled = YES;
    sv.contentSize = self.dummyView.bounds.size;
    [sv addSubview:dummyView];
    [self.view addSubview:sv];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.aButton = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)testInput
{
    NSNumberFormatter *aFormatter = [[NSNumberFormatter alloc] init];
    NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"6786995"]);
	NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"5a"]);
    NSLocale *aLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"a"]);
	NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"5"]);
    aFormatter.locale = aLocale;
    NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"a"]);
	NSLog(@"val returned from function: %@", [aFormatter numberFromString:@"5"]);
}

@end
