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
* Response type format xml or json
*/
@synthesize responseType;

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

-(id)init
{
    if (self = [super init])
    {
        self.type = [SendEmailAsEnumHelper sendEmailAsEnumFromString:@"html"];
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum SendEmailAsEnum type property as NSString*
 */
-(id) JSONObjectForType
{
     
    return [SendEmailAsEnumHelper stringFromSendEmailAsEnum:(enum SendEmailAsEnum) type withDefault:@"html"];

}

/**
 * For deserialization of enum SendEmailAsEnum type property from NSString*
 */
 
-(void)setTypeWithNSString:(NSString*) strValue
{
    type = [SendEmailAsEnumHelper sendEmailAsEnumFromString:(NSString*) strValue];
}


@end