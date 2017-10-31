//
//  SMSController.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SMSController.h"

@implementation SMSController

/**
* Send an SMS from a message360 number
* @param  SendSMSInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) sendSMSAsyncWithSendSMSInput:(SendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.from == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'from' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.to == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'to' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.body == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'body' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'responseType' in the input object cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/sms/sendsms.{ResponseType}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"ResponseType": input.responseType
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"from": input.from,
        @"to": input.to,
        @"body": input.body,
        @"method": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.method withDefault: [NSNull null]],
        @"messagestatuscallback": (nil != input.messagestatuscallback) ? input.messagestatuscallback : [NSNull null],
        @"smartsms": (input.smartsms ? @"true" : @"false")
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"message360-api"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters
        [_request setUsername: [Configuration BasicAuthUserName]];
        [_request setPassword: [Configuration BasicAuthPassword]];

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
 
             NSString* _result = [(HttpStringResponse*)_response body];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* View a Particular SMS
* @param  ViewSMSInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) viewSMSAsyncWithViewSMSInput:(ViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.messagesid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'messagesid' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'responseType' in the input object cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/sms/viewsms.{ResponseType}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"ResponseType": input.responseType
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"messagesid": input.messagesid
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"message360-api"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters
        [_request setUsername: [Configuration BasicAuthUserName]];
        [_request setPassword: [Configuration BasicAuthPassword]];

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
 
             NSString* _result = [(HttpStringResponse*)_response body];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* List All SMS
* @param  ListSMSInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) listSMSAsyncWithListSMSInput:(ListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'responseType' in the input object cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/sms/listsms.{ResponseType}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"ResponseType": input.responseType
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"page": [NSNumber numberWithInteger: input.page],
        @"pagesize": [NSNumber numberWithInteger: input.pagesize],
        @"from": (nil != input.from) ? input.from : [NSNull null],
        @"to": (nil != input.to) ? input.to : [NSNull null],
        @"datesent": (nil != input.datesent) ? input.datesent : [NSNull null]
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"message360-api"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters
        [_request setUsername: [Configuration BasicAuthUserName]];
        [_request setPassword: [Configuration BasicAuthPassword]];

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
 
             NSString* _result = [(HttpStringResponse*)_response body];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* List All Inbound SMS
* @param  ListInboundSMSInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) listInboundSMSAsyncWithListInboundSMSInput:(ListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'responseType' in the input object cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/sms/getInboundsms.{ResponseType}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"ResponseType": input.responseType
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"page": [NSNumber numberWithInteger: input.page],
        @"pagesize": [NSNumber numberWithInteger: input.pagesize],
        @"from": (nil != input.from) ? input.from : [NSNull null],
        @"to": (nil != input.to) ? input.to : [NSNull null],
        @"DateSent": (nil != input.dateSent) ? input.dateSent : [NSNull null]
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"message360-api"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters
        [_request setUsername: [Configuration BasicAuthUserName]];
        [_request setPassword: [Configuration BasicAuthPassword]];

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
 
             NSString* _result = [(HttpStringResponse*)_response body];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end