//
//  ListInboundShortcodeInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTINBOUNDSHORTCODEINPUT
#define APIMATIC_LISTINBOUNDSHORTCODEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListInboundShortcodeInput
@end

@interface ListInboundShortcodeInput : NSObject

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
* Only list SMS messages sent from this number
*/
@property NSString* from;

/**
* Only list SMS messages sent to Shortcode
*/
@property NSString* shortcode;

/**
* Only list SMS messages sent in the specified date MAKE REQUEST
*/
@property NSString* dateReceived;

@end
#endif