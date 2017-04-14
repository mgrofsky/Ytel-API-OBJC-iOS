//
//  AudioDirectionEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "AudioDirectionEnumHelper.h"

/**
* Helper class implementation for AudioDirectionEnum to NSString conversion
*/
@implementation AudioDirectionEnumHelper

+(id) stringFromAudioDirectionEnum:(enum AudioDirectionEnum) audioDirectionEnum withDefault: (id) defaultValue
{
    switch(audioDirectionEnum)
    {
        case AudioDirectionIN:
            return @"in";

        case AudioDirectionOUT:
            return @"out";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromAudioDirectionEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [AudioDirectionEnumHelper stringFromAudioDirectionEnum:(enum AudioDirectionEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum AudioDirectionEnum) audioDirectionEnumFromString:(NSString*) strValue
{
    NSArray* AudioDirectionEnumArray = [NSArray arrayWithObjects:
                                        @"in",
                                        @"out",
                                        nil];

    return (enum AudioDirectionEnum) [AudioDirectionEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) audioDirectionEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ AudioDirectionEnumHelper audioDirectionEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end