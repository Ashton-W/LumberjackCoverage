//
//  FooBarTests.m
//  LumberjackCoverage
//
//  Created by Ashton Williams on 23/02/2015.
//  Copyright (c) 2015 Ashton-W. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "FooBar.h"

@interface FooBarTests : XCTestCase

@end

@implementation FooBarTests

- (void)testFooBar {
    NSLog(@"\n\n\n");
    
    FooBar *fooBar = [FooBar new];
    BOOL bar = [fooBar foo];
    
    NSLog(@"\n\n\n");
    
    XCTAssertTrue(bar);
}

@end
