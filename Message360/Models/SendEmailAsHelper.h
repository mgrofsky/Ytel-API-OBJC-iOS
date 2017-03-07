//
//  SendEmailAs.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDEMAILASHELPER
#define APIMATIC_SENDEMAILASHELPER

#include "SendEmailAs.h"

/**
* Helper class interface for SendEmailAs to NSString conversion
*/
@interface SendEmailAsHelper : NSObject

+(id) stringFromSendEmailAs:(enum SendEmailAs) sendEmailAs withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromSendEmailAsArray:(NSArray<NSNumber*>*) array;


+(enum SendEmailAs) sendEmailAsFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) sendEmailAsArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif