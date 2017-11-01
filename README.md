# Getting started

message360 API version 3

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

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [TranscriptionController](#transcription_controller)
* [PhoneNumberController](#phone_number_controller)
* [UsageController](#usage_controller)
* [WebRTCController](#web_rtc_controller)
* [RecordingController](#recording_controller)
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [CallController](#call_controller)
* [CarrierController](#carrier_controller)
* [AddressController](#address_controller)
* [SubAccountController](#sub_account_controller)
* [AccountController](#account_controller)
* [ShortCodeController](#short_code_controller)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance
```objc
SharedShortCode* sharedShortCode = [[SharedShortCode alloc]init] ;
```

### <a name="view_template_async_with_view_template_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.viewTemplateAsyncWithViewTemplateInput") viewTemplateAsyncWithViewTemplateInput

> View a Shared ShortCode Template


```objc
function viewTemplateAsyncWithViewTemplateInput:(ViewTemplateInput*) input
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
    ViewTemplateInput *input = [[ViewTemplateInput alloc]init];
    input.templateid = 123456789;
    input.responseType = @"ResponseType";

    [self.sharedShortCode viewTemplateAsyncWithViewTemplateInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_shared_shortcodes_async_with_view_shared_shortcodes_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.viewSharedShortcodesAsyncWithViewSharedShortcodesInput") viewSharedShortcodesAsyncWithViewSharedShortcodesInput

> View a ShortCode Message


```objc
function viewSharedShortcodesAsyncWithViewSharedShortcodesInput:(ViewSharedShortcodesInput*) input
                completionBlock:(CompletedPostViewSharedShortcodes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewSharedShortcodesInput *input = [[ViewSharedShortcodesInput alloc]init];
    input.messagesid = @"messagesid";
    input.responseType = @"ResponseType";

    [self.sharedShortCode viewSharedShortcodesAsyncWithViewSharedShortcodesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_outbound_shared_shortcodes_async_with_list_outbound_shared_shortcodes_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.listOutboundSharedShortcodesAsyncWithListOutboundSharedShortcodesInput") listOutboundSharedShortcodesAsyncWithListOutboundSharedShortcodesInput

> List ShortCode Messages


```objc
function listOutboundSharedShortcodesAsyncWithListOutboundSharedShortcodesInput:(ListOutboundSharedShortcodesInput*) input
                completionBlock:(CompletedPostListOutboundSharedShortcodes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    ListOutboundSharedShortcodesInput *input = [[ListOutboundSharedShortcodesInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pagesize = 141;
    input.from = @"from";
    input.to = @"to";
    input.datesent = @"datesent";

    [self.sharedShortCode listOutboundSharedShortcodesAsyncWithListOutboundSharedShortcodesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_inbound_shared_shortcodes_async_with_list_inbound_shared_shortcodes_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput") listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput

> List All Inbound ShortCode


```objc
function listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput:(ListInboundSharedShortcodesInput*) input
                completionBlock:(CompletedPostListInboundSharedShortcodes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| dateReceived |  ``` Optional ```  | Only list messages sent with the specified date |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundSharedShortcodesInput *input = [[ListInboundSharedShortcodesInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pagesize = 141;
    input.from = @"from";
    input.shortcode = @"Shortcode";
    input.dateReceived = @"DateReceived";

    [self.sharedShortCode listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="send_shared_shortcode_async_with_send_shared_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.sendSharedShortcodeAsyncWithSendSharedShortcodeInput") sendSharedShortcodeAsyncWithSendSharedShortcodeInput

> Send an SMS from a message360 ShortCode


```objc
function sendSharedShortcodeAsyncWithSendSharedShortcodeInput:(SendSharedShortcodeInput*) input
                completionBlock:(CompletedPostSendSharedShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| data |  ``` Required ```  | format of your data, example: {companyname}:test,{otpcode}:1234 |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |





#### Example Usage

```objc
    // Parameters for the API call
    SendSharedShortcodeInput *input = [[SendSharedShortcodeInput alloc]init];
    input.shortcode = @"shortcode";
    input.to = @"to";
    input.templateid = 123456789;
    input.responseType = @"ResponseType";
    input.data = @"data";
    input.method = GET;
    input.messageStatusCallback = @"MessageStatusCallback";

    [self.sharedShortCode sendSharedShortcodeAsyncWithSendSharedShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_templates_async_with_list_templates_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.listTemplatesAsyncWithListTemplatesInput") listTemplatesAsyncWithListTemplatesInput

> List Shortcode Templates by Type


```objc
function listTemplatesAsyncWithListTemplatesInput:(ListTemplatesInput*) input
                completionBlock:(CompletedPostListTemplates) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| type |  ``` Required ```  ``` DefaultValue ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| shortcode |  ``` Optional ```  | Only list templates of type |





#### Example Usage

```objc
    // Parameters for the API call
    ListTemplatesInput *input = [[ListTemplatesInput alloc]init];
    input.responseType = @"ResponseType";
    input.type = @"type";
    input.page = 141;
    input.pagesize = 141;
    input.shortcode = @"Shortcode";

    [self.sharedShortCode listTemplatesAsyncWithListTemplatesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_keyword_async_with_view_keyword_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.viewKeywordAsyncWithViewKeywordInput") viewKeywordAsyncWithViewKeywordInput

> View a set of properties for a single keyword.


```objc
function viewKeywordAsyncWithViewKeywordInput:(ViewKeywordInput*) input
                completionBlock:(CompletedPostViewKeyword) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| keywordid |  ``` Required ```  | The unique identifier of each keyword |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewKeywordInput *input = [[ViewKeywordInput alloc]init];
    input.keywordid = @"Keywordid";
    input.responseType = @"ResponseType";

    [self.sharedShortCode viewKeywordAsyncWithViewKeywordInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_keyword_async_with_list_keyword_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.listKeywordAsyncWithListKeywordInput") listKeywordAsyncWithListKeywordInput

> Retrieve a list of keywords associated with your message360 account.


```objc
function listKeywordAsyncWithListKeywordInput:(ListKeywordInput*) input
                completionBlock:(CompletedPostListKeyword) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    ListKeywordInput *input = [[ListKeywordInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pageSize = 141;
    input.keyword = @"Keyword";
    input.shortcode = 141;

    [self.sharedShortCode listKeywordAsyncWithListKeywordInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_assignement_async_with_view_assignement_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.viewAssignementAsyncWithViewAssignementInput") viewAssignementAsyncWithViewAssignementInput

> The response returned here contains all resource properties associated with the given Shortcode.


```objc
function viewAssignementAsyncWithViewAssignementInput:(ViewAssignementInput*) input
                completionBlock:(CompletedPostViewAssignement) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your message360 account |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewAssignementInput *input = [[ViewAssignementInput alloc]init];
    input.shortcode = @"Shortcode";
    input.responseType = @"ResponseType";

    [self.sharedShortCode viewAssignementAsyncWithViewAssignementInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_assignment_async_with_list_assignment_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.listAssignmentAsyncWithListAssignmentInput") listAssignmentAsyncWithListAssignmentInput

> Retrieve a list of shortcode assignment associated with your message360 account.


```objc
function listAssignmentAsyncWithListAssignmentInput:(ListAssignmentInput*) input
                completionBlock:(CompletedPostListAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    ListAssignmentInput *input = [[ListAssignmentInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pageSize = 141;
    input.shortcode = @"Shortcode";

    [self.sharedShortCode listAssignmentAsyncWithListAssignmentInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_assignment_async_with_update_assignment_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.updateAssignmentAsyncWithUpdateAssignmentInput") updateAssignmentAsyncWithUpdateAssignmentInput

> TODO: Add a method description


```objc
function updateAssignmentAsyncWithUpdateAssignmentInput:(UpdateAssignmentInput*) input
                completionBlock:(CompletedPostUpdateAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid shortcode to your message360 account |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendlyName |  ``` Optional ```  | User generated name of the shortcode |
| callbackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| callbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| fallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |
| fallbackUrlMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |





#### Example Usage

```objc
    // Parameters for the API call
    UpdateAssignmentInput *input = [[UpdateAssignmentInput alloc]init];
    input.shortcode = @"Shortcode";
    input.responseType = @"ResponseType";
    input.friendlyName = @"FriendlyName";
    input.callbackUrl = @"CallbackUrl";
    input.callbackMethod = GET;
    input.fallbackUrl = @"FallbackUrl";
    input.fallbackUrlMethod = GET;

    [self.sharedShortCode updateAssignmentAsyncWithUpdateAssignmentInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance
```objc
Conference* conference = [[Conference alloc]init] ;
```

### <a name="deaf_mute_participant_async_with_deaf_mute_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.deafMuteParticipantAsyncWithDeafMuteParticipantInput") deafMuteParticipantAsyncWithDeafMuteParticipantInput

> Deaf Mute Participant


```objc
function deafMuteParticipantAsyncWithDeafMuteParticipantInput:(DeafMuteParticipantInput*) input
                completionBlock:(CompletedPostDeafMuteParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | ID of the active conference |
| participantSid |  ``` Required ```  | ID of an active participant |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| muted |  ``` Optional ```  | Mute a participant |
| deaf |  ``` Optional ```  | Make it so a participant cant hear |





#### Example Usage

```objc
    // Parameters for the API call
    DeafMuteParticipantInput *input = [[DeafMuteParticipantInput alloc]init];
    input.conferenceSid = @"conferenceSid";
    input.participantSid = @"ParticipantSid";
    input.responseType = @"ResponseType";
    input.muted = true;
    input.deaf = true;

    [self.conference deafMuteParticipantAsyncWithDeafMuteParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_participant_async_with_view_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.viewParticipantAsyncWithViewParticipantInput") viewParticipantAsyncWithViewParticipantInput

> View Participant


```objc
function viewParticipantAsyncWithViewParticipantInput:(ViewParticipantInput*) input
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
    ViewParticipantInput *input = [[ViewParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.responseType = @"ResponseType";

    [self.conference viewParticipantAsyncWithViewParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="add_participant_async_with_add_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.addParticipantAsyncWithAddParticipantInput") addParticipantAsyncWithAddParticipantInput

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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| muted |  ``` Optional ```  | add muted |
| deaf |  ``` Optional ```  | add without volume |





#### Example Usage

```objc
    // Parameters for the API call
    AddParticipantInput *input = [[AddParticipantInput alloc]init];
    input.conferencesid = @"conferencesid";
    input.participantnumber = @"participantnumber";
    input.responseType = @"ResponseType";
    input.muted = true;
    input.deaf = true;

    [self.conference addParticipantAsyncWithAddParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_conference_async_with_view_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.viewConferenceAsyncWithViewConferenceInput") viewConferenceAsyncWithViewConferenceInput

> View Conference


```objc
function viewConferenceAsyncWithViewConferenceInput:(ViewConferenceInput*) input
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
    ViewConferenceInput *input = [[ViewConferenceInput alloc]init];
    input.conferencesid = @"conferencesid";
    input.responseType = @"ResponseType";

    [self.conference viewConferenceAsyncWithViewConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conference_async_with_create_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferenceAsyncWithCreateConferenceInput") createConferenceAsyncWithCreateConferenceInput

> Here you can experiment with initiating a conference call through message360 and view the request response generated when doing so.


```objc
function createConferenceAsyncWithCreateConferenceInput:(CreateConferenceInput*) input
                completionBlock:(CompletedPostCreateConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| recordCallbackUrl |  ``` Required ```  | Recording parameters will be sent here upon completion. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished. |
| statusCallBackMethod |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallBackUrl |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| record |  ``` Optional ```  | Specifies if the conference should be recorded. |
| recordCallbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once conference connects. |
| schdeuleTime |  ``` Optional ```  | Schedule conference in future. Schedule time must be greater than current time |
| timeout |  ``` Optional ```  | The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateConferenceInput *input = [[CreateConferenceInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.method = POST;
    input.recordCallbackUrl = @"RecordCallbackUrl";
    input.responseType = @"ResponseType";
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = GET;
    input.record = true;
    input.recordCallbackMethod = GET;
    input.schdeuleTime = @"SchdeuleTime";
    input.timeout = 141;

    [self.conference createConferenceAsyncWithCreateConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="hangup_participant_async_with_hangup_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.hangupParticipantAsyncWithHangupParticipantInput") hangupParticipantAsyncWithHangupParticipantInput

> Remove a participant from a conference.


```objc
function hangupParticipantAsyncWithHangupParticipantInput:(HangupParticipantInput*) input
                completionBlock:(CompletedPostHangupParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    HangupParticipantInput *input = [[HangupParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.responseType = @"ResponseType";

    [self.conference hangupParticipantAsyncWithHangupParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="play_conference_audio_async_with_play_conference_audio_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.playConferenceAudioAsyncWithPlayConferenceAudioInput") playConferenceAudioAsyncWithPlayConferenceAudioInput

> Play an audio file during a conference.


```objc
function playConferenceAudioAsyncWithPlayConferenceAudioInput:(PlayConferenceAudioInput*) input
                completionBlock:(CompletedPostPlayConferenceAudio) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantSid |  ``` Required ```  | The unique identifier for a participant object. |
| audioUrl |  ``` Required ```  | The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    PlayConferenceAudioInput *input = [[PlayConferenceAudioInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.audioUrl = MP3;
    input.responseType = @"ResponseType";

    [self.conference playConferenceAudioAsyncWithPlayConferenceAudioInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_participant_async_with_list_participant_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.listParticipantAsyncWithListParticipantInput") listParticipantAsyncWithListParticipantInput

> List Participant


```objc
function listParticipantAsyncWithListParticipantInput:(ListParticipantInput*) input
                completionBlock:(CompletedPostListParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | unique conference sid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | page number |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Amount of records to return per page |
| muted |  ``` Optional ```  | Participants that are muted |
| deaf |  ``` Optional ```  | Participants cant hear |





#### Example Usage

```objc
    // Parameters for the API call
    ListParticipantInput *input = [[ListParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pagesize = 141;
    input.muted = true;
    input.deaf = true;

    [self.conference listParticipantAsyncWithListParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_conference_async_with_list_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.listConferenceAsyncWithListConferenceInput") listConferenceAsyncWithListConferenceInput

> List Conference


```objc
function listConferenceAsyncWithListConferenceInput:(ListConferenceInput*) input
                completionBlock:(CompletedPostListConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| friendlyName |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| dateCreated |  ``` Optional ```  | Conference created date |





#### Example Usage

```objc
    // Parameters for the API call
    ListConferenceInput *input = [[ListConferenceInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pageSize = 141;
    input.friendlyName = @"FriendlyName";
    input.dateCreated = @"DateCreated";

    [self.conference listConferenceAsyncWithListConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance
```objc
Transcription* transcription = [[Transcription alloc]init] ;
```

### <a name="list_transcription_async_with_list_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.listTranscriptionAsyncWithListTranscriptionInput") listTranscriptionAsyncWithListTranscriptionInput

> Get All transcriptions


```objc
function listTranscriptionAsyncWithListTranscriptionInput:(ListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | page number |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Amount of data per page |
| status |  ``` Optional ```  | Transcription status |
| dateTranscribed |  ``` Optional ```  | Transcription date |





#### Example Usage

```objc
    // Parameters for the API call
    ListTranscriptionInput *input = [[ListTranscriptionInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 141;
    input.pageSize = 141;
    input.status = INPROGRESS;
    input.dateTranscribed = @"DateTranscribed";

    [self.transcription listTranscriptionAsyncWithListTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_transcription_async_with_view_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.viewTranscriptionAsyncWithViewTranscriptionInput") viewTranscriptionAsyncWithViewTranscriptionInput

> View Specific Transcriptions


```objc
function viewTranscriptionAsyncWithViewTranscriptionInput:(ViewTranscriptionInput*) input
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
    ViewTranscriptionInput *input = [[ViewTranscriptionInput alloc]init];
    input.transcriptionSid = @"TranscriptionSid";
    input.responseType = @"ResponseType";

    [self.transcription viewTranscriptionAsyncWithViewTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="recording_transcription_async_with_recording_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.recordingTranscriptionAsyncWithRecordingTranscriptionInput") recordingTranscriptionAsyncWithRecordingTranscriptionInput

> Recording Transcriptions


```objc
function recordingTranscriptionAsyncWithRecordingTranscriptionInput:(RecordingTranscriptionInput*) input
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
    RecordingTranscriptionInput *input = [[RecordingTranscriptionInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.transcription recordingTranscriptionAsyncWithRecordingTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="audio_url_transcription_async_with_audio_url_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.audioURLTranscriptionAsyncWithAudioURLTranscriptionInput") audioURLTranscriptionAsyncWithAudioURLTranscriptionInput

> Audio URL Transcriptions


```objc
function audioURLTranscriptionAsyncWithAudioURLTranscriptionInput:(AudioURLTranscriptionInput*) input
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
    AudioURLTranscriptionInput *input = [[AudioURLTranscriptionInput alloc]init];
    input.audioUrl = @"AudioUrl";
    input.responseType = @"ResponseType";

    [self.transcription audioURLTranscriptionAsyncWithAudioURLTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance
```objc
PhoneNumber* phoneNumber = [[PhoneNumber alloc]init] ;
```

### <a name="available_phone_number_async_with_available_phone_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.availablePhoneNumberAsyncWithAvailablePhoneNumberInput") availablePhoneNumberAsyncWithAvailablePhoneNumberInput

> Available Phone Number


```objc
function availablePhoneNumberAsyncWithAvailablePhoneNumberInput:(AvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numberType |  ``` Required ```  | Number type either SMS,Voice or all |
| areaCode |  ``` Required ```  | Phone Number Area Code |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Page Size |





#### Example Usage

```objc
    // Parameters for the API call
    AvailablePhoneNumberInput *input = [[AvailablePhoneNumberInput alloc]init];
    input.numberType = ALL;
    input.areaCode = @"AreaCode";
    input.responseType = @"ResponseType";
    input.pageSize = 232;

    [self.phoneNumber availablePhoneNumberAsyncWithAvailablePhoneNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_number_async_with_list_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.listNumberAsyncWithListNumberInput") listNumberAsyncWithListNumberInput

> List Account's Phone number details


```objc
function listNumberAsyncWithListNumberInput:(ListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| numberType |  ``` Optional ```  | SMS or Voice |
| friendlyName |  ``` Optional ```  | Friendly name of the number |





#### Example Usage

```objc
    // Parameters for the API call
    ListNumberInput *input = [[ListNumberInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pageSize = 232;
    input.numberType = ALL;
    input.friendlyName = @"FriendlyName";

    [self.phoneNumber listNumberAsyncWithListNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_number_details_async_with_view_number_details_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.viewNumberDetailsAsyncWithViewNumberDetailsInput") viewNumberDetailsAsyncWithViewNumberDetailsInput

> Get Phone Number Details


```objc
function viewNumberDetailsAsyncWithViewNumberDetailsInput:(ViewNumberDetailsInput*) input
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
    ViewNumberDetailsInput *input = [[ViewNumberDetailsInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber viewNumberDetailsAsyncWithViewNumberDetailsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="release_number_async_with_release_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.releaseNumberAsyncWithReleaseNumberInput") releaseNumberAsyncWithReleaseNumberInput

> Release number from account


```objc
function releaseNumberAsyncWithReleaseNumberInput:(ReleaseNumberInput*) input
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
    ReleaseNumberInput *input = [[ReleaseNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber releaseNumberAsyncWithReleaseNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="buy_number_async_with_buy_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.buyNumberAsyncWithBuyNumberInput") buyNumberAsyncWithBuyNumberInput

> Buy Phone Number 


```objc
function buyNumberAsyncWithBuyNumberInput:(BuyNumberInput*) input
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
    BuyNumberInput *input = [[BuyNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber buyNumberAsyncWithBuyNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_phone_number_async_with_update_phone_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.updatePhoneNumberAsyncWithUpdatePhoneNumberInput") updatePhoneNumberAsyncWithUpdatePhoneNumberInput

> Update Phone Number Details


```objc
function updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | The phone number to update |
| voiceUrl |  ``` Required ```  | URL requested once the call connects |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
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
| smsFallbackUrl |  ``` Optional ```  | URL requested once the call connects |
| smsFallbackMethod |  ``` Optional ```  | URL requested if the sms URL is not available |





#### Example Usage

```objc
    // Parameters for the API call
    UpdatePhoneNumberInput *input = [[UpdatePhoneNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.voiceUrl = @"VoiceUrl";
    input.responseType = @"ResponseType";
    input.friendlyName = @"FriendlyName";
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

    [self.phoneNumber updatePhoneNumberAsyncWithUpdatePhoneNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance
```objc
Usage* usage = [[Usage alloc]init] ;
```

### <a name="list_usage_async_with_list_usage_input"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.listUsageAsyncWithListUsageInput") listUsageAsyncWithListUsageInput

> Get all usage 


```objc
function listUsageAsyncWithListUsageInput:(ListUsageInput*) input
                completionBlock:(CompletedPostListUsage) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| productCode |  ``` Required ```  ``` DefaultValue ```  | Product Code |
| startDate |  ``` Required ```  ``` DefaultValue ```  | Start Usage Date |
| endDate |  ``` Required ```  ``` DefaultValue ```  | End Usage Date |





#### Example Usage

```objc
    // Parameters for the API call
    ListUsageInput *input = [[ListUsageInput alloc]init];
    input.responseType = @"ResponseType";
    input.productCode = ALL;
    input.startDate = @"startDate";
    input.endDate = @"endDate";

    [self.usage listUsageAsyncWithListUsageInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="web_rtc_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebRTCController") WebRTCController

### Get singleton instance
```objc
WebRTC* webRTC = [[WebRTC alloc]init] ;
```

### <a name="check_funds_async_with_check_funds_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.checkFundsAsyncWithCheckFundsInput") checkFundsAsyncWithCheckFundsInput

> TODO: Add a method description


```objc
function checkFundsAsyncWithCheckFundsInput:(CheckFundsInput*) input
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
    CheckFundsInput *input = [[CheckFundsInput alloc]init];
    input.accountSid = @"account_sid";
    input.authToken = @"auth_token";

    [self.webRTC checkFundsAsyncWithCheckFundsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_token_async_with_create_token_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.createTokenAsyncWithCreateTokenInput") createTokenAsyncWithCreateTokenInput

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

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance
```objc
Recording* recording = [[Recording alloc]init] ;
```

### <a name="view_recording_async_with_view_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.viewRecordingAsyncWithViewRecordingInput") viewRecordingAsyncWithViewRecordingInput

> View a specific Recording


```objc
function viewRecordingAsyncWithViewRecordingInput:(ViewRecordingInput*) input
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
    ViewRecordingInput *input = [[ViewRecordingInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.recording viewRecordingAsyncWithViewRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_recording_async_with_delete_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.deleteRecordingAsyncWithDeleteRecordingInput") deleteRecordingAsyncWithDeleteRecordingInput

> Delete Recording Record


```objc
function deleteRecordingAsyncWithDeleteRecordingInput:(DeleteRecordingInput*) input
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
    DeleteRecordingInput *input = [[DeleteRecordingInput alloc]init];
    input.recordingSid = @"RecordingSid";
    input.responseType = @"ResponseType";

    [self.recording deleteRecordingAsyncWithDeleteRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_recording_async_with_list_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.listRecordingAsyncWithListRecordingInput") listRecordingAsyncWithListRecordingInput

> List out Recordings


```objc
function listRecordingAsyncWithListRecordingInput:(ListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| dateCreated |  ``` Optional ```  | Recording date |
| callSid |  ``` Optional ```  | Call ID |





#### Example Usage

```objc
    // Parameters for the API call
    ListRecordingInput *input = [[ListRecordingInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pageSize = 232;
    input.dateCreated = @"DateCreated";
    input.callSid = @"CallSid";

    [self.recording listRecordingAsyncWithListRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance
```objc
Email* email = [[Email alloc]init] ;
```

### <a name="delete_spam_async_with_delete_spam_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteSpamAsyncWithDeleteSpamInput") deleteSpamAsyncWithDeleteSpamInput

> Deletes a email address marked as spam from the spam list


```objc
function deleteSpamAsyncWithDeleteSpamInput:(DeleteSpamInput*) input
                completionBlock:(CompletedPostDeleteSpam) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | Email address |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteSpamInput *input = [[DeleteSpamInput alloc]init];
    input.responseType = @"ResponseType";
    input.email = @"email";

    [self.email deleteSpamAsyncWithDeleteSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_block_async_with_delete_block_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteBlockAsyncWithDeleteBlockInput") deleteBlockAsyncWithDeleteBlockInput

> Deletes a blocked email


```objc
function deleteBlockAsyncWithDeleteBlockInput:(DeleteBlockInput*) input
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
    DeleteBlockInput *input = [[DeleteBlockInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email deleteBlockAsyncWithDeleteBlockInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="add_unsubscribes_async_with_add_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.addUnsubscribesAsyncWithAddUnsubscribesInput") addUnsubscribesAsyncWithAddUnsubscribesInput

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


### <a name="send_email_async_with_send_email_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.sendEmailAsyncWithSendEmailInput") sendEmailAsyncWithSendEmailInput

> Send out an email


```objc
function sendEmailAsyncWithSendEmailInput:(SendEmailInput*) input
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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| cc |  ``` Optional ```  | CC Email address |
| bcc |  ``` Optional ```  | BCC Email address |
| attachment |  ``` Optional ```  | File to be attached.File must be less than 7MB. |





#### Example Usage

```objc
    // Parameters for the API call
    SendEmailInput *input = [[SendEmailInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.type = HTML;
    input.subject = @"subject";
    input.message = @"message";
    input.responseType = @"ResponseType";
    input.cc = @"cc";
    input.bcc = @"bcc";
    input.attachment = @"attachment";

    [self.email sendEmailAsyncWithSendEmailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_unsubscribes_async_with_delete_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteUnsubscribesAsyncWithDeleteUnsubscribesInput") deleteUnsubscribesAsyncWithDeleteUnsubscribesInput

> Delete emails from the unsubscribe list


```objc
function deleteUnsubscribesAsyncWithDeleteUnsubscribesInput:(DeleteUnsubscribesInput*) input
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
    DeleteUnsubscribesInput *input = [[DeleteUnsubscribesInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email deleteUnsubscribesAsyncWithDeleteUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_unsubscribes_async_with_list_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listUnsubscribesAsyncWithListUnsubscribesInput") listUnsubscribesAsyncWithListUnsubscribesInput

> List all unsubscribed email addresses


```objc
function listUnsubscribesAsyncWithListUnsubscribesInput:(ListUnsubscribesInput*) input
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
    ListUnsubscribesInput *input = [[ListUnsubscribesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email listUnsubscribesAsyncWithListUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_invalid_async_with_list_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listInvalidAsyncWithListInvalidInput") listInvalidAsyncWithListInvalidInput

> List out all invalid email addresses


```objc
function listInvalidAsyncWithListInvalidInput:(ListInvalidInput*) input
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
    ListInvalidInput *input = [[ListInvalidInput alloc]init];
    input.responseType = @"ResponseType";
    input.offet = @"offet";
    input.limit = @"limit";

    [self.email listInvalidAsyncWithListInvalidInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_bounces_async_with_delete_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteBouncesAsyncWithDeleteBouncesInput") deleteBouncesAsyncWithDeleteBouncesInput

> Delete an email address from the bounced address list


```objc
function deleteBouncesAsyncWithDeleteBouncesInput:(DeleteBouncesInput*) input
                completionBlock:(CompletedPostDeleteBounces) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | The email address to remove from the bounce list |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteBouncesInput *input = [[DeleteBouncesInput alloc]init];
    input.responseType = @"ResponseType";
    input.email = @"email";

    [self.email deleteBouncesAsyncWithDeleteBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_bounces_async_with_list_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listBouncesAsyncWithListBouncesInput") listBouncesAsyncWithListBouncesInput

> List out all email addresses that have bounced


```objc
function listBouncesAsyncWithListBouncesInput:(ListBouncesInput*) input
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
    ListBouncesInput *input = [[ListBouncesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email listBouncesAsyncWithListBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_spam_async_with_list_spam_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listSpamAsyncWithListSpamInput") listSpamAsyncWithListSpamInput

> List out all email addresses marked as spam


```objc
function listSpamAsyncWithListSpamInput:(ListSpamInput*) input
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
    ListSpamInput *input = [[ListSpamInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email listSpamAsyncWithListSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_blocks_async_with_list_blocks_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listBlocksAsyncWithListBlocksInput") listBlocksAsyncWithListBlocksInput

> Outputs email addresses on your blocklist


```objc
function listBlocksAsyncWithListBlocksInput:(ListBlocksInput*) input
                completionBlock:(CompletedPostListBlocks) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | Where to start in the output list |
| limit |  ``` Optional ```  | Maximum number of records to return |





#### Example Usage

```objc
    // Parameters for the API call
    ListBlocksInput *input = [[ListBlocksInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"offset";
    input.limit = @"limit";

    [self.email listBlocksAsyncWithListBlocksInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_invalid_async_with_delete_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteInvalidAsyncWithDeleteInvalidInput") deleteInvalidAsyncWithDeleteInvalidInput

> This endpoint allows you to delete entries in the Invalid Emails list.


```objc
function deleteInvalidAsyncWithDeleteInvalidInput:(DeleteInvalidInput*) input
                completionBlock:(CompletedPostDeleteInvalid) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email that was marked invalid |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteInvalidInput *input = [[DeleteInvalidInput alloc]init];
    input.email = @"email";
    input.responseType = @"ResponseType";

    [self.email deleteInvalidAsyncWithDeleteInvalidInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance
```objc
SMS* sMS = [[SMS alloc]init] ;
```

### <a name="send_sms_async_with_send_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.sendSMSAsyncWithSendSMSInput") sendSMSAsyncWithSendSMSInput

> Send an SMS from a message360 number


```objc
function sendSMSAsyncWithSendSMSInput:(SendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | SMS enabled Message360 number to send this message from |
| to |  ``` Required ```  | Number to send the SMS to |
| body |  ``` Required ```  | Text Message To Send |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Required ```  ``` DefaultValue ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |





#### Example Usage

```objc
    // Parameters for the API call
    SendSMSInput *input = [[SendSMSInput alloc]init];
    input.from = @"from";
    input.to = @"to";
    input.body = @"body";
    input.responseType = @"ResponseType";
    input.method = GET;
    input.messagestatuscallback = @"messagestatuscallback";
    input.smartsms = true;

    [self.sMS sendSMSAsyncWithSendSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_sms_async_with_view_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.viewSMSAsyncWithViewSMSInput") viewSMSAsyncWithViewSMSInput

> View a Particular SMS


```objc
function viewSMSAsyncWithViewSMSInput:(ViewSMSInput*) input
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
    ViewSMSInput *input = [[ViewSMSInput alloc]init];
    input.messagesid = @"messagesid";
    input.responseType = @"ResponseType";

    [self.sMS viewSMSAsyncWithViewSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_sms_async_with_list_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.listSMSAsyncWithListSMSInput") listSMSAsyncWithListSMSInput

> List All SMS


```objc
function listSMSAsyncWithListSMSInput:(ListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    ListSMSInput *input = [[ListSMSInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pagesize = 232;
    input.from = @"from";
    input.to = @"to";
    input.datesent = @"datesent";

    [self.sMS listSMSAsyncWithListSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_inbound_sms_async_with_list_inbound_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.listInboundSMSAsyncWithListInboundSMSInput") listInboundSMSAsyncWithListInboundSMSInput

> List All Inbound SMS


```objc
function listInboundSMSAsyncWithListInboundSMSInput:(ListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound SMS |
| to |  ``` Optional ```  | To Number to get Inbound SMS |
| dateSent |  ``` Optional ```  | Filter sms message objects by this date. |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundSMSInput *input = [[ListInboundSMSInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pagesize = 232;
    input.from = @"from";
    input.to = @"to";
    input.dateSent = @"DateSent";

    [self.sMS listInboundSMSAsyncWithListInboundSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance
```objc
Call* call = [[Call alloc]init] ;
```

### <a name="make_call_async_with_make_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.makeCallAsyncWithMakeCallInput") makeCallAsyncWithMakeCallInput

> You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json


```objc
function makeCallAsyncWithMakeCallInput:(MakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
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
| ifMachineUrl |  ``` Optional ```  | URL requested when IfMachine=continue |
| ifMachineMethod |  ``` Optional ```  | Method used to request the IfMachineUrl. |
| feedback |  ``` Optional ```  | Specify if survey should be enable or not |
| surveyId |  ``` Optional ```  | The unique identifier for the survey. |





#### Example Usage

```objc
    // Parameters for the API call
    MakeCallInput *input = [[MakeCallInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.responseType = @"ResponseType";
    input.method = GET;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = GET;
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = GET;
    input.timeout = 232;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = true;
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";
    input.ifMachine = CONTINUE;
    input.ifMachineUrl = @"IfMachineUrl";
    input.ifMachineMethod = GET;
    input.feedback = true;
    input.surveyId = @"SurveyId";

    [self.call makeCallAsyncWithMakeCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="play_audio_async_with_play_audio_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.playAudioAsyncWithPlayAudioInput") playAudioAsyncWithPlayAudioInput

> Play Dtmf and send the Digit


```objc
function playAudioAsyncWithPlayAudioInput:(PlayAudioInput*) input
                completionBlock:(CompletedPostPlayAudio) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| audioUrl |  ``` Required ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| sayText |  ``` Required ```  | Valid alphanumeric string that should be played to the In-progress call. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| length |  ``` Optional ```  | Time limit in seconds for audio play back |
| direction |  ``` Optional ```  | The leg of the call audio will be played to |
| mix |  ``` Optional ```  | If false, all other audio will be muted |





#### Example Usage

```objc
    // Parameters for the API call
    PlayAudioInput *input = [[PlayAudioInput alloc]init];
    input.callSid = @"CallSid";
    input.audioUrl = @"AudioUrl";
    input.sayText = @"SayText";
    input.responseType = @"ResponseType";
    input.length = 232;
    input.direction = IN;
    input.mix = true;

    [self.call playAudioAsyncWithPlayAudioInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="record_call_async_with_record_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.recordCallAsyncWithRecordCallInput") recordCallAsyncWithRecordCallInput

> Record a Call


```objc
function recordCallAsyncWithRecordCallInput:(RecordCallInput*) input
                completionBlock:(CompletedPostRecordCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| record |  ``` Required ```  | Set true to initiate recording or false to terminate recording |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| direction |  ``` Optional ```  | The leg of the call to record |
| timeLimit |  ``` Optional ```  | Time in seconds the recording duration should not exceed |
| callBackUrl |  ``` Optional ```  | URL consulted after the recording completes |
| fileformat |  ``` Optional ```  | Format of the recording file. Can be .mp3 or .wav |





#### Example Usage

```objc
    // Parameters for the API call
    RecordCallInput *input = [[RecordCallInput alloc]init];
    input.callSid = @"CallSid";
    input.record = true;
    input.responseType = @"ResponseType";
    input.direction = IN;
    input.timeLimit = 232;
    input.callBackUrl = @"CallBackUrl";
    input.fileformat = MP3;

    [self.call recordCallAsyncWithRecordCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="voice_effect_async_with_voice_effect_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.voiceEffectAsyncWithVoiceEffectInput") voiceEffectAsyncWithVoiceEffectInput

> Voice Effect


```objc
function voiceEffectAsyncWithVoiceEffectInput:(VoiceEffectInput*) input
                completionBlock:(CompletedPostVoiceEffect) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for the in-progress voice call. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| audioDirection |  ``` Optional ```  | The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream. |
| pitchSemiTones |  ``` Optional ```  | value between -14 and 14 |
| pitchOctaves |  ``` Optional ```  | value between -1 and 1 |
| pitch |  ``` Optional ```  | value greater than 0 |
| rate |  ``` Optional ```  | value greater than 0 |
| tempo |  ``` Optional ```  | value greater than 0 |





#### Example Usage

```objc
    // Parameters for the API call
    VoiceEffectInput *input = [[VoiceEffectInput alloc]init];
    input.callSid = @"CallSid";
    input.responseType = @"ResponseType";
    input.audioDirection = IN;
    input.pitchSemiTones = 232.765989907908;
    input.pitchOctaves = 232.765989907908;
    input.pitch = 232.765989907908;
    input.rate = 232.765989907908;
    input.tempo = 232.765989907908;

    [self.call voiceEffectAsyncWithVoiceEffectInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="send_digit_async_with_send_digit_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.sendDigitAsyncWithSendDigitInput") sendDigitAsyncWithSendDigitInput

> Play Dtmf and send the Digit


```objc
function sendDigitAsyncWithSendDigitInput:(SendDigitInput*) input
                completionBlock:(CompletedPostSendDigit) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier of each call resource |
| playDtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| playDtmfDirection |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |





#### Example Usage

```objc
    // Parameters for the API call
    SendDigitInput *input = [[SendDigitInput alloc]init];
    input.callSid = @"CallSid";
    input.playDtmf = @"PlayDtmf";
    input.responseType = @"ResponseType";
    input.playDtmfDirection = IN;

    [self.call sendDigitAsyncWithSendDigitInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="interrupted_call_async_with_interrupted_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.interruptedCallAsyncWithInterruptedCallInput") interruptedCallAsyncWithInterruptedCallInput

> Interrupt the Call by Call Sid


```objc
function interruptedCallAsyncWithInterruptedCallInput:(InterruptedCallInput*) input
                completionBlock:(CompletedPostInterruptedCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | Call SId |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |





#### Example Usage

```objc
    // Parameters for the API call
    InterruptedCallInput *input = [[InterruptedCallInput alloc]init];
    input.callSid = @"CallSid";
    input.responseType = @"ResponseType";
    input.url = @"Url";
    input.method = GET;
    input.status = CANCELED;

    [self.call interruptedCallAsyncWithInterruptedCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="group_call_async_with_group_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.groupCallAsyncWithGroupCallInput") groupCallAsyncWithGroupCallInput

> Group Call


```objc
function groupCallAsyncWithGroupCallInput:(GroupCallInput*) input
                completionBlock:(CompletedPostGroupCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222 |
| url |  ``` Required ```  | URL requested once the call connects |
| responseType |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| groupConfirmKey |  ``` Required ```  | Define the DTMF that the called party should send to bridge the call. Allowed Values : 0-9, #, * |
| groupConfirmFile |  ``` Required ```  | Specify the audio file you want to play when the called party picks up the call |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
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





#### Example Usage

```objc
    // Parameters for the API call
    GroupCallInput *input = [[GroupCallInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.responseType = @"ResponseType";
    input.groupConfirmKey = @"GroupConfirmKey";
    input.groupConfirmFile = MP3;
    input.method = GET;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallBackUrl = @"FallBackUrl";
    input.fallBackMethod = GET;
    input.heartBeatUrl = @"HeartBeatUrl";
    input.heartBeatMethod = GET;
    input.timeout = 232;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = @"HideCallerId";
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.transcribe = true;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";

    [self.call groupCallAsyncWithGroupCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_calls_async_with_list_calls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.listCallsAsyncWithListCallsInput") listCallsAsyncWithListCallsInput

> A list of calls associated with your Message360 account


```objc
function listCallsAsyncWithListCallsInput:(ListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Only list calls to this number |
| from |  ``` Optional ```  | Only list calls from this number |
| dateCreated |  ``` Optional ```  | Only list calls starting within the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    ListCallsInput *input = [[ListCallsInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pageSize = 232;
    input.to = @"To";
    input.from = @"From";
    input.dateCreated = @"DateCreated";

    [self.call listCallsAsyncWithListCallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="send_ringless_vm_async_with_send_ringless_vm_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.sendRinglessVMAsyncWithSendRinglessVMInput") sendRinglessVMAsyncWithSendRinglessVMInput

> API endpoint used to send a Ringless Voicemail


```objc
function sendRinglessVMAsyncWithSendRinglessVMInput:(SendRinglessVMInput*) input
                completionBlock:(CompletedPostSendRinglessVM) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| rVMCallerId |  ``` Required ```  | Alternate caller ID required for RVM |
| to |  ``` Required ```  | To number |
| voiceMailURL |  ``` Required ```  | URL to an audio file |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Required ```  ``` DefaultValue ```  | Not currently used in this version |
| statusCallBackUrl |  ``` Optional ```  | URL to post the status of the Ringless request |
| statsCallBackMethod |  ``` Optional ```  | POST or GET |





#### Example Usage

```objc
    // Parameters for the API call
    SendRinglessVMInput *input = [[SendRinglessVMInput alloc]init];
    input.from = @"From";
    input.rVMCallerId = @"RVMCallerId";
    input.to = @"To";
    input.voiceMailURL = @"VoiceMailURL";
    input.responseType = @"ResponseType";
    input.method = GET;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statsCallBackMethod = GET;

    [self.call sendRinglessVMAsyncWithSendRinglessVMInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_call_async_with_view_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.viewCallAsyncWithViewCallInput") viewCallAsyncWithViewCallInput

> View Call Response


```objc
function viewCallAsyncWithViewCallInput:(ViewCallInput*) input
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
    ViewCallInput *input = [[ViewCallInput alloc]init];
    input.callsid = @"callsid";
    input.responseType = @"ResponseType";

    [self.call viewCallAsyncWithViewCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance
```objc
Carrier* carrier = [[Carrier alloc]init] ;
```

### <a name="carrier_lookup_list_async_with_carrier_lookup_list_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrierLookupListAsyncWithCarrierLookupListInput") carrierLookupListAsyncWithCarrierLookupListInput

> Get the All Purchase Number's Carrier lookup


```objc
function carrierLookupListAsyncWithCarrierLookupListInput:(CarrierLookupListInput*) input
                completionBlock:(CompletedPostCarrierLookupList) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Page Number |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Page Size |





#### Example Usage

```objc
    // Parameters for the API call
    CarrierLookupListInput *input = [[CarrierLookupListInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pagesize = 232;

    [self.carrier carrierLookupListAsyncWithCarrierLookupListInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="carrier_lookup_async_with_carrier_lookup_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrierLookupAsyncWithCarrierLookupInput") carrierLookupAsyncWithCarrierLookupInput

> Get the Carrier Lookup


```objc
function carrierLookupAsyncWithCarrierLookupInput:(CarrierLookupInput*) input
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
    CarrierLookupInput *input = [[CarrierLookupInput alloc]init];
    input.phonenumber = @"phonenumber";
    input.responseType = @"ResponseType";

    [self.carrier carrierLookupAsyncWithCarrierLookupInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance
```objc
Address* address = [[Address alloc]init] ;
```

### <a name="create_address_async_with_create_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.createAddressAsyncWithCreateAddressInput") createAddressAsyncWithCreateAddressInput

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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |
| description |  ``` Optional ```  | Description of addresses. |
| email |  ``` Optional ```  | Email Id of user. |
| phone |  ``` Optional ```  | Phone number of user. |





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
    input.responseType = @"ResponseType";
    input.description = @"Description";
    input.email = @"email";
    input.phone = @"Phone";

    [self.address createAddressAsyncWithCreateAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_address_async_with_view_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.viewAddressAsyncWithViewAddressInput") viewAddressAsyncWithViewAddressInput

> View Address Specific address Book by providing the address id


```objc
function viewAddressAsyncWithViewAddressInput:(ViewAddressInput*) input
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
    ViewAddressInput *input = [[ViewAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address viewAddressAsyncWithViewAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_address_async_with_list_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.listAddressAsyncWithListAddressInput") listAddressAsyncWithListAddressInput

> List All Address 


```objc
function listAddressAsyncWithListAddressInput:(ListAddressInput*) input
                completionBlock:(CompletedPostListAddress) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Required ```  ``` DefaultValue ```  | Return requested # of items starting the value, default=0, must be an integer |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressSID |  ``` Optional ```  | addresses Sid |
| dateCreated |  ``` Optional ```  | date created address. |





#### Example Usage

```objc
    // Parameters for the API call
    ListAddressInput *input = [[ListAddressInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 232;
    input.pageSize = 232;
    input.addressSID = @"AddressSID";
    input.dateCreated = @"DateCreated";

    [self.address listAddressAsyncWithListAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="verify_address_async_with_verify_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.verifyAddressAsyncWithVerifyAddressInput") verifyAddressAsyncWithVerifyAddressInput

> Validates an address given.


```objc
function verifyAddressAsyncWithVerifyAddressInput:(VerifyAddressInput*) input
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
    VerifyAddressInput *input = [[VerifyAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address verifyAddressAsyncWithVerifyAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_address_async_with_delete_address_input"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.deleteAddressAsyncWithDeleteAddressInput") deleteAddressAsyncWithDeleteAddressInput

> To delete Address to your address book


```objc
function deleteAddressAsyncWithDeleteAddressInput:(DeleteAddressInput*) input
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
    DeleteAddressInput *input = [[DeleteAddressInput alloc]init];
    input.addressSID = @"AddressSID";
    input.responseType = @"ResponseType";

    [self.address deleteAddressAsyncWithDeleteAddressInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance
```objc
SubAccount* subAccount = [[SubAccount alloc]init] ;
```

### <a name="delete_sub_account_async_with_delete_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.deleteSubAccountAsyncWithDeleteSubAccountInput") deleteSubAccountAsyncWithDeleteSubAccountInput

> Delete sub account or merge numbers into parent


```objc
function deleteSubAccountAsyncWithDeleteSubAccountInput:(DeleteSubAccountInput*) input
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
    DeleteSubAccountInput *input = [[DeleteSubAccountInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.mergeNumber = DELETE;
    input.responseType = @"ResponseType";

    [self.subAccount deleteSubAccountAsyncWithDeleteSubAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="suspend_sub_account_async_with_suspend_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.suspendSubAccountAsyncWithSuspendSubAccountInput") suspendSubAccountAsyncWithSuspendSubAccountInput

> Suspend or unsuspend


```objc
function suspendSubAccountAsyncWithSuspendSubAccountInput:(SuspendSubAccountInput*) input
                completionBlock:(CompletedPostSuspendSubAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subAccountSID |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| activate |  ``` Required ```  ``` DefaultValue ```  | 0 to suspend or 1 to activate |
| responseType |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    SuspendSubAccountInput *input = [[SuspendSubAccountInput alloc]init];
    input.subAccountSID = @"SubAccountSID";
    input.activate = DEACTIVATE;
    input.responseType = @"ResponseType";

    [self.subAccount suspendSubAccountAsyncWithSuspendSubAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_sub_account_async_with_create_sub_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.createSubAccountAsyncWithCreateSubAccountInput") createSubAccountAsyncWithCreateSubAccountInput

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


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance
```objc
Account* account = [[Account alloc]init] ;
```

### <a name="view_account_async_with_view_account_input"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.viewAccountAsyncWithViewAccountInput") viewAccountAsyncWithViewAccountInput

> Display Account Description


```objc
function viewAccountAsyncWithViewAccountInput:(ViewAccountInput*) input
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
    ViewAccountInput *input = [[ViewAccountInput alloc]init];
    input.date = @"Date";
    input.responseType = @"ResponseType";

    [self.account viewAccountAsyncWithViewAccountInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

### Get singleton instance
```objc
ShortCode* shortCode = [[ShortCode alloc]init] ;
```

### <a name="send_dedicated_shortcode_async_with_send_dedicated_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.sendDedicatedShortcodeAsyncWithSendDedicatedShortcodeInput") sendDedicatedShortcodeAsyncWithSendDedicatedShortcodeInput

> TODO: Add a method description


```objc
function sendDedicatedShortcodeAsyncWithSendDedicatedShortcodeInput:(SendDedicatedShortcodeInput*) input
                completionBlock:(CompletedPostSendDedicatedShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | Your dedicated shortcode |
| to |  ``` Required ```  | The number to send your SMS to |
| body |  ``` Required ```  | The body of your message |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Callback status method, POST or GET |
| messagestatuscallback |  ``` Optional ```  | Callback url for SMS status |





#### Example Usage

```objc
    // Parameters for the API call
    SendDedicatedShortcodeInput *input = [[SendDedicatedShortcodeInput alloc]init];
    input.shortcode = 191;
    input.to = 191.042816681342;
    input.body = @"body";
    input.responseType = @"ResponseType";
    input.method = GET;
    input.messagestatuscallback = @"messagestatuscallback";

    [self.shortCode sendDedicatedShortcodeAsyncWithSendDedicatedShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_shortcode_async_with_view_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.viewShortcodeAsyncWithViewShortcodeInput") viewShortcodeAsyncWithViewShortcodeInput

> View a single Sms Short Code message.


```objc
function viewShortcodeAsyncWithViewShortcodeInput:(ViewShortcodeInput*) input
                completionBlock:(CompletedPostViewShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for the sms resource |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewShortcodeInput *input = [[ViewShortcodeInput alloc]init];
    input.messageSid = @"MessageSid";
    input.responseType = @"ResponseType";

    [self.shortCode viewShortcodeAsyncWithViewShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_shortcode_async_with_list_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.listShortcodeAsyncWithListShortcodeInput") listShortcodeAsyncWithListShortcodeInput

> Retrieve a list of Short Code message objects.


```objc
function listShortcodeAsyncWithListShortcodeInput:(ListShortcodeInput*) input
                completionBlock:(CompletedPostListShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| dateSent |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    ListShortcodeInput *input = [[ListShortcodeInput alloc]init];
    input.responseType = @"ResponseType";
    input.shortcode = @"Shortcode";
    input.to = @"To";
    input.dateSent = @"DateSent";
    input.page = 191;
    input.pageSize = 191;

    [self.shortCode listShortcodeAsyncWithListShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_inbound_shortcode_async_with_list_inbound_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.listInboundShortcodeAsyncWithListInboundShortcodeInput") listInboundShortcodeAsyncWithListInboundShortcodeInput

> Retrive a list of inbound Sms Short Code messages associated with your message360 account.


```objc
function listInboundShortcodeAsyncWithListInboundShortcodeInput:(ListInboundShortcodeInput*) input
                completionBlock:(CompletedPostListInboundShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| dateReceived |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundShortcodeInput *input = [[ListInboundShortcodeInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 191;
    input.pageSize = 191;
    input.from = @"From";
    input.shortcode = @"Shortcode";
    input.dateReceived = @"DateReceived";

    [self.shortCode listInboundShortcodeAsyncWithListInboundShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



