//
//  CreateSendEmailInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSendEmailInput.h"

@implementation CreateSendEmailInput

/**
* The to email address
*/
@synthesize to;

/**
* The from email address
*/
@synthesize from;

/**
* email format type, html or text
*/
@synthesize type;

/**
* Email subject
*/
@synthesize subject;

/**
* The body of the email message
*/
@synthesize message;

/**
* CC Email address
*/
@synthesize cc;

/**
* BCC Email address
*/
@synthesize bcc;

/**
* File to be attached.File must be less than 7MB.
*/
@synthesize attachment;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.type = [SendEmailAsHelper sendEmailAsFromString:@"html"];
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum SendEmailAs type property as NSString*
 */
-(id) JSONObjectForType
{
     
    return [SendEmailAsHelper stringFromSendEmailAs:(enum SendEmailAs) type withDefault:@"html"];

}

/**
 * For deserialization of enum SendEmailAs type property from NSString*
 */
 
-(void)setTypeWithNSString:(NSString*) strValue
{
    type = [SendEmailAsHelper sendEmailAsFromString:(NSString*) strValue];
}


@end