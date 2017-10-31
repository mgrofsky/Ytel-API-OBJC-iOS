//
//  SendEmailInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDEMAILINPUT
#define APIMATIC_SENDEMAILINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "SendEmailAsEnum.h"
#import "SendEmailAsEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol SendEmailInput
@end

@interface SendEmailInput : NSObject

/**
* The to email address
*/
@property NSString* to;

/**
* The from email address
*/
@property NSString* from;

/**
* email format type, html or text
*/
@property enum SendEmailAsEnum type;

/**
* Email subject
*/
@property NSString* subject;

/**
* The body of the email message
*/
@property NSString* message;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* CC Email address
*/
@property NSString* cc;

/**
* BCC Email address
*/
@property NSString* bcc;

/**
* File to be attached.File must be less than 7MB.
*/
@property NSString* attachment;

@end
#endif