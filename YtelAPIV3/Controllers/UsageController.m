//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "UsageController.h"

@implementation UsageController

/**
* Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.
* @param    productCode    Optional parameter: Filter usage results by product type.
* @param    startDate    Optional parameter: Filter usage objects by start date.
* @param    endDate    Optional parameter: Filter usage objects by end date.
* @param    includeSubAccounts    Optional parameter: Will include all subaccount usage data
* @return	Returns the void response from the API call */
- (void) createListUsageAsyncWithProductCode:(enum ProductCodeEnum) productCode
                startDate:(NSString*) startDate
                endDate:(NSString*) endDate
                includeSubAccounts:(NSString*) includeSubAccounts
                completionBlock:(CompletedPostListUsage) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/usage/listusage.json"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request parameters
    NSMutableDictionary* _parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [_parameters addEntriesFromDictionary: @{
        @"ProductCode": [ProductCodeEnumHelper stringFromProductCodeEnum: (enum ProductCodeEnum) productCode withDefault: [NSNull null]],
        @"startDate": (nil != startDate) ? startDate : [NSNull null],
        @"endDate": (nil != endDate) ? endDate : [NSNull null],
        @"IncludeSubAccounts": (nil != includeSubAccounts) ? includeSubAccounts : [NSNull null]
    }];

    //convert to form parameters
    _parameters = [APIHelper prepareParametersAsFormFields:_parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: _parameters];


    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] post: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers
        [_request setParameters: _parameters]; //set request parameters
        [_request setUsername: Configuration_BasicAuthUserName];
        [_request setPassword: Configuration_BasicAuthPassword];

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