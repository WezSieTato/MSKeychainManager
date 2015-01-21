//
//  MSKeychainPair.h
//  MSKeychainManager
//
//  Created by Marcin Stepnowski on 21/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSKeychainPair : NSObject

@property (atomic, strong) NSString* username;
@property (atomic, strong) NSString* password;

-(instancetype)initWithUsername:(NSString*)username andPassword:(NSString*)password;
+(instancetype)pairWithUsername:(NSString*)username andPassword:(NSString*)password;

-(BOOL)isEqualToPair:(MSKeychainPair *)other;

@end
