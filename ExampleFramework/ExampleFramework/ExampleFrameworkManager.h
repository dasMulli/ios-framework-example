//
//  ExampleFrameworkManager.h
//  ExampleFramework
//
//  Created by Martin Andreas Ullrich on 14.06.15.
//  Copyright (c) 2015 Martin Andreas Ullrich. All rights reserved.
//

@import UIKit;

@interface ExampleFrameworkManager : NSObject

// main entry point - we expect this to be initialized when the application is stated
- (instancetype)initWithApplication:(UIApplication *)application NS_DESIGNATED_INITIALIZER;

- (UIViewController *)instantiateInitialViewController;

@end
