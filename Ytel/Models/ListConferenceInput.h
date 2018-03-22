//
//  ListConferenceInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTCONFERENCEINPUT
#define APIMATIC_LISTCONFERENCEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListConferenceInput
@end

@interface ListConferenceInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pagesize;

/**
* Only return conferences with the specified FriendlyName
*/
@property NSString* friendlyName;

/**
* Conference created date
*/
@property NSString* dateCreated;

@end
#endif