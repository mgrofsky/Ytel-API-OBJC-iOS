//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface PostCardController : BaseController

/**
* Completion block definition for asynchronous call to Delete Postcard */
typedef void (^CompletedPostDeletePostcard)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Remove a postcard object.
* @param    postcardid    Required parameter: The unique identifier of a postcard object.
*/
- (void) createDeletePostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostDeletePostcard) onCompleted;

/**
* Completion block definition for asynchronous call to View Postcard */
typedef void (^CompletedPostViewPostcard)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a postcard object by its PostcardId.
* @param    postcardid    Required parameter: The unique identifier for a postcard object.
*/
- (void) createViewPostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostViewPostcard) onCompleted;

/**
* Completion block definition for asynchronous call to Create Postcard */
typedef void (^CompletedPostCreatePostcard)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.
* @param    to    Required parameter: The AddressId or an object structured when creating an address by addresses/Create.
* @param    from    Required parameter: The AddressId or an object structured when creating an address by addresses/Create.
* @param    attachbyid    Required parameter: Set an existing postcard by attaching its PostcardId.
* @param    front    Required parameter: A 4.25"x6.25" or 6.25"x11.25" image to use as the front of the postcard.  This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG.
* @param    back    Required parameter: A 4.25"x6.25" or 6.25"x11.25" image to use as the back of the postcard, supplied as a URL, local file, or HTML string.  This allows you to customize your back design, but we will still insert the recipient address for you.
* @param    message    Required parameter: The message for the back of the postcard with a maximum of 350 characters.
* @param    setting    Required parameter: Code for the dimensions of the media to be printed.
* @param    description    Optional parameter: A description for the postcard.
* @param    htmldata    Optional parameter: A string value that contains HTML markup.
*/
- (void) createPostcardAsyncWithTo:(NSString*) to
                from:(NSString*) from
                attachbyid:(NSString*) attachbyid
                front:(NSString*) front
                back:(NSString*) back
                message:(NSString*) message
                setting:(NSString*) setting
                description:(NSString*) description
                htmldata:(NSString*) htmldata
                completionBlock:(CompletedPostCreatePostcard) onCompleted;

/**
* Completion block definition for asynchronous call to List Postcards */
typedef void (^CompletedPostListPostcards)(BOOL success, HttpContext* context, NSString* response, NSError* error);

/**
* Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.
* @param    page    Optional parameter: The page count to retrieve from the total results in the collection. Page indexing starts at 1.
* @param    pagesize    Optional parameter: The count of objects to return per page.
* @param    postcardid    Optional parameter: The unique identifier for a postcard object.
* @param    dateCreated    Optional parameter: The date the postcard was created.
*/
- (void) createListPostcardsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                postcardid:(NSString*) postcardid
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListPostcards) onCompleted;

@end