//
//  PlayConferenceAudioInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "PlayConferenceAudioInput.h"

@implementation PlayConferenceAudioInput

/**
* The unique identifier for a conference object.
*/
@synthesize conferenceSid;

/**
* The unique identifier for a participant object.
*/
@synthesize participantSid;

/**
* The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon.
*/
@synthesize audioUrl;

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
 * For serialization of enum AudioFormatEnum type property as NSString*
 */
-(id) JSONObjectForAudioUrl
{
     
    return [AudioFormatEnumHelper stringFromAudioFormatEnum:(enum AudioFormatEnum) audioUrl withDefault: nil];

}

/**
 * For deserialization of enum AudioFormatEnum type property from NSString*
 */
 
-(void)setAudioUrlWithNSString:(NSString*) strValue
{
    audioUrl = [AudioFormatEnumHelper audioFormatEnumFromString:(NSString*) strValue];
}


@end