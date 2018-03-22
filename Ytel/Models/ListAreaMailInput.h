//
//  ListAreaMailInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTAREAMAILINPUT
#define APIMATIC_LISTAREAMAILINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListAreaMailInput
@end

@interface ListAreaMailInput : NSObject

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

/**
* The unique identifier for an AreaMail object.
*/
@property NSString* areamailsid;

/**
* The date the AreaMail was created.
*/
@property NSString* dateCreated;

@end
#endif