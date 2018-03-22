//
//  VoiceEffectInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* Set the pitch in semitone (half-step) intervals. Value between -14 and 14
*/
@synthesize pitchSemiTones;

/**
* Set the pitch in octave intervals.. Value between -1 and 1
*/
@synthesize pitchOctaves;

/**
* Set the pitch (lowness/highness) of the audio. The higher the value, the higher the pitch. Value greater than 0
*/
@synthesize pitch;

/**
* Set the rate for audio. The lower the value, the lower the rate. value greater than 0
*/
@synthesize rate;

/**
* Set the tempo (speed) of the audio. A higher value denotes a faster tempo. Value greater than 0
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