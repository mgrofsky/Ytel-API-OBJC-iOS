//
//  CreatePlayAudioInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreatePlayAudioInput.h"

@implementation CreatePlayAudioInput

/**
* The unique identifier of each call resource
*/
@synthesize callSid;

/**
* URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav
*/
@synthesize audioUrl;

/**
* Time limit in seconds for audio play back
*/
@synthesize length;

/**
* The leg of the call audio will be played to
*/
@synthesize direction;

/**
* Repeat audio playback indefinitely
*/
@synthesize loop;

/**
* If false, all other audio will be muted
*/
@synthesize mix;

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
-(id) JSONObjectForDirection
{
     
    return [DirectionHelper stringFromDirection:(enum Direction) direction withDefault: nil];

}

/**
 * For deserialization of enum Direction type property from NSString*
 */
 
-(void)setDirectionWithNSString:(NSString*) strValue
{
    direction = [DirectionHelper directionFromString:(NSString*) strValue];
}


@end