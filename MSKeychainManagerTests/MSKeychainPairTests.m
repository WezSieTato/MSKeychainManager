//
//  MSKeychainManagerTests.m
//  MSKeychainManagerTests
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MSKeychainPair.h"

@interface MSKeychainPairTests : XCTestCase

@end

@implementation MSKeychainPairTests

- (void)testNewWithValues{
    MSKeychainPair* pair = [MSKeychainPair pairWithUsername:@"username" andPassword:@"password"];
    
    XCTAssertEqualObjects(pair.username, @"username");
    XCTAssertEqualObjects(pair.password, @"password");
}


-(void)testEqual{
    MSKeychainPair* pair = [MSKeychainPair pairWithUsername:@"1" andPassword:@"2"];
    MSKeychainPair* pair1 = [MSKeychainPair pairWithUsername:@"1" andPassword:@"3"];
    
    XCTAssertFalse([pair isEqualToPair:pair1]);
    XCTAssertFalse([pair isEqual:pair1]);
    
    pair1.password = @"2";
    XCTAssertTrue([pair isEqualToPair:pair1]);
    XCTAssertTrue([pair isEqual:pair1]);
    
}

@end
