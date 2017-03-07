//
//  CreateSendEmailInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATESENDEMAILINPUT
#define APIMATIC_CREATESENDEMAILINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "SendEmailAs.h"
#import "SendEmailAsHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateSendEmailInput
@end

@interface CreateSendEmailInput : NSObject

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
@property enum SendEmailAs type;

/**
* Email subject
*/
@property NSString* subject;

/**
* The body of the email message
*/
@property NSString* message;

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

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif