//
//  ListTranscriptionInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListTranscriptionInput.h"

@implementation ListTranscriptionInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* page number
*/
@synthesize page;

/**
* Amount of data per page
*/
@synthesize pageSize;

/**
* Transcription status
*/
@synthesize status;

/**
* Transcription date
*/
@synthesize dateTranscribed;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
        self.pageSize = 10;
    }
    return self;
}

 /**
 * For serialization of enum StatusEnum type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [StatusEnumHelper stringFromStatusEnum:(enum StatusEnum) status withDefault: nil];

}

/**
 * For deserialization of enum StatusEnum type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [StatusEnumHelper statusEnumFromString:(NSString*) strValue];
}


@end