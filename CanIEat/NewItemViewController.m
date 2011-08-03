#import "NewItemViewController.h"
@interface NewItemViewController()
//- (void)setALocale;
@end

@implementation NewItemViewController
@synthesize aRestaurant, aMenuItem, name, keywords, numberOfSides, numberOfToppings, category, price, description, secondView, activeField, alertLabel, priceAsterisk, toppingsAsterisk, sidesAsterisk, labelView, xButton, aFormatter, anImageView, imageLabel, takePhoto, useImage, cameraAlertLabel, xButton2, labelView2, infoButton, infoButton2;

#pragma mark - ibactions

- (IBAction)addMenuItem// performed when the user hits the create new item
{
    aMenuItem.name = [NSMutableString stringWithString: name.text];  
    aMenuItem.price = [price.text doubleValue];
    aMenuItem.description = [NSMutableString stringWithString: description.text];    
    aMenuItem.keywords = [NSMutableArray arrayWithCapacity:20];// init autoreleased array
    // creates an array of strings that are separated by ", " and converts to a mutable array
    aMenuItem.keywords = [[keywords.text componentsSeparatedByString: @", "] mutableCopy];
    aMenuItem.category = [NSMutableString stringWithString:category.text];
    aMenuItem.numberOfSides = [numberOfSides.text intValue]; 
    aMenuItem.numberOfToppings = [numberOfToppings.text intValue];
    [self displaySampleOutput];
    
    // send aMenuItem to a database
}


// displays the popover
- (IBAction)getInfo:(UIButton *)aButton
{
    if (aButton == infoButton) {
        self.labelView.hidden = NO;// unhides the popover view
        self.xButton.hidden = NO;// unhides the close button
    } else {
        self.labelView2.hidden = NO;
        self.xButton2.hidden = NO;
    }
}

// closes the popover
- (IBAction)closePopover:(UIButton *)aButton
{
    if (aButton == xButton) {
        self.labelView.hidden = YES;
        self.xButton.hidden = YES;
    } else {// aButton == xButton2
        self.labelView2.hidden = YES;
        self.xButton2.hidden = YES;
    }
}

// will hide the keyboard once the user taps on the view (not on a field though). To accomplish this, the uiview had to be converted to a uicontrol in IB. Then this method was wired to the touch up inside method
- (IBAction)touchView
{
    [self.activeField resignFirstResponder];
    sv.contentInset = UIEdgeInsetsMake(0, 0, 46, 0);// adjust the botton inset
}


- (IBAction)chooseImage
{
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypePhotoLibrary]) {
        UIImagePickerController *anImagePicker =
        [[UIImagePickerController alloc] init];
        anImagePicker.delegate = self;
        anImagePicker.allowsEditing = NO;
        anImagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentModalViewController:anImagePicker animated:YES];
        [anImagePicker release];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] 
                              initWithTitle:@"Error Accessing Your Photo Library" 
                              message:@"Your Device Does Not Support a Photo Library" 
                              delegate:nil 
                              cancelButtonTitle:@"Dismiss" 
                              otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)shootPhoto:(id)sender
{
    UIImagePickerController *anImagePicker = [[UIImagePickerController alloc] init];
    anImagePicker.delegate = self;// assigning the delegate
    anImagePicker.allowsEditing = YES;// will give user the option to modify the dimensions of the picture
    anImagePicker.sourceType = (sender == takePhoto) ? UIImagePickerControllerSourceTypeCamera :
    UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self presentModalViewController:anImagePicker animated:YES];
    [anImagePicker release];
}

#pragma mark - delegate methods

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.title = textField.placeholder;// set the label to the placeholder's text
    self.activeField = textField;// this is the currently active field
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    // scroll the view to the currently active uitextview
    CGRect aRectangle = [secondView frame];
    aRectangle.size.height -= 65;
    [sv scrollRectToVisible:aRectangle animated:YES];
    
    
    self.title = @"Description";// sets the nav. controller's title to description
    self.activeField = textView;// this is the currently active field
    [textView scrollRangeToVisible:NSMakeRange(0, 0)];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
// validate input for the numeric fields. these fields must only have positve numbers  
    if (textField == price)
    {
        //[aFormatter setAllowsFloats:NO];// allows the formatter to pass floats
        if (([aFormatter numberFromString:price.text] == NULL) || ([price.text doubleValue]<0))  // if it's invalid
        {
            alertLabel.text = @"* Enter a Valid Price";
            priceAsterisk.text = @"*";
        } 
        
        else // if it's valid 
        {
            alertLabel.text = @"";
            priceAsterisk.text = @"";
        }        
    }    
    else if (textField == numberOfSides)// can only be an integer
    {
        if (([aFormatter numberFromString:numberOfSides.text] == NULL) || ([numberOfSides.text doubleValue]<0)) 
        {
            alertLabel.text = @"* Enter a Valid Number of Sides";
            sidesAsterisk.text = @"*";
        }

        else// if it's valid
        {
            alertLabel.text = @"";
            sidesAsterisk.text = @"";
        }
    }
    else if (textField == numberOfToppings)// can only be an integer
    {
        if (([aFormatter numberFromString:numberOfToppings.text] == NULL) || ([numberOfToppings.text doubleValue]<0)) {
            alertLabel.text = @"* Enter a Valid Number of Toppings";
            toppingsAsterisk.text = @"*";
        }
        
        else
        {
            alertLabel.text = @"";
            toppingsAsterisk.text = @"";
        }
    }
    
    self.activeField = nil;// there is no currently active field
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    self.activeField = nil;// there is no currently active field
}

