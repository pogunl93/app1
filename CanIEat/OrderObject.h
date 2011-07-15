#import <Foundation/Foundation.h>
#define COOKING 0
#define READY_FOR_PICK_UP 1
#define BEING_DELIVERED 2

@interface OrderObject : NSObject 
{
    BOOL hasBeenDelivered; //same as the status
    double total;// the total the customer will need to pay
    NSMutableArray *items;// an array of MenuObjects
    NSMutableDictionary *sideChoicesDic;// a dictionary keys; items Strings, objects array of sidechoices  http://es.w3support.net/index.php?db=so&id=908742
    NSMutableArray *quantityPerItem;// an array of MenuObjects
    BOOL isDelivery;// is it delivery or pick-up?
    NSDateFormatter *timeOfPurchase; // time order was taken http://stackoverflow.com/questions/2581684/hour-int-taken-from-nsdate-not-behaving-as-expected-at-midnight
}

@end

/* orders can either be current or past. current orders can be submitted (restaurant received them), ready for pick up. ready for delivery, in delivery, picked up or delivered
*/