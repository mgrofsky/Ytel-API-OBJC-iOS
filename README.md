# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Open the project workspace using the (Message360.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the Message360 library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'Message360', :path => 'Vendor/Message360'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the Message360.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Message360-ObjC&workspaceName=Message360&projectName=Message360&rootNamespace=Message360)


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

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [ShortCodeController](#short_code_controller)
* [ConferenceController](#conference_controller)
* [EmailController](#email_controller)
* [NumberVerificationController](#number_verification_controller)
* [CarrierController](#carrier_controller)
* [CallController](#call_controller)
* [WebRTCController](#web_rtc_controller)
* [SubAccountController](#sub_account_controller)
* [AddressController](#address_controller)
* [PhoneNumberController](#phone_number_controller)
* [RecordingController](#recording_controller)
* [SMSController](#sms_controller)
* [TranscriptionController](#transcription_controller)
* [UsageController](#usage_controller)
* [AccountController](#account_controller)

### <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

#### Get singleton instance
```objc
ShortCode* shortCode = [[ShortCode alloc]init] ;
```

#### <a name="create_view_template_async_with_create_view_template_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createViewTemplateAsyncWithCreateViewTemplateInput") createViewTemplateAsyncWithCreateViewTemplateInput

> View a Shared ShortCode Template


```objc
function createViewTemplateAsyncWithCreateViewTemplateInput:(CreateViewTemplateInput*) input
                completionBlock:(CompletedPostViewTemplate) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateid |  ``` Required ```  | The unique identifier for a template object |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewTemplateInput *input = [[CreateViewTemplateInput alloc]init];
    input.templateid = 123456789;
    input.responseType = @"ResponseType";

    [self.shortCode createViewTemplateAsyncWithCreateViewTemplateInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_send_short_code_async_with_create_send_short_code_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createSendShortCodeAsyncWithCreateSendShortCodeInput") createSendShortCodeAsyncWithCreateSendShortCodeInput

> Send an SMS from a message360 ShortCode


```objc
function createSendShortCodeAsyncWithCreateSendShortCodeInput:(CreateSendShortCodeInput*) input
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostSendShortCode) onCompleted(input formParameters : formParams)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| tocountrycode |  ``` Required ```  ``` DefaultValue ```  | The country code for sending this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message+ |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| fieldParameters | ``` Optional ``` | Additional optional form parameters are supported by this method |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSendShortCodeInput *input = [[CreateSendShortCodeInput alloc]init];
    input.shortcode = @"shortcode";
    input.tocountrycode = @"tocountrycode";
    input.to = @"to";
    input.templateid = 123456789;
    input.method = @"Method";
    input.messageStatusCallback = @"MessageStatusCallback";
    input.responseType = @"ResponseType";
    // Dictionary for optional form parameters
    NSMutableDictionary* formParamsMutable = [[NSMutableDictionary alloc] init];
    NSDictionary *formParams= [formParamsMutable copy];

    [self.shortCode createSendShortCodeAsyncWithCreateSendShortCodeInput: input formParameters : formParams  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_inbound_short_code_async_with_create_list_inbound_short_code_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListInboundShortCodeAsyncWithCreateListInboundShortCodeInput") createListInboundShortCodeAsyncWithCreateListInboundShortCodeInput

> List All Inbound ShortCode


```objc
function createListInboundShortCodeAsyncWithCreateListInboundShortCodeInput:(CreateListInboundShortCodeInput*) input
                completionBlock:(CompletedPostListInboundShortCode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| dateReceived |  ``` Optional ```  | Only list messages sent with the specified date |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListInboundShortCodeInput *input = [[CreateListInboundShortCodeInput alloc]init];
    input.page = 112;
    input.pagesize = 112;
    input.from = @"from";
    input.shortcode = @"Shortcode";
    input.dateReceived = @"DateReceived";
    input.responseType = @"ResponseType";

    [self.shortCode createListInboundShortCodeAsyncWithCreateListInboundShortCodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_short_code_async_with_create_list_short_code_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListShortCodeAsyncWithCreateListShortCodeInput") createListShortCodeAsyncWithCreateListShortCodeInput

> List ShortCode Messages


```objc
function createListShortCodeAsyncWithCreateListShortCodeInput:(CreateListShortCodeInput*) input
                completionBlock:(CompletedPostListShortCode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListShortCodeInput *input = [[CreateListShortCodeInput alloc]init];
    input.page = 112;
    input.pagesize = 112;
    input.from = @"from";
    input.to = @"to";
    input.datesent = @"datesent";
    input.responseType = @"ResponseType";

    [self.shortCode createListShortCodeAsyncWithCreateListShortCodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_templates_async_with_create_list_templates_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createListTemplatesAsyncWithCreateListTemplatesInput") createListTemplatesAsyncWithCreateListTemplatesInput

> List Shortcode Templates by Type


```objc
function createListTemplatesAsyncWithCreateListTemplatesInput:(CreateListTemplatesInput*) input
                completionBlock:(CompletedPostListTemplates) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| type |  ``` Required ```  ``` DefaultValue ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListTemplatesInput *input = [[CreateListTemplatesInput alloc]init];
    input.type = @"type";
    input.page = 112;
    input.pagesize = 112;
    input.responseType = @"ResponseType";

    [self.shortCode createListTemplatesAsyncWithCreateListTemplatesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_short_code_async_with_create_view_short_code_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.createViewShortCodeAsyncWithCreateViewShortCodeInput") createViewShortCodeAsyncWithCreateViewShortCodeInput

> View a ShortCode Message


```objc
function createViewShortCodeAsyncWithCreateViewShortCodeInput:(CreateViewShortCodeInput*) input
                completionBlock:(CompletedPostViewShortCode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewShortCodeInput *input = [[CreateViewShortCodeInput alloc]init];
    input.messagesid = @"messagesid";
    input.responseType = @"ResponseType";

    [self.shortCode createViewShortCodeAsyncWithCreateViewShortCodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

#### Get singleton instance
```objc
Conference* conference = [[Conference alloc]init] ;
```

#### <a name="create_deaf_mute_participant_async_with_create_deaf_mute_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createDeafMuteParticipantAsyncWithCreateDeafMuteParticipantInput") createDeafMuteParticipantAsyncWithCreateDeafMuteParticipantInput

> Deaf Mute Participant


```objc
function createDeafMuteParticipantAsyncWithCreateDeafMuteParticipantInput:(CreateDeafMuteParticipantInput*) input
                completionBlock:(CompletedPostDeafMuteParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | TODO: Add a parameter description |
| participantSid |  ``` Required ```  | TODO: Add a parameter description |
| muted |  ``` Optional ```  | TODO: Add a parameter description |
| deaf |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeafMuteParticipantInput *input = [[CreateDeafMuteParticipantInput alloc]init];
    input.conferenceSid = @"conferenceSid";
    input.participantSid = @"ParticipantSid";
    input.muted = false;
    input.deaf = false;
    input.responseType = @"ResponseType";

    [self.conference createDeafMuteParticipantAsyncWithCreateDeafMuteParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_conference_async_with_create_list_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createListConferenceAsyncWithCreateListConferenceInput") createListConferenceAsyncWithCreateListConferenceInput

> List Conference


```objc
function createListConferenceAsyncWithCreateListConferenceInput:(CreateListConferenceInput*) input
                completionBlock:(CompletedPostListConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| friendlyName |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| status |  ``` Optional ```  | TODO: Add a parameter description |
| dateCreated |  ``` Optional ```  | TODO: Add a parameter description |
| dateUpdated |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListConferenceInput *input = [[CreateListConferenceInput alloc]init];
    input.page = 112;
    input.pageSize = 112;
    input.friendlyName = @"FriendlyName";
    input.status = CANCELED;
    input.dateCreated = @"DateCreated";
    input.dateUpdated = @"DateUpdated";
    input.responseType = @"ResponseType";

    [self.conference createListConferenceAsyncWithCreateListConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_conference_async_with_create_view_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createViewConferenceAsyncWithCreateViewConferenceInput") createViewConferenceAsyncWithCreateViewConferenceInput

> View Conference


```objc
function createViewConferenceAsyncWithCreateViewConferenceInput:(CreateViewConferenceInput*) input
                completionBlock:(CompletedPostViewConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | The unique identifier of each conference resource |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewConferenceInput *input = [[CreateViewConferenceInput alloc]init];
    input.conferencesid = @"conferencesid";
    input.responseType = @"ResponseType";

    [self.conference createViewConferenceAsyncWithCreateViewConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="add_participant_async_with_add_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.addParticipantAsyncWithAddParticipantInput") addParticipantAsyncWithAddParticipantInput

> Add Participant in conference 


```objc
function addParticipantAsyncWithAddParticipantInput:(AddParticipantInput*) input
                completionBlock:(CompletedPostAddParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | Unique Conference Sid |
| participantnumber |  ``` Required ```  | Particiant Number |
| tocountrycode |  ``` Required ```  | TODO: Add a parameter description |
| muted |  ``` Optional ```  | TODO: Add a parameter description |
| deaf |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    AddParticipantInput *input = [[AddParticipantInput alloc]init];
    input.conferencesid = @"conferencesid";
    input.participantnumber = @"participantnumber";
    input.tocountrycode = 112;
    input.muted = false;
    input.deaf = false;
    input.responseType = @"ResponseType";

    [self.conference addParticipantAsyncWithAddParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_participant_async_with_create_list_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createListParticipantAsyncWithCreateListParticipantInput") createListParticipantAsyncWithCreateListParticipantInput

> List Participant


```objc
function createListParticipantAsyncWithCreateListParticipantInput:(CreateListParticipantInput*) input
                completionBlock:(CompletedPostListParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | unique conference sid |
| page |  ``` Optional ```  | page number |
| pagesize |  ``` Optional ```  | TODO: Add a parameter description |
| muted |  ``` Optional ```  | TODO: Add a parameter description |
| deaf |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListParticipantInput *input = [[CreateListParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.page = 112;
    input.pagesize = 112;
    input.muted = false;
    input.deaf = false;
    input.responseType = @"ResponseType";

    [self.conference createListParticipantAsyncWithCreateListParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_participant_async_with_create_view_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createViewParticipantAsyncWithCreateViewParticipantInput") createViewParticipantAsyncWithCreateViewParticipantInput

> View Participant


```objc
function createViewParticipantAsyncWithCreateViewParticipantInput:(CreateViewParticipantInput*) input
                completionBlock:(CompletedPostViewParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | unique conference sid |
| participantSid |  ``` Required ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewParticipantInput *input = [[CreateViewParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.responseType = @"ResponseType";

    [self.conference createViewParticipantAsyncWithCreateViewParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

#### Get singleton instance
```objc
Email* email = [[Email alloc]init] ;
```

#### <a name="create_delete_invalid_async_with_create_delete_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createDeleteInvalidAsyncWithCreateDeleteInvalidInput") createDeleteInvalidAsyncWithCreateDeleteInvalidInput

> This endpoint allows you to delete entries in the Invalid Emails list.


```objc
function createDeleteInvalidAsyncWithCreateDeleteInvalidInput:(CreateDeleteInvalidInput*) input
                completionBlock:(CompletedPostDeleteInvalid) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteInvalidInput *input = [[CreateDeleteInvalidInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email createDeleteInvalidAsyncWithCreateDeleteInvalidInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_blocks_async_with_create_list_blocks_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListBlocksAsyncWithCreateListBlocksInput") createListBlocksAsyncWithCreateListBlocksInput

> Outputs email addresses on your blocklist


```objc
function createListBlocksAsyncWithCreateListBlocksInput:(CreateListBlocksInput*) input
                completionBlock:(CompletedPostListBlocks) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | Where to start in the output list |
| limit |  ``` Optional ```  | Maximum number of records to return |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListBlocksInput *input = [[CreateListBlocksInput alloc]init];
    input.offset = @"offset";
    input.limit = @"limit";
    input.responseType = @"ResponseType";

    [self.email createListBlocksAsyncWithCreateListBlocksInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_spam_async_with_create_list_spam_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListSpamAsyncWithCreateListSpamInput") createListSpamAsyncWithCreateListSpamInput

> List out all email addresses marked as spam


```objc
function createListSpamAsyncWithCreateListSpamInput:(CreateListSpamInput*) input
                completionBlock:(CompletedPostListSpam) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The record number to start the list at |
| limit |  ``` Optional ```  | Maximum number of records to return |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListSpamInput *input = [[CreateListSpamInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email createListSpamAsyncWithCreateListSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_bounces_async_with_create_list_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListBouncesAsyncWithCreateListBouncesInput") createListBouncesAsyncWithCreateListBouncesInput

> List out all email addresses that have bounced


```objc
function createListBouncesAsyncWithCreateListBouncesInput:(CreateListBouncesInput*) input
                completionBlock:(CompletedPostListBounces) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The record to start the list at |
| limit |  ``` Optional ```  | The maximum number of records to return |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListBouncesInput *input = [[CreateListBouncesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email createListBouncesAsyncWithCreateListBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_bounces_async_with_create_delete_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createDeleteBouncesAsyncWithCreateDeleteBouncesInput") createDeleteBouncesAsyncWithCreateDeleteBouncesInput

> Delete an email address from the bounced address list


```objc
function createDeleteBouncesAsyncWithCreateDeleteBouncesInput:(CreateDeleteBouncesInput*) input
                completionBlock:(CompletedPostDeleteBounces) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to remove from the bounce list |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteBouncesInput *input = [[CreateDeleteBouncesInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email createDeleteBouncesAsyncWithCreateDeleteBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_invalid_async_with_create_list_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListInvalidAsyncWithCreateListInvalidInput") createListInvalidAsyncWithCreateListInvalidInput

> List out all invalid email addresses


```objc
function createListInvalidAsyncWithCreateListInvalidInput:(CreateListInvalidInput*) input
                completionBlock:(CompletedPostListInvalid) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offet |  ``` Optional ```  | Starting record for listing out emails |
| limit |  ``` Optional ```  | Maximum number of records to return |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListInvalidInput *input = [[CreateListInvalidInput alloc]init];
    input.responseType = @"ResponseType";
    input.offet = @"offet";
    input.limit = @"limit";

    [self.email createListInvalidAsyncWithCreateListInvalidInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_unsubscribes_async_with_create_list_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createListUnsubscribesAsyncWithCreateListUnsubscribesInput") createListUnsubscribesAsyncWithCreateListUnsubscribesInput

> List all unsubscribed email addresses


```objc
function createListUnsubscribesAsyncWithCreateListUnsubscribesInput:(CreateListUnsubscribesInput*) input
                completionBlock:(CompletedPostListUnsubscribes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | Starting record of the list |
| limit |  ``` Optional ```  | Maximum number of records to be returned |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListUnsubscribesInput *input = [[CreateListUnsubscribesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email createListUnsubscribesAsyncWithCreateListUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_unsubscribes_async_with_create_delete_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createDeleteUnsubscribesAsyncWithCreateDeleteUnsubscribesInput") createDeleteUnsubscribesAsyncWithCreateDeleteUnsubscribesInput

> Delete emails from the unsubscribe list


```objc
function createDeleteUnsubscribesAsyncWithCreateDeleteUnsubscribesInput:(CreateDeleteUnsubscribesInput*) input
                completionBlock:(CompletedPostDeleteUnsubscribes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to remove from the unsubscribe list |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteUnsubscribesInput *input = [[CreateDeleteUnsubscribesInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email createDeleteUnsubscribesAsyncWithCreateDeleteUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="add_unsubscribes_async_with_add_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.addUnsubscribesAsyncWithAddUnsubscribesInput") addUnsubscribesAsyncWithAddUnsubscribesInput

> Add an email to the unsubscribe list


```objc
function addUnsubscribesAsyncWithAddUnsubscribesInput:(AddUnsubscribesInput*) input
                completionBlock:(CompletedPostAddUnsubscribes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to add to the unsubscribe list |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    AddUnsubscribesInput *input = [[AddUnsubscribesInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email addUnsubscribesAsyncWithAddUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_block_async_with_create_delete_block_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createDeleteBlockAsyncWithCreateDeleteBlockInput") createDeleteBlockAsyncWithCreateDeleteBlockInput

> Deletes a blocked email


```objc
function createDeleteBlockAsyncWithCreateDeleteBlockInput:(CreateDeleteBlockInput*) input
                completionBlock:(CompletedPostDeleteBlock) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address to remove from block list |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteBlockInput *input = [[CreateDeleteBlockInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email createDeleteBlockAsyncWithCreateDeleteBlockInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_spam_async_with_create_delete_spam_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createDeleteSpamAsyncWithCreateDeleteSpamInput") createDeleteSpamAsyncWithCreateDeleteSpamInput

> Deletes a email address marked as spam from the spam list


```objc
function createDeleteSpamAsyncWithCreateDeleteSpamInput:(CreateDeleteSpamInput*) input
                completionBlock:(CompletedPostDeleteSpam) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteSpamInput *input = [[CreateDeleteSpamInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email createDeleteSpamAsyncWithCreateDeleteSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_send_email_async_with_create_send_email_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.createSendEmailAsyncWithCreateSendEmailInput") createSendEmailAsyncWithCreateSendEmailInput

> Send out an email


```objc
function createSendEmailAsyncWithCreateSendEmailInput:(CreateSendEmailInput*) input
                completionBlock:(CompletedPostSendEmail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The to email address |
| from |  ``` Required ```  | The from email address |
| type |  ``` Required ```  ``` DefaultValue ```  | email format type, html or text |
| subject |  ``` Required ```  | Email subject |
| message |  ``` Required ```  | The body of the email message |
| cc |  ``` Optional ```  | CC Email address |
| bcc |  ``` Optional ```  | BCC Email address |
| attachment |  ``` Optional ```  | File to be attached.File must be less than 7MB. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSendEmailInput *input = [[CreateSendEmailInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.type = HTML;
    input.subject = @"subject";
    input.message = @"message";
    input.cc = @"cc";
    input.bcc = @"bcc";
    input.attachment = @"attachment";
    input.responseType = @"ResponseType";

    [self.email createSendEmailAsyncWithCreateSendEmailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="number_verification_controller"></a>![Class: ](https://apidocs.io/img/class.png ".NumberVerificationController") NumberVerificationController

#### Get singleton instance
```objc
NumberVerification* numberVerification = [[NumberVerification alloc]init] ;
```

#### <a name="create_verify_number_async_with_create_verify_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".NumberVerificationController.createVerifyNumberAsyncWithCreateVerifyNumberInput") createVerifyNumberAsyncWithCreateVerifyNumberInput

> Number Verification


```objc
function createVerifyNumberAsyncWithCreateVerifyNumberInput:(CreateVerifyNumberInput*) input
                completionBlock:(CompletedPostVerifyNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | TODO: Add a parameter description |
| type |  ``` Required ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateVerifyNumberInput *input = [[CreateVerifyNumberInput alloc]init];
    input.phonenumber = @"phonenumber";
    input.type = @"type";
    input.responseType = @"ResponseType";

    [self.numberVerification createVerifyNumberAsyncWithCreateVerifyNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

#### Get singleton instance
```objc
Carrier* carrier = [[Carrier alloc]init] ;
```

#### <a name="create_carrier_lookup_async_with_create_carrier_lookup_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createCarrierLookupAsyncWithCreateCarrierLookupInput") createCarrierLookupAsyncWithCreateCarrierLookupInput

> Get the Carrier Lookup


```objc
function createCarrierLookupAsyncWithCreateCarrierLookupInput:(CreateCarrierLookupInput*) input
                completionBlock:(CompletedPostCarrierLookup) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | The number to lookup |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCarrierLookupInput *input = [[CreateCarrierLookupInput alloc]init];
    input.phonenumber = @"phonenumber";
    input.responseType = @"ResponseType";

    [self.carrier createCarrierLookupAsyncWithCreateCarrierLookupInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_carrier_lookup_list_async_with_create_carrier_lookup_list_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.createCarrierLookupListAsyncWithCreateCarrierLookupListInput") createCarrierLookupListAsyncWithCreateCarrierLookupListInput

> Get the All Purchase Number's Carrier lookup


```objc
function createCarrierLookupListAsyncWithCreateCarrierLookupListInput:(CreateCarrierLookupListInput*) input
                completionBlock:(CompletedPostCarrierLookupList) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page Number |
| pagesize |  ``` Optional ```  | Page Size |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCarrierLookupListInput *input = [[CreateCarrierLookupListInput alloc]init];
    input.page = 203;
    input.pagesize = 203;
    input.responseType = @"ResponseType";

    [self.carrier createCarrierLookupListAsyncWithCreateCarrierLookupListInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

#### Get singleton instance
```objc
Call* call = [[Call alloc]init] ;
```

#### <a name="create_view_call_async_with_create_view_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createViewCallAsyncWithCreateViewCallInput") createViewCallAsyncWithCreateViewCallInput

> View Call Response


```objc
function createViewCallAsyncWithCreateViewCallInput:(CreateViewCallInput*) input
                completionBlock:(CompletedPostViewCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | Call Sid id for particular Call |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewCallInput *input = [[CreateViewCallInput alloc]init];
    input.callsid = @"callsid";
    input.responseType = @"ResponseType";

    [self.call createViewCallAsyncWithCreateViewCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_group_call_async_with_create_group_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createGroupCallAsyncWithCreateGroupCallInput") createGroupCallAsyncWithCreateGroupCallInput

> Group Call


```objc
function createGroupCallAsyncWithCreateGroupCallInput:(CreateGroupCallInput*) input
                completionBlock:(CompletedPostGroupCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fromCountryCode |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| from |  ``` Required ```  | TODO: Add a parameter description |
| toCountryCode |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| to |  ``` Required ```  | TODO: Add a parameter description |
| url |  ``` Required ```  | TODO: Add a parameter description |
| method |  ``` Optional ```  | TODO: Add a parameter description |
| statusCallBackUrl |  ``` Optional ```  | TODO: Add a parameter description |
| statusCallBackMethod |  ``` Optional ```  | TODO: Add a parameter description |
| fallBackUrl |  ``` Optional ```  | TODO: Add a parameter description |
| fallBackMethod |  ``` Optional ```  | TODO: Add a parameter description |
| heartBeatUrl |  ``` Optional ```  | TODO: Add a parameter description |
| heartBeatMethod |  ``` Optional ```  | TODO: Add a parameter description |
| timeout |  ``` Optional ```  | TODO: Add a parameter description |
| playDtmf |  ``` Optional ```  | TODO: Add a parameter description |
| hideCallerId |  ``` Optional ```  | TODO: Add a parameter description |
| record |  ``` Optional ```  | TODO: Add a parameter description |
| recordCallBackUrl |  ``` Optional ```  | TODO: Add a parameter description |
| recordCallBackMethod |  ``` Optional ```  | TODO: Add a parameter description |
| transcribe |  ``` Optional ```  | TODO: Add a parameter description |
| transcribeCallBackUrl |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    CreateGroupCallInput *input = [[CreateGroupCallInput alloc]init];
    input.fromCountryCode = @"FromCountryCode";
    input.from = @"From";
    input.toCountryCode = @"ToCountryCode";
    input.to = @"To";
    input.url = @"Url";
    input.method = GET;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = GET;
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = GET;
    input.timeout = 203;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = @"HideCallerId";
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";
    input.responseType = @"ResponseType";

    [self.call createGroupCallAsyncWithCreateGroupCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_voice_effect_async_with_create_voice_effect_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createVoiceEffectAsyncWithCreateVoiceEffectInput") createVoiceEffectAsyncWithCreateVoiceEffectInput

> Voice Effect


```objc
function createVoiceEffectAsyncWithCreateVoiceEffectInput:(CreateVoiceEffectInput*) input
                completionBlock:(CompletedPostVoiceEffect) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | TODO: Add a parameter description |
| audioDirection |  ``` Optional ```  | TODO: Add a parameter description |
| pitchSemiTones |  ``` Optional ```  | value between -14 and 14 |
| pitchOctaves |  ``` Optional ```  | value between -1 and 1 |
| pitch |  ``` Optional ```  | value greater than 0 |
| rate |  ``` Optional ```  | value greater than 0 |
| tempo |  ``` Optional ```  | value greater than 0 |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateVoiceEffectInput *input = [[CreateVoiceEffectInput alloc]init];
    input.callSid = @"CallSid";
    input.audioDirection = IN;
    input.pitchSemiTones = 203.878987228442;
    input.pitchOctaves = 203.878987228442;
    input.pitch = 203.878987228442;
    input.rate = 203.878987228442;
    input.tempo = 203.878987228442;
    input.responseType = @"ResponseType";

    [self.call createVoiceEffectAsyncWithCreateVoiceEffectInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_record_call_async_with_create_record_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createRecordCallAsyncWithCreateRecordCallInput") createRecordCallAsyncWithCreateRecordCallInput

> Record a Call


```objc
function createRecordCallAsyncWithCreateRecordCallInput:(CreateRecordCallInput*) input
                completionBlock:(CompletedPostRecordCall) onCompleted(input)
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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateRecordCallInput *input = [[CreateRecordCallInput alloc]init];
    input.callSid = @"CallSid";
    input.record = true;
    input.direction = IN;
    input.timeLimit = 203;
    input.callBackUrl = @"CallBackUrl";
    input.fileformat = MP3;
    input.responseType = @"ResponseType";

    [self.call createRecordCallAsyncWithCreateRecordCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_play_audio_async_with_create_play_audio_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createPlayAudioAsyncWithCreatePlayAudioInput") createPlayAudioAsyncWithCreatePlayAudioInput

> Play Dtmf and send the Digit


```objc
function createPlayAudioAsyncWithCreatePlayAudioInput:(CreatePlayAudioInput*) input
                completionBlock:(CompletedPostPlayAudio) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| audioUrl |  ``` Required ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| length |  ``` Optional ```  | Time limit in seconds for audio play back |
| direction |  ``` Optional ```  | The leg of the call audio will be played to |
| loop |  ``` Optional ```  | Repeat audio playback indefinitely |
| mix |  ``` Optional ```  | If false, all other audio will be muted |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreatePlayAudioInput *input = [[CreatePlayAudioInput alloc]init];
    input.callSid = @"CallSid";
    input.audioUrl = @"AudioUrl";
    input.length = 203;
    input.direction = IN;
    input.loop = true;
    input.mix = true;
    input.responseType = @"ResponseType";

    [self.call createPlayAudioAsyncWithCreatePlayAudioInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_interrupted_call_async_with_create_interrupted_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createInterruptedCallAsyncWithCreateInterruptedCallInput") createInterruptedCallAsyncWithCreateInterruptedCallInput

> Interrupt the Call by Call Sid


```objc
function createInterruptedCallAsyncWithCreateInterruptedCallInput:(CreateInterruptedCallInput*) input
                completionBlock:(CompletedPostInterruptedCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | Call SId |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateInterruptedCallInput *input = [[CreateInterruptedCallInput alloc]init];
    input.callSid = @"CallSid";
    input.url = @"Url";
    input.method = GET;
    input.status = CANCELED;
    input.responseType = @"ResponseType";

    [self.call createInterruptedCallAsyncWithCreateInterruptedCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_send_digit_async_with_create_send_digit_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createSendDigitAsyncWithCreateSendDigitInput") createSendDigitAsyncWithCreateSendDigitInput

> Play Dtmf and send the Digit


```objc
function createSendDigitAsyncWithCreateSendDigitInput:(CreateSendDigitInput*) input
                completionBlock:(CompletedPostSendDigit) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| playDtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| playDtmfDirection |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSendDigitInput *input = [[CreateSendDigitInput alloc]init];
    input.callSid = @"CallSid";
    input.playDtmf = @"PlayDtmf";
    input.playDtmfDirection = IN;
    input.responseType = @"ResponseType";

    [self.call createSendDigitAsyncWithCreateSendDigitInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_make_call_async_with_create_make_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createMakeCallAsyncWithCreateMakeCallInput") createMakeCallAsyncWithCreateMakeCallInput

> You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json


```objc
function createMakeCallAsyncWithCreateMakeCallInput:(CreateMakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fromCountryCode |  ``` Required ```  | from country code |
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| toCountryCode |  ``` Required ```  | To cuntry code number |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| statusCallBackMethod |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallBackUrl |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heartBeatUrl |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed tim |
| heartBeatMethod |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) Message360 should wait while the call is ringing before canceling the call |
| playDtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hideCallerId |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| recordCallBackUrl |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| recordCallBackMethod |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribeCallBackUrl |  ``` Optional ```  | Transcription parameters will be sent here upon completion |
| ifMachine |  ``` Optional ```  | How Message360 should handle the receiving numbers voicemail machine |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateMakeCallInput *input = [[CreateMakeCallInput alloc]init];
    input.fromCountryCode = @"FromCountryCode";
    input.from = @"From";
    input.toCountryCode = @"ToCountryCode";
    input.to = @"To";
    input.url = @"Url";
    input.method = GET;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = GET;
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = true;
    input.timeout = 203;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = true;
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";
    input.ifMachine = CONTINUE;
    input.responseType = @"ResponseType";

    [self.call createMakeCallAsyncWithCreateMakeCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_calls_async_with_create_list_calls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.createListCallsAsyncWithCreateListCallsInput") createListCallsAsyncWithCreateListCallsInput

> A list of calls associated with your Message360 account


```objc
function createListCallsAsyncWithCreateListCallsInput:(CreateListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Only list calls to this number |
| from |  ``` Optional ```  | Only list calls from this number |
| dateCreated |  ``` Optional ```  | Only list calls starting within the specified date range |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListCallsInput *input = [[CreateListCallsInput alloc]init];
    input.page = 203;
    input.pageSize = 203;
    input.to = @"To";
    input.from = @"From";
    input.dateCreated = @"DateCreated";
    input.responseType = @"ResponseType";

    [self.call createListCallsAsyncWithCreateListCallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="web_rtc_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebRTCController") WebRTCController

#### Get singleton instance
```objc
WebRTC* webRTC = [[WebRTC alloc]init] ;
```

#### <a name="create_check_funds_async_with_create_check_funds_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.createCheckFundsAsyncWithCreateCheckFundsInput") createCheckFundsAsyncWithCreateCheckFundsInput

> TODO: Add a method description


```objc
function createCheckFundsAsyncWithCreateCheckFundsInput:(CreateCheckFundsInput*) input
                completionBlock:(CompletedPostCheckFunds) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSid |  ``` Required ```  | Your message360 Account SID |
| authToken |  ``` Required ```  | Your message360 Token |





#### Example Usage

```objc
    // Parameters for the API call
    CreateCheckFundsInput *input = [[CreateCheckFundsInput alloc]init];
    input.accountSid = @"account_sid";
    input.authToken = @"auth_token";

    [self.webRTC createCheckFundsAsyncWithCreateCheckFundsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_token_async_with_create_token_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.createTokenAsyncWithCreateTokenInput") createTokenAsyncWithCreateTokenInput

> message360 webrtc


```objc
function createTokenAsyncWithCreateTokenInput:(CreateTokenInput*) input
                completionBlock:(CompletedPostCreateToken) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSid |  ``` Required ```  | Your message360 Account SID |
| authToken |  ``` Required ```  | Your message360 Token |
| username |  ``` Required ```  | WebRTC username authentication |
| password |  ``` Required ```  | WebRTC password authentication |





#### Example Usage

```objc
    // Parameters for the API call
    CreateTokenInput *input = [[CreateTokenInput alloc]init];
    input.accountSid = @"account_sid";
    input.authToken = @"auth_token";
    input.username = @"username";
    input.password = @"password";

    [self.webRTC createTokenAsyncWithCreateTokenInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

#### Get singleton instance
```objc
SubAccount* subAccount = [[SubAccount alloc]init] ;
```

#### <a name="create_sub_account_async_with_create_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createSubAccountAsyncWithCreateSubAccountInput") createSubAccountAsyncWithCreateSubAccountInput

> Create a sub user account under the parent account


```objc
function createSubAccountAsyncWithCreateSubAccountInput:(CreateSubAccountInput*) input
                completionBlock:(CompletedPostCreateSubAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| firstName |  ``` Required ```  | Sub account user first name |
| lastName |  ``` Required ```  | sub account user last name |
| email |  ``` Required ```  | Sub account email address |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSubAccountInput *input = [[CreateSubAccountInput alloc]init];
    input.firstName = @"FirstName";
    input.lastName = @"LastName";
    input.email = @"Email";
    input.responseType = @"ResponseType";

    [self.subAccount createSubAccountAsyncWithCreateSubAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_suspend_sub_account_async_with_create_suspend_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createSuspendSubAccountAsyncWithCreateSuspendSubAccountInput") createSuspendSubAccountAsyncWithCreateSuspendSubAccountInput

> Suspend or unsuspend


```objc
function createSuspendSubAccountAsyncWithCreateSuspendSubAccountInput:(CreateSuspendSubAccountInput*) input
                completionBlock:(CompletedPostSuspendSubAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| activate |  ``` Required ```  ``` DefaultValue ```  | 0 to suspend or 1 to activate |
| responseType |  ``` Optional ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSuspendSubAccountInput *input = [[CreateSuspendSubAccountInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.activate = DEACTIVATE;
    input.responseType = @"ResponseType";

    [self.subAccount createSuspendSubAccountAsyncWithCreateSuspendSubAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_sub_account_async_with_create_delete_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createDeleteSubAccountAsyncWithCreateDeleteSubAccountInput") createDeleteSubAccountAsyncWithCreateDeleteSubAccountInput

> Delete sub account or merge numbers into parent


```objc
function createDeleteSubAccountAsyncWithCreateDeleteSubAccountInput:(CreateDeleteSubAccountInput*) input
                completionBlock:(CompletedPostDeleteSubAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be deleted |
| mergeNumber |  ``` Required ```  ``` DefaultValue ```  | 0 to delete or 1 to merge numbers to parent account. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteSubAccountInput *input = [[CreateDeleteSubAccountInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.mergeNumber = DELETE;
    input.responseType = @"ResponseType";

    [self.subAccount createDeleteSubAccountAsyncWithCreateDeleteSubAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

#### Get singleton instance
```objc
Address* address = [[Address alloc]init] ;
```

#### <a name="create_address_async_with_create_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createAddressAsyncWithCreateAddressInput") createAddressAsyncWithCreateAddressInput

> To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.


```objc
function createAddressAsyncWithCreateAddressInput:(CreateAddressInput*) input
                completionBlock:(CompletedPostCreateAddress) onCompleted(input)
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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateAddressInput *input = [[CreateAddressInput alloc]init];
    input.name = @"Name";
    input.address = @"Address";
    input.country = @"Country";
    input.state = @"State";
    input.city = @"City";
    input.zip = @"Zip";
    input.description = @"Description";
    input.email = @"email";
    input.phone = @"Phone";
    input.responseType = @"ResponseType";

    [self.address createAddressAsyncWithCreateAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_address_async_with_create_delete_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createDeleteAddressAsyncWithCreateDeleteAddressInput") createDeleteAddressAsyncWithCreateDeleteAddressInput

> To delete Address to your address book


```objc
function createDeleteAddressAsyncWithCreateDeleteAddressInput:(CreateDeleteAddressInput*) input
                completionBlock:(CompletedPostDeleteAddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressSID |  ``` Required ```  | The identifier of the address to be deleted. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteAddressInput *input = [[CreateDeleteAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address createDeleteAddressAsyncWithCreateDeleteAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_verify_address_async_with_create_verify_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createVerifyAddressAsyncWithCreateVerifyAddressInput") createVerifyAddressAsyncWithCreateVerifyAddressInput

> Validates an address given.


```objc
function createVerifyAddressAsyncWithCreateVerifyAddressInput:(CreateVerifyAddressInput*) input
                completionBlock:(CompletedPostVerifyAddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressSID |  ``` Required ```  | The identifier of the address to be verified. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateVerifyAddressInput *input = [[CreateVerifyAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address createVerifyAddressAsyncWithCreateVerifyAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_address_async_with_create_list_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createListAddressAsyncWithCreateListAddressInput") createListAddressAsyncWithCreateListAddressInput

> List All Address 


```objc
function createListAddressAsyncWithCreateListAddressInput:(CreateListAddressInput*) input
                completionBlock:(CompletedPostListAddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  ``` DefaultValue ```  | Return requested # of items starting the value, default=0, must be an integer |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressSID |  ``` Optional ```  | addresses Sid |
| dateCreated |  ``` Optional ```  | date created address. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListAddressInput *input = [[CreateListAddressInput alloc]init];
    input.page = 203;
    input.pageSize = 203;
    input.addressSID = @"AddressSID";
    input.dateCreated = @"DateCreated";
    input.responseType = @"ResponseType";

    [self.address createListAddressAsyncWithCreateListAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_address_async_with_create_view_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createViewAddressAsyncWithCreateViewAddressInput") createViewAddressAsyncWithCreateViewAddressInput

> View Address Specific address Book by providing the address id


```objc
function createViewAddressAsyncWithCreateViewAddressInput:(CreateViewAddressInput*) input
                completionBlock:(CompletedPostViewAddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressSID |  ``` Required ```  | The identifier of the address to be retrieved. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewAddressInput *input = [[CreateViewAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address createViewAddressAsyncWithCreateViewAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

#### Get singleton instance
```objc
PhoneNumber* phoneNumber = [[PhoneNumber alloc]init] ;
```

#### <a name="update_phone_number_async_with_update_phone_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.updatePhoneNumberAsyncWithUpdatePhoneNumberInput") updatePhoneNumberAsyncWithUpdatePhoneNumberInput

> Update Phone Number Details


```objc
function updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | TODO: Add a parameter description |
| friendlyName |  ``` Optional ```  | TODO: Add a parameter description |
| voiceUrl |  ``` Optional ```  | URL requested once the call connects |
| voiceMethod |  ``` Optional ```  | TODO: Add a parameter description |
| voiceFallbackUrl |  ``` Optional ```  | URL requested if the voice URL is not available |
| voiceFallbackMethod |  ``` Optional ```  | TODO: Add a parameter description |
| hangupCallback |  ``` Optional ```  | TODO: Add a parameter description |
| hangupCallbackMethod |  ``` Optional ```  | TODO: Add a parameter description |
| heartbeatUrl |  ``` Optional ```  | URL requested once the call connects |
| heartbeatMethod |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time |
| smsUrl |  ``` Optional ```  | URL requested when an SMS is received |
| smsMethod |  ``` Optional ```  | TODO: Add a parameter description |
| smsFallbackUrl |  ``` Optional ```  | URL requested once the call connects |
| smsFallbackMethod |  ``` Optional ```  | URL requested if the sms URL is not available |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    UpdatePhoneNumberInput *input = [[UpdatePhoneNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.friendlyName = @"FriendlyName";
    input.voiceUrl = @"VoiceUrl";
    input.voiceMethod = GET;
    input.voiceFallbackUrl = @"VoiceFallbackUrl";
    input.voiceFallbackMethod = GET;
    input.hangupCallback = @"HangupCallback";
    input.hangupCallbackMethod = GET;
    input.heartbeatUrl = @"HeartbeatUrl";
    input.heartbeatMethod = GET;
    input.smsUrl = @"SmsUrl";
    input.smsMethod = GET;
    input.smsFallbackUrl = @"SmsFallbackUrl";
    input.smsFallbackMethod = GET;
    input.responseType = @"ResponseType";

    [self.phoneNumber updatePhoneNumberAsyncWithUpdatePhoneNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_buy_number_async_with_create_buy_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createBuyNumberAsyncWithCreateBuyNumberInput") createBuyNumberAsyncWithCreateBuyNumberInput

> Buy Phone Number 


```objc
function createBuyNumberAsyncWithCreateBuyNumberInput:(CreateBuyNumberInput*) input
                completionBlock:(CompletedPostBuyNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | Phone number to be purchase |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateBuyNumberInput *input = [[CreateBuyNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber createBuyNumberAsyncWithCreateBuyNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_release_number_async_with_create_release_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createReleaseNumberAsyncWithCreateReleaseNumberInput") createReleaseNumberAsyncWithCreateReleaseNumberInput

> Release number from account


```objc
function createReleaseNumberAsyncWithCreateReleaseNumberInput:(CreateReleaseNumberInput*) input
                completionBlock:(CompletedPostReleaseNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | Phone number to be relase |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateReleaseNumberInput *input = [[CreateReleaseNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber createReleaseNumberAsyncWithCreateReleaseNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_number_details_async_with_create_view_number_details_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput") createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput

> Get Phone Number Details


```objc
function createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput:(CreateViewNumberDetailsInput*) input
                completionBlock:(CompletedPostViewNumberDetails) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | Get Phone number Detail |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewNumberDetailsInput *input = [[CreateViewNumberDetailsInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber createViewNumberDetailsAsyncWithCreateViewNumberDetailsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_number_async_with_create_list_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createListNumberAsyncWithCreateListNumberInput") createListNumberAsyncWithCreateListNumberInput

> List Account's Phone number details


```objc
function createListNumberAsyncWithCreateListNumberInput:(CreateListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| numberType |  ``` Optional ```  | TODO: Add a parameter description |
| friendlyName |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListNumberInput *input = [[CreateListNumberInput alloc]init];
    input.page = 40;
    input.pageSize = 40;
    input.numberType = ALL;
    input.friendlyName = @"FriendlyName";
    input.responseType = @"ResponseType";

    [self.phoneNumber createListNumberAsyncWithCreateListNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_available_phone_number_async_with_create_available_phone_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput") createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput

> Available Phone Number


```objc
function createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput:(CreateAvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numberType |  ``` Required ```  | Number type either SMS,Voice or all |
| areaCode |  ``` Required ```  | Phone Number Area Code |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Page Size |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateAvailablePhoneNumberInput *input = [[CreateAvailablePhoneNumberInput alloc]init];
    input.numberType = ALL;
    input.areaCode = @"AreaCode";
    input.pageSize = 40;
    input.responseType = @"ResponseType";

    [self.phoneNumber createAvailablePhoneNumberAsyncWithCreateAvailablePhoneNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

#### Get singleton instance
```objc
Recording* recording = [[Recording alloc]init] ;
```

#### <a name="create_list_recording_async_with_create_list_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createListRecordingAsyncWithCreateListRecordingInput") createListRecordingAsyncWithCreateListRecordingInput

> List out Recordings


```objc
function createListRecordingAsyncWithCreateListRecordingInput:(CreateListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| dateCreated |  ``` Optional ```  | TODO: Add a parameter description |
| callSid |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListRecordingInput *input = [[CreateListRecordingInput alloc]init];
    input.page = 40;
    input.pageSize = 40;
    input.dateCreated = @"DateCreated";
    input.callSid = @"CallSid";
    input.responseType = @"ResponseType";

    [self.recording createListRecordingAsyncWithCreateListRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_delete_recording_async_with_create_delete_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createDeleteRecordingAsyncWithCreateDeleteRecordingInput") createDeleteRecordingAsyncWithCreateDeleteRecordingInput

> Delete Recording Record


```objc
function createDeleteRecordingAsyncWithCreateDeleteRecordingInput:(CreateDeleteRecordingInput*) input
                completionBlock:(CompletedPostDeleteRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | Unique Recording Sid to be delete |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateDeleteRecordingInput *input = [[CreateDeleteRecordingInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.recording createDeleteRecordingAsyncWithCreateDeleteRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_recording_async_with_create_view_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.createViewRecordingAsyncWithCreateViewRecordingInput") createViewRecordingAsyncWithCreateViewRecordingInput

> View a specific Recording


```objc
function createViewRecordingAsyncWithCreateViewRecordingInput:(CreateViewRecordingInput*) input
                completionBlock:(CompletedPostViewRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | Search Recording sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewRecordingInput *input = [[CreateViewRecordingInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.recording createViewRecordingAsyncWithCreateViewRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

#### Get singleton instance
```objc
SMS* sMS = [[SMS alloc]init] ;
```

#### <a name="create_list_inbound_sms_async_with_create_list_inbound_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createListInboundSMSAsyncWithCreateListInboundSMSInput") createListInboundSMSAsyncWithCreateListInboundSMSInput

> List All Inbound SMS


```objc
function createListInboundSMSAsyncWithCreateListInboundSMSInput:(CreateListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound SMS |
| to |  ``` Optional ```  | To Number to get Inbound SMS |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListInboundSMSInput *input = [[CreateListInboundSMSInput alloc]init];
    input.page = 40;
    input.pagesize = @"pagesize";
    input.from = @"from";
    input.to = @"to";
    input.responseType = @"ResponseType";

    [self.sMS createListInboundSMSAsyncWithCreateListInboundSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_sms_async_with_create_list_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createListSMSAsyncWithCreateListSMSInput") createListSMSAsyncWithCreateListSMSInput

> List All SMS


```objc
function createListSMSAsyncWithCreateListSMSInput:(CreateListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListSMSInput *input = [[CreateListSMSInput alloc]init];
    input.page = 40;
    input.pagesize = 40;
    input.from = @"from";
    input.to = @"to";
    input.datesent = @"datesent";
    input.responseType = @"ResponseType";

    [self.sMS createListSMSAsyncWithCreateListSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_send_sms_async_with_create_send_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createSendSMSAsyncWithCreateSendSMSInput") createSendSMSAsyncWithCreateSendSMSInput

> Send an SMS from a message360 number


```objc
function createSendSMSAsyncWithCreateSendSMSInput:(CreateSendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fromcountrycode |  ``` Required ```  ``` DefaultValue ```  | From Country Code |
| from |  ``` Required ```  | SMS enabled Message360 number to send this message from |
| tocountrycode |  ``` Required ```  ``` DefaultValue ```  | To country code |
| to |  ``` Required ```  | Number to send the SMS to |
| body |  ``` Required ```  | Text Message To Send |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSendSMSInput *input = [[CreateSendSMSInput alloc]init];
    input.fromcountrycode = 40;
    input.from = @"from";
    input.tocountrycode = 40;
    input.to = @"to";
    input.body = @"body";
    input.method = GET;
    input.messagestatuscallback = @"messagestatuscallback";
    input.responseType = @"ResponseType";

    [self.sMS createSendSMSAsyncWithCreateSendSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_sms_async_with_create_view_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.createViewSMSAsyncWithCreateViewSMSInput") createViewSMSAsyncWithCreateViewSMSInput

> View a Particular SMS


```objc
function createViewSMSAsyncWithCreateViewSMSInput:(CreateViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewSMSInput *input = [[CreateViewSMSInput alloc]init];
    input.messagesid = @"messagesid";
    input.responseType = @"ResponseType";

    [self.sMS createViewSMSAsyncWithCreateViewSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

#### Get singleton instance
```objc
Transcription* transcription = [[Transcription alloc]init] ;
```

#### <a name="create_audio_url_transcription_async_with_create_audio_url_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createAudioURLTranscriptionAsyncWithCreateAudioURLTranscriptionInput") createAudioURLTranscriptionAsyncWithCreateAudioURLTranscriptionInput

> Audio URL Transcriptions


```objc
function createAudioURLTranscriptionAsyncWithCreateAudioURLTranscriptionInput:(CreateAudioURLTranscriptionInput*) input
                completionBlock:(CompletedPostAudioURLTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audioUrl |  ``` Required ```  | Audio url |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateAudioURLTranscriptionInput *input = [[CreateAudioURLTranscriptionInput alloc]init];
    input.audioUrl = @"AudioUrl";
    input.responseType = @"ResponseType";

    [self.transcription createAudioURLTranscriptionAsyncWithCreateAudioURLTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_recording_transcription_async_with_create_recording_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createRecordingTranscriptionAsyncWithCreateRecordingTranscriptionInput") createRecordingTranscriptionAsyncWithCreateRecordingTranscriptionInput

> Recording Transcriptions


```objc
function createRecordingTranscriptionAsyncWithCreateRecordingTranscriptionInput:(CreateRecordingTranscriptionInput*) input
                completionBlock:(CompletedPostRecordingTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | Unique Recording sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateRecordingTranscriptionInput *input = [[CreateRecordingTranscriptionInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.transcription createRecordingTranscriptionAsyncWithCreateRecordingTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_view_transcription_async_with_create_view_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createViewTranscriptionAsyncWithCreateViewTranscriptionInput") createViewTranscriptionAsyncWithCreateViewTranscriptionInput

> View Specific Transcriptions


```objc
function createViewTranscriptionAsyncWithCreateViewTranscriptionInput:(CreateViewTranscriptionInput*) input
                completionBlock:(CompletedPostViewTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionSid |  ``` Required ```  | Unique Transcription ID |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewTranscriptionInput *input = [[CreateViewTranscriptionInput alloc]init];
    input.transcriptionSid = @"TranscriptionSid";
    input.responseType = @"ResponseType";

    [self.transcription createViewTranscriptionAsyncWithCreateViewTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="create_list_transcription_async_with_create_list_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.createListTranscriptionAsyncWithCreateListTranscriptionInput") createListTranscriptionAsyncWithCreateListTranscriptionInput

> Get All transcriptions


```objc
function createListTranscriptionAsyncWithCreateListTranscriptionInput:(CreateListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | TODO: Add a parameter description |
| pageSize |  ``` Optional ```  | TODO: Add a parameter description |
| status |  ``` Optional ```  | TODO: Add a parameter description |
| dateTranscribed |  ``` Optional ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListTranscriptionInput *input = [[CreateListTranscriptionInput alloc]init];
    input.page = 40;
    input.pageSize = 40;
    input.status = INPROGRESS;
    input.dateTranscribed = @"DateTranscribed";
    input.responseType = @"ResponseType";

    [self.transcription createListTranscriptionAsyncWithCreateListTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

#### Get singleton instance
```objc
Usage* usage = [[Usage alloc]init] ;
```

#### <a name="create_list_usage_async_with_create_list_usage_input"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.createListUsageAsyncWithCreateListUsageInput") createListUsageAsyncWithCreateListUsageInput

> Get all usage 


```objc
function createListUsageAsyncWithCreateListUsageInput:(CreateListUsageInput*) input
                completionBlock:(CompletedPostListUsage) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| productCode |  ``` Required ```  ``` DefaultValue ```  | Product Code |
| startDate |  ``` Required ```  ``` DefaultValue ```  | Start Usage Date |
| endDate |  ``` Required ```  ``` DefaultValue ```  | End Usage Date |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateListUsageInput *input = [[CreateListUsageInput alloc]init];
    input.productCode = ALL;
    input.startDate = @"startDate";
    input.endDate = @"endDate";
    input.responseType = @"ResponseType";

    [self.usage createListUsageAsyncWithCreateListUsageInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

#### Get singleton instance
```objc
Account* account = [[Account alloc]init] ;
```

#### <a name="create_view_account_async_with_create_view_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.createViewAccountAsyncWithCreateViewAccountInput") createViewAccountAsyncWithCreateViewAccountInput

> Display Account Description


```objc
function createViewAccountAsyncWithCreateViewAccountInput:(CreateViewAccountInput*) input
                completionBlock:(CompletedPostViewAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | TODO: Add a parameter description |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateViewAccountInput *input = [[CreateViewAccountInput alloc]init];
    input.date = @"Date";
    input.responseType = @"ResponseType";

    [self.account createViewAccountAsyncWithCreateViewAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



