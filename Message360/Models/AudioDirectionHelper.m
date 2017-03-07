//
//  AudioDirection.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "AudioDirectionHelper.h"

/**
* Helper class implementation for AudioDirection to NSString conversion
*/
@implementation AudioDirectionHelper

+(id) stringFromAudioDirection:(enum AudioDirection) audioDirection withDefault: (id) defaultValue
{
    switch(audioDirection)
    {
        case AudioDirectionIN:
            return @"in";

        case AudioDirectionOUT:
            return @"out";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromAudioDirectionArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [AudioDirectionHelper stringFromAudioDirection:(enum AudioDirection) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum AudioDirection) audioDirectionFromString:(NSString*) strValue
{
    NSArray* AudioDirectionArray = [NSArray arrayWithObjects:
                                        @"in",
                                        @"out",
                                        nil];

    return (enum AudioDirection) [AudioDirectionArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) audioDirectionArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ AudioDirectionHelper audioDirectionFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end