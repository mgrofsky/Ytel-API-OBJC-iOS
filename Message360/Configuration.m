//
//  Configuration.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Configuration.h"

@implementation Configuration

static NSString* Configuration_BaseUri = @"https://api.message360.com/api/v2";
NSString* Configuration_BasicAuthUserName;
NSString* Configuration_BasicAuthPassword;

/** The base Uri for API calls */
+(NSString*) BaseUri
{
    return Configuration_BaseUri;
}

+(void) SetBaseUri:(NSString*)BaseUri
{
    Configuration_BaseUri = BaseUri;
}

/** The username to use with basic authentication */
+(NSString*) BasicAuthUserName
{
    if(!Configuration_BasicAuthUserName)
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"BasicAuthUserName"];
    return Configuration_BasicAuthUserName;
}

+(void) SetBasicAuthUserName:(NSString*)BasicAuthUserName
{
    Configuration_BasicAuthUserName = BasicAuthUserName;
}

/** The password to use with basic authentication */
+(NSString*) BasicAuthPassword
{
    if(!Configuration_BasicAuthPassword)
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"BasicAuthPassword"];
    return Configuration_BasicAuthPassword;
}

+(void) SetBasicAuthPassword:(NSString*)BasicAuthPassword
{
    Configuration_BasicAuthPassword = BasicAuthPassword;
}


@end