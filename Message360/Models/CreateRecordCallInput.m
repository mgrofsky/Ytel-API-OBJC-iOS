//
//  CreateRecordCallInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateRecordCallInput.h"

@implementation CreateRecordCallInput

/**
* The unique identifier of each call resource
*/
@synthesize callSid;

/**
* Set true to initiate recording or false to terminate recording
*/
@synthesize record;

/**
* The leg of the call to record
*/
@synthesize direction;

/**
* Time in seconds the recording duration should not exceed
*/
@synthesize timeLimit;

/**
* URL consulted after the recording completes
*/
@synthesize callBackUrl;

/**
* Format of the recording file. Can be .mp3 or .wav
*/
@synthesize fileformat;

/**
* Response format, xml or json
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


 /**
 * For serialization of enum AudioFormat type property as NSString*
 */
-(id) JSONObjectForFileformat
{
     
    return [AudioFormatHelper stringFromAudioFormat:(enum AudioFormat) fileformat withDefault: nil];

}

/**
 * For deserialization of enum AudioFormat type property from NSString*
 */
 
-(void)setFileformatWithNSString:(NSString*) strValue
{
    fileformat = [AudioFormatHelper audioFormatFromString:(NSString*) strValue];
}


@end