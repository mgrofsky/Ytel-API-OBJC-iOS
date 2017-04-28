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
* Response format, xml or json
*/
@synthesize responseType;

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


 /**
 * For serialization of enum AudioFormatEnum type property as NSString*
 */
-(id) JSONObjectForFileformat
{
     
    return [AudioFormatEnumHelper stringFromAudioFormatEnum:(enum AudioFormatEnum) fileformat withDefault: nil];

}

/**
 * For deserialization of enum AudioFormatEnum type property from NSString*
 */
 
-(void)setFileformatWithNSString:(NSString*) strValue
{
    fileformat = [AudioFormatEnumHelper audioFormatEnumFromString:(NSString*) strValue];
}


@end