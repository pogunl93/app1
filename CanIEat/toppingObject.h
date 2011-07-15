#import <Foundation/Foundation.h>

@interface toppingObject : NSObject {
    NSString *name, *description;
    NSInteger price, upcharge;
    UIImage *image;
}

@property (copy) NSString *name, *description;
@property NSInteger price, upcharge; 
@property (retain) UIImage *image;
@end
