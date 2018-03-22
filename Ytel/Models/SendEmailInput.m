//
//  SendEmailInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendEmailInput.h"

@implementation SendEmailInput

/**
* A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@synthesize to;

/**
* Specifies the type of email to be sent
*/
@synthesize type;

/**
* The subject of the mail. Must be a valid string.
*/
@synthesize subject;

/**
* The email message that is to be sent in the text.
*/
@synthesize message;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* A valid address that will send the email.
*/
@synthesize from;

/**
* Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@synthesize cc;

/**
* Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas.
*/
@synthesize bcc;

/**
* A file that is attached to the email. Must be less than 7 MB in size.
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