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
* Response type format xml or json
*/
@synthesize responseType;

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