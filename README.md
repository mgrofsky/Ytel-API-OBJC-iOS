# Getting started

Ytel API version 3

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Open the project workspace using the (YtelAPI.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the YtelAPI library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'YtelAPI', :path => 'Vendor/YtelAPI'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the YtelAPI.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Ytel%20API-ObjC&workspaceName=YtelAPI&projectName=YtelAPI&rootNamespace=YtelAPI)


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

### <a name="create_dedicatedshortcode_listshortcode_async_with_create_dedicatedshortcode_listshortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createDedicatedshortcodeListshortcodeAsyncWithCreateDedicatedshortcodeListshortcodeInput") createDedicatedshortcodeListshortcodeAsyncWithCreateDedicatedshortcodeListshortcodeInput

> Retrieve a list of Short Code assignment associated with your Ytel account.


```objc
function createDedicatedshortcodeListshortcodeAsyncWithCreateDedicatedshortcodeListshortcodeInput:(CreateDedicatedshortcodeListshortcodeInput*) input
                completionBlock:(CompletedPostDedicatedshortcodeListshortcode) onCompleted(input)
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
    CreateDedicatedshortcodeListshortcodeInput *input = [[CreateDedicatedshortcodeListshortcodeInput alloc]init];
    input.shortcode = @"Shortcode";
    input.page = @"page";
    input.pagesize = @"pagesize";

    [self.shortCode createDedicatedshortcodeListshortcodeAsyncWithCreateDedicatedshortcodeListshortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_dedicatedshortcode_updateshortcode_async_with_create_dedicatedshortcode_updateshortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createDedicatedshortcodeUpdateshortcodeAsyncWithCreateDedicatedshortcodeUpdateshortcodeInput") createDedicatedshortcodeUpdateshortcodeAsyncWithCreateDedicatedshortcodeUpdateshortcodeInput

> Update a dedicated shortcode.


```objc
function createDedicatedshortcodeUpdateshortcodeAsyncWithCreateDedicatedshortcodeUpdateshortcodeInput:(CreateDedicatedshortcodeUpdateshortcodeInput*) input
                completionBlock:(CompletedPostDedicatedshortcodeUpdateshortcode) onCompleted(input)
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
    CreateDedicatedshortcodeUpdateshortcodeInput *input = [[CreateDedicatedshortcodeUpdateshortcodeInput alloc]init];
    input.shortcode = @"Shortcode";
    input.friendlyName = @"FriendlyName";
    input.callbackMethod = @"CallbackMethod";
    input.callbackUrl = @"CallbackUrl";
    input.fallbackMethod = @"FallbackMethod";
    input.fallbackUrl = @"FallbackUrl";

    [self.shortCode createDedicatedshortcodeUpdateshortcodeAsyncWithCreateDedicatedshortcodeUpdateshortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_dedicatedshortcode_viewshortcode_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createDedicatedshortcodeViewshortcodeAsyncWithShortcode") createDedicatedshortcodeViewshortcodeAsyncWithShortcode

> Retrieve a single Short Code object by its shortcode assignment.


```objc
function createDedicatedshortcodeViewshortcodeAsyncWithShortcode:(NSString*) shortcode
                completionBlock:(CompletedPostDedicatedshortcodeViewshortcode) onCompleted(shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Dedicated Short Code to your Ytel account |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";

    [self.shortCode createDedicatedshortcodeViewshortcodeAsyncWithShortcode: shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_viewsms_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createShortcodeViewsmsAsyncWithMessageSid") createShortcodeViewsmsAsyncWithMessageSid

> View a single Sms Short Code message.


```objc
function createShortcodeViewsmsAsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostShortcodeViewsms) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for the sms resource |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.shortCode createShortcodeViewsmsAsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_dedicatedshortcode_getinboundsms_async_with_create_dedicatedshortcode_getinboundsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createDedicatedshortcodeGetinboundsmsAsyncWithCreateDedicatedshortcodeGetinboundsmsInput") createDedicatedshortcodeGetinboundsmsAsyncWithCreateDedicatedshortcodeGetinboundsmsInput

> Retrive a list of inbound Sms Short Code messages associated with your Ytel account.


