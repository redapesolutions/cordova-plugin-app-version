#import <Cordova/CDVPlugin.h>

@interface AppVersion : CDVPlugin

- (void)getVersionName:(CDVInvokedUrlCommand*)command;
- (void)getVersionCode:(CDVInvokedUrlCommand*)command;

@end
