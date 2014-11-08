//
//  ViewController.m
//  PropertyListApp
//
//  Created by 0xack13 on 11/7/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Find out the path of Doaa.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Doaa" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    for (id key in dict) {
        NSLog(@"key: %@, value: %@ \n", key, [dict objectForKey:key]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
