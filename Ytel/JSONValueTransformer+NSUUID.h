//
//  JSONValueTransformer+NSDate.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//

#import "JSONValueTransformer.h"

@interface JSONValueTransformer (NSUUID)

-(NSUUID*) NSUUIDFromNSString:(NSString*)string;

-(id)JSONObjectFromNSUUID:(NSUUID*)nsuuid;

@end
