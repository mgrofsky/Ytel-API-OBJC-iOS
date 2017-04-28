//
//  CreateListTranscriptionInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListTranscriptionInput.h"

@implementation CreateListTranscriptionInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* TODO: Write general description for this method
*/
@synthesize page;

/**
* TODO: Write general description for this method
*/
@synthesize pageSize;

/**
* TODO: Write general description for this method
*/
@synthesize status;

/**
* TODO: Write general description for this method
*/
@synthesize dateTranscribed;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
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