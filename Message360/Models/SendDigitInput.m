//
//  SendDigitInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendDigitInput.h"

@implementation SendDigitInput

/**
* The unique identifier of each call resource
*/
@synthesize callSid;

/**
* DTMF digits to play to the call. 0-9, #, *, W, or w
*/
@synthesize playDtmf;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The leg of the call DTMF digits should be sent to
*/
@synthesize playDtmfDirection;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum DirectionEnum type property as NSString*
 */
-(id) JSONObjectForPlayDtmfDirection
{
     
    return [DirectionEnumHelper stringFromDirectionEnum:(enum DirectionEnum) playDtmfDirection withDefault: nil];

}

/**
 * For deserialization of enum DirectionEnum type property from NSString*
 */
 
-(void)setPlayDtmfDirectionWithNSString:(NSString*) strValue
{
    playDtmfDirection = [DirectionEnumHelper directionEnumFromString:(NSString*) strValue];
}


@end