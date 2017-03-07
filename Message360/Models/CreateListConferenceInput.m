//
//  CreateListConferenceInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListConferenceInput.h"

@implementation CreateListConferenceInput

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

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum InterruptedCallStatus type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [InterruptedCallStatusHelper stringFromInterruptedCallStatus:(enum InterruptedCallStatus) status withDefault: nil];

}

/**
 * For deserialization of enum InterruptedCallStatus type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [InterruptedCallStatusHelper interruptedCallStatusFromString:(NSString*) strValue];
}


@end