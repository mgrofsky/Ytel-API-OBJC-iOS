//
//  PlayAudioInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "PlayAudioInput.h"

@implementation PlayAudioInput

/**
* The unique identifier of each call resource
*/
@synthesize callSid;

/**
* URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav
*/
@synthesize audioUrl;

/**
* Valid alphanumeric string that should be played to the In-progress call.
*/
@synthesize sayText;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Time limit in seconds for audio play back
*/
@synthesize length;

/**
* The leg of the call audio will be played to
*/
@synthesize direction;

/**
* If false, all other audio will be muted
*/
@synthesize mix;

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
-(id) JSONObjectForDirection
{
     
    return [DirectionEnumHelper stringFromDirectionEnum:(enum DirectionEnum) direction withDefault: nil];

}

/**
 * For deserialization of enum DirectionEnum type property from NSString*
 */
 
-(void)setDirectionWithNSString:(NSString*) strValue
{
    direction = [DirectionEnumHelper directionEnumFromString:(NSString*) strValue];
}


@end