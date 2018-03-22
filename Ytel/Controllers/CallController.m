//
//  CallController.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CallController.h"

@implementation CallController

/**
* You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json
* @param  MakeCallInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) makeCallAsyncWithMakeCallInput:(MakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.from == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'from' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.to == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'to' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.url == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'url' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/makecall.{ResponseType}"];

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
        @"From": input.from,
        @"To": input.to,
        @"Url": input.url,
        @"Method": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.method withDefault: [NSNull null]],
        @"StatusCallBackUrl": (nil != input.statusCallBackUrl) ? input.statusCallBackUrl : [NSNull null],
        @"StatusCallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.statusCallBackMethod withDefault: [NSNull null]],
        @"FallBackUrl": (nil != input.fallBackUrl) ? input.fallBackUrl : [NSNull null],
        @"FallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.fallBackMethod withDefault: [NSNull null]],
        @"HeartBeatUrl": (nil != input.heartBeatUrl) ? input.heartBeatUrl : [NSNull null],
        @"HeartBeatMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.heartBeatMethod withDefault: [NSNull null]],
        @"Timeout": (nil != input.timeout) ? input.timeout : [NSNull null],
        @"PlayDtmf": (nil != input.playDtmf) ? input.playDtmf : [NSNull null],
        @"HideCallerId": (nil != input.hideCallerId) ? input.hideCallerId : [NSNull null],
        @"Record": (nil != input.record) ? input.record : [NSNull null],
        @"RecordCallBackUrl": (nil != input.recordCallBackUrl) ? input.recordCallBackUrl : [NSNull null],
        @"RecordCallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.recordCallBackMethod withDefault: [NSNull null]],
        @"Transcribe": (nil != input.transcribe) ? input.transcribe : [NSNull null],
        @"TranscribeCallBackUrl": (nil != input.transcribeCallBackUrl) ? input.transcribeCallBackUrl : [NSNull null],
        @"IfMachine": [IfMachineEnumHelper stringFromIfMachineEnum: (enum IfMachineEnum) input.ifMachine withDefault: [NSNull null]],
        @"IfMachineUrl": (nil != input.ifMachineUrl) ? input.ifMachineUrl : [NSNull null],
        @"IfMachineMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.ifMachineMethod withDefault: [NSNull null]],
        @"Feedback": (nil != input.feedback) ? input.feedback : [NSNull null],
        @"SurveyId": (nil != input.surveyId) ? input.surveyId : [NSNull null]
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
* Play Dtmf and send the Digit
* @param  PlayAudioInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) playAudioAsyncWithPlayAudioInput:(PlayAudioInput*) input
                completionBlock:(CompletedPostPlayAudio) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callSid' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.audioUrl == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'audioUrl' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.sayText == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'sayText' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/playaudios.{ResponseType}"];

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
        @"CallSid": input.callSid,
        @"AudioUrl": input.audioUrl,
        @"SayText": input.sayText,
        @"Length": (nil != input.length) ? input.length : [NSNull null],
        @"Direction": [DirectionEnumHelper stringFromDirectionEnum: (enum DirectionEnum) input.direction withDefault: [NSNull null]],
        @"Mix": (nil != input.mix) ? input.mix : [NSNull null]
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
* Start or stop recording of an in-progress voice call.
* @param  RecordCallInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) recordCallAsyncWithRecordCallInput:(RecordCallInput*) input
                completionBlock:(CompletedPostRecordCall) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callSid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/recordcalls.{ResponseType}"];

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
        @"CallSid": input.callSid,
        @"Record": (input.record ? @"true" : @"false"),
        @"Direction": [DirectionEnumHelper stringFromDirectionEnum: (enum DirectionEnum) input.direction withDefault: [NSNull null]],
        @"TimeLimit": (nil != input.timeLimit) ? input.timeLimit : [NSNull null],
        @"CallBackUrl": (nil != input.callBackUrl) ? input.callBackUrl : [NSNull null],
        @"Fileformat": [AudioFormatEnumHelper stringFromAudioFormatEnum: (enum AudioFormatEnum) input.fileformat withDefault: [NSNull null]]
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
* Add audio voice effects to the an in-progress voice call.
* @param  VoiceEffectInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) voiceEffectAsyncWithVoiceEffectInput:(VoiceEffectInput*) input
                completionBlock:(CompletedPostVoiceEffect) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callSid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/voiceeffect.{ResponseType}"];

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
        @"CallSid": input.callSid,
        @"AudioDirection": [AudioDirectionEnumHelper stringFromAudioDirectionEnum: (enum AudioDirectionEnum) input.audioDirection withDefault: [NSNull null]],
        @"PitchSemiTones": (nil != input.pitchSemiTones) ? input.pitchSemiTones : [NSNull null],
        @"PitchOctaves": (nil != input.pitchOctaves) ? input.pitchOctaves : [NSNull null],
        @"Pitch": (nil != input.pitch) ? input.pitch : [NSNull null],
        @"Rate": (nil != input.rate) ? input.rate : [NSNull null],
        @"Tempo": (nil != input.tempo) ? input.tempo : [NSNull null]
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
* Play Dtmf and send the Digit
* @param  SendDigitInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) sendDigitAsyncWithSendDigitInput:(SendDigitInput*) input
                completionBlock:(CompletedPostSendDigit) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callSid' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.playDtmf == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'playDtmf' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/senddigits.{ResponseType}"];

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
        @"CallSid": input.callSid,
        @"PlayDtmf": input.playDtmf,
        @"PlayDtmfDirection": [DirectionEnumHelper stringFromDirectionEnum: (enum DirectionEnum) input.playDtmfDirection withDefault: [NSNull null]]
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
* Interrupt the Call by Call Sid
* @param  InterruptedCallInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) interruptedCallAsyncWithInterruptedCallInput:(InterruptedCallInput*) input
                completionBlock:(CompletedPostInterruptedCall) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callSid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/interruptcalls.{ResponseType}"];

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
        @"CallSid": input.callSid,
        @"Url": (nil != input.url) ? input.url : [NSNull null],
        @"Method": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.method withDefault: [NSNull null]],
        @"Status": [InterruptedCallStatusEnumHelper stringFromInterruptedCallStatusEnum: (enum InterruptedCallStatusEnum) input.status withDefault: [NSNull null]]
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
* A list of calls associated with your Ytel account
* @param  ListCallsInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) listCallsAsyncWithListCallsInput:(ListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted
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
    [_queryBuilder appendString: @"/calls/listcalls.{ResponseType}"];

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
        @"Page": [NSNumber numberWithInteger: input.page],
        @"PageSize": [NSNumber numberWithInteger: input.pageSize],
        @"To": (nil != input.to) ? input.to : [NSNull null],
        @"From": (nil != input.from) ? input.from : [NSNull null],
        @"DateCreated": (nil != input.dateCreated) ? input.dateCreated : [NSNull null]
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
* Initiate an outbound Ringless Voicemail through Ytel.
* @param  SendRinglessVMInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) sendRinglessVMAsyncWithSendRinglessVMInput:(SendRinglessVMInput*) input
                completionBlock:(CompletedPostSendRinglessVM) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.from == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'from' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.rVMCallerId == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'rVMCallerId' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.to == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'to' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.voiceMailURL == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'voiceMailURL' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/makervm.{ResponseType}"];

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
        @"From": input.from,
        @"RVMCallerId": input.rVMCallerId,
        @"To": input.to,
        @"VoiceMailURL": input.voiceMailURL,
        @"Method": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.method withDefault: @"GET"],
        @"StatusCallBackUrl": (nil != input.statusCallBackUrl) ? input.statusCallBackUrl : [NSNull null],
        @"StatsCallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.statsCallBackMethod withDefault: [NSNull null]]
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
* Retrieve a single voice call’s information by its CallSid.
* @param  ViewCallInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) viewCallAsyncWithViewCallInput:(ViewCallInput*) input
                completionBlock:(CompletedPostViewCall) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.callsid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'callsid' in the input object cannot be nil."
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
    [_queryBuilder appendString: @"/calls/viewcalls.{ResponseType}"];

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
        @"callsid": input.callsid
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
* Retrieve a single voice call’s information by its CallSid.
* @param    callSid    Required parameter: The unique identifier for the voice call.
* @param    responseType    Required parameter: Response type format xml or json
* @return	Returns the void response from the API call */
- (void) viewCallDetailAsyncWithCallSid:(NSString*) callSid
                responseType:(NSString*) responseType
                completionBlock:(CompletedPostViewCallDetail) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (callSid == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'callSid' is a required parameter and cannot be nil."
                                                    andContext:nil];
    else if (responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'responseType' is a required parameter and cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/calls/viewcalldetail.{ResponseType}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"ResponseType": responseType
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"callSid": callSid
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
* Group Call
* @param  GroupCallInput     Object with all parameters
* @return	Returns the void response from the API call */
- (void) groupCallAsyncWithGroupCallInput:(GroupCallInput*) input
                completionBlock:(CompletedPostGroupCall) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (input.from == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'from' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.to == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'to' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.url == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'url' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.responseType == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'responseType' in the input object cannot be nil."
                                                    andContext:nil];
    else if (input.groupConfirmKey == nil)
        _validationError = [[APIError alloc] initWithReason: @"The property 'groupConfirmKey' in the input object cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) [Configuration BaseUri]];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/calls/groupcall.{ResponseType}"];

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
        @"From": input.from,
        @"To": input.to,
        @"Url": input.url,
        @"GroupConfirmKey": input.groupConfirmKey,
        @"GroupConfirmFile": [AudioFormatEnumHelper stringFromAudioFormatEnum: (enum AudioFormatEnum) input.groupConfirmFile withDefault: [NSNull null]],
        @"Method": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.method withDefault: [NSNull null]],
        @"StatusCallBackUrl": (nil != input.statusCallBackUrl) ? input.statusCallBackUrl : [NSNull null],
        @"StatusCallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.statusCallBackMethod withDefault: [NSNull null]],
        @"FallBackUrl": (nil != input.fallBackUrl) ? input.fallBackUrl : [NSNull null],
        @"FallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.fallBackMethod withDefault: [NSNull null]],
        @"HeartBeatUrl": (nil != input.heartBeatUrl) ? input.heartBeatUrl : [NSNull null],
        @"HeartBeatMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.heartBeatMethod withDefault: [NSNull null]],
        @"Timeout": (nil != input.timeout) ? input.timeout : [NSNull null],
        @"PlayDtmf": (nil != input.playDtmf) ? input.playDtmf : [NSNull null],
        @"HideCallerId": (nil != input.hideCallerId) ? input.hideCallerId : [NSNull null],
        @"Record": (nil != input.record) ? input.record : [NSNull null],
        @"RecordCallBackUrl": (nil != input.recordCallBackUrl) ? input.recordCallBackUrl : [NSNull null],
        @"RecordCallBackMethod": [HttpActionEnumHelper stringFromHttpActionEnum: (enum HttpActionEnum) input.recordCallBackMethod withDefault: [NSNull null]],
        @"Transcribe": (nil != input.transcribe) ? input.transcribe : [NSNull null],
        @"TranscribeCallBackUrl": (nil != input.transcribeCallBackUrl) ? input.transcribeCallBackUrl : [NSNull null]
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