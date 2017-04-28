//
//  CreateListConferenceInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListConferenceInput.h"

@implementation CreateListConferenceInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Which page of the overall response will be returned. Zero indexed
*/
@synthesize page;

/**
* Number of individual resources listed in the response per page
*/
@synthesize pageSize;

/**
* Only return conferences with the specified FriendlyName
*/
@synthesize friendlyName;

/**
* TODO: Write general description for this method
*/
@synthesize status;

/**
* TODO: Write general description for this method
*/
@synthesize dateCreated;

/**
* TODO: Write general description for this method
*/
@synthesize dateUpdated;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum InterruptedCallStatusEnum type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [InterruptedCallStatusEnumHelper stringFromInterruptedCallStatusEnum:(enum InterruptedCallStatusEnum) status withDefault: nil];

}

/**
 * For deserialization of enum InterruptedCallStatusEnum type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [InterruptedCallStatusEnumHelper interruptedCallStatusEnumFromString:(NSString*) strValue];
}


@end