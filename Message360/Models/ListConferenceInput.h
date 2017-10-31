//
//  ListConferenceInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Which page of the overall response will be returned. Zero indexed
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pageSize;

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