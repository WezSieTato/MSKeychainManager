//
//  MSKeychainManager.h
//  MSKeychainManager
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSKeychainPair.h"

@interface MSPairKeychainManager : NSObject

/**
 *  Save username and pass to keychain for servername
 *  uses bundle id
 *
 *  @param user
 *  @param pass
 */
+(void)saveUsername:(NSString*)user withPassword:(NSString*)pass;

/**
 *  Remove username and pass from keychain for servername
 *  uses bundle id
 */
+(void)removeAllCredentials;

/**
 *  Get username and pass from keychain for servername
 *  uses bundle id
 *
 *  @return username and password pair
 */
+(MSKeychainPair*)getCredentials;

+(void)saveUsername:(NSString*)user withPassword:(NSString*)pass forServer:(NSString*)server;
+(void)removeAllCredentialsForServer:(NSString*)server;
+(MSKeychainPair*)getCredentialsForServer:(NSString*)server;

@end