```objc
function createDedicatedshortcodeGetinboundsmsAsyncWithCreateDedicatedshortcodeGetinboundsmsInput:(CreateDedicatedshortcodeGetinboundsmsInput*) input
                completionBlock:(CompletedPostDedicatedshortcodeGetinboundsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| datecreated |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDedicatedshortcodeGetinboundsmsInput *input = [[CreateDedicatedshortcodeGetinboundsmsInput alloc]init];
    input.page = 27;
    input.pagesize = 27;
    input.from = @"From";
    input.shortcode = @"Shortcode";
    input.datecreated = @"Datecreated";

    [self.shortCode createDedicatedshortcodeGetinboundsmsAsyncWithCreateDedicatedshortcodeGetinboundsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_dedicatedshortcode_sendsms_async_with_create_dedicatedshortcode_sendsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createDedicatedshortcodeSendsmsAsyncWithCreateDedicatedshortcodeSendsmsInput") createDedicatedshortcodeSendsmsAsyncWithCreateDedicatedshortcodeSendsmsInput

> Send Dedicated Shortcode


```objc
function createDedicatedshortcodeSendsmsAsyncWithCreateDedicatedshortcodeSendsmsInput:(CreateDedicatedshortcodeSendsmsInput*) input
                completionBlock:(CompletedPostDedicatedshortcodeSendsms) onCompleted(input)
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
    CreateDedicatedshortcodeSendsmsInput *input = [[CreateDedicatedshortcodeSendsmsInput alloc]init];
    input.shortcode = 27;
    input.to = 27.8999611120205;
    input.body = @"body";
    input.method = @"method";
    input.messagestatuscallback = @"messagestatuscallback";

    [self.shortCode createDedicatedshortcodeSendsmsAsyncWithCreateDedicatedshortcodeSendsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_listsms_async_with_create_shortcode_listsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createShortcodeListsmsAsyncWithCreateShortcodeListsmsInput") createShortcodeListsmsAsyncWithCreateShortcodeListsmsInput

> Retrieve a list of Short Code messages.


```objc
function createShortcodeListsmsAsyncWithCreateShortcodeListsmsInput:(CreateShortcodeListsmsInput*) input
                completionBlock:(CompletedPostShortcodeListsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| dateSent |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateShortcodeListsmsInput *input = [[CreateShortcodeListsmsInput alloc]init];
    input.shortcode = @"Shortcode";
    input.to = @"To";
    input.dateSent = @"DateSent";
    input.page = 27;
    input.pageSize = 27;

    [self.shortCode createShortcodeListsmsAsyncWithCreateShortcodeListsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="area_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AreaMailController") AreaMailController

### Get singleton instance
```objc
AreaMail* areaMail = [[AreaMail alloc]init] ;
```

### <a name="create_areamail_delete_async_with_areamailid"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreamailDeleteAsyncWithAreamailid") createAreamailDeleteAsyncWithAreamailid

> Remove an AreaMail object by its AreaMailId.


```objc
function createAreamailDeleteAsyncWithAreamailid:(NSString*) areamailid
                completionBlock:(CompletedPostAreamailDelete) onCompleted(areamailid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* areamailid = @"areamailid";

    [self.areaMail createAreamailDeleteAsyncWithAreamailid: areamailid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_areamail_create_async_with_create_areamail_create_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreamailCreateAsyncWithCreateAreamailCreateInput") createAreamailCreateAsyncWithCreateAreamailCreateInput

> Create a new AreaMail object.


```objc
function createAreamailCreateAsyncWithCreateAreamailCreateInput:(CreateAreamailCreateInput*) input
                completionBlock:(CompletedPostAreamailCreate) onCompleted(input)
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
    CreateAreamailCreateInput *input = [[CreateAreamailCreateInput alloc]init];
    input.routes = @"routes";
    input.attachbyid = @"attachbyid";
    input.front = @"front";
    input.back = @"back";
    input.description = @"description";
    input.targettype = @"targettype";
    input.htmldata = @"htmldata";

    [self.areaMail createAreamailCreateAsyncWithCreateAreamailCreateInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_areamail_view_async_with_areamailid"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreamailViewAsyncWithAreamailid") createAreamailViewAsyncWithAreamailid

> Retrieve an AreaMail object by its AreaMailId.


```objc
function createAreamailViewAsyncWithAreamailid:(NSString*) areamailid
                completionBlock:(CompletedPostAreamailView) onCompleted(areamailid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* areamailid = @"areamailid";

    [self.areaMail createAreamailViewAsyncWithAreamailid: areamailid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_areamail_lists_async_with_create_areamail_lists_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreamailListsAsyncWithCreateAreamailListsInput") createAreamailListsAsyncWithCreateAreamailListsInput

> Retrieve a list of AreaMail objects.


```objc
function createAreamailListsAsyncWithCreateAreamailListsInput:(CreateAreamailListsInput*) input
                completionBlock:(CompletedPostAreamailLists) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| areamailsid |  ``` Optional ```  | The unique identifier for an AreaMail object. |
| dateCreated |  ``` Optional ```  | The date the AreaMail was created. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateAreamailListsInput *input = [[CreateAreamailListsInput alloc]init];
    input.page = 27;
    input.pagesize = 27;
    input.areamailsid = @"areamailsid";
    input.dateCreated = @"dateCreated";

    [self.areaMail createAreamailListsAsyncWithCreateAreamailListsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostCardController") PostCardController

### Get singleton instance
```objc
PostCard* postCard = [[PostCard alloc]init] ;
```

### <a name="postcard_deletepostcard_async_with_postcardid"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.postcardDeletepostcardAsyncWithPostcardid") postcardDeletepostcardAsyncWithPostcardid

> Remove a postcard object.


```objc
function postcardDeletepostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostcardDeletepostcard) onCompleted(postcardid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier of a postcard object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* postcardid = @"postcardid";

    [self.postCard postcardDeletepostcardAsyncWithPostcardid: postcardid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="postcard_viewpostcard_async_with_postcardid"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.postcardViewpostcardAsyncWithPostcardid") postcardViewpostcardAsyncWithPostcardid

> Retrieve a postcard object by its PostcardId.


```objc
function postcardViewpostcardAsyncWithPostcardid:(NSString*) postcardid
                completionBlock:(CompletedPostcardViewpostcard) onCompleted(postcardid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier for a postcard object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* postcardid = @"postcardid";

    [self.postCard postcardViewpostcardAsyncWithPostcardid: postcardid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="postcard_listpostcard_async_with_postcard_listpostcard_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.postcardListpostcardAsyncWithPostcardListpostcardInput") postcardListpostcardAsyncWithPostcardListpostcardInput

> Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.


```objc
function postcardListpostcardAsyncWithPostcardListpostcardInput:(PostcardListpostcardInput*) input
                completionBlock:(CompletedPostcardListpostcard) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| postcardid |  ``` Optional ```  | The unique identifier for a postcard object. |
| dateCreated |  ``` Optional ```  | The date the postcard was created. |





#### Example Usage

```objc
    // Parameters for the API call
    PostcardListpostcardInput *input = [[PostcardListpostcardInput alloc]init];
    input.page = 27;
    input.pagesize = 27;
    input.postcardid = @"postcardid";
    input.dateCreated = @"dateCreated";

    [self.postCard postcardListpostcardAsyncWithPostcardListpostcardInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="postcard_createpostcard_async_with_postcard_createpostcard_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.postcardCreatepostcardAsyncWithPostcardCreatepostcardInput") postcardCreatepostcardAsyncWithPostcardCreatepostcardInput

> Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.


```objc
function postcardCreatepostcardAsyncWithPostcardCreatepostcardInput:(PostcardCreatepostcardInput*) input
                completionBlock:(CompletedPostcardCreatepostcard) onCompleted(input)
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
    PostcardCreatepostcardInput *input = [[PostcardCreatepostcardInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.attachbyid = @"attachbyid";
    input.front = @"front";
    input.back = @"back";
    input.message = @"message";
    input.setting = @"setting";
    input.description = @"description";
    input.htmldata = @"htmldata";

    [self.postCard postcardCreatepostcardAsyncWithPostcardCreatepostcardInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LetterController") LetterController

### Get singleton instance
```objc
Letter* letter = [[Letter alloc]init] ;
```

### <a name="create_letter_delete_async_with_lettersid"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterDeleteAsyncWithLettersid") createLetterDeleteAsyncWithLettersid

> Remove a letter object by its LetterId.


```objc
function createLetterDeleteAsyncWithLettersid:(NSString*) lettersid
                completionBlock:(CompletedPostLetterDelete) onCompleted(lettersid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* lettersid = @"lettersid";

    [self.letter createLetterDeleteAsyncWithLettersid: lettersid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_letter_viewletter_async_with_lettersid"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterViewletterAsyncWithLettersid") createLetterViewletterAsyncWithLettersid

> Retrieve a letter object by its LetterSid.


```objc
function createLetterViewletterAsyncWithLettersid:(NSString*) lettersid
                completionBlock:(CompletedPostLetterViewletter) onCompleted(lettersid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* lettersid = @"lettersid";

    [self.letter createLetterViewletterAsyncWithLettersid: lettersid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_letter_listsletter_async_with_create_letter_listsletter_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterListsletterAsyncWithCreateLetterListsletterInput") createLetterListsletterAsyncWithCreateLetterListsletterInput

> Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.


```objc
function createLetterListsletterAsyncWithCreateLetterListsletterInput:(CreateLetterListsletterInput*) input
                completionBlock:(CompletedPostLetterListsletter) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| lettersid |  ``` Optional ```  | The unique identifier for a letter object. |
| dateCreated |  ``` Optional ```  | The date the letter was created. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateLetterListsletterInput *input = [[CreateLetterListsletterInput alloc]init];
    input.page = 27;
    input.pagesize = 27;
    input.lettersid = @"lettersid";
    input.dateCreated = @"dateCreated";

    [self.letter createLetterListsletterAsyncWithCreateLetterListsletterInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_letter_create_async_with_create_letter_create_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterCreateAsyncWithCreateLetterCreateInput") createLetterCreateAsyncWithCreateLetterCreateInput

> Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.


```objc
function createLetterCreateAsyncWithCreateLetterCreateInput:(CreateLetterCreateInput*) input
                completionBlock:(CompletedPostLetterCreate) onCompleted(input)
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
    CreateLetterCreateInput *input = [[CreateLetterCreateInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.attachbyid = @"attachbyid";
    input.file = @"file";
    input.color = @"color";
    input.description = @"description";
    input.extraservice = @"extraservice";
    input.doublesided = @"doublesided";
    input.template = @"template";
    input.htmldata = @"htmldata";

    [self.letter createLetterCreateAsyncWithCreateLetterCreateInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance
```objc
Call* call = [[Call alloc]init] ;
```

### <a name="create_calls_viewcalldetail_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsViewcalldetailAsyncWithCallSid") createCallsViewcalldetailAsyncWithCallSid

> Retrieve a single voice call’s information by its CallSid.


```objc
function createCallsViewcalldetailAsyncWithCallSid:(NSString*) callSid
                completionBlock:(CompletedPostCallsViewcalldetail) onCompleted(callSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for the voice call. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"callSid";

    [self.call createCallsViewcalldetailAsyncWithCallSid: callSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_viewcalls_async_with_callsid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsViewcallsAsyncWithCallsid") createCallsViewcallsAsyncWithCallsid

> Retrieve a single voice call’s information by its CallSid.


```objc
function createCallsViewcallsAsyncWithCallsid:(NSString*) callsid
                completionBlock:(CompletedPostCallsViewcalls) onCompleted(callsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | The unique identifier for the voice call. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callsid = @"callsid";

    [self.call createCallsViewcallsAsyncWithCallsid: callsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_senddigits_async_with_create_calls_senddigits_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsSenddigitsAsyncWithCreateCallsSenddigitsInput") createCallsSenddigitsAsyncWithCreateCallsSenddigitsInput

> Play Dtmf and send the Digit


```objc
function createCallsSenddigitsAsyncWithCreateCallsSenddigitsInput:(CreateCallsSenddigitsInput*) input
                completionBlock:(CompletedPostCallsSenddigits) onCompleted(input)
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
    CreateCallsSenddigitsInput *input = [[CreateCallsSenddigitsInput alloc]init];
    input.callSid = @"CallSid";
    input.playDtmf = @"PlayDtmf";
    input.playDtmfDirection = IN;

    [self.call createCallsSenddigitsAsyncWithCreateCallsSenddigitsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_makervm_async_with_create_calls_makervm_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsMakervmAsyncWithCreateCallsMakervmInput") createCallsMakervmAsyncWithCreateCallsMakervmInput

> Initiate an outbound Ringless Voicemail through Ytel.


```objc
function createCallsMakervmAsyncWithCreateCallsMakervmInput:(CreateCallsMakervmInput*) input
                completionBlock:(CompletedPostCallsMakervm) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| rVMCallerId |  ``` Required ```  | A required secondary Caller ID for RVM to work. |
| to |  ``` Required ```  | A valid number (E.164 format) that will receive the phone call. |
| voiceMailURL |  ``` Required ```  | The URL requested once the RVM connects. A set of default parameters will be sent here. |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| statsCallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCallsMakervmInput *input = [[CreateCallsMakervmInput alloc]init];
    input.from = @"From";
    input.rVMCallerId = @"RVMCallerId";
    input.to = @"To";
    input.voiceMailURL = @"VoiceMailURL";
    input.method = @"Method";
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statsCallBackMethod = @"StatsCallBackMethod";

    [self.call createCallsMakervmAsyncWithCreateCallsMakervmInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_listcalls_async_with_create_calls_listcalls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsListcallsAsyncWithCreateCallsListcallsInput") createCallsListcallsAsyncWithCreateCallsListcallsInput

> A list of calls associated with your Ytel account


```objc
function createCallsListcallsAsyncWithCreateCallsListcallsInput:(CreateCallsListcallsInput*) input
                completionBlock:(CompletedPostCallsListcalls) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Filter calls that were sent to this 10-digit number (E.164 format). |
| from |  ``` Optional ```  | Filter calls that were sent from this 10-digit number (E.164 format). |
| dateCreated |  ``` Optional ```  | Return calls that are from a specified date. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCallsListcallsInput *input = [[CreateCallsListcallsInput alloc]init];
    input.page = 241;
    input.pageSize = 241;
    input.to = @"To";
    input.from = @"From";
    input.dateCreated = @"DateCreated";

    [self.call createCallsListcallsAsyncWithCreateCallsListcallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_interruptcalls_async_with_create_calls_interruptcalls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsInterruptcallsAsyncWithCreateCallsInterruptcallsInput") createCallsInterruptcallsAsyncWithCreateCallsInterruptcallsInput

> Interrupt the Call by Call Sid


```objc
function createCallsInterruptcallsAsyncWithCreateCallsInterruptcallsInput:(CreateCallsInterruptcallsInput*) input
                completionBlock:(CompletedPostCallsInterruptcalls) onCompleted(input)
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
    CreateCallsInterruptcallsInput *input = [[CreateCallsInterruptcallsInput alloc]init];
    input.callSid = @"CallSid";
    input.url = @"Url";
    input.method = @"Method";
    input.status = CANCELED;

    [self.call createCallsInterruptcallsAsyncWithCreateCallsInterruptcallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_recordcalls_async_with_create_calls_recordcalls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsRecordcallsAsyncWithCreateCallsRecordcallsInput") createCallsRecordcallsAsyncWithCreateCallsRecordcallsInput

> Start or stop recording of an in-progress voice call.


```objc
function createCallsRecordcallsAsyncWithCreateCallsRecordcallsInput:(CreateCallsRecordcallsInput*) input
                completionBlock:(CompletedPostCallsRecordcalls) onCompleted(input)
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
    CreateCallsRecordcallsInput *input = [[CreateCallsRecordcallsInput alloc]init];
    input.callSid = @"CallSid";
    input.record = true;
    input.direction = IN;
    input.timeLimit = 241;
    input.callBackUrl = @"CallBackUrl";
    input.fileformat = MP3;

    [self.call createCallsRecordcallsAsyncWithCreateCallsRecordcallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_playaudios_async_with_create_calls_playaudios_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsPlayaudiosAsyncWithCreateCallsPlayaudiosInput") createCallsPlayaudiosAsyncWithCreateCallsPlayaudiosInput

> Play Audio from a url


```objc
function createCallsPlayaudiosAsyncWithCreateCallsPlayaudiosInput:(CreateCallsPlayaudiosInput*) input
                completionBlock:(CompletedPostCallsPlayaudios) onCompleted(input)
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
    CreateCallsPlayaudiosInput *input = [[CreateCallsPlayaudiosInput alloc]init];
    input.callSid = @"CallSid";
    input.audioUrl = @"AudioUrl";
    input.sayText = @"SayText";
    input.length = 241;
    input.direction = IN;
    input.mix = true;

    [self.call createCallsPlayaudiosAsyncWithCreateCallsPlayaudiosInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_voiceeffect_async_with_create_calls_voiceeffect_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsVoiceeffectAsyncWithCreateCallsVoiceeffectInput") createCallsVoiceeffectAsyncWithCreateCallsVoiceeffectInput

> Add audio voice effects to the an in-progress voice call.


```objc
function createCallsVoiceeffectAsyncWithCreateCallsVoiceeffectInput:(CreateCallsVoiceeffectInput*) input
                completionBlock:(CompletedPostCallsVoiceeffect) onCompleted(input)
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
    CreateCallsVoiceeffectInput *input = [[CreateCallsVoiceeffectInput alloc]init];
    input.callSid = @"CallSid";
    input.audioDirection = IN;
    input.pitchSemiTones = 241.176787885454;
    input.pitchOctaves = 241.176787885454;
    input.pitch = 241.176787885454;
    input.rate = 241.176787885454;
    input.tempo = 241.176787885454;

    [self.call createCallsVoiceeffectAsyncWithCreateCallsVoiceeffectInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_groupcall_async_with_create_calls_groupcall_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsGroupcallAsyncWithCreateCallsGroupcallInput") createCallsGroupcallAsyncWithCreateCallsGroupcallInput

> Group Call


```objc
function createCallsGroupcallAsyncWithCreateCallsGroupcallInput:(CreateCallsGroupcallInput*) input
                completionBlock:(CompletedPostCallsGroupcall) onCompleted(input)
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
    CreateCallsGroupcallInput *input = [[CreateCallsGroupcallInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.groupConfirmKey = @"GroupConfirmKey";
    input.groupConfirmFile = MP3;
    input.method = @"Method";
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = @"StatusCallBackMethod";
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = @"FallBackMethod";
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = @"HeartBeatMethod";
    input.timeout = 241;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = @"HideCallerId";
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = @"RecordCallBackMethod";
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";

    [self.call createCallsGroupcallAsyncWithCreateCallsGroupcallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_calls_makecall_async_with_create_calls_makecall_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createCallsMakecallAsyncWithCreateCallsMakecallInput") createCallsMakecallAsyncWithCreateCallsMakecallInput

> You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json


```objc
function createCallsMakecallAsyncWithCreateCallsMakecallInput:(CreateCallsMakecallInput*) input
                completionBlock:(CompletedPostCallsMakecall) onCompleted(input)
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
    CreateCallsMakecallInput *input = [[CreateCallsMakecallInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.method = @"Method";
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = @"StatusCallBackMethod";
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = @"FallBackMethod";
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = @"HeartBeatMethod";
    input.timeout = 241;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = true;
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = @"RecordCallBackMethod";
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";
    input.ifMachine = CONTINUE;
    input.ifMachineUrl = @"IfMachineUrl";
    input.ifMachineMethod = @"IfMachineMethod";
    input.feedback = true;
    input.surveyId = @"SurveyId";

    [self.call createCallsMakecallAsyncWithCreateCallsMakecallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance
```objc
PhoneNumber* phoneNumber = [[PhoneNumber alloc]init] ;
```

### <a name="create_incomingphone_getdidscore_async_with_phonenumber"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneGetdidscoreAsyncWithPhonenumber") createIncomingphoneGetdidscoreAsyncWithPhonenumber

> Get DID Score Number


```objc
function createIncomingphoneGetdidscoreAsyncWithPhonenumber:(NSString*) phonenumber
                completionBlock:(CompletedPostIncomingphoneGetdidscore) onCompleted(phonenumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | Specifies the multiple phone numbers for check updated spamscore . |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phonenumber = @"Phonenumber";

    [self.phoneNumber createIncomingphoneGetdidscoreAsyncWithPhonenumber: phonenumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_bulkbuy_async_with_create_incomingphone_bulkbuy_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneBulkbuyAsyncWithCreateIncomingphoneBulkbuyInput") createIncomingphoneBulkbuyAsyncWithCreateIncomingphoneBulkbuyInput

> Purchase a selected number of DID's from specific area codes to be used with your Ytel account.


```objc
function createIncomingphoneBulkbuyAsyncWithCreateIncomingphoneBulkbuyInput:(CreateIncomingphoneBulkbuyInput*) input
                completionBlock:(CompletedPostIncomingphoneBulkbuy) onCompleted(input)
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
    CreateIncomingphoneBulkbuyInput *input = [[CreateIncomingphoneBulkbuyInput alloc]init];
    input.numberType = ALL;
    input.areaCode = @"AreaCode";
    input.quantity = @"Quantity";
    input.leftover = @"Leftover";

    [self.phoneNumber createIncomingphoneBulkbuyAsyncWithCreateIncomingphoneBulkbuyInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_listnumber_async_with_create_incomingphone_listnumber_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneListnumberAsyncWithCreateIncomingphoneListnumberInput") createIncomingphoneListnumberAsyncWithCreateIncomingphoneListnumberInput

> Retrieve a list of purchased phones numbers associated with your Ytel account.


```objc
function createIncomingphoneListnumberAsyncWithCreateIncomingphoneListnumberInput:(CreateIncomingphoneListnumberInput*) input
                completionBlock:(CompletedPostIncomingphoneListnumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| numberType |  ``` Optional ```  | The capability supported by the number.Number type either SMS,Voice or all |
| friendlyName |  ``` Optional ```  | A human-readable label added to the number object. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateIncomingphoneListnumberInput *input = [[CreateIncomingphoneListnumberInput alloc]init];
    input.page = 241;
    input.pageSize = 241;
    input.numberType = ALL;
    input.friendlyName = @"FriendlyName";

    [self.phoneNumber createIncomingphoneListnumberAsyncWithCreateIncomingphoneListnumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_buynumber_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneBuynumberAsyncWithPhoneNumber") createIncomingphoneBuynumberAsyncWithPhoneNumber

> Purchase a phone number to be used with your Ytel account


```objc
function createIncomingphoneBuynumberAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostIncomingphoneBuynumber) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createIncomingphoneBuynumberAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_releasenumber_by_response_type_post_async_with_create_incomingphone_releasenumber_by_response_type_post_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneReleasenumberByResponseTypePostAsyncWithCreateIncomingphoneReleasenumberByResponseTypePostInput") createIncomingphoneReleasenumberByResponseTypePostAsyncWithCreateIncomingphoneReleasenumberByResponseTypePostInput

> Remove a purchased Ytel number from your account.


```objc
function createIncomingphoneReleasenumberByResponseTypePostAsyncWithCreateIncomingphoneReleasenumberByResponseTypePostInput:(CreateIncomingphoneReleasenumberByResponseTypePostInput*) input
                completionBlock:(CompletedPostIncomingphoneReleasenumberByResponseTypePost) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| responseType |  ``` Required ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateIncomingphoneReleasenumberByResponseTypePostInput *input = [[CreateIncomingphoneReleasenumberByResponseTypePostInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber createIncomingphoneReleasenumberByResponseTypePostAsyncWithCreateIncomingphoneReleasenumberByResponseTypePostInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_viewnumber_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneViewnumberAsyncWithPhoneNumber") createIncomingphoneViewnumberAsyncWithPhoneNumber

> Retrieve the details for a phone number by its number.


```objc
function createIncomingphoneViewnumberAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostIncomingphoneViewnumber) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel 10-digit phone number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createIncomingphoneViewnumberAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_transferphonenumbers_async_with_create_incomingphone_transferphonenumbers_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneTransferphonenumbersAsyncWithCreateIncomingphoneTransferphonenumbersInput") createIncomingphoneTransferphonenumbersAsyncWithCreateIncomingphoneTransferphonenumbersInput

> Transfer phone number that has been purchased for from one account to another account.


```objc
function createIncomingphoneTransferphonenumbersAsyncWithCreateIncomingphoneTransferphonenumbersInput:(CreateIncomingphoneTransferphonenumbersInput*) input
                completionBlock:(CompletedPostIncomingphoneTransferphonenumbers) onCompleted(input)
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
    CreateIncomingphoneTransferphonenumbersInput *input = [[CreateIncomingphoneTransferphonenumbersInput alloc]init];
    input.phonenumber = @"phonenumber";
    input.fromaccountsid = @"fromaccountsid";
    input.toaccountsid = @"toaccountsid";

    [self.phoneNumber createIncomingphoneTransferphonenumbersAsyncWithCreateIncomingphoneTransferphonenumbersInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_massreleasenumber_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneMassreleasenumberAsyncWithPhoneNumber") createIncomingphoneMassreleasenumberAsyncWithPhoneNumber

> Remove a purchased Ytel number from your account.


```objc
function createIncomingphoneMassreleasenumberAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostIncomingphoneMassreleasenumber) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel comma separated numbers (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.phoneNumber createIncomingphoneMassreleasenumberAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_massupdatenumber_async_with_create_incomingphone_massupdatenumber_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneMassupdatenumberAsyncWithCreateIncomingphoneMassupdatenumberInput") createIncomingphoneMassupdatenumberAsyncWithCreateIncomingphoneMassupdatenumberInput

> Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function createIncomingphoneMassupdatenumberAsyncWithCreateIncomingphoneMassupdatenumberInput:(CreateIncomingphoneMassupdatenumberInput*) input
                completionBlock:(CompletedPostIncomingphoneMassupdatenumber) onCompleted(input)
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
    CreateIncomingphoneMassupdatenumberInput *input = [[CreateIncomingphoneMassupdatenumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.voiceUrl = @"VoiceUrl";
    input.friendlyName = @"FriendlyName";
    input.voiceMethod = @"VoiceMethod";
    input.voiceFallbackUrl = @"VoiceFallbackUrl";
    input.voiceFallbackMethod = @"VoiceFallbackMethod";
    input.hangupCallback = @"HangupCallback";
    input.hangupCallbackMethod = @"HangupCallbackMethod";
    input.heartbeatUrl = @"HeartbeatUrl";
    input.heartbeatMethod = @"HeartbeatMethod";
    input.smsUrl = @"SmsUrl";
    input.smsMethod = @"SmsMethod";
    input.smsFallbackUrl = @"SmsFallbackUrl";
    input.smsFallbackMethod = @"SmsFallbackMethod";

    [self.phoneNumber createIncomingphoneMassupdatenumberAsyncWithCreateIncomingphoneMassupdatenumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_updatenumber_async_with_create_incomingphone_updatenumber_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneUpdatenumberAsyncWithCreateIncomingphoneUpdatenumberInput") createIncomingphoneUpdatenumberAsyncWithCreateIncomingphoneUpdatenumberInput

> Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function createIncomingphoneUpdatenumberAsyncWithCreateIncomingphoneUpdatenumberInput:(CreateIncomingphoneUpdatenumberInput*) input
                completionBlock:(CompletedPostIncomingphoneUpdatenumber) onCompleted(input)
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
    CreateIncomingphoneUpdatenumberInput *input = [[CreateIncomingphoneUpdatenumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.voiceUrl = @"VoiceUrl";
    input.friendlyName = @"FriendlyName";
    input.voiceMethod = @"VoiceMethod";
    input.voiceFallbackUrl = @"VoiceFallbackUrl";
    input.voiceFallbackMethod = @"VoiceFallbackMethod";
    input.hangupCallback = @"HangupCallback";
    input.hangupCallbackMethod = @"HangupCallbackMethod";
    input.heartbeatUrl = @"HeartbeatUrl";
    input.heartbeatMethod = @"HeartbeatMethod";
    input.smsUrl = @"SmsUrl";
    input.smsMethod = @"SmsMethod";
    input.smsFallbackUrl = @"SmsFallbackUrl";
    input.smsFallbackMethod = @"SmsFallbackMethod";

    [self.phoneNumber createIncomingphoneUpdatenumberAsyncWithCreateIncomingphoneUpdatenumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_incomingphone_availablenumber_async_with_create_incomingphone_availablenumber_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createIncomingphoneAvailablenumberAsyncWithCreateIncomingphoneAvailablenumberInput") createIncomingphoneAvailablenumberAsyncWithCreateIncomingphoneAvailablenumberInput

> Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.


```objc
function createIncomingphoneAvailablenumberAsyncWithCreateIncomingphoneAvailablenumberInput:(CreateIncomingphoneAvailablenumberInput*) input
                completionBlock:(CompletedPostIncomingphoneAvailablenumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numbertype |  ``` Required ```  | Number type either SMS,Voice or all |
| areacode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateIncomingphoneAvailablenumberInput *input = [[CreateIncomingphoneAvailablenumberInput alloc]init];
    input.numbertype = ALL;
    input.areacode = @"areacode";
    input.pagesize = 241;

    [self.phoneNumber createIncomingphoneAvailablenumberAsyncWithCreateIncomingphoneAvailablenumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance
```objc
SMS* sMS = [[SMS alloc]init] ;
```

### <a name="create_sms_viewdetailsms_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSmsViewdetailsmsAsyncWithMessageSid") createSmsViewdetailsmsAsyncWithMessageSid

> Retrieve a single SMS message object with details by its SmsSid.


```objc
function createSmsViewdetailsmsAsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostSmsViewdetailsms) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.sMS createSmsViewdetailsmsAsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sms_viewsms_async_with_message_sid"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSmsViewsmsAsyncWithMessageSid") createSmsViewsmsAsyncWithMessageSid

> Retrieve a single SMS message object by its SmsSid.


```objc
function createSmsViewsmsAsyncWithMessageSid:(NSString*) messageSid
                completionBlock:(CompletedPostSmsViewsms) onCompleted(messageSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* messageSid = @"MessageSid";

    [self.sMS createSmsViewsmsAsyncWithMessageSid: messageSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sms_getinboundsms_async_with_create_sms_getinboundsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSmsGetinboundsmsAsyncWithCreateSmsGetinboundsmsInput") createSmsGetinboundsmsAsyncWithCreateSmsGetinboundsmsInput

> Retrieve a list of Inbound SMS message objects.


```objc
function createSmsGetinboundsmsAsyncWithCreateSmsGetinboundsmsInput:(CreateSmsGetinboundsmsInput*) input
                completionBlock:(CompletedPostSmsGetinboundsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Filter sms message objects by this date. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSmsGetinboundsmsInput *input = [[CreateSmsGetinboundsmsInput alloc]init];
    input.page = 241;
    input.pageSize = 241;
    input.from = @"From";
    input.to = @"To";
    input.dateSent = @"DateSent";

    [self.sMS createSmsGetinboundsmsAsyncWithCreateSmsGetinboundsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sms_listsms_async_with_create_sms_listsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSmsListsmsAsyncWithCreateSmsListsmsInput") createSmsListsmsAsyncWithCreateSmsListsmsInput

> Retrieve a list of Outbound SMS message objects.


```objc
function createSmsListsmsAsyncWithCreateSmsListsmsInput:(CreateSmsListsmsInput*) input
                completionBlock:(CompletedPostSmsListsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSmsListsmsInput *input = [[CreateSmsListsmsInput alloc]init];
    input.page = 241;
    input.pageSize = 241;
    input.from = @"From";
    input.to = @"To";
    input.dateSent = @"DateSent";

    [self.sMS createSmsListsmsAsyncWithCreateSmsListsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sms_sendsms_async_with_create_sms_sendsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSmsSendsmsAsyncWithCreateSmsSendsmsInput") createSmsSendsmsAsyncWithCreateSmsSendsmsInput

> Send an SMS from a Ytel number


```objc
function createSmsSendsmsAsyncWithCreateSmsSendsmsInput:(CreateSmsSendsmsInput*) input
                completionBlock:(CompletedPostSmsSendsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent. |
| to |  ``` Required ```  | The 10-digit phone number (E.164 format) that will receive the message. |
| body |  ``` Required ```  | The body message that is to be sent in the text. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Required ```  ``` DefaultValue ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |
| deliveryStatus |  ``` Required ```  ``` DefaultValue ```  | Delivery reports are a method to tell your system if the message has arrived on the destination phone. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSmsSendsmsInput *input = [[CreateSmsSendsmsInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.body = @"Body";
    input.method = @"Method";
    input.messageStatusCallback = @"MessageStatusCallback";
    input.smartsms = true;
    input.deliveryStatus = true;

    [self.sMS createSmsSendsmsAsyncWithCreateSmsSendsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance
```objc
SharedShortCode* sharedShortCode = [[SharedShortCode alloc]init] ;
```

### <a name="create_shortcode_viewshortcode_async_with_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createShortcodeViewshortcodeAsyncWithShortcode") createShortcodeViewshortcodeAsyncWithShortcode

> The response returned here contains all resource properties associated with the given Shortcode.


```objc
function createShortcodeViewshortcodeAsyncWithShortcode:(NSString*) shortcode
                completionBlock:(CompletedPostShortcodeViewshortcode) onCompleted(shortcode)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your Ytel account |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* shortcode = @"Shortcode";

    [self.sharedShortCode createShortcodeViewshortcodeAsyncWithShortcode: shortcode  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_keyword_view_async_with_keywordid"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createKeywordViewAsyncWithKeywordid") createKeywordViewAsyncWithKeywordid

> View a set of properties for a single keyword.


```objc
function createKeywordViewAsyncWithKeywordid:(NSString*) keywordid
                completionBlock:(CompletedPostKeywordView) onCompleted(keywordid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| keywordid |  ``` Required ```  | The unique identifier of each keyword |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* keywordid = @"Keywordid";

    [self.sharedShortCode createKeywordViewAsyncWithKeywordid: keywordid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_updateshortcode_async_with_create_shortcode_updateshortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createShortcodeUpdateshortcodeAsyncWithCreateShortcodeUpdateshortcodeInput") createShortcodeUpdateshortcodeAsyncWithCreateShortcodeUpdateshortcodeInput

> Update Assignment


```objc
function createShortcodeUpdateshortcodeAsyncWithCreateShortcodeUpdateshortcodeInput:(CreateShortcodeUpdateshortcodeInput*) input
                completionBlock:(CompletedPostShortcodeUpdateshortcode) onCompleted(input)
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
    CreateShortcodeUpdateshortcodeInput *input = [[CreateShortcodeUpdateshortcodeInput alloc]init];
    input.shortcode = @"Shortcode";
    input.friendlyName = @"FriendlyName";
    input.callbackUrl = @"CallbackUrl";
    input.callbackMethod = @"CallbackMethod";
    input.fallbackUrl = @"FallbackUrl";
    input.fallbackUrlMethod = @"FallbackUrlMethod";

    [self.sharedShortCode createShortcodeUpdateshortcodeAsyncWithCreateShortcodeUpdateshortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_template_view_async_with_template_id"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createTemplateViewAsyncWithTemplateId") createTemplateViewAsyncWithTemplateId

> View a Shared ShortCode Template


```objc
function createTemplateViewAsyncWithTemplateId:(NSUUID*) templateId
                completionBlock:(CompletedPostTemplateView) onCompleted(templateId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | The unique identifier for a template object |





#### Example Usage

```objc
    // Parameters for the API call
    NSUUID* templateId = 123456789;

    [self.sharedShortCode createTemplateViewAsyncWithTemplateId: templateId  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_listshortcode_async_with_create_shortcode_listshortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createShortcodeListshortcodeAsyncWithCreateShortcodeListshortcodeInput") createShortcodeListshortcodeAsyncWithCreateShortcodeListshortcodeInput

> Retrieve a list of shortcode assignment associated with your Ytel account.


```objc
function createShortcodeListshortcodeAsyncWithCreateShortcodeListshortcodeInput:(CreateShortcodeListshortcodeInput*) input
                completionBlock:(CompletedPostShortcodeListshortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    CreateShortcodeListshortcodeInput *input = [[CreateShortcodeListshortcodeInput alloc]init];
    input.page = 241;
    input.pagesize = 241;
    input.shortcode = @"Shortcode";

    [self.sharedShortCode createShortcodeListshortcodeAsyncWithCreateShortcodeListshortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_keyword_lists_async_with_create_keyword_lists_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createKeywordListsAsyncWithCreateKeywordListsInput") createKeywordListsAsyncWithCreateKeywordListsInput

> Retrieve a list of keywords associated with your Ytel account.


```objc
function createKeywordListsAsyncWithCreateKeywordListsInput:(CreateKeywordListsInput*) input
                completionBlock:(CompletedPostKeywordLists) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    CreateKeywordListsInput *input = [[CreateKeywordListsInput alloc]init];
    input.page = 241;
    input.pagesize = 241;
    input.keyword = @"Keyword";
    input.shortcode = 241;

    [self.sharedShortCode createKeywordListsAsyncWithCreateKeywordListsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_template_lists_async_with_create_template_lists_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createTemplateListsAsyncWithCreateTemplateListsInput") createTemplateListsAsyncWithCreateTemplateListsInput

> List Shortcode Templates by Type


```objc
function createTemplateListsAsyncWithCreateTemplateListsInput:(CreateTemplateListsInput*) input
                completionBlock:(CompletedPostTemplateLists) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| type |  ``` Required ```  ``` DefaultValue ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| shortcode |  ``` Optional ```  | Only list templates of type |





#### Example Usage

```objc
    // Parameters for the API call
    CreateTemplateListsInput *input = [[CreateTemplateListsInput alloc]init];
    input.type = @"type";
    input.page = 241;
    input.pagesize = 241;
    input.shortcode = @"Shortcode";

    [self.sharedShortCode createTemplateListsAsyncWithCreateTemplateListsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_sendsms_async_with_create_shortcode_sendsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createShortcodeSendsmsAsyncWithCreateShortcodeSendsmsInput") createShortcodeSendsmsAsyncWithCreateShortcodeSendsmsInput

> Send an SMS from a Ytel ShortCode


```objc
function createShortcodeSendsmsAsyncWithCreateShortcodeSendsmsInput:(CreateShortcodeSendsmsInput*) input
                completionBlock:(CompletedPostShortcodeSendsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| data |  ``` Required ```  | format of your data, example: {companyname}:test,{otpcode}:1234 |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateShortcodeSendsmsInput *input = [[CreateShortcodeSendsmsInput alloc]init];
    input.shortcode = @"shortcode";
    input.to = @"to";
    input.templateid = 123456789;
    input.data = @"data";
    input.method = @"Method";
    input.messageStatusCallback = @"MessageStatusCallback";

    [self.sharedShortCode createShortcodeSendsmsAsyncWithCreateShortcodeSendsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_shortcode_getinboundsms_async_with_create_shortcode_getinboundsms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.createShortcodeGetinboundsmsAsyncWithCreateShortcodeGetinboundsmsInput") createShortcodeGetinboundsmsAsyncWithCreateShortcodeGetinboundsmsInput

> List All Inbound ShortCode


```objc
function createShortcodeGetinboundsmsAsyncWithCreateShortcodeGetinboundsmsInput:(CreateShortcodeGetinboundsmsInput*) input
                completionBlock:(CompletedPostShortcodeGetinboundsms) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| datecreated |  ``` Optional ```  | Only list messages sent with the specified date |





#### Example Usage

```objc
    // Parameters for the API call
    CreateShortcodeGetinboundsmsInput *input = [[CreateShortcodeGetinboundsmsInput alloc]init];
    input.page = 241;
    input.pagesize = 241;
    input.from = @"from";
    input.shortcode = @"Shortcode";
    input.datecreated = @"Datecreated";

    [self.sharedShortCode createShortcodeGetinboundsmsAsyncWithCreateShortcodeGetinboundsmsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance
```objc
Conference* conference = [[Conference alloc]init] ;
```

### <a name="create_conferences_play_audio_async_with_create_conferences_play_audio_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesPlayAudioAsyncWithCreateConferencesPlayAudioInput") createConferencesPlayAudioAsyncWithCreateConferencesPlayAudioInput

> Play an audio file during a conference.


```objc
function createConferencesPlayAudioAsyncWithCreateConferencesPlayAudioInput:(CreateConferencesPlayAudioInput*) input
                completionBlock:(CompletedPostConferencesPlayAudio) onCompleted(input)
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
    CreateConferencesPlayAudioInput *input = [[CreateConferencesPlayAudioInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.audioUrl = MP3;

    [self.conference createConferencesPlayAudioAsyncWithCreateConferencesPlayAudioInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_hangup_participant_async_with_create_conferences_hangup_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesHangupParticipantAsyncWithCreateConferencesHangupParticipantInput") createConferencesHangupParticipantAsyncWithCreateConferencesHangupParticipantInput

> Remove a participant from a conference.


```objc
function createConferencesHangupParticipantAsyncWithCreateConferencesHangupParticipantInput:(CreateConferencesHangupParticipantInput*) input
                completionBlock:(CompletedPostConferencesHangupParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateConferencesHangupParticipantInput *input = [[CreateConferencesHangupParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";

    [self.conference createConferencesHangupParticipantAsyncWithCreateConferencesHangupParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_viewconference_async_with_conference_sid"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesViewconferenceAsyncWithConferenceSid") createConferencesViewconferenceAsyncWithConferenceSid

> Retrieve information about a conference by its ConferenceSid.


```objc
function createConferencesViewconferenceAsyncWithConferenceSid:(NSString*) conferenceSid
                completionBlock:(CompletedPostConferencesViewconference) onCompleted(conferenceSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier of each conference resource |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* conferenceSid = @"ConferenceSid";

    [self.conference createConferencesViewconferenceAsyncWithConferenceSid: conferenceSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_listconference_async_with_create_conferences_listconference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesListconferenceAsyncWithCreateConferencesListconferenceInput") createConferencesListconferenceAsyncWithCreateConferencesListconferenceInput

> Retrieve a list of conference objects.


```objc
function createConferencesListconferenceAsyncWithCreateConferencesListconferenceInput:(CreateConferencesListconferenceInput*) input
                completionBlock:(CompletedPostConferencesListconference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| friendlyName |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| dateCreated |  ``` Optional ```  | Conference created date |





#### Example Usage

```objc
    // Parameters for the API call
    CreateConferencesListconferenceInput *input = [[CreateConferencesListconferenceInput alloc]init];
    input.page = 77;
    input.pagesize = 77;
    input.friendlyName = @"FriendlyName";
    input.dateCreated = @"DateCreated";

    [self.conference createConferencesListconferenceAsyncWithCreateConferencesListconferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_list_participant_async_with_create_conferences_list_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesListParticipantAsyncWithCreateConferencesListParticipantInput") createConferencesListParticipantAsyncWithCreateConferencesListParticipantInput

> Retrieve a list of participants for an in-progress conference.


```objc
function createConferencesListParticipantAsyncWithCreateConferencesListParticipantInput:(CreateConferencesListParticipantInput*) input
                completionBlock:(CompletedPostConferencesListParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference. |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateConferencesListParticipantInput *input = [[CreateConferencesListParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.page = 77;
    input.pagesize = 77;
    input.muted = false;
    input.deaf = false;

    [self.conference createConferencesListParticipantAsyncWithCreateConferencesListParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_view_participant_async_with_create_conferences_view_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesViewParticipantAsyncWithCreateConferencesViewParticipantInput") createConferencesViewParticipantAsyncWithCreateConferencesViewParticipantInput

> Retrieve information about a participant by its ParticipantSid.


```objc
function createConferencesViewParticipantAsyncWithCreateConferencesViewParticipantInput:(CreateConferencesViewParticipantInput*) input
                completionBlock:(CompletedPostConferencesViewParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateConferencesViewParticipantInput *input = [[CreateConferencesViewParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";

    [self.conference createConferencesViewParticipantAsyncWithCreateConferencesViewParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_add_participant_async_with_create_conferences_add_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesAddParticipantAsyncWithCreateConferencesAddParticipantInput") createConferencesAddParticipantAsyncWithCreateConferencesAddParticipantInput

> Add Participant in conference 


```objc
function createConferencesAddParticipantAsyncWithCreateConferencesAddParticipantInput:(CreateConferencesAddParticipantInput*) input
                completionBlock:(CompletedPostConferencesAddParticipant) onCompleted(input)
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
    CreateConferencesAddParticipantInput *input = [[CreateConferencesAddParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantNumber = @"ParticipantNumber";
    input.muted = false;
    input.deaf = false;

    [self.conference createConferencesAddParticipantAsyncWithCreateConferencesAddParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_create_conference_async_with_create_conferences_create_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesCreateConferenceAsyncWithCreateConferencesCreateConferenceInput") createConferencesCreateConferenceAsyncWithCreateConferencesCreateConferenceInput

> Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.


```objc
function createConferencesCreateConferenceAsyncWithCreateConferencesCreateConferenceInput:(CreateConferencesCreateConferenceInput*) input
                completionBlock:(CompletedPostConferencesCreateConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid 10-digit number (E.164 format) that will be initiating the conference call. |
| to |  ``` Required ```  | A valid 10-digit number (E.164 format) that is to receive the conference call. |
| url |  ``` Required ```  | URL requested once the conference connects |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
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
    CreateConferencesCreateConferenceInput *input = [[CreateConferencesCreateConferenceInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.method = @"Method";
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = @"StatusCallBackMethod";
    input.fallbackUrl = @"FallbackUrl";
    input.fallbackMethod = @"FallbackMethod";
    input.record = false;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = @"RecordCallBackMethod";
    input.scheduleTime = @"ScheduleTime";
    input.timeout = 77;

    [self.conference createConferencesCreateConferenceAsyncWithCreateConferencesCreateConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conferences_deaf_mute_participant_async_with_create_conferences_deaf_mute_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferencesDeafMuteParticipantAsyncWithCreateConferencesDeafMuteParticipantInput") createConferencesDeafMuteParticipantAsyncWithCreateConferencesDeafMuteParticipantInput

> Deaf Mute Participant


```objc
function createConferencesDeafMuteParticipantAsyncWithCreateConferencesDeafMuteParticipantInput:(CreateConferencesDeafMuteParticipantInput*) input
                completionBlock:(CompletedPostConferencesDeafMuteParticipant) onCompleted(input)
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
    CreateConferencesDeafMuteParticipantInput *input = [[CreateConferencesDeafMuteParticipantInput alloc]init];
    input.conferenceSid = @"conferenceSid";
    input.participantSid = @"ParticipantSid";
    input.muted = false;
    input.deaf = false;

    [self.conference createConferencesDeafMuteParticipantAsyncWithCreateConferencesDeafMuteParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance
```objc
Carrier* carrier = [[Carrier alloc]init] ;
```

### <a name="create_carrier_lookup_async_with_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createCarrierLookupAsyncWithPhoneNumber") createCarrierLookupAsyncWithPhoneNumber

> Get the Carrier Lookup


```objc
function createCarrierLookupAsyncWithPhoneNumber:(NSString*) phoneNumber
                completionBlock:(CompletedPostCarrierLookup) onCompleted(phoneNumber)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit number (E.164 format). |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* phoneNumber = @"PhoneNumber";

    [self.carrier createCarrierLookupAsyncWithPhoneNumber: phoneNumber  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_carrier_lookuplist_async_with_create_carrier_lookuplist_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createCarrierLookuplistAsyncWithCreateCarrierLookuplistInput") createCarrierLookuplistAsyncWithCreateCarrierLookuplistInput

> Retrieve a list of carrier lookup objects.


```objc
function createCarrierLookuplistAsyncWithCreateCarrierLookuplistInput:(CreateCarrierLookuplistInput*) input
                completionBlock:(CompletedPostCarrierLookuplist) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCarrierLookuplistInput *input = [[CreateCarrierLookuplistInput alloc]init];
    input.page = 77;
    input.pageSize = 77;

    [self.carrier createCarrierLookuplistAsyncWithCreateCarrierLookuplistInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance
```objc
Email* email = [[Email alloc]init] ;
```

### <a name="create_email_deleteinvalidemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailDeleteinvalidemailAsyncWithEmail") createEmailDeleteinvalidemailAsyncWithEmail

> Remove an email from the invalid email list.


```objc
function createEmailDeleteinvalidemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailDeleteinvalidemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the invalid email list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createEmailDeleteinvalidemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_listblockemail_async_with_create_email_listblockemail_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailListblockemailAsyncWithCreateEmailListblockemailInput") createEmailListblockemailAsyncWithCreateEmailListblockemailInput

> Retrieve a list of emails that have been blocked.


```objc
function createEmailListblockemailAsyncWithCreateEmailListblockemailInput:(CreateEmailListblockemailInput*) input
                completionBlock:(CompletedPostEmailListblockemail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of blocked emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateEmailListblockemailInput *input = [[CreateEmailListblockemailInput alloc]init];
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email createEmailListblockemailAsyncWithCreateEmailListblockemailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_listspamemail_async_with_create_email_listspamemail_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailListspamemailAsyncWithCreateEmailListspamemailInput") createEmailListspamemailAsyncWithCreateEmailListspamemailInput

> Retrieve a list of emails that are on the spam list.


```objc
function createEmailListspamemailAsyncWithCreateEmailListspamemailInput:(CreateEmailListspamemailInput*) input
                completionBlock:(CompletedPostEmailListspamemail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of spam emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateEmailListspamemailInput *input = [[CreateEmailListspamemailInput alloc]init];
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email createEmailListspamemailAsyncWithCreateEmailListspamemailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_listbounceemail_async_with_create_email_listbounceemail_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailListbounceemailAsyncWithCreateEmailListbounceemailInput") createEmailListbounceemailAsyncWithCreateEmailListbounceemailInput

> Retrieve a list of emails that have bounced.


```objc
function createEmailListbounceemailAsyncWithCreateEmailListbounceemailInput:(CreateEmailListbounceemailInput*) input
                completionBlock:(CompletedPostEmailListbounceemail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of bounced emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateEmailListbounceemailInput *input = [[CreateEmailListbounceemailInput alloc]init];
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email createEmailListbounceemailAsyncWithCreateEmailListbounceemailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_deletebouncesemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailDeletebouncesemailAsyncWithEmail") createEmailDeletebouncesemailAsyncWithEmail

> Remove an email address from the bounced list.


```objc
function createEmailDeletebouncesemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailDeletebouncesemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the bounced email list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createEmailDeletebouncesemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_listinvalidemail_async_with_create_email_listinvalidemail_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailListinvalidemailAsyncWithCreateEmailListinvalidemailInput") createEmailListinvalidemailAsyncWithCreateEmailListinvalidemailInput

> Retrieve a list of invalid email addresses.


```objc
function createEmailListinvalidemailAsyncWithCreateEmailListinvalidemailInput:(CreateEmailListinvalidemailInput*) input
                completionBlock:(CompletedPostEmailListinvalidemail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of invalid emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateEmailListinvalidemailInput *input = [[CreateEmailListinvalidemailInput alloc]init];
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email createEmailListinvalidemailAsyncWithCreateEmailListinvalidemailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_listunsubscribedemail_async_with_create_email_listunsubscribedemail_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailListunsubscribedemailAsyncWithCreateEmailListunsubscribedemailInput") createEmailListunsubscribedemailAsyncWithCreateEmailListunsubscribedemailInput

> Retrieve a list of email addresses from the unsubscribe list.


```objc
function createEmailListunsubscribedemailAsyncWithCreateEmailListunsubscribedemailInput:(CreateEmailListunsubscribedemailInput*) input
                completionBlock:(CompletedPostEmailListunsubscribedemail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of unsubscribed emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateEmailListunsubscribedemailInput *input = [[CreateEmailListunsubscribedemailInput alloc]init];
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email createEmailListunsubscribedemailAsyncWithCreateEmailListunsubscribedemailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_deleteunsubscribedemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailDeleteunsubscribedemailAsyncWithEmail") createEmailDeleteunsubscribedemailAsyncWithEmail

> Remove an email address from the list of unsubscribed emails.


```objc
function createEmailDeleteunsubscribedemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailDeleteunsubscribedemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the unsubscribe list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"email";

    [self.email createEmailDeleteunsubscribedemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_addunsubscribesemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailAddunsubscribesemailAsyncWithEmail") createEmailAddunsubscribesemailAsyncWithEmail

> Add an email to the unsubscribe list


```objc
function createEmailAddunsubscribesemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailAddunsubscribesemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be added to the unsubscribe list |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"email";

    [self.email createEmailAddunsubscribesemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_deleteblocksemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailDeleteblocksemailAsyncWithEmail") createEmailDeleteblocksemailAsyncWithEmail

> Remove an email from blocked emails list.


```objc
function createEmailDeleteblocksemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailDeleteblocksemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the blocked list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createEmailDeleteblocksemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_deletespamemail_async_with_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailDeletespamemailAsyncWithEmail") createEmailDeletespamemailAsyncWithEmail

> Remove an email from the spam email list.


```objc
function createEmailDeletespamemailAsyncWithEmail:(NSString*) email
                completionBlock:(CompletedPostEmailDeletespamemail) onCompleted(email)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the spam list. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* email = @"Email";

    [self.email createEmailDeletespamemailAsyncWithEmail: email  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_email_sendemails_async_with_create_email_sendemails_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createEmailSendemailsAsyncWithCreateEmailSendemailsInput") createEmailSendemailsAsyncWithCreateEmailSendemailsInput

> Create and submit an email message to one or more email addresses.


```objc
function createEmailSendemailsAsyncWithCreateEmailSendemailsInput:(CreateEmailSendemailsInput*) input
                completionBlock:(CompletedPostEmailSendemails) onCompleted(input)
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
    CreateEmailSendemailsInput *input = [[CreateEmailSendemailsInput alloc]init];
    input.to = @"To";
    input.type = TEXT;
    input.subject = @"Subject";
    input.message = @"Message";
    input.from = @"From";
    input.cc = @"Cc";
    input.bcc = @"Bcc";
    input.attachment = @"Attachment";

    [self.email createEmailSendemailsAsyncWithCreateEmailSendemailsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance
```objc
Account* account = [[Account alloc]init] ;
```

### <a name="create_accounts_viewaccount_async_with_date"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.createAccountsViewaccountAsyncWithDate") createAccountsViewaccountAsyncWithDate

> Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.


```objc
function createAccountsViewaccountAsyncWithDate:(NSString*) date
                completionBlock:(CompletedPostAccountsViewaccount) onCompleted(date)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | Filter account information based on date. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* date = @"Date";

    [self.account createAccountsViewaccountAsyncWithDate: date  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance
```objc
SubAccount* subAccount = [[SubAccount alloc]init] ;
```

### <a name="create_user_subaccountactivation_async_with_create_user_subaccountactivation_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createUserSubaccountactivationAsyncWithCreateUserSubaccountactivationInput") createUserSubaccountactivationAsyncWithCreateUserSubaccountactivationInput

> Suspend or unsuspend


```objc
function createUserSubaccountactivationAsyncWithCreateUserSubaccountactivationInput:(CreateUserSubaccountactivationInput*) input
                completionBlock:(CompletedPostUserSubaccountactivation) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| mActivate |  ``` Required ```  | 0 to suspend or 1 to activate |





#### Example Usage

```objc
    // Parameters for the API call
    CreateUserSubaccountactivationInput *input = [[CreateUserSubaccountactivationInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.mActivate = ACTIVATE;

    [self.subAccount createUserSubaccountactivationAsyncWithCreateUserSubaccountactivationInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_user_deletesubaccount_async_with_create_user_deletesubaccount_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createUserDeletesubaccountAsyncWithCreateUserDeletesubaccountInput") createUserDeletesubaccountAsyncWithCreateUserDeletesubaccountInput

> Delete sub account or merge numbers into parent


```objc
function createUserDeletesubaccountAsyncWithCreateUserDeletesubaccountInput:(CreateUserDeletesubaccountInput*) input
                completionBlock:(CompletedPostUserDeletesubaccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be deleted |
| mergeNumber |  ``` Required ```  | 0 to delete or 1 to merge numbers to parent account. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateUserDeletesubaccountInput *input = [[CreateUserDeletesubaccountInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.mergeNumber = DELETE;

    [self.subAccount createUserDeletesubaccountAsyncWithCreateUserDeletesubaccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_user_createsubaccount_async_with_create_user_createsubaccount_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createUserCreatesubaccountAsyncWithCreateUserCreatesubaccountInput") createUserCreatesubaccountAsyncWithCreateUserCreatesubaccountInput

> Create a sub user account under the parent account


```objc
function createUserCreatesubaccountAsyncWithCreateUserCreatesubaccountInput:(CreateUserCreatesubaccountInput*) input
                completionBlock:(CompletedPostUserCreatesubaccount) onCompleted(input)
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
    CreateUserCreatesubaccountInput *input = [[CreateUserCreatesubaccountInput alloc]init];
    input.firstName = @"FirstName";
    input.lastName = @"LastName";
    input.email = @"Email";
    input.friendlyName = @"FriendlyName";
    input.password = @"Password";

    [self.subAccount createUserCreatesubaccountAsyncWithCreateUserCreatesubaccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance
```objc
Address* address = [[Address alloc]init] ;
```

### <a name="address_deleteaddress_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.addressDeleteaddressAsyncWithAddressid") addressDeleteaddressAsyncWithAddressid

> To delete Address to your address book


```objc
function addressDeleteaddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostAddressDeleteaddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be deleted. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address addressDeleteaddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="address_verifyaddress_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.addressVerifyaddressAsyncWithAddressid") addressVerifyaddressAsyncWithAddressid

> Validates an address given.


```objc
function addressVerifyaddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostAddressVerifyaddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be verified. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address addressVerifyaddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="address_viewaddress_async_with_addressid"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.addressViewaddressAsyncWithAddressid") addressViewaddressAsyncWithAddressid

> View Address Specific address Book by providing the address id


```objc
function addressViewaddressAsyncWithAddressid:(NSString*) addressid
                completionBlock:(CompletedPostAddressViewaddress) onCompleted(addressid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be retrieved. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* addressid = @"addressid";

    [self.address addressViewaddressAsyncWithAddressid: addressid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="address_createaddress_async_with_address_createaddress_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.addressCreateaddressAsyncWithAddressCreateaddressInput") addressCreateaddressAsyncWithAddressCreateaddressInput

> To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.


```objc
function addressCreateaddressAsyncWithAddressCreateaddressInput:(AddressCreateaddressInput*) input
                completionBlock:(CompletedPostAddressCreateaddress) onCompleted(input)
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
    AddressCreateaddressInput *input = [[AddressCreateaddressInput alloc]init];
    input.name = @"Name";
    input.address = @"Address";
    input.country = @"Country";
    input.state = @"State";
    input.city = @"City";
    input.zip = @"Zip";
    input.description = @"Description";
    input.email = @"email";
    input.phone = @"Phone";

    [self.address addressCreateaddressAsyncWithAddressCreateaddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="address_listaddress_async_with_address_listaddress_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.addressListaddressAsyncWithAddressListaddressInput") addressListaddressAsyncWithAddressListaddressInput

> List All Address 


```objc
function addressListaddressAsyncWithAddressListaddressInput:(AddressListaddressInput*) input
                completionBlock:(CompletedPostAddressListaddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressid |  ``` Optional ```  | addresses Sid |
| dateCreated |  ``` Optional ```  | date created address. |





#### Example Usage

```objc
    // Parameters for the API call
    AddressListaddressInput *input = [[AddressListaddressInput alloc]init];
    input.page = 169;
    input.pagesize = 169;
    input.addressid = @"addressid";
    input.dateCreated = @"dateCreated";

    [self.address addressListaddressAsyncWithAddressListaddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance
```objc
Recording* recording = [[Recording alloc]init] ;
```

### <a name="create_recording_deleterecording_async_with_recordingsid"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createRecordingDeleterecordingAsyncWithRecordingsid") createRecordingDeleterecordingAsyncWithRecordingsid

> Remove a recording from your Ytel account.


```objc
function createRecordingDeleterecordingAsyncWithRecordingsid:(NSString*) recordingsid
                completionBlock:(CompletedPostRecordingDeleterecording) onCompleted(recordingsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for a recording. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingsid = @"recordingsid";

    [self.recording createRecordingDeleterecordingAsyncWithRecordingsid: recordingsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_recording_viewrecording_async_with_recordingsid"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createRecordingViewrecordingAsyncWithRecordingsid") createRecordingViewrecordingAsyncWithRecordingsid

> Retrieve the recording of a call by its RecordingSid. This resource will return information regarding the call such as start time, end time, duration, and so forth.


```objc
function createRecordingViewrecordingAsyncWithRecordingsid:(NSString*) recordingsid
                completionBlock:(CompletedPostRecordingViewrecording) onCompleted(recordingsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for the recording. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingsid = @"recordingsid";

    [self.recording createRecordingViewrecordingAsyncWithRecordingsid: recordingsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_recording_listrecording_async_with_create_recording_listrecording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createRecordingListrecordingAsyncWithCreateRecordingListrecordingInput") createRecordingListrecordingAsyncWithCreateRecordingListrecordingInput

> Retrieve a list of recording objects.


```objc
function createRecordingListrecordingAsyncWithCreateRecordingListrecordingInput:(CreateRecordingListrecordingInput*) input
                completionBlock:(CompletedPostRecordingListrecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| datecreated |  ``` Optional ```  | Filter results by creation date |
| callsid |  ``` Optional ```  | The unique identifier for a call. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateRecordingListrecordingInput *input = [[CreateRecordingListrecordingInput alloc]init];
    input.page = 169;
    input.pagesize = 169;
    input.datecreated = @"Datecreated";
    input.callsid = @"callsid";

    [self.recording createRecordingListrecordingAsyncWithCreateRecordingListrecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance
```objc
Transcription* transcription = [[Transcription alloc]init] ;
```

### <a name="create_transcriptions_audiourltranscription_async_with_audiourl"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscriptionsAudiourltranscriptionAsyncWithAudiourl") createTranscriptionsAudiourltranscriptionAsyncWithAudiourl

> Transcribe an audio recording from a file.


```objc
function createTranscriptionsAudiourltranscriptionAsyncWithAudiourl:(NSString*) audiourl
                completionBlock:(CompletedPostTranscriptionsAudiourltranscription) onCompleted(audiourl)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audiourl |  ``` Required ```  | URL pointing to the location of the audio file that is to be transcribed. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* audiourl = @"audiourl";

    [self.transcription createTranscriptionsAudiourltranscriptionAsyncWithAudiourl: audiourl  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_transcriptions_recordingtranscription_async_with_recording_sid"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscriptionsRecordingtranscriptionAsyncWithRecordingSid") createTranscriptionsRecordingtranscriptionAsyncWithRecordingSid

> Transcribe a recording by its RecordingSid.


```objc
function createTranscriptionsRecordingtranscriptionAsyncWithRecordingSid:(NSString*) recordingSid
                completionBlock:(CompletedPostTranscriptionsRecordingtranscription) onCompleted(recordingSid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | The unique identifier for a recording object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* recordingSid = @"recordingSid";

    [self.transcription createTranscriptionsRecordingtranscriptionAsyncWithRecordingSid: recordingSid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_transcriptions_viewtranscription_async_with_transcriptionsid"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscriptionsViewtranscriptionAsyncWithTranscriptionsid") createTranscriptionsViewtranscriptionAsyncWithTranscriptionsid

> Retrieve information about a transaction by its TranscriptionSid.


```objc
function createTranscriptionsViewtranscriptionAsyncWithTranscriptionsid:(NSString*) transcriptionsid
                completionBlock:(CompletedPostTranscriptionsViewtranscription) onCompleted(transcriptionsid)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionsid |  ``` Required ```  | The unique identifier for a transcription object. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* transcriptionsid = @"transcriptionsid";

    [self.transcription createTranscriptionsViewtranscriptionAsyncWithTranscriptionsid: transcriptionsid  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_transcriptions_listtranscription_async_with_create_transcriptions_listtranscription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createTranscriptionsListtranscriptionAsyncWithCreateTranscriptionsListtranscriptionInput") createTranscriptionsListtranscriptionAsyncWithCreateTranscriptionsListtranscriptionInput

> Retrieve a list of transcription objects for your Ytel account.


```objc
function createTranscriptionsListtranscriptionAsyncWithCreateTranscriptionsListtranscriptionInput:(CreateTranscriptionsListtranscriptionInput*) input
                completionBlock:(CompletedPostTranscriptionsListtranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| status |  ``` Optional ```  | The state of the transcription. |
| dateTranscribed |  ``` Optional ```  | The date the transcription took place. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateTranscriptionsListtranscriptionInput *input = [[CreateTranscriptionsListtranscriptionInput alloc]init];
    input.page = 169;
    input.pagesize = 169;
    input.status = INPROGRESS;
    input.dateTranscribed = @"dateTranscribed";

    [self.transcription createTranscriptionsListtranscriptionAsyncWithCreateTranscriptionsListtranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance
```objc
Usage* usage = [[Usage alloc]init] ;
```

### <a name="create_usage_listusage_async_with_create_usage_listusage_input"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.createUsageListusageAsyncWithCreateUsageListusageInput") createUsageListusageAsyncWithCreateUsageListusageInput

> Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.


```objc
function createUsageListusageAsyncWithCreateUsageListusageInput:(CreateUsageListusageInput*) input
                completionBlock:(CompletedPostUsageListusage) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| productCode |  ``` Required ```  ``` DefaultValue ```  | Filter usage results by product type. |
| startDate |  ``` Required ```  ``` DefaultValue ```  | Filter usage objects by start date. |
| endDate |  ``` Required ```  ``` DefaultValue ```  | Filter usage objects by end date. |
| includeSubAccounts |  ``` Optional ```  | Will include all subaccount usage data |





#### Example Usage

```objc
    // Parameters for the API call
    CreateUsageListusageInput *input = [[CreateUsageListusageInput alloc]init];
    input.productCode = ALL;
    input.startDate = @"startDate";
    input.endDate = @"endDate";
    input.includeSubAccounts = @"IncludeSubAccounts";

    [self.usage createUsageListusageAsyncWithCreateUsageListusageInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



