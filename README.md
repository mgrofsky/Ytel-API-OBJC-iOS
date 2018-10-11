# Getting started

Ytel API version 3

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Open the project workspace using the (YtelAPIV3.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the YtelAPIV3 library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'YtelAPIV3', :path => 'Vendor/YtelAPIV3'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the YtelAPIV3.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Ytel%20API%20V3-ObjC&workspaceName=YtelAPIV3&projectName=YtelAPIV3&rootNamespace=YtelAPIV3)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basicAuthUserName | The username to use with basic authentication |
| basicAuthPassword | The password to use with basic authentication |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_BasicAuthUserName = "Configuration_BasicAuthUserName"; // The username to use with basic authentication
Configuration_BasicAuthPassword = "Configuration_BasicAuthPassword"; // The password to use with basic authentication

```

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ShortCodeController](#short_code_controller)
* [AreaMailController](#area_mail_controller)
* [PostCardController](#post_card_controller)
* [LetterController](#letter_controller)
* [CallController](#call_controller)
* [PhoneNumberController](#phone_number_controller)
* [SMSController](#sms_controller)
* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [CarrierController](#carrier_controller)
* [EmailController](#email_controller)
* [AccountController](#account_controller)
* [SubAccountController](#sub_account_controller)
* [AddressController](#address_controller)
* [RecordingController](#recording_controller)
* [TranscriptionController](#transcription_controller)
* [UsageController](#usage_controller)

## <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

### Get singleton instance
```objc
ShortCode* shortCode = [[ShortCode alloc]init] ;
```

### <a name="create_list_shortcodes_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListShortcodesAsyncWithShortcode") createListShortcodesAsyncWithShortcode

> Retrieve a list of Short Code assignment associated with your Ytel account.


```objc
function createListShortcodesAsyncWithShortcode:(NSString*) shortcode
                page:(NSString*) page
                pagesize:(NSString*) pagesize
                completionBlock:(CompletedPostListShortcodes) onCompleted(shortcode page : page pagesize : pagesize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list Short Code Assignment sent from this Short Code |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";
    NSString* page = @"page";
    NSString* pagesize = @"pagesize";

    [self.shortCode createListShortcodesAsyncWithShortcode: shortcode page : page pagesize : pagesize  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_sms_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createViewSMSAsyncWithShortcode") createViewSMSAsyncWithShortcode

> Retrieve a single Short Code object by its shortcode assignment.


```objc
function createViewSMSAsyncWithShortcode:(NSString*) shortcode
                completionBlock:(CompletedPostViewSMS) onCompleted(shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Dedicated Short Code to your Ytel account |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";

    [self.shortCode createViewSMSAsyncWithShortcode: shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_sms_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createViewSMSAsyncWithMessageSid") createViewSMSAsyncWithMessageSid

> View a single Sms Short Code message.


```objc
function createViewSMSAsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostViewSMS) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for the sms resource |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.shortCode createViewSMSAsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_sms_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListSMSAsyncWithShortcode") createListSMSAsyncWithShortcode

> Retrieve a list of Short Code messages.


```objc
function createListSMSAsyncWithShortcode:(NSString*) shortcode
                to:(NSString*) to
                dateSent:(NSString*) dateSent
                page:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                completionBlock:(CompletedPostListSMS) onCompleted(shortcode to : to dateSent : dateSent page : page pageSize : pageSize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| dateSent |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";
    NSString* to = @"To";
    NSString* dateSent = @"DateSent";
    NSNumber* page = 241;
    NSNumber* pageSize = 241;

    [self.shortCode createListSMSAsyncWithShortcode: shortcode to : to dateSent : dateSent page : page pageSize : pageSize  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_send_sms_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createSendSMSAsyncWithShortcode") createSendSMSAsyncWithShortcode

> Send Dedicated Shortcode


```objc
function createSendSMSAsyncWithShortcode:(int) shortcode
                to:(double) to
                body:(NSString*) body
                method:(NSString*) method
                messagestatuscallback:(NSString*) messagestatuscallback
                completionBlock:(CompletedPostSendSMS) onCompleted(shortcode to : to body : body method : method messagestatuscallback : messagestatuscallback)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | Your dedicated shortcode |
| to |  ``` Required ```  | The number to send your SMS to |
| body |  ``` Required ```  | The body of your message |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |





#### Example Usage

```objc
    // Parameters for the API call
    int shortcode = 241;
    double to = 241.936280088004;
    NSString* body = @"body";
    NSString* method = @"method";
    NSString* messagestatuscallback = @"messagestatuscallback";

    [self.shortCode createSendSMSAsyncWithShortcode: shortcode to : to body : body method : method messagestatuscallback : messagestatuscallback  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_inbound_sms_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListInboundSMSAsyncWithPage") createListInboundSMSAsyncWithPage

> Retrive a list of inbound Sms Short Code messages associated with your Ytel account.


```objc
function createListInboundSMSAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                from:(NSString*) from
                shortcode:(NSString*) shortcode
                datecreated:(NSString*) datecreated
                completionBlock:(CompletedPostListInboundSMS) onCompleted(page pagesize : pagesize from : from shortcode : shortcode datecreated : datecreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| datecreated |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 241;
    NSNumber* pagesize = 241;
    NSString* from = @"From";
    NSString* shortcode = @"Shortcode";
    NSString* datecreated = @"Datecreated";

    [self.shortCode createListInboundSMSAsyncWithPage: page pagesize : pagesize from : from shortcode : shortcode datecreated : datecreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_shortcode_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.updateShortcodeAsyncWithShortcode") updateShortcodeAsyncWithShortcode

> Update a dedicated shortcode.


```objc
function updateShortcodeAsyncWithShortcode:(NSString*) shortcode
                friendlyName:(NSString*) friendlyName
                callbackMethod:(NSString*) callbackMethod
                callbackUrl:(NSString*) callbackUrl
                fallbackMethod:(NSString*) fallbackMethod
                fallbackUrl:(NSString*) fallbackUrl
                completionBlock:(CompletedPostUpdateShortcode) onCompleted(shortcode friendlyName : friendlyName callbackMethod : callbackMethod callbackUrl : callbackUrl fallbackMethod : fallbackMethod fallbackUrl : fallbackUrl)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid dedicated shortcode to your Ytel account. |
| friendlyName |  ``` Optional ```  | User generated name of the dedicated shortcode. |
| callbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| callbackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| fallbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| fallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";
    NSString* friendlyName = @"FriendlyName";
    NSString* callbackMethod = @"CallbackMethod";
    NSString* callbackUrl = @"CallbackUrl";
    NSString* fallbackMethod = @"FallbackMethod";
    NSString* fallbackUrl = @"FallbackUrl";

    [self.shortCode updateShortcodeAsyncWithShortcode: shortcode friendlyName : friendlyName callbackMethod : callbackMethod callbackUrl : callbackUrl fallbackMethod : fallbackMethod fallbackUrl : fallbackUrl  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="area_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AreaMailController") AreaMailController

### Get singleton instance
```objc
AreaMail* areaMail = [[AreaMail alloc]init] ;
```

### <a name="create_delete_area_mail_async_with_areamailid"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createDeleteAreaMailAsyncWithAreamailid") createDeleteAreaMailAsyncWithAreamailid

> Remove an AreaMail object by its AreaMailId.


```objc
function createDeleteAreaMailAsyncWithAreamailid:(NSString*) areamailid
                completionBlock:(CompletedPostDeleteAreaMail) onCompleted(areamailid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* areamailid = @"areamailid";

    [self.areaMail createDeleteAreaMailAsyncWithAreamailid: areamailid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_area_mail_async_with_areamailid"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createViewAreaMailAsyncWithAreamailid") createViewAreaMailAsyncWithAreamailid

> Retrieve an AreaMail object by its AreaMailId.


```objc
function createViewAreaMailAsyncWithAreamailid:(NSString*) areamailid
                completionBlock:(CompletedPostViewAreaMail) onCompleted(areamailid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* areamailid = @"areamailid";

    [self.areaMail createViewAreaMailAsyncWithAreamailid: areamailid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_area_mails_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createListAreaMailsAsyncWithPage") createListAreaMailsAsyncWithPage

> Retrieve a list of AreaMail objects.


```objc
function createListAreaMailsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                areamailsid:(NSString*) areamailsid
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListAreaMails) onCompleted(page pagesize : pagesize areamailsid : areamailsid dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| areamailsid |  ``` Optional ```  | The unique identifier for an AreaMail object. |
| dateCreated |  ``` Optional ```  | The date the AreaMail was created. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 241;
    NSNumber* pagesize = 241;
    NSString* areamailsid = @"areamailsid";
    NSString* dateCreated = @"dateCreated";

    [self.areaMail createListAreaMailsAsyncWithPage: page pagesize : pagesize areamailsid : areamailsid dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_area_mail_async_with_routes"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreaMailAsyncWithRoutes") createAreaMailAsyncWithRoutes

> Create a new AreaMail object.


```objc
function createAreaMailAsyncWithRoutes:(NSString*) routes
                attachbyid:(NSString*) attachbyid
                front:(NSString*) front
                back:(NSString*) back
                description:(NSString*) description
                targettype:(NSString*) targettype
                htmldata:(NSString*) htmldata
                completionBlock:(CompletedPostCreateAreaMail) onCompleted(routes attachbyid : attachbyid front : front back : back description : description targettype : targettype htmldata : htmldata)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| routes |  ``` Required ```  | List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043 |
| attachbyid |  ``` Required ```  | Set an existing areamail by attaching its AreamailId. |
| front |  ``` Required ```  | The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required |
| back |  ``` Required ```  | The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| description |  ``` Optional ```  | A string value to use as a description for this AreaMail item. |
| targettype |  ``` Optional ```  | The delivery location type. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* routes = @"routes";
    NSString* attachbyid = @"attachbyid";
    NSString* front = @"front";
    NSString* back = @"back";
    NSString* description = @"description";
    NSString* targettype = @"targettype";
    NSString* htmldata = @"htmldata";

    [self.areaMail createAreaMailAsyncWithRoutes: routes attachbyid : attachbyid front : front back : back description : description targettype : targettype htmldata : htmldata  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostCardController") PostCardController

### Get singleton instance
```objc
PostCard* postCard = [[PostCard alloc]init] ;
```

### <a name="create_delete_postcard_async_with_postcardid"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.createDeletePostcardAsyncWithPostcardid") createDeletePostcardAsyncWithPostcardid

> Remove a postcard object.


```objc
function createDeletePostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostDeletePostcard) onCompleted(postcardid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier of a postcard object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* postcardid = @"postcardid";

    [self.postCard createDeletePostcardAsyncWithPostcardid: postcardid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_postcard_async_with_postcardid"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.createViewPostcardAsyncWithPostcardid") createViewPostcardAsyncWithPostcardid

> Retrieve a postcard object by its PostcardId.


```objc
function createViewPostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostViewPostcard) onCompleted(postcardid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier for a postcard object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* postcardid = @"postcardid";

    [self.postCard createViewPostcardAsyncWithPostcardid: postcardid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_postcard_async_with_to"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.createPostcardAsyncWithTo") createPostcardAsyncWithTo

> Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.


```objc
function createPostcardAsyncWithTo:(NSString*) to
                from:(NSString*) from
                attachbyid:(NSString*) attachbyid
                front:(NSString*) front
                back:(NSString*) back
                message:(NSString*) message
                setting:(NSString*) setting
                description:(NSString*) description
                htmldata:(NSString*) htmldata
                completionBlock:(CompletedPostCreatePostcard) onCompleted(to from : from attachbyid : attachbyid front : front back : back message : message setting : setting description : description htmldata : htmldata)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing postcard by attaching its PostcardId. |
| front |  ``` Required ```  | A 4.25"x6.25" or 6.25"x11.25" image to use as the front of the postcard.  This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| back |  ``` Required ```  | A 4.25"x6.25" or 6.25"x11.25" image to use as the back of the postcard, supplied as a URL, local file, or HTML string.  This allows you to customize your back design, but we will still insert the recipient address for you. |
| message |  ``` Required ```  | The message for the back of the postcard with a maximum of 350 characters. |
| setting |  ``` Required ```  | Code for the dimensions of the media to be printed. |
| description |  ``` Optional ```  | A description for the postcard. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* to = @"to";
    NSString* from = @"from";
    NSString* attachbyid = @"attachbyid";
    NSString* front = @"front";
    NSString* back = @"back";
    NSString* message = @"message";
    NSString* setting = @"setting";
    NSString* description = @"description";
    NSString* htmldata = @"htmldata";

    [self.postCard createPostcardAsyncWithTo: to from : from attachbyid : attachbyid front : front back : back message : message setting : setting description : description htmldata : htmldata  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_postcards_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.createListPostcardsAsyncWithPage") createListPostcardsAsyncWithPage

> Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.


```objc
function createListPostcardsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                postcardid:(NSString*) postcardid
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListPostcards) onCompleted(page pagesize : pagesize postcardid : postcardid dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| postcardid |  ``` Optional ```  | The unique identifier for a postcard object. |
| dateCreated |  ``` Optional ```  | The date the postcard was created. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 28;
    NSNumber* pagesize = 28;
    NSString* postcardid = @"postcardid";
    NSString* dateCreated = @"dateCreated";

    [self.postCard createListPostcardsAsyncWithPage: page pagesize : pagesize postcardid : postcardid dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LetterController") LetterController

### Get singleton instance
```objc
Letter* letter = [[Letter alloc]init] ;
```

### <a name="create_delete_letter_async_with_lettersid"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createDeleteLetterAsyncWithLettersid") createDeleteLetterAsyncWithLettersid

> Remove a letter object by its LetterId.


```objc
function createDeleteLetterAsyncWithLettersid:(NSString*) lettersid
                completionBlock:(CompletedPostDeleteLetter) onCompleted(lettersid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* lettersid = @"lettersid";

    [self.letter createDeleteLetterAsyncWithLettersid: lettersid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_letter_async_with_lettersid"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createViewLetterAsyncWithLettersid") createViewLetterAsyncWithLettersid

> Retrieve a letter object by its LetterSid.


```objc
function createViewLetterAsyncWithLettersid:(NSString*) lettersid
                completionBlock:(CompletedPostViewLetter) onCompleted(lettersid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* lettersid = @"lettersid";

    [self.letter createViewLetterAsyncWithLettersid: lettersid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_letter_async_with_to"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterAsyncWithTo") createLetterAsyncWithTo

> Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.


```objc
function createLetterAsyncWithTo:(NSString*) to
                from:(NSString*) from
                attachbyid:(NSString*) attachbyid
                file:(NSString*) file
                color:(NSString*) color
                description:(NSString*) description
                extraservice:(NSString*) extraservice
                doublesided:(NSString*) doublesided
                template:(NSString*) template
                htmldata:(NSString*) htmldata
                completionBlock:(CompletedPostCreateLetter) onCompleted(to from : from attachbyid : attachbyid file : file color : color description : description extraservice : extraservice doublesided : doublesided template : template htmldata : htmldata)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing letter by attaching its LetterId. |
| file |  ``` Required ```  | File can be a 8.5"x11" PDF uploaded file or URL that links to a file. |
| color |  ``` Required ```  | Specify if letter should be printed in color. |
| description |  ``` Optional ```  | A description for the letter. |
| extraservice |  ``` Optional ```  | Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50. |
| doublesided |  ``` Optional ```  | Specify if letter should be printed on both sides. |
| template |  ``` Optional ```  | Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* to = @"to";
    NSString* from = @"from";
    NSString* attachbyid = @"attachbyid";
    NSString* file = @"file";
    NSString* color = @"color";
    NSString* description = @"description";
    NSString* extraservice = @"extraservice";
    NSString* doublesided = @"doublesided";
    NSString* template = @"template";
    NSString* htmldata = @"htmldata";

    [self.letter createLetterAsyncWithTo: to from : from attachbyid : attachbyid file : file color : color description : description extraservice : extraservice doublesided : doublesided template : template htmldata : htmldata  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_letters_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createListLettersAsyncWithPage") createListLettersAsyncWithPage

> Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.


```objc
function createListLettersAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                lettersid:(NSString*) lettersid
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListLetters) onCompleted(page pagesize : pagesize lettersid : lettersid dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| lettersid |  ``` Optional ```  | The unique identifier for a letter object. |
| dateCreated |  ``` Optional ```  | The date the letter was created. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 28;
    NSNumber* pagesize = 28;
    NSString* lettersid = @"lettersid";
    NSString* dateCreated = @"dateCreated";

    [self.letter createListLettersAsyncWithPage: page pagesize : pagesize lettersid : lettersid dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance
```objc
Call* call = [[Call alloc]init] ;
```

### <a name="create_view_call1_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createViewCall1AsyncWithCallSid") createViewCall1AsyncWithCallSid

> Retrieve a single voice call’s information by its CallSid.


```objc
function createViewCall1AsyncWithCallSid:(NSString*) callSid
                completionBlock:(CompletedPostViewCall1) onCompleted(callSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for the voice call. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"callSid";

    [self.call createViewCall1AsyncWithCallSid: callSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_call_async_with_callsid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createViewCallAsyncWithCallsid") createViewCallAsyncWithCallsid

> Retrieve a single voice call’s information by its CallSid.


```objc
function createViewCallAsyncWithCallsid:(NSString*) callsid
                completionBlock:(CompletedPostViewCall) onCompleted(callsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | The unique identifier for the voice call. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callsid = @"callsid";

    [self.call createViewCallAsyncWithCallsid: callsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_play_dtmf_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createPlayDTMFAsyncWithCallSid") createPlayDTMFAsyncWithCallSid

> Play Dtmf and send the Digit


```objc
function createPlayDTMFAsyncWithCallSid:(NSString*) callSid
                playDtmf:(NSString*) playDtmf
                playDtmfDirection:(enum PlayDtmfDirectionEnum) playDtmfDirection
                completionBlock:(CompletedPostPlayDTMF) onCompleted(callSid playDtmf : playDtmf playDtmfDirection : playDtmfDirection)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| playDtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| playDtmfDirection |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"CallSid";
    NSString* playDtmf = @"PlayDtmf";
    PlayDtmfDirectionEnum playDtmfDirection = ENUM_IN;

    [self.call createPlayDTMFAsyncWithCallSid: callSid playDtmf : playDtmf playDtmfDirection : playDtmfDirection  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_make_call_async_with_from"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createMakeCallAsyncWithFrom") createMakeCallAsyncWithFrom

> You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json


```objc
function createMakeCallAsyncWithFrom:(NSString*) from
                to:(NSString*) to
                url:(NSString*) url
                method:(NSString*) method
                statusCallBackUrl:(NSString*) statusCallBackUrl
                statusCallBackMethod:(NSString*) statusCallBackMethod
                fallBackUrl:(NSString*) fallBackUrl
                fallBackMethod:(NSString*) fallBackMethod
                heartBeatUrl:(NSString*) heartBeatUrl
                heartBeatMethod:(NSString*) heartBeatMethod
                timeout:(NSNumber*) timeout
                playDtmf:(NSString*) playDtmf
                hideCallerId:(NSNumber*) hideCallerId
                record:(NSNumber*) record
                recordCallBackUrl:(NSString*) recordCallBackUrl
                recordCallBackMethod:(NSString*) recordCallBackMethod
                transcribe:(NSNumber*) transcribe
                transcribeCallBackUrl:(NSString*) transcribeCallBackUrl
                ifMachine:(enum IfMachineEnum) ifMachine
                ifMachineUrl:(NSString*) ifMachineUrl
                ifMachineMethod:(NSString*) ifMachineMethod
                feedback:(NSNumber*) feedback
                surveyId:(NSString*) surveyId
                completionBlock:(CompletedPostMakeCall) onCompleted(from to : to url : url method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallBackUrl : fallBackUrl fallBackMethod : fallBackMethod heartBeatUrl : heartBeatUrl heartBeatMethod : heartBeatMethod timeout : timeout playDtmf : playDtmf hideCallerId : hideCallerId record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod transcribe : transcribe transcribeCallBackUrl : transcribeCallBackUrl ifMachine : ifMachine ifMachineUrl : ifMachineUrl ifMachineMethod : ifMachineMethod feedback : feedback surveyId : surveyId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| statusCallBackMethod |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallBackUrl |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heartBeatUrl |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed tim |
| heartBeatMethod |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) Ytel should wait while the call is ringing before canceling the call |
| playDtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hideCallerId |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| recordCallBackUrl |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| recordCallBackMethod |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribeCallBackUrl |  ``` Optional ```  | Transcription parameters will be sent here upon completion |
| ifMachine |  ``` Optional ```  | How Ytel should handle the receiving numbers voicemail machine |
| ifMachineUrl |  ``` Optional ```  | URL requested when IfMachine=continue |
| ifMachineMethod |  ``` Optional ```  | Method used to request the IfMachineUrl. |
| feedback |  ``` Optional ```  | Specify if survey should be enable or not |
| surveyId |  ``` Optional ```  | The unique identifier for the survey. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* url = @"Url";
    NSString* method = @"Method";
    NSString* statusCallBackUrl = @"StatusCallBackUrl";
    NSString* statusCallBackMethod = @"StatusCallBackMethod";
    NSString* fallBackUrl = @"FallBackUrl";
    NSString* fallBackMethod = @"FallBackMethod";
    NSString* heartBeatUrl = @"HeartBeatUrl";
    NSString* heartBeatMethod = @"HeartBeatMethod";
    NSNumber* timeout = 28;
    NSString* playDtmf = @"PlayDtmf";
    NSNumber* hideCallerId = false;
    NSNumber* record = false;
    NSString* recordCallBackUrl = @"RecordCallBackUrl";
    NSString* recordCallBackMethod = @"RecordCallBackMethod";
    NSNumber* transcribe = false;
    NSString* transcribeCallBackUrl = @"TranscribeCallBackUrl";
    IfMachineEnum ifMachine = ENUM_CONTINUE;
    NSString* ifMachineUrl = @"IfMachineUrl";
    NSString* ifMachineMethod = @"IfMachineMethod";
    NSNumber* feedback = false;
    NSString* surveyId = @"SurveyId";

    [self.call createMakeCallAsyncWithFrom: from to : to url : url method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallBackUrl : fallBackUrl fallBackMethod : fallBackMethod heartBeatUrl : heartBeatUrl heartBeatMethod : heartBeatMethod timeout : timeout playDtmf : playDtmf hideCallerId : hideCallerId record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod transcribe : transcribe transcribeCallBackUrl : transcribeCallBackUrl ifMachine : ifMachine ifMachineUrl : ifMachineUrl ifMachineMethod : ifMachineMethod feedback : feedback surveyId : surveyId  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_play_audio_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createPlayAudioAsyncWithCallSid") createPlayAudioAsyncWithCallSid

> Play Audio from a url


```objc
function createPlayAudioAsyncWithCallSid:(NSString*) callSid
                audioUrl:(NSString*) audioUrl
                sayText:(NSString*) sayText
                length:(NSNumber*) length
                direction:(enum DirectionEnum) direction
                mix:(NSNumber*) mix
                completionBlock:(CompletedPostPlayAudio) onCompleted(callSid audioUrl : audioUrl sayText : sayText length : length direction : direction mix : mix)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| audioUrl |  ``` Required ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| sayText |  ``` Required ```  | Valid alphanumeric string that should be played to the In-progress call. |
| length |  ``` Optional ```  | Time limit in seconds for audio play back |
| direction |  ``` Optional ```  | The leg of the call audio will be played to |
| mix |  ``` Optional ```  | If false, all other audio will be muted |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"CallSid";
    NSString* audioUrl = @"AudioUrl";
    NSString* sayText = @"SayText";
    NSNumber* length = 28;
    DirectionEnum direction = ENUM_IN;
    NSNumber* mix = false;

    [self.call createPlayAudioAsyncWithCallSid: callSid audioUrl : audioUrl sayText : sayText length : length direction : direction mix : mix  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_record_call_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createRecordCallAsyncWithCallSid") createRecordCallAsyncWithCallSid

> Start or stop recording of an in-progress voice call.


```objc
function createRecordCallAsyncWithCallSid:(NSString*) callSid
                record:(BOOL) record
                direction:(enum Direction4Enum) direction
                timeLimit:(NSNumber*) timeLimit
                callBackUrl:(NSString*) callBackUrl
                fileformat:(enum FileformatEnum) fileformat
                completionBlock:(CompletedPostRecordCall) onCompleted(callSid record : record direction : direction timeLimit : timeLimit callBackUrl : callBackUrl fileformat : fileformat)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| record |  ``` Required ```  | Set true to initiate recording or false to terminate recording |
| direction |  ``` Optional ```  | The leg of the call to record |
| timeLimit |  ``` Optional ```  | Time in seconds the recording duration should not exceed |
| callBackUrl |  ``` Optional ```  | URL consulted after the recording completes |
| fileformat |  ``` Optional ```  | Format of the recording file. Can be .mp3 or .wav |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"CallSid";
    BOOL record = false;
    Direction4Enum direction = ENUM_IN;
    NSNumber* timeLimit = 28;
    NSString* callBackUrl = @"CallBackUrl";
    FileformatEnum fileformat = MP3;

    [self.call createRecordCallAsyncWithCallSid: callSid record : record direction : direction timeLimit : timeLimit callBackUrl : callBackUrl fileformat : fileformat  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_voice_effect_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createVoiceEffectAsyncWithCallSid") createVoiceEffectAsyncWithCallSid

> Add audio voice effects to the an in-progress voice call.


```objc
function createVoiceEffectAsyncWithCallSid:(NSString*) callSid
                audioDirection:(enum AudioDirectionEnum) audioDirection
                pitchSemiTones:(NSNumber*) pitchSemiTones
                pitchOctaves:(NSNumber*) pitchOctaves
                pitch:(NSNumber*) pitch
                rate:(NSNumber*) rate
                tempo:(NSNumber*) tempo
                completionBlock:(CompletedPostVoiceEffect) onCompleted(callSid audioDirection : audioDirection pitchSemiTones : pitchSemiTones pitchOctaves : pitchOctaves pitch : pitch rate : rate tempo : tempo)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for the in-progress voice call. |
| audioDirection |  ``` Optional ```  | The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream. |
| pitchSemiTones |  ``` Optional ```  | Set the pitch in semitone (half-step) intervals. Value between -14 and 14 |
| pitchOctaves |  ``` Optional ```  | Set the pitch in octave intervals.. Value between -1 and 1 |
| pitch |  ``` Optional ```  | Set the pitch (lowness/highness) of the audio. The higher the value, the higher the pitch. Value greater than 0 |
| rate |  ``` Optional ```  | Set the rate for audio. The lower the value, the lower the rate. value greater than 0 |
| tempo |  ``` Optional ```  | Set the tempo (speed) of the audio. A higher value denotes a faster tempo. Value greater than 0 |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"CallSid";
    AudioDirectionEnum audioDirection = ENUM_IN;
    NSNumber* pitchSemiTones = 28.6594533145705;
    NSNumber* pitchOctaves = 28.6594533145705;
    NSNumber* pitch = 28.6594533145705;
    NSNumber* rate = 28.6594533145705;
    NSNumber* tempo = 28.6594533145705;

    [self.call createVoiceEffectAsyncWithCallSid: callSid audioDirection : audioDirection pitchSemiTones : pitchSemiTones pitchOctaves : pitchOctaves pitch : pitch rate : rate tempo : tempo  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_interrupt_call_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createInterruptCallAsyncWithCallSid") createInterruptCallAsyncWithCallSid

> Interrupt the Call by Call Sid


```objc
function createInterruptCallAsyncWithCallSid:(NSString*) callSid
                url:(NSString*) url
                method:(NSString*) method
                status:(enum StatusEnum) status
                completionBlock:(CompletedPostInterruptCall) onCompleted(callSid url : url method : method status : status)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for voice call that is in progress. |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"CallSid";
    NSString* url = @"Url";
    NSString* method = @"Method";
    StatusEnum status = CANCELED;

    [self.call createInterruptCallAsyncWithCallSid: callSid url : url method : method status : status  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_calls_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createListCallsAsyncWithPage") createListCallsAsyncWithPage

> A list of calls associated with your Ytel account


```objc
function createListCallsAsyncWithPage:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                to:(NSString*) to
                from:(NSString*) from
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListCalls) onCompleted(page pageSize : pageSize to : to from : from dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Filter calls that were sent to this 10-digit number (E.164 format). |
| from |  ``` Optional ```  | Filter calls that were sent from this 10-digit number (E.164 format). |
| dateCreated |  ``` Optional ```  | Return calls that are from a specified date. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 28;
    NSNumber* pageSize = 28;
    NSString* to = @"To";
    NSString* from = @"From";
    NSString* dateCreated = @"DateCreated";

    [self.call createListCallsAsyncWithPage: page pageSize : pageSize to : to from : from dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_send_rvm_async_with_from"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createSendRVMAsyncWithFrom") createSendRVMAsyncWithFrom

> Initiate an outbound Ringless Voicemail through Ytel.


```objc
function createSendRVMAsyncWithFrom:(NSString*) from
                rVMCallerId:(NSString*) rVMCallerId
                to:(NSString*) to
                voiceMailURL:(NSString*) voiceMailURL
                method:(NSString*) method
                statusCallBackUrl:(NSString*) statusCallBackUrl
                statsCallBackMethod:(NSString*) statsCallBackMethod
                completionBlock:(CompletedPostSendRVM) onCompleted(from rVMCallerId : rVMCallerId to : to voiceMailURL : voiceMailURL method : method statusCallBackUrl : statusCallBackUrl statsCallBackMethod : statsCallBackMethod)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| rVMCallerId |  ``` Required ```  | A required secondary Caller ID for RVM to work. |
| to |  ``` Required ```  | A valid number (E.164 format) that will receive the phone call. |
| voiceMailURL |  ``` Required ```  | The URL requested once the RVM connects. A set of default parameters will be sent here. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| statsCallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* from = @"From";
    NSString* rVMCallerId = @"RVMCallerId";
    NSString* to = @"To";
    NSString* voiceMailURL = @"VoiceMailURL";
    NSString* method = @"Method";
    NSString* statusCallBackUrl = @"StatusCallBackUrl";
    NSString* statsCallBackMethod = @"StatsCallBackMethod";

    [self.call createSendRVMAsyncWithFrom: from rVMCallerId : rVMCallerId to : to voiceMailURL : voiceMailURL method : method statusCallBackUrl : statusCallBackUrl statsCallBackMethod : statsCallBackMethod  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_group_call_async_with_from"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createGroupCallAsyncWithFrom") createGroupCallAsyncWithFrom

> Group Call


```objc
function createGroupCallAsyncWithFrom:(NSString*) from
                to:(NSString*) to
                url:(NSString*) url
                groupConfirmKey:(NSString*) groupConfirmKey
                groupConfirmFile:(enum GroupConfirmFileEnum) groupConfirmFile
                method:(NSString*) method
                statusCallBackUrl:(NSString*) statusCallBackUrl
                statusCallBackMethod:(NSString*) statusCallBackMethod
                fallBackUrl:(NSString*) fallBackUrl
                fallBackMethod:(NSString*) fallBackMethod
                heartBeatUrl:(NSString*) heartBeatUrl
                heartBeatMethod:(NSString*) heartBeatMethod
                timeout:(NSNumber*) timeout
                playDtmf:(NSString*) playDtmf
                hideCallerId:(NSString*) hideCallerId
                record:(NSNumber*) record
                recordCallBackUrl:(NSString*) recordCallBackUrl
                recordCallBackMethod:(NSString*) recordCallBackMethod
                transcribe:(NSNumber*) transcribe
                transcribeCallBackUrl:(NSString*) transcribeCallBackUrl
                completionBlock:(CompletedPostGroupCall) onCompleted(from to : to url : url groupConfirmKey : groupConfirmKey groupConfirmFile : groupConfirmFile method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallBackUrl : fallBackUrl fallBackMethod : fallBackMethod heartBeatUrl : heartBeatUrl heartBeatMethod : heartBeatMethod timeout : timeout playDtmf : playDtmf hideCallerId : hideCallerId record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod transcribe : transcribe transcribeCallBackUrl : transcribeCallBackUrl)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222 |
| url |  ``` Required ```  | URL requested once the call connects |
| groupConfirmKey |  ``` Required ```  | Define the DTMF that the called party should send to bridge the call. Allowed Values : 0-9, #, * |
| groupConfirmFile |  ``` Required ```  | Specify the audio file you want to play when the called party picks up the call |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| statusCallBackMethod |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallBackUrl |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heartBeatUrl |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time and pass other general information. |
| heartBeatMethod |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) we should wait while the call is ringing before canceling the call |
| playDtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hideCallerId |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| recordCallBackUrl |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| recordCallBackMethod |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribeCallBackUrl |  ``` Optional ```  | Transcription parameters will be sent here upon completion |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* url = @"Url";
    NSString* groupConfirmKey = @"GroupConfirmKey";
    GroupConfirmFileEnum groupConfirmFile = MP3;
    NSString* method = @"Method";
    NSString* statusCallBackUrl = @"StatusCallBackUrl";
    NSString* statusCallBackMethod = @"StatusCallBackMethod";
    NSString* fallBackUrl = @"FallBackUrl";
    NSString* fallBackMethod = @"FallBackMethod";
    NSString* heartBeatUrl = @"HeartBeatUrl";
    NSString* heartBeatMethod = @"HeartBeatMethod";
    NSNumber* timeout = 28;
    NSString* playDtmf = @"PlayDtmf";
    NSString* hideCallerId = @"HideCallerId";
    NSNumber* record = false;
    NSString* recordCallBackUrl = @"RecordCallBackUrl";
    NSString* recordCallBackMethod = @"RecordCallBackMethod";
    NSNumber* transcribe = false;
    NSString* transcribeCallBackUrl = @"TranscribeCallBackUrl";

    [self.call createGroupCallAsyncWithFrom: from to : to url : url groupConfirmKey : groupConfirmKey groupConfirmFile : groupConfirmFile method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallBackUrl : fallBackUrl fallBackMethod : fallBackMethod heartBeatUrl : heartBeatUrl heartBeatMethod : heartBeatMethod timeout : timeout playDtmf : playDtmf hideCallerId : hideCallerId record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod transcribe : transcribe transcribeCallBackUrl : transcribeCallBackUrl  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance
```objc
PhoneNumber* phoneNumber = [[PhoneNumber alloc]init] ;
```

### <a name="create_get_did_score_async_with_phonenumber"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createGetDIDScoreAsyncWithPhonenumber") createGetDIDScoreAsyncWithPhonenumber

> Get DID Score Number


```objc
function createGetDIDScoreAsyncWithPhonenumber:(NSString*) phonenumber
                completionBlock:(CompletedPostGetDIDScore) onCompleted(phonenumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | Specifies the multiple phone numbers for check updated spamscore . |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phonenumber = @"Phonenumber";

    [self.phoneNumber createGetDIDScoreAsyncWithPhonenumber: phonenumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_move_number_async_with_phonenumber"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createMoveNumberAsyncWithPhonenumber") createMoveNumberAsyncWithPhonenumber

> Transfer phone number that has been purchased for from one account to another account.


```objc
function createMoveNumberAsyncWithPhonenumber:(NSString*) phonenumber
                fromaccountsid:(NSString*) fromaccountsid
                toaccountsid:(NSString*) toaccountsid
                completionBlock:(CompletedPostMoveNumber) onCompleted(phonenumber fromaccountsid : fromaccountsid toaccountsid : toaccountsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| fromaccountsid |  ``` Required ```  | A specific Accountsid from where Number is getting transfer. |
| toaccountsid |  ``` Required ```  | A specific Accountsid to which Number is getting transfer. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phonenumber = @"phonenumber";
    NSString* fromaccountsid = @"fromaccountsid";
    NSString* toaccountsid = @"toaccountsid";

    [self.phoneNumber createMoveNumberAsyncWithPhonenumber: phonenumber fromaccountsid : fromaccountsid toaccountsid : toaccountsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_purchase_number_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createPurchaseNumberAsyncWithPhoneNumber") createPurchaseNumberAsyncWithPhoneNumber

> Purchase a phone number to be used with your Ytel account


```objc
function createPurchaseNumberAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostPurchaseNumber) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createPurchaseNumberAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_release_number_async_with_response_type"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createReleaseNumberAsyncWithResponseType") createReleaseNumberAsyncWithResponseType

> Remove a purchased Ytel number from your account.


```objc
function createReleaseNumberAsyncWithResponseType:(NSString*) responseType
                phoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostReleaseNumber) onCompleted(responseType phoneNumber : phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  | Response type format xml or json |
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* responseType = @"ResponseType";
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createReleaseNumberAsyncWithResponseType: responseType phoneNumber : phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_details_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createViewDetailsAsyncWithPhoneNumber") createViewDetailsAsyncWithPhoneNumber

> Retrieve the details for a phone number by its number.


```objc
function createViewDetailsAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostViewDetails) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel 10-digit phone number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createViewDetailsAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_bulk_release_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createBulkReleaseAsyncWithPhoneNumber") createBulkReleaseAsyncWithPhoneNumber

> Remove a purchased Ytel number from your account.


```objc
function createBulkReleaseAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostBulkRelease) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel comma separated numbers (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createBulkReleaseAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_available_numbers_async_with_numbertype"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createAvailableNumbersAsyncWithNumbertype") createAvailableNumbersAsyncWithNumbertype

> Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.


```objc
function createAvailableNumbersAsyncWithNumbertype:(enum NumbertypeEnum) numbertype
                areacode:(NSString*) areacode
                pagesize:(NSNumber*) pagesize
                completionBlock:(CompletedPostAvailableNumbers) onCompleted(numbertype areacode : areacode pagesize : pagesize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numbertype |  ``` Required ```  | Number type either SMS,Voice or all |
| areacode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| pagesize |  ``` Optional ```  | The count of objects to return. |





#### Example Usage

```objc
    // Parameters for the API call
    NumbertypeEnum numbertype = ALL;
    NSString* areacode = @"areacode";
    NSNumber* pagesize = 192;

    [self.phoneNumber createAvailableNumbersAsyncWithNumbertype: numbertype areacode : areacode pagesize : pagesize  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_number_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.updateNumberAsyncWithPhoneNumber") updateNumberAsyncWithPhoneNumber

> Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function updateNumberAsyncWithPhoneNumber:(NSString*) phoneNumber
                voiceUrl:(NSString*) voiceUrl
                friendlyName:(NSString*) friendlyName
                voiceMethod:(NSString*) voiceMethod
                voiceFallbackUrl:(NSString*) voiceFallbackUrl
                voiceFallbackMethod:(NSString*) voiceFallbackMethod
                hangupCallback:(NSString*) hangupCallback
                hangupCallbackMethod:(NSString*) hangupCallbackMethod
                heartbeatUrl:(NSString*) heartbeatUrl
                heartbeatMethod:(NSString*) heartbeatMethod
                smsUrl:(NSString*) smsUrl
                smsMethod:(NSString*) smsMethod
                smsFallbackUrl:(NSString*) smsFallbackUrl
                smsFallbackMethod:(NSString*) smsFallbackMethod
                completionBlock:(CompletedPostUpdateNumber) onCompleted(phoneNumber voiceUrl : voiceUrl friendlyName : friendlyName voiceMethod : voiceMethod voiceFallbackUrl : voiceFallbackUrl voiceFallbackMethod : voiceFallbackMethod hangupCallback : hangupCallback hangupCallbackMethod : hangupCallbackMethod heartbeatUrl : heartbeatUrl heartbeatMethod : heartbeatMethod smsUrl : smsUrl smsMethod : smsMethod smsFallbackUrl : smsFallbackUrl smsFallbackMethod : smsFallbackMethod)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel number (E.164 format). |
| voiceUrl |  ``` Required ```  | URL requested once the call connects |
| friendlyName |  ``` Optional ```  | Phone number friendly name description |
| voiceMethod |  ``` Optional ```  | Post or Get |
| voiceFallbackUrl |  ``` Optional ```  | URL requested if the voice URL is not available |
| voiceFallbackMethod |  ``` Optional ```  | Post or Get |
| hangupCallback |  ``` Optional ```  | callback url after a hangup occurs |
| hangupCallbackMethod |  ``` Optional ```  | Post or Get |
| heartbeatUrl |  ``` Optional ```  | URL requested once the call connects |
| heartbeatMethod |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time |
| smsUrl |  ``` Optional ```  | URL requested when an SMS is received |
| smsMethod |  ``` Optional ```  | Post or Get |
| smsFallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl. |
| smsFallbackMethod |  ``` Optional ```  | The HTTP method Ytel will use when URL requested if the SmsUrl is not available. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";
    NSString* voiceUrl = @"VoiceUrl";
    NSString* friendlyName = @"FriendlyName";
    NSString* voiceMethod = @"VoiceMethod";
    NSString* voiceFallbackUrl = @"VoiceFallbackUrl";
    NSString* voiceFallbackMethod = @"VoiceFallbackMethod";
    NSString* hangupCallback = @"HangupCallback";
    NSString* hangupCallbackMethod = @"HangupCallbackMethod";
    NSString* heartbeatUrl = @"HeartbeatUrl";
    NSString* heartbeatMethod = @"HeartbeatMethod";
    NSString* smsUrl = @"SmsUrl";
    NSString* smsMethod = @"SmsMethod";
    NSString* smsFallbackUrl = @"SmsFallbackUrl";
    NSString* smsFallbackMethod = @"SmsFallbackMethod";

    [self.phoneNumber updateNumberAsyncWithPhoneNumber: phoneNumber voiceUrl : voiceUrl friendlyName : friendlyName voiceMethod : voiceMethod voiceFallbackUrl : voiceFallbackUrl voiceFallbackMethod : voiceFallbackMethod hangupCallback : hangupCallback hangupCallbackMethod : hangupCallbackMethod heartbeatUrl : heartbeatUrl heartbeatMethod : heartbeatMethod smsUrl : smsUrl smsMethod : smsMethod smsFallbackUrl : smsFallbackUrl smsFallbackMethod : smsFallbackMethod  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_numbers_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createListNumbersAsyncWithPage") createListNumbersAsyncWithPage

> Retrieve a list of purchased phones numbers associated with your Ytel account.


```objc
function createListNumbersAsyncWithPage:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                numberType:(enum NumberType14Enum) numberType
                friendlyName:(NSString*) friendlyName
                completionBlock:(CompletedPostListNumbers) onCompleted(page pageSize : pageSize numberType : numberType friendlyName : friendlyName)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| numberType |  ``` Optional ```  | The capability supported by the number.Number type either SMS,Voice or all |
| friendlyName |  ``` Optional ```  | A human-readable label added to the number object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 192;
    NSNumber* pageSize = 192;
    NumberType14Enum numberType = ALL;
    NSString* friendlyName = @"FriendlyName";

    [self.phoneNumber createListNumbersAsyncWithPage: page pageSize : pageSize numberType : numberType friendlyName : friendlyName  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_bulk_update_numbers_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createBulkUpdateNumbersAsyncWithPhoneNumber") createBulkUpdateNumbersAsyncWithPhoneNumber

> Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function createBulkUpdateNumbersAsyncWithPhoneNumber:(NSString*) phoneNumber
                voiceUrl:(NSString*) voiceUrl
                friendlyName:(NSString*) friendlyName
                voiceMethod:(NSString*) voiceMethod
                voiceFallbackUrl:(NSString*) voiceFallbackUrl
                voiceFallbackMethod:(NSString*) voiceFallbackMethod
                hangupCallback:(NSString*) hangupCallback
                hangupCallbackMethod:(NSString*) hangupCallbackMethod
                heartbeatUrl:(NSString*) heartbeatUrl
                heartbeatMethod:(NSString*) heartbeatMethod
                smsUrl:(NSString*) smsUrl
                smsMethod:(NSString*) smsMethod
                smsFallbackUrl:(NSString*) smsFallbackUrl
                smsFallbackMethod:(NSString*) smsFallbackMethod
                completionBlock:(CompletedPostBulkUpdateNumbers) onCompleted(phoneNumber voiceUrl : voiceUrl friendlyName : friendlyName voiceMethod : voiceMethod voiceFallbackUrl : voiceFallbackUrl voiceFallbackMethod : voiceFallbackMethod hangupCallback : hangupCallback hangupCallbackMethod : hangupCallbackMethod heartbeatUrl : heartbeatUrl heartbeatMethod : heartbeatMethod smsUrl : smsUrl smsMethod : smsMethod smsFallbackUrl : smsFallbackUrl smsFallbackMethod : smsFallbackMethod)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid comma(,) separated Ytel numbers. (E.164 format). |
| voiceUrl |  ``` Required ```  | The URL returning InboundXML incoming calls should execute when connected. |
| friendlyName |  ``` Optional ```  | A human-readable value for labeling the number. |
| voiceMethod |  ``` Optional ```  | Specifies the HTTP method used to request the VoiceUrl once incoming call connects. |
| voiceFallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML on a call or at initial request of the voice url |
| voiceFallbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the VoiceFallbackUrl once incoming call connects. |
| hangupCallback |  ``` Optional ```  | URL that can be requested to receive notification when and how incoming call has ended. |
| hangupCallbackMethod |  ``` Optional ```  | The HTTP method Ytel will use when requesting the HangupCallback URL. |
| heartbeatUrl |  ``` Optional ```  | URL that can be used to monitor the phone number. |
| heartbeatMethod |  ``` Optional ```  | The HTTP method Ytel will use when requesting the HeartbeatUrl. |
| smsUrl |  ``` Optional ```  | URL requested when an SMS is received. |
| smsMethod |  ``` Optional ```  | The HTTP method Ytel will use when requesting the SmsUrl. |
| smsFallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl. |
| smsFallbackMethod |  ``` Optional ```  | The HTTP method Ytel will use when URL requested if the SmsUrl is not available. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";
    NSString* voiceUrl = @"VoiceUrl";
    NSString* friendlyName = @"FriendlyName";
    NSString* voiceMethod = @"VoiceMethod";
    NSString* voiceFallbackUrl = @"VoiceFallbackUrl";
    NSString* voiceFallbackMethod = @"VoiceFallbackMethod";
    NSString* hangupCallback = @"HangupCallback";
    NSString* hangupCallbackMethod = @"HangupCallbackMethod";
    NSString* heartbeatUrl = @"HeartbeatUrl";
    NSString* heartbeatMethod = @"HeartbeatMethod";
    NSString* smsUrl = @"SmsUrl";
    NSString* smsMethod = @"SmsMethod";
    NSString* smsFallbackUrl = @"SmsFallbackUrl";
    NSString* smsFallbackMethod = @"SmsFallbackMethod";

    [self.phoneNumber createBulkUpdateNumbersAsyncWithPhoneNumber: phoneNumber voiceUrl : voiceUrl friendlyName : friendlyName voiceMethod : voiceMethod voiceFallbackUrl : voiceFallbackUrl voiceFallbackMethod : voiceFallbackMethod hangupCallback : hangupCallback hangupCallbackMethod : hangupCallbackMethod heartbeatUrl : heartbeatUrl heartbeatMethod : heartbeatMethod smsUrl : smsUrl smsMethod : smsMethod smsFallbackUrl : smsFallbackUrl smsFallbackMethod : smsFallbackMethod  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_bulk_buy_numbers_async_with_number_type"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createBulkBuyNumbersAsyncWithNumberType") createBulkBuyNumbersAsyncWithNumberType

> Purchase a selected number of DID's from specific area codes to be used with your Ytel account.


```objc
function createBulkBuyNumbersAsyncWithNumberType:(enum NumberType15Enum) numberType
                areaCode:(NSString*) areaCode
                quantity:(NSString*) quantity
                leftover:(NSString*) leftover
                completionBlock:(CompletedPostBulkBuyNumbers) onCompleted(numberType areaCode : areaCode quantity : quantity leftover : leftover)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numberType |  ``` Required ```  | The capability the number supports. |
| areaCode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| quantity |  ``` Required ```  | A positive integer that tells how many number you want to buy at a time. |
| leftover |  ``` Optional ```  | If desired quantity is unavailable purchase what is available . |





#### Example Usage

```objc
    // Parameters for the API call
    NumberType15Enum numberType = ALL;
    NSString* areaCode = @"AreaCode";
    NSString* quantity = @"Quantity";
    NSString* leftover = @"Leftover";

    [self.phoneNumber createBulkBuyNumbersAsyncWithNumberType: numberType areaCode : areaCode quantity : quantity leftover : leftover  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance
```objc
SMS* sMS = [[SMS alloc]init] ;
```

### <a name="create_view_sms1_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createViewSMS1AsyncWithMessageSid") createViewSMS1AsyncWithMessageSid

> Retrieve a single SMS message object with details by its SmsSid.


```objc
function createViewSMS1AsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostViewSMS1) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.sMS createViewSMS1AsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_sms_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createViewSMSAsyncWithMessageSid") createViewSMSAsyncWithMessageSid

> Retrieve a single SMS message object by its SmsSid.


```objc
function createViewSMSAsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostViewSMS) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.sMS createViewSMSAsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_send_sms_async_with_from"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSendSMSAsyncWithFrom") createSendSMSAsyncWithFrom

> Send an SMS from a Ytel number


```objc
function createSendSMSAsyncWithFrom:(NSString*) from
                to:(NSString*) to
                body:(NSString*) body
                method:(NSString*) method
                messageStatusCallback:(NSString*) messageStatusCallback
                smartsms:(NSNumber*) smartsms
                deliveryStatus:(NSNumber*) deliveryStatus
                completionBlock:(CompletedPostSendSMS) onCompleted(from to : to body : body method : method messageStatusCallback : messageStatusCallback smartsms : smartsms deliveryStatus : deliveryStatus)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent. |
| to |  ``` Required ```  | The 10-digit phone number (E.164 format) that will receive the message. |
| body |  ``` Required ```  | The body message that is to be sent in the text. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Optional ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |
| deliveryStatus |  ``` Optional ```  | Delivery reports are a method to tell your system if the message has arrived on the destination phone. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* body = @"Body";
    NSString* method = @"Method";
    NSString* messageStatusCallback = @"MessageStatusCallback";
    NSNumber* smartsms = true;
    NSNumber* deliveryStatus = true;

    [self.sMS createSendSMSAsyncWithFrom: from to : to body : body method : method messageStatusCallback : messageStatusCallback smartsms : smartsms deliveryStatus : deliveryStatus  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_sms_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createListSMSAsyncWithPage") createListSMSAsyncWithPage

> Retrieve a list of Outbound SMS message objects.


```objc
function createListSMSAsyncWithPage:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                from:(NSString*) from
                to:(NSString*) to
                dateSent:(NSString*) dateSent
                completionBlock:(CompletedPostListSMS) onCompleted(page pageSize : pageSize from : from to : to dateSent : dateSent)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 192;
    NSNumber* pageSize = 192;
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* dateSent = @"DateSent";

    [self.sMS createListSMSAsyncWithPage: page pageSize : pageSize from : from to : to dateSent : dateSent  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_inbound_sms_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createListInboundSMSAsyncWithPage") createListInboundSMSAsyncWithPage

> Retrieve a list of Inbound SMS message objects.


```objc
function createListInboundSMSAsyncWithPage:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                from:(NSString*) from
                to:(NSString*) to
                dateSent:(NSString*) dateSent
                completionBlock:(CompletedPostListInboundSMS) onCompleted(page pageSize : pageSize from : from to : to dateSent : dateSent)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | The count of objects to return per page. |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Filter sms message objects by this date. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 192;
    NSNumber* pageSize = 192;
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* dateSent = @"DateSent";

    [self.sMS createListInboundSMSAsyncWithPage: page pageSize : pageSize from : from to : to dateSent : dateSent  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance
```objc
SharedShortCode* sharedShortCode = [[SharedShortCode alloc]init] ;
```

### <a name="create_view_shortcode_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createViewShortcodeAsyncWithShortcode") createViewShortcodeAsyncWithShortcode

> The response returned here contains all resource properties associated with the given Shortcode.


```objc
function createViewShortcodeAsyncWithShortcode:(NSString*) shortcode
                completionBlock:(CompletedPostViewShortcode) onCompleted(shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your Ytel account |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";

    [self.sharedShortCode createViewShortcodeAsyncWithShortcode: shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_keyword_async_with_keywordid"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createViewKeywordAsyncWithKeywordid") createViewKeywordAsyncWithKeywordid

> View a set of properties for a single keyword.


```objc
function createViewKeywordAsyncWithKeywordid:(NSString*) keywordid
                completionBlock:(CompletedPostViewKeyword) onCompleted(keywordid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| keywordid |  ``` Required ```  | The unique identifier of each keyword |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* keywordid = @"Keywordid";

    [self.sharedShortCode createViewKeywordAsyncWithKeywordid: keywordid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_template_async_with_template_id"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createViewTemplateAsyncWithTemplateId") createViewTemplateAsyncWithTemplateId

> View a Shared ShortCode Template


```objc
function createViewTemplateAsyncWithTemplateId:(NSUUID*) templateId
                completionBlock:(CompletedPostViewTemplate) onCompleted(templateId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | The unique identifier for a template object |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* templateId = 123456789;

    [self.sharedShortCode createViewTemplateAsyncWithTemplateId: templateId  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_inbound_sms_async_with_datecreated"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createListInboundSMSAsyncWithDatecreated") createListInboundSMSAsyncWithDatecreated

> List All Inbound ShortCode


```objc
function createListInboundSMSAsyncWithDatecreated:(NSString*) datecreated
                page:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                from:(NSString*) from
                shortcode:(NSString*) shortcode
                completionBlock:(CompletedPostListInboundSMS) onCompleted(datecreated page : page pagesize : pagesize from : from shortcode : shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| datecreated |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* datecreated = @"Datecreated";
    NSNumber* page = 192;
    NSNumber* pagesize = 192;
    NSString* from = @"from";
    NSString* shortcode = @"Shortcode";

    [self.sharedShortCode createListInboundSMSAsyncWithDatecreated: datecreated page : page pagesize : pagesize from : from shortcode : shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_send_sms_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createSendSMSAsyncWithShortcode") createSendSMSAsyncWithShortcode

> Send an SMS from a Ytel ShortCode


```objc
function createSendSMSAsyncWithShortcode:(NSString*) shortcode
                to:(NSString*) to
                templateid:(NSUUID*) templateid
                data:(NSString*) data
                method:(NSString*) method
                messageStatusCallback:(NSString*) messageStatusCallback
                completionBlock:(CompletedPostSendSMS) onCompleted(shortcode to : to templateid : templateid data : data method : method messageStatusCallback : messageStatusCallback)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| data |  ``` Required ```  | format of your data, example: {companyname}:test,{otpcode}:1234 |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"shortcode";
    NSString* to = @"to";
    NSUUID* templateid = 123456789;
    NSString* data = @"data";
    NSString* method = @"Method";
    NSString* messageStatusCallback = @"MessageStatusCallback";

    [self.sharedShortCode createSendSMSAsyncWithShortcode: shortcode to : to templateid : templateid data : data method : method messageStatusCallback : messageStatusCallback  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_templates_async_with_type"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createListTemplatesAsyncWithType") createListTemplatesAsyncWithType

> List Shortcode Templates by Type


```objc
function createListTemplatesAsyncWithType:(NSString*) type
                page:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                shortcode:(NSString*) shortcode
                completionBlock:(CompletedPostListTemplates) onCompleted(type page : page pagesize : pagesize shortcode : shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| type |  ``` Optional ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| shortcode |  ``` Optional ```  | Only list templates of type |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* type = @"type";
    NSNumber* page = 192;
    NSNumber* pagesize = 192;
    NSString* shortcode = @"Shortcode";

    [self.sharedShortCode createListTemplatesAsyncWithType: type page : page pagesize : pagesize shortcode : shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_keywords_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createListKeywordsAsyncWithPage") createListKeywordsAsyncWithPage

> Retrieve a list of keywords associated with your Ytel account.


```objc
function createListKeywordsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                keyword:(NSString*) keyword
                shortcode:(NSNumber*) shortcode
                completionBlock:(CompletedPostListKeywords) onCompleted(page pagesize : pagesize keyword : keyword shortcode : shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 192;
    NSNumber* pagesize = 192;
    NSString* keyword = @"Keyword";
    NSNumber* shortcode = 192;

    [self.sharedShortCode createListKeywordsAsyncWithPage: page pagesize : pagesize keyword : keyword shortcode : shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_shortcodes_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createListShortcodesAsyncWithShortcode") createListShortcodesAsyncWithShortcode

> Retrieve a list of shortcode assignment associated with your Ytel account.


```objc
function createListShortcodesAsyncWithShortcode:(NSString*) shortcode
                page:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                completionBlock:(CompletedPostListShortcodes) onCompleted(shortcode page : page pagesize : pagesize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";
    NSNumber* page = 192;
    NSNumber* pagesize = 192;

    [self.sharedShortCode createListShortcodesAsyncWithShortcode: shortcode page : page pagesize : pagesize  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_shortcode_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.updateShortcodeAsyncWithShortcode") updateShortcodeAsyncWithShortcode

> Update Assignment


```objc
function updateShortcodeAsyncWithShortcode:(NSString*) shortcode
                friendlyName:(NSString*) friendlyName
                callbackUrl:(NSString*) callbackUrl
                callbackMethod:(NSString*) callbackMethod
                fallbackUrl:(NSString*) fallbackUrl
                fallbackUrlMethod:(NSString*) fallbackUrlMethod
                completionBlock:(CompletedPostUpdateShortcode) onCompleted(shortcode friendlyName : friendlyName callbackUrl : callbackUrl callbackMethod : callbackMethod fallbackUrl : fallbackUrl fallbackUrlMethod : fallbackUrlMethod)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid shortcode to your Ytel account |
| friendlyName |  ``` Optional ```  | User generated name of the shortcode |
| callbackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| callbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| fallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |
| fallbackUrlMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";
    NSString* friendlyName = @"FriendlyName";
    NSString* callbackUrl = @"CallbackUrl";
    NSString* callbackMethod = @"CallbackMethod";
    NSString* fallbackUrl = @"FallbackUrl";
    NSString* fallbackUrlMethod = @"FallbackUrlMethod";

    [self.sharedShortCode updateShortcodeAsyncWithShortcode: shortcode friendlyName : friendlyName callbackUrl : callbackUrl callbackMethod : callbackMethod fallbackUrl : fallbackUrl fallbackUrlMethod : fallbackUrlMethod  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance
```objc
Conference* conference = [[Conference alloc]init] ;
```

### <a name="create_play_audio_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createPlayAudioAsyncWithConferenceSid") createPlayAudioAsyncWithConferenceSid

> Play an audio file during a conference.


```objc
function createPlayAudioAsyncWithConferenceSid:(NSString*) conferenceSid
                participantSid:(NSString*) participantSid
                audioUrl:(enum AudioUrlEnum) audioUrl
                completionBlock:(CompletedPostPlayAudio) onCompleted(conferenceSid participantSid : participantSid audioUrl : audioUrl)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |
| audioUrl |  ``` Required ```  | The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";
    NSString* participantSid = @"ParticipantSid";
    AudioUrlEnum audioUrl = MP3;

    [self.conference createPlayAudioAsyncWithConferenceSid: conferenceSid participantSid : participantSid audioUrl : audioUrl  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_hangup_participant_async_with_participant_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createHangupParticipantAsyncWithParticipantSid") createHangupParticipantAsyncWithParticipantSid

> Remove a participant from a conference.


```objc
function createHangupParticipantAsyncWithParticipantSid:(NSString*) participantSid
                conferenceSid:(NSString*) conferenceSid
                completionBlock:(CompletedPostHangupParticipant) onCompleted(participantSid conferenceSid : conferenceSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* participantSid = @"ParticipantSid";
    NSString* conferenceSid = @"ConferenceSid";

    [self.conference createHangupParticipantAsyncWithParticipantSid: participantSid conferenceSid : conferenceSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_conference_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createViewConferenceAsyncWithConferenceSid") createViewConferenceAsyncWithConferenceSid

> Retrieve information about a conference by its ConferenceSid.


```objc
function createViewConferenceAsyncWithConferenceSid:(NSString*) conferenceSid
                completionBlock:(CompletedPostViewConference) onCompleted(conferenceSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier of each conference resource |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";

    [self.conference createViewConferenceAsyncWithConferenceSid: conferenceSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_participant_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createViewParticipantAsyncWithConferenceSid") createViewParticipantAsyncWithConferenceSid

> Retrieve information about a participant by its ParticipantSid.


```objc
function createViewParticipantAsyncWithConferenceSid:(NSString*) conferenceSid
                participantSid:(NSString*) participantSid
                completionBlock:(CompletedPostViewParticipant) onCompleted(conferenceSid participantSid : participantSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";
    NSString* participantSid = @"ParticipantSid";

    [self.conference createViewParticipantAsyncWithConferenceSid: conferenceSid participantSid : participantSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_silence_participant_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createSilenceParticipantAsyncWithConferenceSid") createSilenceParticipantAsyncWithConferenceSid

> Deaf Mute Participant


```objc
function createSilenceParticipantAsyncWithConferenceSid:(NSString*) conferenceSid
                participantSid:(NSString*) participantSid
                muted:(NSNumber*) muted
                deaf:(NSNumber*) deaf
                completionBlock:(CompletedPostSilenceParticipant) onCompleted(conferenceSid participantSid : participantSid muted : muted deaf : deaf)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | ID of the active conference |
| participantSid |  ``` Required ```  | ID of an active participant |
| muted |  ``` Optional ```  | Mute a participant |
| deaf |  ``` Optional ```  | Make it so a participant cant hear |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"conferenceSid";
    NSString* participantSid = @"ParticipantSid";
    NSNumber* muted = true;
    NSNumber* deaf = true;

    [self.conference createSilenceParticipantAsyncWithConferenceSid: conferenceSid participantSid : participantSid muted : muted deaf : deaf  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="add_participant_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.addParticipantAsyncWithConferenceSid") addParticipantAsyncWithConferenceSid

> Add Participant in conference 


```objc
function addParticipantAsyncWithConferenceSid:(NSString*) conferenceSid
                participantNumber:(NSString*) participantNumber
                muted:(NSNumber*) muted
                deaf:(NSNumber*) deaf
                completionBlock:(CompletedPostAddParticipant) onCompleted(conferenceSid participantNumber : participantNumber muted : muted deaf : deaf)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantNumber |  ``` Required ```  | The phone number of the participant to be added. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";
    NSString* participantNumber = @"ParticipantNumber";
    NSNumber* muted = true;
    NSNumber* deaf = true;

    [self.conference addParticipantAsyncWithConferenceSid: conferenceSid participantNumber : participantNumber muted : muted deaf : deaf  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conference_async_with_url"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferenceAsyncWithUrl") createConferenceAsyncWithUrl

> Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.


```objc
function createConferenceAsyncWithUrl:(NSString*) url
                from:(NSString*) from
                to:(NSString*) to
                method:(NSString*) method
                statusCallBackUrl:(NSString*) statusCallBackUrl
                statusCallBackMethod:(NSString*) statusCallBackMethod
                fallbackUrl:(NSString*) fallbackUrl
                fallbackMethod:(NSString*) fallbackMethod
                record:(NSNumber*) record
                recordCallBackUrl:(NSString*) recordCallBackUrl
                recordCallBackMethod:(NSString*) recordCallBackMethod
                scheduleTime:(NSString*) scheduleTime
                timeout:(NSNumber*) timeout
                completionBlock:(CompletedPostCreateConference) onCompleted(url from : from to : to method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallbackUrl : fallbackUrl fallbackMethod : fallbackMethod record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod scheduleTime : scheduleTime timeout : timeout)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | URL requested once the conference connects |
| from |  ``` Required ```  | A valid 10-digit number (E.164 format) that will be initiating the conference call. |
| to |  ``` Required ```  | A valid 10-digit number (E.164 format) that is to receive the conference call. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished. |
| statusCallBackMethod |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallbackUrl |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| record |  ``` Optional ```  | Specifies if the conference should be recorded. |
| recordCallBackUrl |  ``` Optional ```  | Recording parameters will be sent here upon completion. |
| recordCallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once conference connects. |
| scheduleTime |  ``` Optional ```  | Schedule conference in future. Schedule time must be greater than current time |
| timeout |  ``` Optional ```  | The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* url = @"Url";
    NSString* from = @"From";
    NSString* to = @"To";
    NSString* method = @"Method";
    NSString* statusCallBackUrl = @"StatusCallBackUrl";
    NSString* statusCallBackMethod = @"StatusCallBackMethod";
    NSString* fallbackUrl = @"FallbackUrl";
    NSString* fallbackMethod = @"FallbackMethod";
    NSNumber* record = false;
    NSString* recordCallBackUrl = @"RecordCallBackUrl";
    NSString* recordCallBackMethod = @"RecordCallBackMethod";
    NSString* scheduleTime = @"ScheduleTime";
    NSNumber* timeout = 100;

    [self.conference createConferenceAsyncWithUrl: url from : from to : to method : method statusCallBackUrl : statusCallBackUrl statusCallBackMethod : statusCallBackMethod fallbackUrl : fallbackUrl fallbackMethod : fallbackMethod record : record recordCallBackUrl : recordCallBackUrl recordCallBackMethod : recordCallBackMethod scheduleTime : scheduleTime timeout : timeout  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_participants_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createListParticipantsAsyncWithConferenceSid") createListParticipantsAsyncWithConferenceSid

> Retrieve a list of participants for an in-progress conference.


```objc
function createListParticipantsAsyncWithConferenceSid:(NSString*) conferenceSid
                page:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                muted:(NSNumber*) muted
                deaf:(NSNumber*) deaf
                completionBlock:(CompletedPostListParticipants) onCompleted(conferenceSid page : page pagesize : pagesize muted : muted deaf : deaf)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference. |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";
    NSNumber* page = 100;
    NSNumber* pagesize = 100;
    NSNumber* muted = false;
    NSNumber* deaf = false;

    [self.conference createListParticipantsAsyncWithConferenceSid: conferenceSid page : page pagesize : pagesize muted : muted deaf : deaf  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_conferences_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createListConferencesAsyncWithPage") createListConferencesAsyncWithPage

> Retrieve a list of conference objects.


```objc
function createListConferencesAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                friendlyName:(NSString*) friendlyName
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListConferences) onCompleted(page pagesize : pagesize friendlyName : friendlyName dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| friendlyName |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| dateCreated |  ``` Optional ```  | Conference created date |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 100;
    NSNumber* pagesize = 100;
    NSString* friendlyName = @"FriendlyName";
    NSString* dateCreated = @"DateCreated";

    [self.conference createListConferencesAsyncWithPage: page pagesize : pagesize friendlyName : friendlyName dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance
```objc
Carrier* carrier = [[Carrier alloc]init] ;
```

### <a name="create_lookup_carrier_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createLookupCarrierAsyncWithPhoneNumber") createLookupCarrierAsyncWithPhoneNumber

> Get the Carrier Lookup


```objc
function createLookupCarrierAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostLookupCarrier) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.carrier createLookupCarrierAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_carrier_results_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createCarrierResultsAsyncWithPage") createCarrierResultsAsyncWithPage

> Retrieve a list of carrier lookup objects.


```objc
function createCarrierResultsAsyncWithPage:(NSNumber*) page
                pageSize:(NSNumber*) pageSize
                completionBlock:(CompletedPostCarrierResults) onCompleted(page pageSize : pageSize)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Optional ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 100;
    NSNumber* pageSize = 100;

    [self.carrier createCarrierResultsAsyncWithPage: page pageSize : pageSize  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance
```objc
Email* email = [[Email alloc]init] ;
```

### <a name="create_remove_invalid_email_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createRemoveInvalidEmailAsyncWithEmail") createRemoveInvalidEmailAsyncWithEmail

> Remove an email from the invalid email list.


```objc
function createRemoveInvalidEmailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostRemoveInvalidEmail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the invalid email list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createRemoveInvalidEmailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_blocked_emails_async_with_offset"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createBlockedEmailsAsyncWithOffset") createBlockedEmailsAsyncWithOffset

> Retrieve a list of emails that have been blocked.


```objc
function createBlockedEmailsAsyncWithOffset:(NSString*) offset
                limit:(NSString*) limit
                completionBlock:(CompletedPostBlockedEmails) onCompleted(offset limit : limit)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of blocked emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* offset = @"Offset";
    NSString* limit = @"Limit";

    [self.email createBlockedEmailsAsyncWithOffset: offset limit : limit  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_spam_emails_async_with_offset"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createSpamEmailsAsyncWithOffset") createSpamEmailsAsyncWithOffset

> Retrieve a list of emails that are on the spam list.


```objc
function createSpamEmailsAsyncWithOffset:(NSString*) offset
                limit:(NSString*) limit
                completionBlock:(CompletedPostSpamEmails) onCompleted(offset limit : limit)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of spam emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* offset = @"Offset";
    NSString* limit = @"Limit";

    [self.email createSpamEmailsAsyncWithOffset: offset limit : limit  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_bounced_emails_async_with_offset"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createBouncedEmailsAsyncWithOffset") createBouncedEmailsAsyncWithOffset

> Retrieve a list of emails that have bounced.


```objc
function createBouncedEmailsAsyncWithOffset:(NSString*) offset
                limit:(NSString*) limit
                completionBlock:(CompletedPostBouncedEmails) onCompleted(offset limit : limit)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of bounced emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* offset = @"Offset";
    NSString* limit = @"Limit";

    [self.email createBouncedEmailsAsyncWithOffset: offset limit : limit  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_remove_bounced_email_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createRemoveBouncedEmailAsyncWithEmail") createRemoveBouncedEmailAsyncWithEmail

> Remove an email address from the bounced list.


```objc
function createRemoveBouncedEmailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostRemoveBouncedEmail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the bounced email list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createRemoveBouncedEmailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_invalid_emails_async_with_offset"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createInvalidEmailsAsyncWithOffset") createInvalidEmailsAsyncWithOffset

> Retrieve a list of invalid email addresses.


```objc
function createInvalidEmailsAsyncWithOffset:(NSString*) offset
                limit:(NSString*) limit
                completionBlock:(CompletedPostInvalidEmails) onCompleted(offset limit : limit)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of invalid emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* offset = @"Offset";
    NSString* limit = @"Limit";

    [self.email createInvalidEmailsAsyncWithOffset: offset limit : limit  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_unsubscribed_emails_async_with_offset"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListUnsubscribedEmailsAsyncWithOffset") createListUnsubscribedEmailsAsyncWithOffset

> Retrieve a list of email addresses from the unsubscribe list.


```objc
function createListUnsubscribedEmailsAsyncWithOffset:(NSString*) offset
                limit:(NSString*) limit
                completionBlock:(CompletedPostListUnsubscribedEmails) onCompleted(offset limit : limit)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of unsubscribed emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* offset = @"Offset";
    NSString* limit = @"Limit";

    [self.email createListUnsubscribedEmailsAsyncWithOffset: offset limit : limit  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_remove_unsubscribed_email_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createRemoveUnsubscribedEmailAsyncWithEmail") createRemoveUnsubscribedEmailAsyncWithEmail

> Remove an email address from the list of unsubscribed emails.


```objc
function createRemoveUnsubscribedEmailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostRemoveUnsubscribedEmail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the unsubscribe list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"email";

    [self.email createRemoveUnsubscribedEmailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="add_email_unsubscribe_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.addEmailUnsubscribeAsyncWithEmail") addEmailUnsubscribeAsyncWithEmail

> Add an email to the unsubscribe list


```objc
function addEmailUnsubscribeAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostAddEmailUnsubscribe) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be added to the unsubscribe list |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"email";

    [self.email addEmailUnsubscribeAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_remove_blocked_address_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createRemoveBlockedAddressAsyncWithEmail") createRemoveBlockedAddressAsyncWithEmail

> Remove an email from blocked emails list.


```objc
function createRemoveBlockedAddressAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostRemoveBlockedAddress) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the blocked list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createRemoveBlockedAddressAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_remove_spam_address_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createRemoveSpamAddressAsyncWithEmail") createRemoveSpamAddressAsyncWithEmail

> Remove an email from the spam email list.


```objc
function createRemoveSpamAddressAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostRemoveSpamAddress) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the spam list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createRemoveSpamAddressAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_send_email_async_with_to"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createSendEmailAsyncWithTo") createSendEmailAsyncWithTo

> Create and submit an email message to one or more email addresses.


```objc
function createSendEmailAsyncWithTo:(NSString*) to
                type:(enum TypeEnum) type
                subject:(NSString*) subject
                message:(NSString*) message
                from:(NSString*) from
                cc:(NSString*) cc
                bcc:(NSString*) bcc
                attachment:(NSString*) attachment
                completionBlock:(CompletedPostSendEmail) onCompleted(to type : type subject : subject message : message from : from cc : cc bcc : bcc attachment : attachment)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| type |  ``` Required ```  | Specifies the type of email to be sent |
| subject |  ``` Required ```  | The subject of the mail. Must be a valid string. |
| message |  ``` Required ```  | The email message that is to be sent in the text. |
| from |  ``` Optional ```  | A valid address that will send the email. |
| cc |  ``` Optional ```  | Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| bcc |  ``` Optional ```  | Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| attachment |  ``` Optional ```  | A file that is attached to the email. Must be less than 7 MB in size. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* to = @"To";
    TypeEnum type = TEXT;
    NSString* subject = @"Subject";
    NSString* message = @"Message";
    NSString* from = @"From";
    NSString* cc = @"Cc";
    NSString* bcc = @"Bcc";
    NSString* attachment = @"Attachment";

    [self.email createSendEmailAsyncWithTo: to type : type subject : subject message : message from : from cc : cc bcc : bcc attachment : attachment  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance
```objc
Account* account = [[Account alloc]init] ;
```

### <a name="create_view_account_async_with_date"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.createViewAccountAsyncWithDate") createViewAccountAsyncWithDate

> Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.


```objc
function createViewAccountAsyncWithDate:(NSString*) date
                completionBlock:(CompletedPostViewAccount) onCompleted(date)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | Filter account information based on date. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* date = @"Date";

    [self.account createViewAccountAsyncWithDate: date  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance
```objc
SubAccount* subAccount = [[SubAccount alloc]init] ;
```

### <a name="create_toggle_subaccount_status_async_with_sub_account_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createToggleSubaccountStatusAsyncWithSubAccountSID") createToggleSubaccountStatusAsyncWithSubAccountSID

> Suspend or unsuspend


```objc
function createToggleSubaccountStatusAsyncWithSubAccountSID:(NSString*) subAccountSID
                mActivate:(enum MActivateEnum) mActivate
                completionBlock:(CompletedPostToggleSubaccountStatus) onCompleted(subAccountSID mActivate : mActivate)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| mActivate |  ``` Required ```  | 0 to suspend or 1 to activate |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* subAccountSID = @"SubAccountSID";
    MActivateEnum mActivate = ENUM_1;

    [self.subAccount createToggleSubaccountStatusAsyncWithSubAccountSID: subAccountSID mActivate : mActivate  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_delete_subaccount_async_with_sub_account_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createDeleteSubaccountAsyncWithSubAccountSID") createDeleteSubaccountAsyncWithSubAccountSID

> Delete sub account or merge numbers into parent


```objc
function createDeleteSubaccountAsyncWithSubAccountSID:(NSString*) subAccountSID
                mergeNumber:(enum MergeNumberEnum) mergeNumber
                completionBlock:(CompletedPostDeleteSubaccount) onCompleted(subAccountSID mergeNumber : mergeNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be deleted |
| mergeNumber |  ``` Required ```  | 0 to delete or 1 to merge numbers to parent account. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* subAccountSID = @"SubAccountSID";
    MergeNumberEnum mergeNumber = ENUM_0;

    [self.subAccount createDeleteSubaccountAsyncWithSubAccountSID: subAccountSID mergeNumber : mergeNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_subaccount_async_with_first_name"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createSubaccountAsyncWithFirstName") createSubaccountAsyncWithFirstName

> Create a sub user account under the parent account


```objc
function createSubaccountAsyncWithFirstName:(NSString*) firstName
                lastName:(NSString*) lastName
                email:(NSString*) email
                friendlyName:(NSString*) friendlyName
                password:(NSString*) password
                completionBlock:(CompletedPostCreateSubaccount) onCompleted(firstName lastName : lastName email : email friendlyName : friendlyName password : password)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| firstName |  ``` Required ```  | Sub account user first name |
| lastName |  ``` Required ```  | sub account user last name |
| email |  ``` Required ```  | Sub account email address |
| friendlyName |  ``` Required ```  | Descriptive name of the sub account |
| password |  ``` Required ```  | The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* firstName = @"FirstName";
    NSString* lastName = @"LastName";
    NSString* email = @"Email";
    NSString* friendlyName = @"FriendlyName";
    NSString* password = @"Password";

    [self.subAccount createSubaccountAsyncWithFirstName: firstName lastName : lastName email : email friendlyName : friendlyName password : password  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance
```objc
Address* address = [[Address alloc]init] ;
```

### <a name="create_delete_address_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createDeleteAddressAsyncWithAddressid") createDeleteAddressAsyncWithAddressid

> To delete Address to your address book


```objc
function createDeleteAddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostDeleteAddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be deleted. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address createDeleteAddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_verify_address_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createVerifyAddressAsyncWithAddressid") createVerifyAddressAsyncWithAddressid

> Validates an address given.


```objc
function createVerifyAddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostVerifyAddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be verified. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address createVerifyAddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_address_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createViewAddressAsyncWithAddressid") createViewAddressAsyncWithAddressid

> View Address Specific address Book by providing the address id


```objc
function createViewAddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostViewAddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be retrieved. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address createViewAddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_addresses_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createListAddressesAsyncWithPage") createListAddressesAsyncWithPage

> List All Address 


```objc
function createListAddressesAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                addressid:(NSString*) addressid
                dateCreated:(NSString*) dateCreated
                completionBlock:(CompletedPostListAddresses) onCompleted(page pagesize : pagesize addressid : addressid dateCreated : dateCreated)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressid |  ``` Optional ```  | addresses Sid |
| dateCreated |  ``` Optional ```  | date created address. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 100;
    NSNumber* pagesize = 100;
    NSString* addressid = @"addressid";
    NSString* dateCreated = @"dateCreated";

    [self.address createListAddressesAsyncWithPage: page pagesize : pagesize addressid : addressid dateCreated : dateCreated  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_address_async_with_name"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createAddressAsyncWithName") createAddressAsyncWithName

> To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.


```objc
function createAddressAsyncWithName:(NSString*) name
                address:(NSString*) address
                country:(NSString*) country
                state:(NSString*) state
                city:(NSString*) city
                zip:(NSString*) zip
                description:(NSString*) description
                email:(NSString*) email
                phone:(NSString*) phone
                completionBlock:(CompletedPostCreateAddress) onCompleted(name address : address country : country state : state city : city zip : zip description : description email : email phone : phone)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| name |  ``` Required ```  | Name of user |
| address |  ``` Required ```  | Address of user. |
| country |  ``` Required ```  | Must be a 2 letter country short-name code (ISO 3166) |
| state |  ``` Required ```  | Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters. |
| city |  ``` Required ```  | City Name. |
| zip |  ``` Required ```  | Zip code of city. |
| description |  ``` Optional ```  | Description of addresses. |
| email |  ``` Optional ```  | Email Id of user. |
| phone |  ``` Optional ```  | Phone number of user. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* name = @"Name";
    NSString* address = @"Address";
    NSString* country = @"Country";
    NSString* state = @"State";
    NSString* city = @"City";
    NSString* zip = @"Zip";
    NSString* description = @"Description";
    NSString* email = @"email";
    NSString* phone = @"Phone";

    [self.address createAddressAsyncWithName: name address : address country : country state : state city : city zip : zip description : description email : email phone : phone  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance
```objc
Recording* recording = [[Recording alloc]init] ;
```

### <a name="create_delete_recording_async_with_recordingsid"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createDeleteRecordingAsyncWithRecordingsid") createDeleteRecordingAsyncWithRecordingsid

> Remove a recording from your Ytel account.


```objc
function createDeleteRecordingAsyncWithRecordingsid:(NSString*) recordingsid
                completionBlock:(CompletedPostDeleteRecording) onCompleted(recordingsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for a recording. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingsid = @"recordingsid";

    [self.recording createDeleteRecordingAsyncWithRecordingsid: recordingsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_recording_async_with_recordingsid"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createViewRecordingAsyncWithRecordingsid") createViewRecordingAsyncWithRecordingsid

> Retrieve the recording of a call by its RecordingSid. This resource will return information regarding the call such as start time, end time, duration, and so forth.


```objc
function createViewRecordingAsyncWithRecordingsid:(NSString*) recordingsid
                completionBlock:(CompletedPostViewRecording) onCompleted(recordingsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for the recording. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingsid = @"recordingsid";

    [self.recording createViewRecordingAsyncWithRecordingsid: recordingsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_recordings_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createListRecordingsAsyncWithPage") createListRecordingsAsyncWithPage

> Retrieve a list of recording objects.


```objc
function createListRecordingsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                datecreated:(NSString*) datecreated
                callsid:(NSString*) callsid
                completionBlock:(CompletedPostListRecordings) onCompleted(page pagesize : pagesize datecreated : datecreated callsid : callsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| datecreated |  ``` Optional ```  | Filter results by creation date |
| callsid |  ``` Optional ```  | The unique identifier for a call. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 142;
    NSNumber* pagesize = 142;
    NSString* datecreated = @"Datecreated";
    NSString* callsid = @"callsid";

    [self.recording createListRecordingsAsyncWithPage: page pagesize : pagesize datecreated : datecreated callsid : callsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance
```objc
Transcription* transcription = [[Transcription alloc]init] ;
```

### <a name="create_transcribe_audio_url_async_with_audiourl"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscribeAudioURLAsyncWithAudiourl") createTranscribeAudioURLAsyncWithAudiourl

> Transcribe an audio recording from a file.


```objc
function createTranscribeAudioURLAsyncWithAudiourl:(NSString*) audiourl
                completionBlock:(CompletedPostTranscribeAudioURL) onCompleted(audiourl)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audiourl |  ``` Required ```  | URL pointing to the location of the audio file that is to be transcribed. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* audiourl = @"audiourl";

    [self.transcription createTranscribeAudioURLAsyncWithAudiourl: audiourl  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_transcribe_recording_async_with_recording_sid"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscribeRecordingAsyncWithRecordingSid") createTranscribeRecordingAsyncWithRecordingSid

> Transcribe a recording by its RecordingSid.


```objc
function createTranscribeRecordingAsyncWithRecordingSid:(NSString*) recordingSid
                completionBlock:(CompletedPostTranscribeRecording) onCompleted(recordingSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | The unique identifier for a recording object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingSid = @"recordingSid";

    [self.transcription createTranscribeRecordingAsyncWithRecordingSid: recordingSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_view_transcription_async_with_transcriptionsid"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createViewTranscriptionAsyncWithTranscriptionsid") createViewTranscriptionAsyncWithTranscriptionsid

> Retrieve information about a transaction by its TranscriptionSid.


```objc
function createViewTranscriptionAsyncWithTranscriptionsid:(NSString*) transcriptionsid
                completionBlock:(CompletedPostViewTranscription) onCompleted(transcriptionsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionsid |  ``` Required ```  | The unique identifier for a transcription object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* transcriptionsid = @"transcriptionsid";

    [self.transcription createViewTranscriptionAsyncWithTranscriptionsid: transcriptionsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_list_transcriptions_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createListTranscriptionsAsyncWithPage") createListTranscriptionsAsyncWithPage

> Retrieve a list of transcription objects for your Ytel account.


```objc
function createListTranscriptionsAsyncWithPage:(NSNumber*) page
                pagesize:(NSNumber*) pagesize
                status:(enum Status12Enum) status
                dateTranscribed:(NSString*) dateTranscribed
                completionBlock:(CompletedPostListTranscriptions) onCompleted(page pagesize : pagesize status : status dateTranscribed : dateTranscribed)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| status |  ``` Optional ```  | The state of the transcription. |
| dateTranscribed |  ``` Optional ```  | The date the transcription took place. |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 142;
    NSNumber* pagesize = 142;
    Status12Enum status = INPROGRESS;
    NSString* dateTranscribed = @"dateTranscribed";

    [self.transcription createListTranscriptionsAsyncWithPage: page pagesize : pagesize status : status dateTranscribed : dateTranscribed  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance
```objc
Usage* usage = [[Usage alloc]init] ;
```

### <a name="create_list_usage_async_with_product_code"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.createListUsageAsyncWithProductCode") createListUsageAsyncWithProductCode

> Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.


```objc
function createListUsageAsyncWithProductCode:(enum ProductCodeEnum) productCode
                startDate:(NSString*) startDate
                endDate:(NSString*) endDate
                includeSubAccounts:(NSString*) includeSubAccounts
                completionBlock:(CompletedPostListUsage) onCompleted(productCode startDate : startDate endDate : endDate includeSubAccounts : includeSubAccounts)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| productCode |  ``` Optional ```  | Filter usage results by product type. |
| startDate |  ``` Optional ```  | Filter usage objects by start date. |
| endDate |  ``` Optional ```  | Filter usage objects by end date. |
| includeSubAccounts |  ``` Optional ```  | Will include all subaccount usage data |





#### Example Usage

```objc
    // Parameters for the API call
    ProductCodeEnum productCode = ENUM_0;
    NSString* startDate = @"startDate";
    NSString* endDate = @"endDate";
    NSString* includeSubAccounts = @"IncludeSubAccounts";

    [self.usage createListUsageAsyncWithProductCode: productCode startDate : startDate endDate : endDate includeSubAccounts : includeSubAccounts  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



