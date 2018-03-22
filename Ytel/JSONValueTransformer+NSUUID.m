//
//  JSONValueTransformer+NSUUID.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//

#import "JSONValueTransformer+NSUUID.h"

@implementation JSONValueTransformer (NSUUID)

-(NSUUID*) NSUUIDFromNSString:(NSString*)string
{
    return [[NSUUID alloc] initWithUUIDString: string];
}

-(id)JSONObjectFromNSUUID:(NSUUID*)nsuuid
{
    return [nsuuid UUIDString];
}

@end
