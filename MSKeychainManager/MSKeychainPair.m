//
//  MSKeychainPair.m
//  MSKeychainManager
//
//  Created by Marcin Stepnowski on 21/01/15.
//  Copyright (c) 2015 siema. All rights reserved.
//

#import "MSKeychainPair.h"

@implementation MSKeychainPair

#pragma mark - Creation

-(instancetype)initWithUsername:(NSString*)username andPassword:(NSString *)password{
    self = [super init];
    if(self){
        self.username = username;
        self.password = password;
    }
    
    return self;
}

+(instancetype)pairWithUsername:(NSString *)username andPassword:(NSString *)password{
    return [[self alloc] initWithUsername:username andPassword:password];
}

#pragma mark - Public methods

-(BOOL)isEqualToPair:(MSKeychainPair *)other{
    if (other == self) {
        return YES;
    } else if( [other isKindOfClass:[MSKeychainPair class]]){
        MSKeychainPair* otherPair = (MSKeychainPair*)other;
        BOOL firstResult = [self.username isEqual:otherPair.username];
        BOOL secondResult = [self.password isEqual:otherPair.password];
        return firstResult && secondResult;
    }
    
    return NO;
}

#pragma mark - NSObject method

-(NSString*)description{
    return [NSString stringWithFormat:@"Username: %@ Password: %@", self.username, self.password];
}

- (BOOL)isEqual:(id)other
{
    if (other == self) {
        return YES;
        //    } else if (![super isEqual:other]) {
        //        return NO;
    } else if( [other isKindOfClass:[MSKeychainPair class]]){
        return [self isEqualToPair:(MSKeychainPair *)other];
    }
    
    return NO;
}

- (NSUInteger)hash
{
    return [self.username hash] - (NSUInteger)self.password + [self.username hash] + (NSUInteger)self.password;
}

@end
