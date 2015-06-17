//
//  AppDelegate.h
//  ExampleHostingApplication
//
//  Created by Martin Andreas Ullrich on 14.06.15.
//  Copyright (c) 2015 CSS GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
@import ExampleFramework;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic, nullable) UIWindow *window;

// i know it's ugly to to publish the manager here but it's just a demo :)
@property (strong, nonatomic, nullable) ExampleFrameworkManager *exampleFrameworkManager;

@end

