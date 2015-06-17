//
//  FrameworkViewController.m
//  ExampleFramework
//
//  Created by Martin Andreas Ullrich on 14.06.15.
//  Copyright (c) 2015 Martin Andreas Ullrich. All rights reserved.
//

#import "FrameworkViewController.h"

@interface FrameworkViewController ()

@end

@implementation FrameworkViewController {
    BOOL _greetingShown;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (!_greetingShown) {
        _greetingShown = YES;
        
        NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:NSLocalizedStringFromTableInBundle(@"Hello", nil, currentBundle, nil) message:NSLocalizedStringFromTableInBundle(@"Welcome", nil, currentBundle, nil) preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTableInBundle(@"OK", nil, currentBundle, nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [alert dismissViewControllerAnimated:YES completion:NULL];
        }];
        
        [alert addAction:okAction];
        
        [self presentViewController:alert animated:YES completion:NULL];
    }
}

- (IBAction)close:(id)sender {
    // this could also use a custom delegate function to handle complex presentaiton
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
