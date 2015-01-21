//
//  MSKeychainManager.h
//  MYOrse
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSKeychainPair.h"

@interface MSKeychainManager : NSObject

-(void)saveUsername:(NSString*)user withPassword:(NSString*)pass forServer:(NSString*)server;
-(void)removeAllCredentialsForServer:(NSString*)server;
-(MSKeychainPair*)getCredentialsForServer:(NSString*)server;

@end
