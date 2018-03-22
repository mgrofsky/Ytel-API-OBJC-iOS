//
//  LetterController.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "LetterController.h"

@implementation LetterController

/**
* Retrieve a letter object by its LetterSid.
* @param  ViewLetterInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) viewLetterAsyncWithViewLetterInput:(ViewLetterInput*) input
                completionBlock:(CompletedPostViewLetter) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.lettersid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'lettersid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/letter/viewletter.{ResponseType}"];

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
        @"lettersid": input.lettersid
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ytel-api"
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
* Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.
* @param  CreateLetterInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) createLetterAsyncWithCreateLetterInput:(CreateLetterInput*) input
                completionBlock:(CompletedPostCreateLetter) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.to == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'to' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.from == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'from' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.attachbyid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'attachbyid' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.file == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'file' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.color == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'color' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/letter/create.{ResponseType}"];

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
        @"to": input.to,
        @"from": input.from,
        @"attachbyid": input.attachbyid,
        @"file": input.file,
        @"color": input.color,
        @"description": (nil != input.description) ? input.description : [NSNull null],
        @"extraservice": (nil != input.extraservice) ? input.extraservice : [NSNull null],
        @"doublesided": (nil != input.doublesided) ? input.doublesided : [NSNull null],
        @"template": (nil != input.template) ? input.template : [NSNull null],
        @"htmldata": (nil != input.htmldata) ? input.htmldata : [NSNull null]
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ytel-api"
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
* Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.
* @param  ListLettersInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) listLettersAsyncWithListLettersInput:(ListLettersInput*) input
                completionBlock:(CompletedPostListLetters) onCompleted
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
    [_queryBuilder appendString: @"/letter/listsletter.{ResponseType}"];

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
        @"lettersid": (nil != input.lettersid) ? input.lettersid : [NSNull null],
        @"dateCreated": (nil != input.dateCreated) ? input.dateCreated : [NSNull null]
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ytel-api"
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
* Remove a letter object by its LetterId.
* @param  DeleteLetterInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) deleteLetterAsyncWithDeleteLetterInput:(DeleteLetterInput*) input
                completionBlock:(CompletedPostDeleteLetter) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.lettersid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'lettersid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/letter/delete.{ResponseType}"];

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
        @"lettersid": input.lettersid
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"ytel-api"
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