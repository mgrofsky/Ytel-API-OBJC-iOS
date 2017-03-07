//
//  RecordingController.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "RecordingController.h"

@implementation RecordingController

/**
* List out Recordings
* @param  CreateListRecordingInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createListRecordingAsyncWithCreateListRecordingInput:(CreateListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted
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
    [_queryBuilder appendString: @"/recording/listrecording.{ResponseType}"];

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
        @"Page": (nil != input.page) ? input.page : [NSNull null],
        @"PageSize": (nil != input.pageSize) ? input.pageSize : [NSNull null],
        @"DateCreated": (nil != input.dateCreated) ? input.dateCreated : [NSNull null],
        @"CallSid": (nil != input.callSid) ? input.callSid : [NSNull null]
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
* Delete Recording Record
* @param  CreateDeleteRecordingInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createDeleteRecordingAsyncWithCreateDeleteRecordingInput:(CreateDeleteRecordingInput*) input
                completionBlock:(CompletedPostDeleteRecording) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.recordingSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'recordingSid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/recording/deleterecording.{ResponseType}"];

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
        @"RecordingSid": input.recordingSid
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
* View a specific Recording
* @param  CreateViewRecordingInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createViewRecordingAsyncWithCreateViewRecordingInput:(CreateViewRecordingInput*) input
                completionBlock:(CompletedPostViewRecording) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.recordingSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'recordingSid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/recording/viewrecording.{ResponseType}"];

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
        @"RecordingSid": input.recordingSid
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