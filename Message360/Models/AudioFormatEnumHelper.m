//
//  AudioFormatEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "AudioFormatEnumHelper.h"

/**
* Helper class implementation for AudioFormatEnum to NSString conversion
*/
@implementation AudioFormatEnumHelper

+(id) stringFromAudioFormatEnum:(enum AudioFormatEnum) audioFormatEnum withDefault: (id) defaultValue
{
    switch(audioFormatEnum)
    {
        case AudioFormatMp3:
            return @"mp3";

        case AudioFormatWav:
            return @"wav";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromAudioFormatEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [AudioFormatEnumHelper stringFromAudioFormatEnum:(enum AudioFormatEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum AudioFormatEnum) audioFormatEnumFromString:(NSString*) strValue
{
    NSArray* AudioFormatEnumArray = [NSArray arrayWithObjects:
                                        @"mp3",
                                        @"wav",
                                        nil];

    return (enum AudioFormatEnum) [AudioFormatEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) audioFormatEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ AudioFormatEnumHelper audioFormatEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end