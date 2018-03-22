//
//  ListTranscriptionInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListTranscriptionInput.h"

@implementation ListTranscriptionInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pagesize;

/**
* The state of the transcription.
*/
@synthesize status;

/**
* The date the transcription took place.
*/
@synthesize dateTranscribed;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
        self.pagesize = 10;
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