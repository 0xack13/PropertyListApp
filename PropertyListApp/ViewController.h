//
//  ViewController.h
//  PropertyListApp
//
//  Created by 0xack13 on 11/7/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *basicTableView;

@end
