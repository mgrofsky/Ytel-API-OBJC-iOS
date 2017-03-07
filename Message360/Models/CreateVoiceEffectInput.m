//
//  CreateVoiceEffectInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateVoiceEffectInput.h"

@implementation CreateVoiceEffectInput

/**
* TODO: Write general description for this method
*/
@synthesize callSid;

/**
* TODO: Write general description for this method
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
 * For serialization of enum AudioDirection type property as NSString*
 */
-(id) JSONObjectForAudioDirection
{
     
    return [AudioDirectionHelper stringFromAudioDirection:(enum AudioDirection) audioDirection withDefault: nil];

}

/**
 * For deserialization of enum AudioDirection type property from NSString*
 */
 
-(void)setAudioDirectionWithNSString:(NSString*) strValue
{
    audioDirection = [AudioDirectionHelper audioDirectionFromString:(NSString*) strValue];
}


@end