//
//  FooBar.m
//  LumberjackCoverage
//
//  Created by Ashton Williams on 23/02/2015.
//  Copyright (c) 2015 Ashton-W. All rights reserved.
//

#import "FooBar.h"
#import "DDLog.h"

int ddLogLevel = LOG_LEVEL_ERROR;

@implementation FooBar

- (BOOL)foo {
    
    DDLogVerbose(@"Verbose %@", self);
    
    DDLogError(@"Error %@", self);
    
    [self ignoredByCoverage];
    
    return YES;
}

- (void)ignoredByCoverage {
    // LCOV_EXCL_START
    
    if (YES) {
        DDLogError(@"Woo!");
    }
    
    int i = 0;
    
    if (arc4random() % 2) {
        i++;
        if (arc4random() % 2) {
            i--;
            if (arc4random() % 2) {
                i++;
            }
            else {
                i--;
            }
        }
        else {
            i++;
        }
    }
    
    // LCOV_EXCL_STOP
}

@end
