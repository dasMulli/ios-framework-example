//
//  ExampleFrameworkManager.m
//  ExampleFramework
//
//  Created by Martin Andreas Ullrich on 14.06.15.
//  Copyright (c) 2015 Martin Andreas Ullrich. All rights reserved.
//

#import "ExampleFrameworkManager.h"

@interface ExampleFrameworkManager ()

@property (nonatomic, strong, nonnull) UIStoryboard *frameworkStoryboard;

@end

@implementation ExampleFrameworkManager

- (id)initWithApplication:(UIApplication *)application
{
    self = [super init];
    if (self) {
        NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
        self.frameworkStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:frameworkBundle];
        
        // do other work here - like request push tokens from UIApplication,
        // register for notifications like UIApplicationDidBecomeActiveNotification, UIApplicationDidEnterBackgroundNotification,
        // or set up network libraries, custom threads etc.
    }
    return self;
}

- (UIViewController *)instantiateInitialViewController
{
    return [self.frameworkStoryboard instantiateInitialViewController];
}

@end
