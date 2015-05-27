//
//  MSSimpleKeychainManager.h
//  MSKeychainManager
//
//  Found on StackOverflow.com
//  http://stackoverflow.com/questions/5247912/saving-email-password-to-keychain-in-ios
//

#import <Foundation/Foundation.h>

@interface MSSimpleKeychainManager : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
