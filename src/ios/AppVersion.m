#import "AppVersion.h"
#import <Cordova/CDVPluginResult.h>

@implementation AppVersion

- (void)getVersionName:(CDVInvokedUrlCommand*)command
{
    NSString* callbackId = command.callbackId;
    NSString* version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];

    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:version];
    javaScript = [pluginResult toSuccessCallbackString:callbackId];

    [self writeJavascript:javaScript];
}

- (void)getVersionCode:(CDVInvokedUrlCommand*)command
{
    NSString* callbackId = command.callbackId;
    NSString* version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];

    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:version];
    javaScript = [pluginResult toSuccessCallbackString:callbackId];

    [self writeJavascript:javaScript];
}

@end
