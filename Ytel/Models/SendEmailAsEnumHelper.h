//
//  SendEmailAsEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDEMAILASENUMHELPER
#define APIMATIC_SENDEMAILASENUMHELPER

#include "SendEmailAsEnum.h"

/**
* Helper class interface for SendEmailAsEnum to NSString conversion
*/
@interface SendEmailAsEnumHelper : NSObject

+(id) stringFromSendEmailAsEnum:(enum SendEmailAsEnum) sendEmailAsEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromSendEmailAsEnumArray:(NSArray<NSNumber*>*) array;


+(enum SendEmailAsEnum) sendEmailAsEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) sendEmailAsEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif