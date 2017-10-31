//
//  CreateConferenceInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATECONFERENCEINPUT
#define APIMATIC_CREATECONFERENCEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateConferenceInput
@end

@interface CreateConferenceInput : NSObject

/**
* This number to display on Caller ID as calling
*/
@property NSString* from;

/**
* To number
*/
@property NSString* to;

/**
* URL requested once the call connects
*/
@property NSString* url;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@property enum HttpActionEnum method;

/**
* Recording parameters will be sent here upon completion.
*/
@property NSString* recordCallbackUrl;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished.
*/
@property NSString* statusCallBackUrl;

/**
* Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@property enum HttpActionEnum statusCallBackMethod;

/**
* URL requested if the initial Url parameter fails or encounters an error
*/
@property NSString* fallBackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@property enum HttpActionEnum fallBackMethod;

/**
* Specifies if the conference should be recorded.
*/
@property NSNumber* record;

/**
* Specifies the HTTP method used to request the required URL once conference connects.
*/
@property enum HttpActionEnum recordCallbackMethod;

/**
* Schedule conference in future. Schedule time must be greater than current time
*/
@property NSString* schdeuleTime;

/**
* The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set.
*/
@property NSNumber* timeout;

@end
#endif