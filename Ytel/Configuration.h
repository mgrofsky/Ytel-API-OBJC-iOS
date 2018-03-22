//
//  Configuration.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef Ytel_Configuration_h
#define Ytel_Configuration_h

@interface Configuration : NSObject

/** The base Uri for API calls */
+(NSString*) BaseUri;

+(void) SetBaseUri : (NSString*)BaseUri;

/** The username to use with basic authentication */
+(NSString*) BasicAuthUserName;

+(void) SetBasicAuthUserName : (NSString*)BasicAuthUserName;

/** The password to use with basic authentication */
+(NSString*) BasicAuthPassword;

+(void) SetBasicAuthPassword : (NSString*)BasicAuthPassword;


@end

#endif
