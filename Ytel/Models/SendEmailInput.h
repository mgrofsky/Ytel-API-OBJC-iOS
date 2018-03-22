//
//  SendEmailInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
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
* A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@property NSString* to;

/**
* Specifies the type of email to be sent
*/
@property enum SendEmailAsEnum type;

/**
* The subject of the mail. Must be a valid string.
*/
@property NSString* subject;

/**
* The email message that is to be sent in the text.
*/
@property NSString* message;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* A valid address that will send the email.
*/
@property NSString* from;

/**
* Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@property NSString* cc;

/**
* Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@property NSString* bcc;

/**
* A file that is attached to the email. Must be less than 7 MB in size.
*/
@property NSString* attachment;

@end
#endif