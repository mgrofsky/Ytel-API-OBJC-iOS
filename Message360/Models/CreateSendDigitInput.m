//
//  CreateSendDigitInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSendDigitInput.h"

@implementation CreateSendDigitInput

/**
* The unique identifier of each call resource
*/
@synthesize callSid;

/**
* DTMF digits to play to the call. 0-9, #, *, W, or w
*/
@synthesize playDtmf;

/**
* The leg of the call DTMF digits should be sent to
*/
@synthesize playDtmfDirection;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum Direction type property as NSString*
 */
-(id) JSONObjectForPlayDtmfDirection
{
     
    return [DirectionHelper stringFromDirection:(enum Direction) playDtmfDirection withDefault: nil];

}

/**
 * For deserialization of enum Direction type property from NSString*
 */
 
-(void)setPlayDtmfDirectionWithNSString:(NSString*) strValue
{
    playDtmfDirection = [DirectionHelper directionFromString:(NSString*) strValue];
}


@end