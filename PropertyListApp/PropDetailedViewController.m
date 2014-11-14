//
//  PropDetailedViewController.m
//  PropertyListApp
//
//  Created by 0xack13 on 11/14/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "PropDetailedViewController.h"
#import "ViewController.h"

@interface PropDetailedViewController ()

@end

@implementation PropDetailedViewController

@synthesize detailLabel;
@synthesize detailName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    detailLabel.text = detailName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
