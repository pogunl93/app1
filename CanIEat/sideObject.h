#import <Foundation/Foundation.h>

@interface sideObject : NSObject {
    NSString *name, *description;
    NSInteger upcharge, price;
    UIImage *image;
}

@property (copy) NSString *name, *description;
@property NSInteger upcharge, price;
@property (retain) UIImage *image;

@end
