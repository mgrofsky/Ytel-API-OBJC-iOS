//
//  VoiceEffectInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "VoiceEffectInput.h"

@implementation VoiceEffectInput

/**
* The unique identifier for the in-progress voice call.
*/
@synthesize callSid;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream.
*/
@synthesize audioDirection;

/**
* value between -14 and 14
*/
@synthesize pitchSemiTones;

/**
* value between -1 and 1
*/
@synthesize pitchOctaves;

/**
* value greater than 0
*/
@synthesize pitch;

/**
* value greater than 0
*/
@synthesize rate;

/**
* value greater than 0
*/
@synthesize tempo;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum AudioDirectionEnum type property as NSString*
 */
-(id) JSONObjectForAudioDirection
{
     
    return [AudioDirectionEnumHelper stringFromAudioDirectionEnum:(enum AudioDirectionEnum) audioDirection withDefault: nil];

}

/**
 * For deserialization of enum AudioDirectionEnum type property from NSString*
 */
 
-(void)setAudioDirectionWithNSString:(NSString*) strValue
{
    audioDirection = [AudioDirectionEnumHelper audioDirectionEnumFromString:(NSString*) strValue];
}


@end