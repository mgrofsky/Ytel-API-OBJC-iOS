# Getting started

Ytel API version 3

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Open the project workspace using the (Ytel.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the Ytel library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'Ytel', :path => 'Vendor/Ytel'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the Ytel.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Ytel-ObjC&workspaceName=Ytel&projectName=Ytel&rootNamespace=Ytel)


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

* [WebRTCController](#web_rtc_controller)
* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [PhoneNumberController](#phone_number_controller)
* [TranscriptionController](#transcription_controller)
* [RecordingController](#recording_controller)
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [CallController](#call_controller)
* [CarrierController](#carrier_controller)
* [AddressController](#address_controller)
* [SubAccountController](#sub_account_controller)
* [AccountController](#account_controller)
* [UsageController](#usage_controller)
* [ShortCodeController](#short_code_controller)
* [PostCardController](#post_card_controller)
* [LetterController](#letter_controller)
* [AreaMailController](#area_mail_controller)

## <a name="web_rtc_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebRTCController") WebRTCController

### Get singleton instance
```objc
WebRTC* webRTC = [[WebRTC alloc]init] ;
```

### <a name="create_token_async_with_create_token_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.createTokenAsyncWithCreateTokenInput") createTokenAsyncWithCreateTokenInput

> Ytel webrtc


```objc
function createTokenAsyncWithCreateTokenInput:(CreateTokenInput*) input
                completionBlock:(CompletedPostCreateToken) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSid |  ``` Required ```  | Your Ytel Account SID |
| authToken |  ``` Required ```  | Your Ytel Token |
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


### <a name="check_funds_async_with_check_funds_input"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.checkFundsAsyncWithCheckFundsInput") checkFundsAsyncWithCheckFundsInput

> TODO: Add a method description


```objc
function checkFundsAsyncWithCheckFundsInput:(CheckFundsInput*) input
                completionBlock:(CompletedPostCheckFunds) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSid |  ``` Required ```  | Your Ytel Account SID |
| authToken |  ``` Required ```  | Your Ytel Token |





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


[Back to List of Controllers](#list_of_controllers)

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
| templateId |  ``` Required ```  | The unique identifier for a template object |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewTemplateInput *input = [[ViewTemplateInput alloc]init];
    input.templateId = 123456789;
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
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    ListOutboundSharedShortcodesInput *input = [[ListOutboundSharedShortcodesInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
    input.shortcode = @"Shortcode";
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
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| datecreated |  ``` Optional ```  | Only list messages sent with the specified date |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundSharedShortcodesInput *input = [[ListInboundSharedShortcodesInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
    input.from = @"from";
    input.shortcode = @"Shortcode";
    input.datecreated = @"Datecreated";

    [self.sharedShortCode listInboundSharedShortcodesAsyncWithListInboundSharedShortcodesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="send_shared_shortcode_async_with_send_shared_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.sendSharedShortcodeAsyncWithSendSharedShortcodeInput") sendSharedShortcodeAsyncWithSendSharedShortcodeInput

> Send an SMS from a Ytel ShortCode


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
    input.page = 248;
    input.pagesize = 248;
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

> Retrieve a list of keywords associated with your Ytel account.


```objc
function listKeywordAsyncWithListKeywordInput:(ListKeywordInput*) input
                completionBlock:(CompletedPostListKeyword) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    ListKeywordInput *input = [[ListKeywordInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
    input.keyword = @"Keyword";
    input.shortcode = 248;

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
| shortcode |  ``` Required ```  | List of valid Shortcode to your Ytel account |
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

> Retrieve a list of shortcode assignment associated with your Ytel account.


```objc
function listAssignmentAsyncWithListAssignmentInput:(ListAssignmentInput*) input
                completionBlock:(CompletedPostListAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |





#### Example Usage

```objc
    // Parameters for the API call
    ListAssignmentInput *input = [[ListAssignmentInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
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
| shortcode |  ``` Required ```  | List of valid shortcode to your Ytel account |
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

> Retrieve information about a participant by its ParticipantSid.


```objc
function viewParticipantAsyncWithViewParticipantInput:(ViewParticipantInput*) input
                completionBlock:(CompletedPostViewParticipant) onCompleted(input)
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
    ViewParticipantInput *input = [[ViewParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantSid = @"ParticipantSid";
    input.responseType = @"ResponseType";

    [self.conference viewParticipantAsyncWithViewParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_conference_async_with_view_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.viewConferenceAsyncWithViewConferenceInput") viewConferenceAsyncWithViewConferenceInput

> Retrieve information about a conference by its ConferenceSid.


```objc
function viewConferenceAsyncWithViewConferenceInput:(ViewConferenceInput*) input
                completionBlock:(CompletedPostViewConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier of each conference resource |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewConferenceInput *input = [[ViewConferenceInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.responseType = @"ResponseType";

    [self.conference viewConferenceAsyncWithViewConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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
| conferenceSid |  ``` Required ```  | The unique identifier for a conference object. |
| participantNumber |  ``` Required ```  | The phone number of the participant to be added. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |





#### Example Usage

```objc
    // Parameters for the API call
    AddParticipantInput *input = [[AddParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.participantNumber = @"ParticipantNumber";
    input.responseType = @"ResponseType";
    input.muted = true;
    input.deaf = true;

    [self.conference addParticipantAsyncWithAddParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_conference_async_with_create_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.createConferenceAsyncWithCreateConferenceInput") createConferenceAsyncWithCreateConferenceInput

> Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.


```objc
function createConferenceAsyncWithCreateConferenceInput:(CreateConferenceInput*) input
                completionBlock:(CompletedPostCreateConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid 10-digit number (E.164 format) that will be initiating the conference call. |
| to |  ``` Required ```  | A valid 10-digit number (E.164 format) that is to receive the conference call. |
| url |  ``` Required ```  | URL requested once the conference connects |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
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
    CreateConferenceInput *input = [[CreateConferenceInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.url = @"Url";
    input.responseType = @"ResponseType";
    input.method = POST;
    input.statusCallBackUrl = @"StatusCallBackUrl";
    input.statusCallBackMethod = GET;
    input.fallbackUrl = @"FallbackUrl";
    input.fallbackMethod = GET;
    input.record = true;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.scheduleTime = @"ScheduleTime";
    input.timeout = 248;

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

> Retrieve a list of participants for an in-progress conference.


```objc
function listParticipantAsyncWithListParticipantInput:(ListParticipantInput*) input
                completionBlock:(CompletedPostListParticipant) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferenceSid |  ``` Required ```  | The unique identifier for a conference. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |





#### Example Usage

```objc
    // Parameters for the API call
    ListParticipantInput *input = [[ListParticipantInput alloc]init];
    input.conferenceSid = @"ConferenceSid";
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
    input.muted = true;
    input.deaf = true;

    [self.conference listParticipantAsyncWithListParticipantInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_conference_async_with_list_conference_input"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.listConferenceAsyncWithListConferenceInput") listConferenceAsyncWithListConferenceInput

> Retrieve a list of conference objects.


```objc
function listConferenceAsyncWithListConferenceInput:(ListConferenceInput*) input
                completionBlock:(CompletedPostListConference) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| friendlyName |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| dateCreated |  ``` Optional ```  | Conference created date |





#### Example Usage

```objc
    // Parameters for the API call
    ListConferenceInput *input = [[ListConferenceInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pagesize = 248;
    input.friendlyName = @"FriendlyName";
    input.dateCreated = @"DateCreated";

    [self.conference listConferenceAsyncWithListConferenceInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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

> Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.


```objc
function availablePhoneNumberAsyncWithAvailablePhoneNumberInput:(AvailablePhoneNumberInput*) input
                completionBlock:(CompletedPostAvailablePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numbertype |  ``` Required ```  | Number type either SMS,Voice or all |
| areacode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return. |





#### Example Usage

```objc
    // Parameters for the API call
    AvailablePhoneNumberInput *input = [[AvailablePhoneNumberInput alloc]init];
    input.numbertype = ALL;
    input.areacode = @"areacode";
    input.responseType = @"ResponseType";
    input.pagesize = 248;

    [self.phoneNumber availablePhoneNumberAsyncWithAvailablePhoneNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="mass_release_number_async_with_mass_release_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.massReleaseNumberAsyncWithMassReleaseNumberInput") massReleaseNumberAsyncWithMassReleaseNumberInput

> Remove a purchased Ytel number from your account.


```objc
function massReleaseNumberAsyncWithMassReleaseNumberInput:(MassReleaseNumberInput*) input
                completionBlock:(CompletedPostMassReleaseNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel comma separated numbers (E.164 format). |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    MassReleaseNumberInput *input = [[MassReleaseNumberInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber massReleaseNumberAsyncWithMassReleaseNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_number_details_async_with_view_number_details_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.viewNumberDetailsAsyncWithViewNumberDetailsInput") viewNumberDetailsAsyncWithViewNumberDetailsInput

> Retrieve the details for a phone number by its number.


```objc
function viewNumberDetailsAsyncWithViewNumberDetailsInput:(ViewNumberDetailsInput*) input
                completionBlock:(CompletedPostViewNumberDetails) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel 10-digit phone number (E.164 format). |
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

> Remove a purchased Ytel number from your account.


```objc
function releaseNumberAsyncWithReleaseNumberInput:(ReleaseNumberInput*) input
                completionBlock:(CompletedPostReleaseNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
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

> Purchase a phone number to be used with your Ytel account


```objc
function buyNumberAsyncWithBuyNumberInput:(BuyNumberInput*) input
                completionBlock:(CompletedPostBuyNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
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

> Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function updatePhoneNumberAsyncWithUpdatePhoneNumberInput:(UpdatePhoneNumberInput*) input
                completionBlock:(CompletedPostUpdatePhoneNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid Ytel number (E.164 format). |
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
| smsFallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl. |
| smsFallbackMethod |  ``` Optional ```  | The HTTP method Ytel will use when URL requested if the SmsUrl is not available. |





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


### <a name="transfer_number_async_with_transfer_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.transferNumberAsyncWithTransferNumberInput") transferNumberAsyncWithTransferNumberInput

> Transfer phone number that has been purchased for from one account to another account.


```objc
function transferNumberAsyncWithTransferNumberInput:(TransferNumberInput*) input
                completionBlock:(CompletedPostTransferNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| fromaccountsid |  ``` Required ```  | A specific Accountsid from where Number is getting transfer. |
| toaccountsid |  ``` Required ```  | A specific Accountsid to which Number is getting transfer. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    TransferNumberInput *input = [[TransferNumberInput alloc]init];
    input.phonenumber = @"phonenumber";
    input.fromaccountsid = @"fromaccountsid";
    input.toaccountsid = @"toaccountsid";
    input.responseType = @"ResponseType";

    [self.phoneNumber transferNumberAsyncWithTransferNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_number_async_with_list_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.listNumberAsyncWithListNumberInput") listNumberAsyncWithListNumberInput

> Retrieve a list of purchased phones numbers associated with your Ytel account.


```objc
function listNumberAsyncWithListNumberInput:(ListNumberInput*) input
                completionBlock:(CompletedPostListNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| numberType |  ``` Optional ```  | The capability supported by the number.Number type either SMS,Voice or all |
| friendlyName |  ``` Optional ```  | A human-readable label added to the number object. |





#### Example Usage

```objc
    // Parameters for the API call
    ListNumberInput *input = [[ListNumberInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 248;
    input.pageSize = 248;
    input.numberType = ALL;
    input.friendlyName = @"FriendlyName";

    [self.phoneNumber listNumberAsyncWithListNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="mass_update_number_async_with_mass_update_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.massUpdateNumberAsyncWithMassUpdateNumberInput") massUpdateNumberAsyncWithMassUpdateNumberInput

> Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```objc
function massUpdateNumberAsyncWithMassUpdateNumberInput:(MassUpdateNumberInput*) input
                completionBlock:(CompletedPostMassUpdateNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phoneNumber |  ``` Required ```  | A valid comma(,) separated Ytel numbers. (E.164 format). |
| voiceUrl |  ``` Required ```  | The URL returning InboundXML incoming calls should execute when connected. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
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
    MassUpdateNumberInput *input = [[MassUpdateNumberInput alloc]init];
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

    [self.phoneNumber massUpdateNumberAsyncWithMassUpdateNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="get_did_score_number_async_with_get_did_score_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.getDIDScoreNumberAsyncWithGetDIDScoreNumberInput") getDIDScoreNumberAsyncWithGetDIDScoreNumberInput

> Get DID Score Number


```objc
function getDIDScoreNumberAsyncWithGetDIDScoreNumberInput:(GetDIDScoreNumberInput*) input
                completionBlock:(CompletedPostGetDIDScoreNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | Specifies the multiple phone numbers for check updated spamscore . |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    GetDIDScoreNumberInput *input = [[GetDIDScoreNumberInput alloc]init];
    input.phonenumber = @"Phonenumber";
    input.responseType = @"ResponseType";

    [self.phoneNumber getDIDScoreNumberAsyncWithGetDIDScoreNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="bulk_buy_number_async_with_bulk_buy_number_input"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.bulkBuyNumberAsyncWithBulkBuyNumberInput") bulkBuyNumberAsyncWithBulkBuyNumberInput

> Purchase a selected number of DID's from specific area codes to be used with your Ytel account.


```objc
function bulkBuyNumberAsyncWithBulkBuyNumberInput:(BulkBuyNumberInput*) input
                completionBlock:(CompletedPostBulkBuyNumber) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numberType |  ``` Required ```  | The capability the number supports. |
| areaCode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| quantity |  ``` Required ```  | A positive integer that tells how many number you want to buy at a time. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| leftover |  ``` Optional ```  | If desired quantity is unavailable purchase what is available . |





#### Example Usage

```objc
    // Parameters for the API call
    BulkBuyNumberInput *input = [[BulkBuyNumberInput alloc]init];
    input.numberType = ALL;
    input.areaCode = @"AreaCode";
    input.quantity = @"Quantity";
    input.responseType = @"ResponseType";
    input.leftover = @"Leftover";

    [self.phoneNumber bulkBuyNumberAsyncWithBulkBuyNumberInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance
```objc
Transcription* transcription = [[Transcription alloc]init] ;
```

### <a name="view_transcription_async_with_view_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.viewTranscriptionAsyncWithViewTranscriptionInput") viewTranscriptionAsyncWithViewTranscriptionInput

> Retrieve information about a transaction by its TranscriptionSid.


```objc
function viewTranscriptionAsyncWithViewTranscriptionInput:(ViewTranscriptionInput*) input
                completionBlock:(CompletedPostViewTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionsid |  ``` Required ```  | The unique identifier for a transcription object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewTranscriptionInput *input = [[ViewTranscriptionInput alloc]init];
    input.transcriptionsid = @"transcriptionsid";
    input.responseType = @"ResponseType";

    [self.transcription viewTranscriptionAsyncWithViewTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="recording_transcription_async_with_recording_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.recordingTranscriptionAsyncWithRecordingTranscriptionInput") recordingTranscriptionAsyncWithRecordingTranscriptionInput

> Transcribe a message360 recording by its RecordingSid.


```objc
function recordingTranscriptionAsyncWithRecordingTranscriptionInput:(RecordingTranscriptionInput*) input
                completionBlock:(CompletedPostRecordingTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingSid |  ``` Required ```  | The unique identifier for a recording object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    RecordingTranscriptionInput *input = [[RecordingTranscriptionInput alloc]init];
    input.recordingSid = @"recordingSid";
    input.responseType = @"ResponseType";

    [self.transcription recordingTranscriptionAsyncWithRecordingTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="audio_url_transcription_async_with_audio_url_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.audioURLTranscriptionAsyncWithAudioURLTranscriptionInput") audioURLTranscriptionAsyncWithAudioURLTranscriptionInput

> Transcribe an audio recording from a file.


```objc
function audioURLTranscriptionAsyncWithAudioURLTranscriptionInput:(AudioURLTranscriptionInput*) input
                completionBlock:(CompletedPostAudioURLTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audiourl |  ``` Required ```  | URL pointing to the location of the audio file that is to be transcribed. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    AudioURLTranscriptionInput *input = [[AudioURLTranscriptionInput alloc]init];
    input.audiourl = @"audiourl";
    input.responseType = @"ResponseType";

    [self.transcription audioURLTranscriptionAsyncWithAudioURLTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_transcription_async_with_list_transcription_input"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.listTranscriptionAsyncWithListTranscriptionInput") listTranscriptionAsyncWithListTranscriptionInput

> Retrieve a list of transcription objects for your Ytel account.


```objc
function listTranscriptionAsyncWithListTranscriptionInput:(ListTranscriptionInput*) input
                completionBlock:(CompletedPostListTranscription) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| status |  ``` Optional ```  | The state of the transcription. |
| dateTranscribed |  ``` Optional ```  | The date the transcription took place. |





#### Example Usage

```objc
    // Parameters for the API call
    ListTranscriptionInput *input = [[ListTranscriptionInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 84;
    input.pagesize = 84;
    input.status = INPROGRESS;
    input.dateTranscribed = @"dateTranscribed";

    [self.transcription listTranscriptionAsyncWithListTranscriptionInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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

> Retrieve the recording of a call by its RecordingSid. This resource will return information regarding the call such as start time, end time, duration, and so forth.


```objc
function viewRecordingAsyncWithViewRecordingInput:(ViewRecordingInput*) input
                completionBlock:(CompletedPostViewRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for the recording. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewRecordingInput *input = [[ViewRecordingInput alloc]init];
    input.recordingsid = @"recordingsid";
    input.responseType = @"ResponseType";

    [self.recording viewRecordingAsyncWithViewRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_recording_async_with_delete_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.deleteRecordingAsyncWithDeleteRecordingInput") deleteRecordingAsyncWithDeleteRecordingInput

> Remove a recording from your Ytel account.


```objc
function deleteRecordingAsyncWithDeleteRecordingInput:(DeleteRecordingInput*) input
                completionBlock:(CompletedPostDeleteRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for a recording. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteRecordingInput *input = [[DeleteRecordingInput alloc]init];
    input.recordingsid = @"recordingsid";
    input.responseType = @"ResponseType";

    [self.recording deleteRecordingAsyncWithDeleteRecordingInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_recording_async_with_list_recording_input"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.listRecordingAsyncWithListRecordingInput") listRecordingAsyncWithListRecordingInput

> Retrieve a list of recording objects.


```objc
function listRecordingAsyncWithListRecordingInput:(ListRecordingInput*) input
                completionBlock:(CompletedPostListRecording) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| datecreated |  ``` Optional ```  | Filter results by creation date |
| callsid |  ``` Optional ```  | The unique identifier for a call. |





#### Example Usage

```objc
    // Parameters for the API call
    ListRecordingInput *input = [[ListRecordingInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 84;
    input.pagesize = 84;
    input.datecreated = @"Datecreated";
    input.callsid = @"callsid";

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

> Remove an email from the spam email list.


```objc
function deleteSpamAsyncWithDeleteSpamInput:(DeleteSpamInput*) input
                completionBlock:(CompletedPostDeleteSpam) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | A valid email address that is to be remove from the spam list. |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteSpamInput *input = [[DeleteSpamInput alloc]init];
    input.responseType = @"ResponseType";
    input.email = @"Email";

    [self.email deleteSpamAsyncWithDeleteSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_block_async_with_delete_block_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteBlockAsyncWithDeleteBlockInput") deleteBlockAsyncWithDeleteBlockInput

> Remove an email from blocked emails list.


```objc
function deleteBlockAsyncWithDeleteBlockInput:(DeleteBlockInput*) input
                completionBlock:(CompletedPostDeleteBlock) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the blocked list. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteBlockInput *input = [[DeleteBlockInput alloc]init];
    input.email = @"Email";
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
| email |  ``` Required ```  | A valid email address that is to be added to the unsubscribe list |
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

> Create and submit an email message to one or more email addresses.


```objc
function sendEmailAsyncWithSendEmailInput:(SendEmailInput*) input
                completionBlock:(CompletedPostSendEmail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| type |  ``` Required ```  ``` DefaultValue ```  | Specifies the type of email to be sent |
| subject |  ``` Required ```  | The subject of the mail. Must be a valid string. |
| message |  ``` Required ```  | The email message that is to be sent in the text. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| from |  ``` Optional ```  | A valid address that will send the email. |
| cc |  ``` Optional ```  | Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| bcc |  ``` Optional ```  | Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| attachment |  ``` Optional ```  | A file that is attached to the email. Must be less than 7 MB in size. |





#### Example Usage

```objc
    // Parameters for the API call
    SendEmailInput *input = [[SendEmailInput alloc]init];
    input.to = @"To";
    input.type = HTML;
    input.subject = @"Subject";
    input.message = @"Message";
    input.responseType = @"ResponseType";
    input.from = @"From";
    input.cc = @"Cc";
    input.bcc = @"Bcc";
    input.attachment = @"Attachment";

    [self.email sendEmailAsyncWithSendEmailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_unsubscribes_async_with_delete_unsubscribes_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteUnsubscribesAsyncWithDeleteUnsubscribesInput") deleteUnsubscribesAsyncWithDeleteUnsubscribesInput

> Remove an email address from the list of unsubscribed emails.


```objc
function deleteUnsubscribesAsyncWithDeleteUnsubscribesInput:(DeleteUnsubscribesInput*) input
                completionBlock:(CompletedPostDeleteUnsubscribes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the unsubscribe list. |
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

> Retrieve a list of email addresses from the unsubscribe list.


```objc
function listUnsubscribesAsyncWithListUnsubscribesInput:(ListUnsubscribesInput*) input
                completionBlock:(CompletedPostListUnsubscribes) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of unsubscribed emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    ListUnsubscribesInput *input = [[ListUnsubscribesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email listUnsubscribesAsyncWithListUnsubscribesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_invalid_async_with_list_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listInvalidAsyncWithListInvalidInput") listInvalidAsyncWithListInvalidInput

> Retrieve a list of invalid email addresses.


```objc
function listInvalidAsyncWithListInvalidInput:(ListInvalidInput*) input
                completionBlock:(CompletedPostListInvalid) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of invalid emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    ListInvalidInput *input = [[ListInvalidInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email listInvalidAsyncWithListInvalidInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_bounces_async_with_delete_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteBouncesAsyncWithDeleteBouncesInput") deleteBouncesAsyncWithDeleteBouncesInput

> Remove an email address from the bounced list.


```objc
function deleteBouncesAsyncWithDeleteBouncesInput:(DeleteBouncesInput*) input
                completionBlock:(CompletedPostDeleteBounces) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | The email address to be remove from the bounced email list. |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteBouncesInput *input = [[DeleteBouncesInput alloc]init];
    input.responseType = @"ResponseType";
    input.email = @"Email";

    [self.email deleteBouncesAsyncWithDeleteBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_bounces_async_with_list_bounces_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listBouncesAsyncWithListBouncesInput") listBouncesAsyncWithListBouncesInput

> Retrieve a list of emails that have bounced.


```objc
function listBouncesAsyncWithListBouncesInput:(ListBouncesInput*) input
                completionBlock:(CompletedPostListBounces) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of bounced emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    ListBouncesInput *input = [[ListBouncesInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email listBouncesAsyncWithListBouncesInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_spam_async_with_list_spam_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listSpamAsyncWithListSpamInput") listSpamAsyncWithListSpamInput

> Retrieve a list of emails that are on the spam list.


```objc
function listSpamAsyncWithListSpamInput:(ListSpamInput*) input
                completionBlock:(CompletedPostListSpam) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of spam emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    ListSpamInput *input = [[ListSpamInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email listSpamAsyncWithListSpamInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_blocks_async_with_list_blocks_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.listBlocksAsyncWithListBlocksInput") listBlocksAsyncWithListBlocksInput

> Retrieve a list of emails that have been blocked.


```objc
function listBlocksAsyncWithListBlocksInput:(ListBlocksInput*) input
                completionBlock:(CompletedPostListBlocks) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of blocked emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |





#### Example Usage

```objc
    // Parameters for the API call
    ListBlocksInput *input = [[ListBlocksInput alloc]init];
    input.responseType = @"ResponseType";
    input.offset = @"Offset";
    input.limit = @"Limit";

    [self.email listBlocksAsyncWithListBlocksInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_invalid_async_with_delete_invalid_input"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.deleteInvalidAsyncWithDeleteInvalidInput") deleteInvalidAsyncWithDeleteInvalidInput

> Remove an email from the invalid email list.


```objc
function deleteInvalidAsyncWithDeleteInvalidInput:(DeleteInvalidInput*) input
                completionBlock:(CompletedPostDeleteInvalid) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the invalid email list. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteInvalidInput *input = [[DeleteInvalidInput alloc]init];
    input.email = @"Email";
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

> Send an SMS from a Ytel number


```objc
function sendSMSAsyncWithSendSMSInput:(SendSMSInput*) input
                completionBlock:(CompletedPostSendSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent. |
| to |  ``` Required ```  | The 10-digit phone number (E.164 format) that will receive the message. |
| body |  ``` Required ```  | The body message that is to be sent in the text. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messageStatusCallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Required ```  ``` DefaultValue ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |
| deliveryStatus |  ``` Required ```  ``` DefaultValue ```  | Delivery reports are a method to tell your system if the message has arrived on the destination phone. |





#### Example Usage

```objc
    // Parameters for the API call
    SendSMSInput *input = [[SendSMSInput alloc]init];
    input.from = @"From";
    input.to = @"To";
    input.body = @"Body";
    input.responseType = @"ResponseType";
    input.method = GET;
    input.messageStatusCallback = @"MessageStatusCallback";
    input.smartsms = false;
    input.deliveryStatus = false;

    [self.sMS sendSMSAsyncWithSendSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_sms_async_with_view_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.viewSMSAsyncWithViewSMSInput") viewSMSAsyncWithViewSMSInput

> Retrieve a single SMS message object by its SmsSid.


```objc
function viewSMSAsyncWithViewSMSInput:(ViewSMSInput*) input
                completionBlock:(CompletedPostViewSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewSMSInput *input = [[ViewSMSInput alloc]init];
    input.messageSid = @"MessageSid";
    input.responseType = @"ResponseType";

    [self.sMS viewSMSAsyncWithViewSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_sms_async_with_list_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.listSMSAsyncWithListSMSInput") listSMSAsyncWithListSMSInput

> Retrieve a list of Outbound SMS message objects.


```objc
function listSMSAsyncWithListSMSInput:(ListSMSInput*) input
                completionBlock:(CompletedPostListSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |





#### Example Usage

```objc
    // Parameters for the API call
    ListSMSInput *input = [[ListSMSInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 84;
    input.pageSize = 84;
    input.from = @"From";
    input.to = @"To";
    input.dateSent = @"DateSent";

    [self.sMS listSMSAsyncWithListSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_inbound_sms_async_with_list_inbound_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.listInboundSMSAsyncWithListInboundSMSInput") listInboundSMSAsyncWithListInboundSMSInput

> Retrieve a list of Inbound SMS message objects.


```objc
function listInboundSMSAsyncWithListInboundSMSInput:(ListInboundSMSInput*) input
                completionBlock:(CompletedPostListInboundSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| dateSent |  ``` Optional ```  | Filter sms message objects by this date. |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundSMSInput *input = [[ListInboundSMSInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 84;
    input.pageSize = 84;
    input.from = @"From";
    input.to = @"To";
    input.dateSent = @"DateSent";

    [self.sMS listInboundSMSAsyncWithListInboundSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_detail_sms_async_with_view_detail_sms_input"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.viewDetailSMSAsyncWithViewDetailSMSInput") viewDetailSMSAsyncWithViewDetailSMSInput

> Retrieve a single SMS message object with details by its SmsSid.


```objc
function viewDetailSMSAsyncWithViewDetailSMSInput:(ViewDetailSMSInput*) input
                completionBlock:(CompletedPostViewDetailSMS) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageSid |  ``` Required ```  | The unique identifier for a sms message. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewDetailSMSInput *input = [[ViewDetailSMSInput alloc]init];
    input.messageSid = @"MessageSid";
    input.responseType = @"ResponseType";

    [self.sMS viewDetailSMSAsyncWithViewDetailSMSInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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

> You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json


```objc
function makeCallAsyncWithMakeCallInput:(MakeCallInput*) input
                completionBlock:(CompletedPostMakeCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
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
    input.timeout = 84;
    input.playDtmf = @"PlayDtmf";
    input.hideCallerId = false;
    input.record = false;
    input.recordCallBackUrl = @"RecordCallBackUrl";
    input.recordCallBackMethod = GET;
    input.transcribe = false;
    input.transcribeCallBackUrl = @"TranscribeCallBackUrl";
    input.ifMachine = CONTINUE;
    input.ifMachineUrl = @"IfMachineUrl";
    input.ifMachineMethod = GET;
    input.feedback = false;
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
    input.length = 84;
    input.direction = IN;
    input.mix = false;

    [self.call playAudioAsyncWithPlayAudioInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="record_call_async_with_record_call_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.recordCallAsyncWithRecordCallInput") recordCallAsyncWithRecordCallInput

> Start or stop recording of an in-progress voice call.


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
    input.record = false;
    input.responseType = @"ResponseType";
    input.direction = IN;
    input.timeLimit = 84;
    input.callBackUrl = @"CallBackUrl";
    input.fileformat = MP3;

    [self.call recordCallAsyncWithRecordCallInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="voice_effect_async_with_voice_effect_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.voiceEffectAsyncWithVoiceEffectInput") voiceEffectAsyncWithVoiceEffectInput

> Add audio voice effects to the an in-progress voice call.


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
| pitchSemiTones |  ``` Optional ```  | Set the pitch in semitone (half-step) intervals. Value between -14 and 14 |
| pitchOctaves |  ``` Optional ```  | Set the pitch in octave intervals.. Value between -1 and 1 |
| pitch |  ``` Optional ```  | Set the pitch (lowness/highness) of the audio. The higher the value, the higher the pitch. Value greater than 0 |
| rate |  ``` Optional ```  | Set the rate for audio. The lower the value, the lower the rate. value greater than 0 |
| tempo |  ``` Optional ```  | Set the tempo (speed) of the audio. A higher value denotes a faster tempo. Value greater than 0 |





#### Example Usage

```objc
    // Parameters for the API call
    VoiceEffectInput *input = [[VoiceEffectInput alloc]init];
    input.callSid = @"CallSid";
    input.responseType = @"ResponseType";
    input.audioDirection = IN;
    input.pitchSemiTones = 84.8827525018168;
    input.pitchOctaves = 84.8827525018168;
    input.pitch = 84.8827525018168;
    input.rate = 84.8827525018168;
    input.tempo = 84.8827525018168;

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
| callSid |  ``` Required ```  | The unique identifier for voice call that is in progress. |
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


### <a name="list_calls_async_with_list_calls_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.listCallsAsyncWithListCallsInput") listCallsAsyncWithListCallsInput

> A list of calls associated with your Ytel account


```objc
function listCallsAsyncWithListCallsInput:(ListCallsInput*) input
                completionBlock:(CompletedPostListCalls) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Filter calls that were sent to this 10-digit number (E.164 format). |
| from |  ``` Optional ```  | Filter calls that were sent from this 10-digit number (E.164 format). |
| dateCreated |  ``` Optional ```  | Return calls that are from a specified date. |





#### Example Usage

```objc
    // Parameters for the API call
    ListCallsInput *input = [[ListCallsInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pageSize = 176;
    input.to = @"To";
    input.from = @"From";
    input.dateCreated = @"DateCreated";

    [self.call listCallsAsyncWithListCallsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="send_ringless_vm_async_with_send_ringless_vm_input"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.sendRinglessVMAsyncWithSendRinglessVMInput") sendRinglessVMAsyncWithSendRinglessVMInput

> Initiate an outbound Ringless Voicemail through Ytel.


```objc
function sendRinglessVMAsyncWithSendRinglessVMInput:(SendRinglessVMInput*) input
                completionBlock:(CompletedPostSendRinglessVM) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| rVMCallerId |  ``` Required ```  | A required secondary Caller ID for RVM to work. |
| to |  ``` Required ```  | A valid number (E.164 format) that will receive the phone call. |
| voiceMailURL |  ``` Required ```  | The URL requested once the RVM connects. A set of default parameters will be sent here. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| statusCallBackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| statsCallBackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |





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

> Retrieve a single voice call’s information by its CallSid.


```objc
function viewCallAsyncWithViewCallInput:(ViewCallInput*) input
                completionBlock:(CompletedPostViewCall) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | The unique identifier for the voice call. |
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


### <a name="view_call_detail_async_with_call_sid"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.viewCallDetailAsyncWithCallSid") viewCallDetailAsyncWithCallSid

> Retrieve a single voice call’s information by its CallSid.


```objc
function viewCallDetailAsyncWithCallSid:(NSString*) callSid
                responseType:(NSString*) responseType
                completionBlock:(CompletedPostViewCallDetail) onCompleted(callSid responseType : responseType)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callSid |  ``` Required ```  | The unique identifier for the voice call. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* callSid = @"callSid";
    NSString* responseType = @"ResponseType";

    [self.call viewCallDetailAsyncWithCallSid: callSid responseType : responseType  completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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
    input.timeout = 176;
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


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance
```objc
Carrier* carrier = [[Carrier alloc]init] ;
```

### <a name="carrier_lookup_list_async_with_carrier_lookup_list_input"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrierLookupListAsyncWithCarrierLookupListInput") carrierLookupListAsyncWithCarrierLookupListInput

> Retrieve a list of carrier lookup objects.


```objc
function carrierLookupListAsyncWithCarrierLookupListInput:(CarrierLookupListInput*) input
                completionBlock:(CompletedPostCarrierLookupList) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pageSize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    CarrierLookupListInput *input = [[CarrierLookupListInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pageSize = 176;

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
| phoneNumber |  ``` Required ```  | A valid 10-digit number (E.164 format). |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CarrierLookupInput *input = [[CarrierLookupInput alloc]init];
    input.phoneNumber = @"PhoneNumber";
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
| addressid |  ``` Required ```  | The identifier of the address to be retrieved. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    ViewAddressInput *input = [[ViewAddressInput alloc]init];
    input.addressid = @"addressid";
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
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressid |  ``` Optional ```  | addresses Sid |
| dateCreated |  ``` Optional ```  | date created address. |





#### Example Usage

```objc
    // Parameters for the API call
    ListAddressInput *input = [[ListAddressInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pagesize = 176;
    input.addressid = @"addressid";
    input.dateCreated = @"dateCreated";

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
| addressid |  ``` Required ```  | The identifier of the address to be verified. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    VerifyAddressInput *input = [[VerifyAddressInput alloc]init];
    input.addressid = @"addressid";
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
| addressid |  ``` Required ```  | The identifier of the address to be deleted. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteAddressInput *input = [[DeleteAddressInput alloc]init];
    input.addressid = @"addressid";
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
| friendlyName |  ``` Required ```  | Descriptive name of the sub account |
| password |  ``` Required ```  | The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    CreateSubAccountInput *input = [[CreateSubAccountInput alloc]init];
    input.firstName = @"FirstName";
    input.lastName = @"LastName";
    input.email = @"Email";
    input.friendlyName = @"FriendlyName";
    input.password = @"Password";
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

> Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.


```objc
function viewAccountAsyncWithViewAccountInput:(ViewAccountInput*) input
                completionBlock:(CompletedPostViewAccount) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | Filter account information based on date. |
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

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance
```objc
Usage* usage = [[Usage alloc]init] ;
```

### <a name="list_usage_async_with_list_usage_input"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.listUsageAsyncWithListUsageInput") listUsageAsyncWithListUsageInput

> Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.


```objc
function listUsageAsyncWithListUsageInput:(ListUsageInput*) input
                completionBlock:(CompletedPostListUsage) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| productCode |  ``` Required ```  ``` DefaultValue ```  | Filter usage results by product type. |
| startDate |  ``` Required ```  ``` DefaultValue ```  | Filter usage objects by start date. |
| endDate |  ``` Required ```  ``` DefaultValue ```  | Filter usage objects by end date. |
| includeSubAccounts |  ``` Optional ```  | Will include all subaccount usage data |





#### Example Usage

```objc
    // Parameters for the API call
    ListUsageInput *input = [[ListUsageInput alloc]init];
    input.responseType = @"ResponseType";
    input.productCode = ALL;
    input.startDate = @"startDate";
    input.endDate = @"endDate";
    input.includeSubAccounts = @"IncludeSubAccounts";

    [self.usage listUsageAsyncWithListUsageInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
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
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |





#### Example Usage

```objc
    // Parameters for the API call
    SendDedicatedShortcodeInput *input = [[SendDedicatedShortcodeInput alloc]init];
    input.shortcode = 176;
    input.to = 176.378034393479;
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
    input.page = 176;
    input.pageSize = 176;

    [self.shortCode listShortcodeAsyncWithListShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_inbound_shortcode_async_with_list_inbound_shortcode_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.listInboundShortcodeAsyncWithListInboundShortcodeInput") listInboundShortcodeAsyncWithListInboundShortcodeInput

> Retrive a list of inbound Sms Short Code messages associated with your Ytel account.


```objc
function listInboundShortcodeAsyncWithListInboundShortcodeInput:(ListInboundShortcodeInput*) input
                completionBlock:(CompletedPostListInboundShortcode) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| datecreated |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |





#### Example Usage

```objc
    // Parameters for the API call
    ListInboundShortcodeInput *input = [[ListInboundShortcodeInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pagesize = 176;
    input.from = @"From";
    input.shortcode = @"Shortcode";
    input.datecreated = @"Datecreated";

    [self.shortCode listInboundShortcodeAsyncWithListInboundShortcodeInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_dedicated_shortcode_assignment_async_with_view_dedicated_shortcode_assignment_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.viewDedicatedShortcodeAssignmentAsyncWithViewDedicatedShortcodeAssignmentInput") viewDedicatedShortcodeAssignmentAsyncWithViewDedicatedShortcodeAssignmentInput

> Retrieve a single Short Code object by its shortcode assignment.


```objc
function viewDedicatedShortcodeAssignmentAsyncWithViewDedicatedShortcodeAssignmentInput:(ViewDedicatedShortcodeAssignmentInput*) input
                completionBlock:(CompletedPostViewDedicatedShortcodeAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Dedicated Short Code to your Ytel account |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |





#### Example Usage

```objc
    // Parameters for the API call
    ViewDedicatedShortcodeAssignmentInput *input = [[ViewDedicatedShortcodeAssignmentInput alloc]init];
    input.shortcode = @"Shortcode";
    input.responseType = @"ResponseType";

    [self.shortCode viewDedicatedShortcodeAssignmentAsyncWithViewDedicatedShortcodeAssignmentInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="update_dedicated_short_code_assignment_async_with_update_dedicated_short_code_assignment_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.updateDedicatedShortCodeAssignmentAsyncWithUpdateDedicatedShortCodeAssignmentInput") updateDedicatedShortCodeAssignmentAsyncWithUpdateDedicatedShortCodeAssignmentInput

> Update a dedicated shortcode.


```objc
function updateDedicatedShortCodeAssignmentAsyncWithUpdateDedicatedShortCodeAssignmentInput:(UpdateDedicatedShortCodeAssignmentInput*) input
                completionBlock:(CompletedPostUpdateDedicatedShortCodeAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid dedicated shortcode to your Ytel account. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendlyName |  ``` Optional ```  | User generated name of the dedicated shortcode. |
| callbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| callbackUrl |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| fallbackMethod |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| fallbackUrl |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |





#### Example Usage

```objc
    // Parameters for the API call
    UpdateDedicatedShortCodeAssignmentInput *input = [[UpdateDedicatedShortCodeAssignmentInput alloc]init];
    input.shortcode = @"Shortcode";
    input.responseType = @"ResponseType";
    input.friendlyName = @"FriendlyName";
    input.callbackMethod = @"CallbackMethod";
    input.callbackUrl = @"CallbackUrl";
    input.fallbackMethod = @"FallbackMethod";
    input.fallbackUrl = @"FallbackUrl";

    [self.shortCode updateDedicatedShortCodeAssignmentAsyncWithUpdateDedicatedShortCodeAssignmentInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_short_code_assignment_async_with_list_short_code_assignment_input"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.listShortCodeAssignmentAsyncWithListShortCodeAssignmentInput") listShortCodeAssignmentAsyncWithListShortCodeAssignmentInput

> Retrieve a list of Short Code assignment associated with your Ytel account.


```objc
function listShortCodeAssignmentAsyncWithListShortCodeAssignmentInput:(ListShortCodeAssignmentInput*) input
                completionBlock:(CompletedPostListShortCodeAssignment) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| shortcode |  ``` Optional ```  | Only list Short Code Assignment sent from this Short Code |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |





#### Example Usage

```objc
    // Parameters for the API call
    ListShortCodeAssignmentInput *input = [[ListShortCodeAssignmentInput alloc]init];
    input.responseType = @"ResponseType";
    input.shortcode = @"Shortcode";
    input.page = @"page";
    input.pagesize = @"pagesize";

    [self.shortCode listShortCodeAssignmentAsyncWithListShortCodeAssignmentInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostCardController") PostCardController

### Get singleton instance
```objc
PostCard* postCard = [[PostCard alloc]init] ;
```

### <a name="view_postcard_async_with_view_postcard_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.viewPostcardAsyncWithViewPostcardInput") viewPostcardAsyncWithViewPostcardInput

> Retrieve a postcard object by its PostcardId.


```objc
function viewPostcardAsyncWithViewPostcardInput:(ViewPostcardInput*) input
                completionBlock:(CompletedPostViewPostcard) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier for a postcard object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    ViewPostcardInput *input = [[ViewPostcardInput alloc]init];
    input.postcardid = @"postcardid";
    input.responseType = @"ResponseType";

    [self.postCard viewPostcardAsyncWithViewPostcardInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_postcard_async_with_create_postcard_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.createPostcardAsyncWithCreatePostcardInput") createPostcardAsyncWithCreatePostcardInput

> Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.


```objc
function createPostcardAsyncWithCreatePostcardInput:(CreatePostcardInput*) input
                completionBlock:(CompletedPostCreatePostcard) onCompleted(input)
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
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A description for the postcard. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    CreatePostcardInput *input = [[CreatePostcardInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.attachbyid = @"attachbyid";
    input.front = @"front";
    input.back = @"back";
    input.message = @"message";
    input.setting = @"setting";
    input.responseType = @"ResponseType";
    input.description = @"description";
    input.htmldata = @"htmldata";

    [self.postCard createPostcardAsyncWithCreatePostcardInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_postcards_async_with_list_postcards_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.listPostcardsAsyncWithListPostcardsInput") listPostcardsAsyncWithListPostcardsInput

> Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.


```objc
function listPostcardsAsyncWithListPostcardsInput:(ListPostcardsInput*) input
                completionBlock:(CompletedPostListPostcards) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| postcardid |  ``` Optional ```  | The unique identifier for a postcard object. |
| dateCreated |  ``` Optional ```  | The date the postcard was created. |





#### Example Usage

```objc
    // Parameters for the API call
    ListPostcardsInput *input = [[ListPostcardsInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pagesize = 176;
    input.postcardid = @"postcardid";
    input.dateCreated = @"dateCreated";

    [self.postCard listPostcardsAsyncWithListPostcardsInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_postcard_async_with_delete_postcard_input"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.deletePostcardAsyncWithDeletePostcardInput") deletePostcardAsyncWithDeletePostcardInput

> Remove a postcard object.


```objc
function deletePostcardAsyncWithDeletePostcardInput:(DeletePostcardInput*) input
                completionBlock:(CompletedPostDeletePostcard) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier of a postcard object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeletePostcardInput *input = [[DeletePostcardInput alloc]init];
    input.postcardid = @"postcardid";
    input.responseType = @"ResponseType";

    [self.postCard deletePostcardAsyncWithDeletePostcardInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LetterController") LetterController

### Get singleton instance
```objc
Letter* letter = [[Letter alloc]init] ;
```

### <a name="view_letter_async_with_view_letter_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.viewLetterAsyncWithViewLetterInput") viewLetterAsyncWithViewLetterInput

> Retrieve a letter object by its LetterSid.


```objc
function viewLetterAsyncWithViewLetterInput:(ViewLetterInput*) input
                completionBlock:(CompletedPostViewLetter) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    ViewLetterInput *input = [[ViewLetterInput alloc]init];
    input.lettersid = @"lettersid";
    input.responseType = @"ResponseType";

    [self.letter viewLetterAsyncWithViewLetterInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="create_letter_async_with_create_letter_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.createLetterAsyncWithCreateLetterInput") createLetterAsyncWithCreateLetterInput

> Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.


```objc
function createLetterAsyncWithCreateLetterInput:(CreateLetterInput*) input
                completionBlock:(CompletedPostCreateLetter) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing letter by attaching its LetterId. |
| file |  ``` Required ```  | File can be a 8.5"x11" PDF uploaded file or URL that links to a file. |
| color |  ``` Required ```  | Specify if letter should be printed in color. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A description for the letter. |
| extraservice |  ``` Optional ```  | Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50. |
| doublesided |  ``` Optional ```  | Specify if letter should be printed on both sides. |
| template |  ``` Optional ```  | Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateLetterInput *input = [[CreateLetterInput alloc]init];
    input.to = @"to";
    input.from = @"from";
    input.attachbyid = @"attachbyid";
    input.file = @"file";
    input.color = @"color";
    input.responseType = @"ResponseType";
    input.description = @"description";
    input.extraservice = @"extraservice";
    input.doublesided = @"doublesided";
    input.template = @"template";
    input.htmldata = @"htmldata";

    [self.letter createLetterAsyncWithCreateLetterInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_letters_async_with_list_letters_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.listLettersAsyncWithListLettersInput") listLettersAsyncWithListLettersInput

> Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.


```objc
function listLettersAsyncWithListLettersInput:(ListLettersInput*) input
                completionBlock:(CompletedPostListLetters) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| lettersid |  ``` Optional ```  | The unique identifier for a letter object. |
| dateCreated |  ``` Optional ```  | The date the letter was created. |





#### Example Usage

```objc
    // Parameters for the API call
    ListLettersInput *input = [[ListLettersInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pagesize = 176;
    input.lettersid = @"lettersid";
    input.dateCreated = @"dateCreated";

    [self.letter listLettersAsyncWithListLettersInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_letter_async_with_delete_letter_input"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.deleteLetterAsyncWithDeleteLetterInput") deleteLetterAsyncWithDeleteLetterInput

> Remove a letter object by its LetterId.


```objc
function deleteLetterAsyncWithDeleteLetterInput:(DeleteLetterInput*) input
                completionBlock:(CompletedPostDeleteLetter) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteLetterInput *input = [[DeleteLetterInput alloc]init];
    input.lettersid = @"lettersid";
    input.responseType = @"ResponseType";

    [self.letter deleteLetterAsyncWithDeleteLetterInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

## <a name="area_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AreaMailController") AreaMailController

### Get singleton instance
```objc
AreaMail* areaMail = [[AreaMail alloc]init] ;
```

### <a name="create_area_mail_async_with_create_area_mail_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.createAreaMailAsyncWithCreateAreaMailInput") createAreaMailAsyncWithCreateAreaMailInput

> Create a new AreaMail object.


```objc
function createAreaMailAsyncWithCreateAreaMailInput:(CreateAreaMailInput*) input
                completionBlock:(CompletedPostCreateAreaMail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| routes |  ``` Required ```  | List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043 |
| attachbyid |  ``` Required ```  | Set an existing areamail by attaching its AreamailId. |
| front |  ``` Required ```  | The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required |
| back |  ``` Required ```  | The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A string value to use as a description for this AreaMail item. |
| targettype |  ``` Optional ```  | The delivery location type. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |





#### Example Usage

```objc
    // Parameters for the API call
    CreateAreaMailInput *input = [[CreateAreaMailInput alloc]init];
    input.routes = @"routes";
    input.attachbyid = @"attachbyid";
    input.front = @"front";
    input.back = @"back";
    input.responseType = @"ResponseType";
    input.description = @"description";
    input.targettype = @"targettype";
    input.htmldata = @"htmldata";

    [self.areaMail createAreaMailAsyncWithCreateAreaMailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="view_area_mail_async_with_view_area_mail_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.viewAreaMailAsyncWithViewAreaMailInput") viewAreaMailAsyncWithViewAreaMailInput

> Retrieve an AreaMail object by its AreaMailId.


```objc
function viewAreaMailAsyncWithViewAreaMailInput:(ViewAreaMailInput*) input
                completionBlock:(CompletedPostViewAreaMail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    ViewAreaMailInput *input = [[ViewAreaMailInput alloc]init];
    input.areamailid = @"areamailid";
    input.responseType = @"ResponseType";

    [self.areaMail viewAreaMailAsyncWithViewAreaMailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="list_area_mail_async_with_list_area_mail_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.listAreaMailAsyncWithListAreaMailInput") listAreaMailAsyncWithListAreaMailInput

> Retrieve a list of AreaMail objects.


```objc
function listAreaMailAsyncWithListAreaMailInput:(ListAreaMailInput*) input
                completionBlock:(CompletedPostListAreaMail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Required ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Required ```  ``` DefaultValue ```  | The count of objects to return per page. |
| areamailsid |  ``` Optional ```  | The unique identifier for an AreaMail object. |
| dateCreated |  ``` Optional ```  | The date the AreaMail was created. |





#### Example Usage

```objc
    // Parameters for the API call
    ListAreaMailInput *input = [[ListAreaMailInput alloc]init];
    input.responseType = @"ResponseType";
    input.page = 176;
    input.pagesize = 176;
    input.areamailsid = @"areamailsid";
    input.dateCreated = @"dateCreated";

    [self.areaMail listAreaMailAsyncWithListAreaMailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


### <a name="delete_area_mail_async_with_delete_area_mail_input"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.deleteAreaMailAsyncWithDeleteAreaMailInput") deleteAreaMailAsyncWithDeleteAreaMailInput

> Remove an AreaMail object by its AreaMailId.


```objc
function deleteAreaMailAsyncWithDeleteAreaMailInput:(DeleteAreaMailInput*) input
                completionBlock:(CompletedPostDeleteAreaMail) onCompleted(input)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |
| responseType |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |





#### Example Usage

```objc
    // Parameters for the API call
    DeleteAreaMailInput *input = [[DeleteAreaMailInput alloc]init];
    input.areamailid = @"areamailid";
    input.responseType = @"ResponseType";

    [self.areaMail deleteAreaMailAsyncWithDeleteAreaMailInput: input completionBlock:^(BOOL success, HttpContext* context, NSString* response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



