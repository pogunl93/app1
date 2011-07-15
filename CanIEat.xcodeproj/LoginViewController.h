#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController {
    UITextField *email, *password;
    UIButton *logIn, *createAccount;
    UIImage *logo;
}

@property (retain, nonatomic) IBOutlet UITextField *email, *password;
@property (retain, nonatomic) IBOutlet UIButton *logIn, *createAccount;
@property (retain, nonatomic) IBOutlet UIImage *logo;

@end
