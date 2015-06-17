//
//  ViewController.m
//  ExampleHostingApplication
//
//  Created by Martin Andreas Ullrich on 14.06.15.
//  Copyright (c) 2015 CSS GmbH. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startExtension:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    UIViewController *frameworkViewController = [appDelegate.exampleFrameworkManager instantiateInitialViewController];
    
    if (frameworkViewController) {
        // use iOS 8 adaptive presentation
        frameworkViewController.modalPresentationStyle = UIModalPresentationFormSheet;
        
        [self presentViewController:frameworkViewController animated:YES completion:NULL];
    }
}

@end
