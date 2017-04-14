//
//  PhoneNumberController.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "PhoneNumberController.h"

@implementation PhoneNumberController

/**
* Update Phone Number Details
* @param  UpdatePhoneNumberInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.phoneNumber == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'phoneNumber' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/incomingphone/updatenumber.{ResponseType}"];

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
        @"PhoneNumber": input.phoneNumber,
        @"FriendlyName": (nil != input.friendlyName) ? input.friendlyName : [NSNull null],
        @"VoiceUrl": (nil != input.voiceUrl) ? input.voiceUrl : [NSNull null],
        @"VoiceMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.voiceMethod withDefault: [NSNull null]],
        @"VoiceFallbackUrl": (nil != input.voiceFallbackUrl) ? input.voiceFallbackUrl : [NSNull null],
        @"VoiceFallbackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.voiceFallbackMethod withDefault: [NSNull null]],
        @"HangupCallback": (nil != input.hangupCallback) ? input.hangupCallback : [NSNull null],
        @"HangupCallbackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.hangupCallbackMethod withDefault: [NSNull null]],
        @"HeartbeatUrl": (nil != input.heartbeatUrl) ? input.heartbeatUrl : [NSNull null],
        @"HeartbeatMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.heartbeatMethod withDefault: [NSNull null]],
        @"SmsUrl": (nil != input.smsUrl) ? input.smsUrl : [NSNull null],
        @"SmsMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.smsMethod withDefault: [NSNull null]],
        @"SmsFallbackUrl": (nil != input.smsFallbackUrl) ? input.smsFallbackUrl : [NSNull null],
        @"SmsFallbackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.smsFallbackMethod withDefault: [NSNull null]]
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
* Buy Phone Number 
* @param  CreateBuyNumberInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createBuyNumberAsyncWithCreateBuyNumberInput:(CreateBuyNumberInput*) input
                completionBlock:(CompletedPostBuyNumber) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.phoneNumber == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'phoneNumber' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/incomingphone/buynumber.{ResponseType}"];

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
        @"PhoneNumber": input.phoneNumber
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
* Release number from account
* @param  CreateReleaseNumberInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createReleaseNumberAsyncWithCreateReleaseNumberInput:(CreateReleaseNumberInput*) input
                completionBlock:(CompletedPostReleaseNumber) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.phoneNumber == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'phoneNumber' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/incomingphone/releasenumber.{ResponseType}"];

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
        @"PhoneNumber": input.phoneNumber
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
* Get Phone Number Details
* @param  CreateViewNumberDetailsInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput:(CreateViewNumberDetailsInput*) input
                completionBlock:(CompletedPostViewNumberDetails) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.phoneNumber == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'phoneNumber' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/incomingphone/viewnumber.{ResponseType}"];

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
        @"PhoneNumber": input.phoneNumber
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
* List Account's Phone number details
* @param  CreateListNumberInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createListNumberAsyncWithCreateListNumberInput:(CreateListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted
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
    [_queryBuilder appendString: @"/incomingphone/listnumber.{ResponseType}"];

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
        @"PageSize": [NSNumber numberWithInteger: input.pageSize],
        @"NumberType": [NumberTypeEnumHelper stringFromNumberTypeEnum: (enum NumberTypeEnum) input.numberType withDefault: [NSNull null]],
        @"FriendlyName": (nil != input.friendlyName) ? input.friendlyName : [NSNull null]
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
* Available Phone Number
* @param  CreateAvailablePhoneNumberInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput:(CreateAvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.areaCode == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'areaCode' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/incomingphone/availablenumber.{ResponseType}"];

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
        @"NumberType": [NumberTypeEnumHelper stringFromNumberTypeEnum: (enum NumberTypeEnum) input.numberType withDefault: [NSNull null]],
        @"AreaCode": input.areaCode,
        @"PageSize": [NSNumber numberWithInteger: input.pageSize]
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