#import <Foundation/Foundation.h>
#define COOKING 0
#define READY_FOR_PICK_UP 1
#define BEING_DELIVERED 2

@interface OrderObject : NSObject {
    int status;
    double total;// the total the customer will need to pay
    NSMutableArray *order;// an array of MenuObjects
    BOOL isDelivery;// is it delivery or pick-up?
    // time order was taken
}

@end