// called when the image picker has found an image
- (void)imagePickerController:(UIImagePickerController *)picker 
        didFinishPickingImage:(UIImage *)image
                  editingInfo:(NSDictionary *)editingInfo {
    anImageView.image = image;
    [picker dismissModalViewControllerAnimated:YES];
    imageLabel.hidden = YES;
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissModalViewControllerAnimated:YES];
}

#pragma mark - class functions

- (void)setUpScrollView
{
    CGRect aFrame = [[UIScreen mainScreen] applicationFrame];// the actual screen's size
    aFrame.origin = CGPointMake(0, -10);
    sv = [[UIScrollView alloc] initWithFrame:aFrame];// init scroll view
    [sv setContentSize:secondView.bounds.size];// set the content's size
    [sv addSubview:secondView];// add second view to scroll view
    [secondView release];
    [self.view addSubview:sv];// add scroll view to parent view
    [sv release];
    sv.contentInset = UIEdgeInsetsMake(0, 0, 54, 0);// a little extra space (padding) at the bottom of the screen to make up for the space taken by the tab bar.
    [sv flashScrollIndicators];// show the user the scrollbar inidicators
}

- (void)setUpDelegates
{
    name.delegate = self;
    price.delegate = self;
    numberOfToppings.delegate = self;
    numberOfSides.delegate = self;
    keywords.delegate = self;
    category.delegate = self;
    description.delegate = self;
}


#pragma mark - sdk methods

// enables "next" button functionality
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
        if (textField.tag<6)
             [[self.view viewWithTag:textField.tag + 1] becomeFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
// initialize necessary objects:
    if (self.aMenuItem == nil)   self.aMenuItem = [[MenuObject alloc] init];
    if (aFormatter == nil) aFormatter = [[NSNumberFormatter alloc] init];// initialize the formatter

// notify the user of the need of an image
    if (anImageView.image == NULL) imageLabel.text = @"You Have Not Yet Added an Image";
    
    self.title = @"Add New Item";// place title    
    
// disable take photo button if the device does not have a camera
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) 
    {
        takePhoto.hidden = YES;
        cameraAlertLabel.hidden = NO;
    }
// set the delegates
    [self setUpDelegates];
    
// init scrollview
    [self setUpScrollView];
    
// keeping content from beneath the keyboard. First, set up two observers for the keyboard notifications:     
    [[NSNotificationCenter defaultCenter] addObserver:self// observer 1
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self// observer 2
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
  
// create a border for the uitextview (description)
    description.layer.borderWidth = 1.0f;
    description.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    
// create a border for the imageView
    anImageView.layer.borderWidth = 1.0f;
    anImageView.layer.borderColor = [[UIColor lightGrayColor] CGColor];

// give the labelViews rounded corners
    self.labelView.layer.cornerRadius = 13;
    self.labelView2.layer.cornerRadius = 13;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.name = nil;
    self.description = nil;
    self.price = nil;
    self.keywords = nil;
    self.category = nil;
    self.numberOfToppings = nil;
    self.numberOfSides = nil;
    self.alertLabel = nil;
    self.sidesAsterisk = nil;
    self.toppingsAsterisk = nil;
    self.priceAsterisk = nil;
    self.xButton = nil;
    self.labelView = nil;
    self.imageLabel = nil;
    self.anImageView = nil;
    self.secondView = nil;
    self.useImage = nil;
    self.takePhoto = nil;
    self.cameraAlertLabel = nil;
    self.xButton2 = nil;
    self.labelView2 = nil;
    self.infoButton = nil;
    self.infoButton2 = nil;
    
    
    // remove the observers
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)dealloc
{
    [name release];
    [price release];
    [keywords release];
    [category release];
    [numberOfSides release];
    [numberOfToppings release];
    [aMenuItem release];
    [aRestaurant release];
    [description release];
    [(id)activeField release];// might be textfield or textview so we convert it to avoid problems
    [alertLabel release];
    [sidesAsterisk release];
    [toppingsAsterisk release];
    [priceAsterisk release];
    [xButton release];
    [labelView release];
    [aFormatter release];
    [anImageView release];
    [takePhoto release];
    [useImage release];
    [cameraAlertLabel release];
    [xButton2 release];
    [labelView2 release];
    [infoButton release];
    [infoButton2 release];
    [imageLabel release];
    
    // remove the observer
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

// this method is called when the UIKeyboardDidShow notification is sent
- (void)keyboardWasShown:(NSNotification *)notification
{
    
// Step 1: Get the size of the keyboard from the dictionary that stores the app info.
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
// Step 2: Adjust the bottom content inset of your scroll view by the keyboard height.  
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, keyboardSize.height, 0.0);
    sv.contentInset = contentInsets;
    sv.scrollIndicatorInsets = contentInsets;  
}

- (void) keyboardWillHide:(NSNotification *)notification {
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    sv.contentInset = contentInsets;
    sv.scrollIndicatorInsets = contentInsets;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - test methods


- (void)createDummyItem
{
    aMenuItem.name = [NSMutableString stringWithString:@"Ranch & Bacon Chicken Sandwich"];
    aMenuItem.price = 7.50;
    NSArray *arr = [NSArray arrayWithObjects:@"good", @"tasty", @"delicious", nil];
    aMenuItem.keywords = [NSMutableArray arrayWithArray:arr];
    aMenuItem.numberOfSides = 5;
    aMenuItem.numberOfToppings = 3;
    aMenuItem.description = [NSMutableString stringWithString:@"this is a beautifully cooked chicken breast that is roasted to perfection. behold as it enters your mouth because it will not be able to exit it. It is marinated with mediterranean spices, aloe vera, and chicken broth. May be harmful to children under 12. consult your physician."];
    [anImageView setImage:[UIImage imageNamed:@"ranch_&_ bacon_chicken_sandwich.jpg"]];
}

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