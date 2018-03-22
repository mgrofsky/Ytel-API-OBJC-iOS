//
//  UpdateAssignmentInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_UPDATEASSIGNMENTINPUT
#define APIMATIC_UPDATEASSIGNMENTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "HttpActionEnum.h"
#import "HttpActionEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol UpdateAssignmentInput
@end

@interface UpdateAssignmentInput : NSObject

/**
* List of valid shortcode to your Ytel account
*/
@property NSString* shortcode;

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* User generated name of the shortcode
*/
@property NSString* friendlyName;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@property NSString* callbackUrl;

/**
* Specifies the HTTP method used to request the required StatusCallBackUrl once call connects.
*/
@property enum HttpActionEnum callbackMethod;

/**
* URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST.
*/
@property NSString* fallbackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@property enum HttpActionEnum fallbackUrlMethod;

@end
#endif