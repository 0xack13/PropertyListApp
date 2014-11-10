//
//  ViewController.m
//  PropertyListApp
//
//  Created by 0xack13 on 11/7/14.
//  Copyright (c) 2014 0xack13. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *array;
    NSDictionary *dict;
}

@end

@implementation ViewController

@synthesize basicTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.basicTableView.delegate = self;
    self.basicTableView.dataSource = self;
    array = [[NSMutableArray alloc] initWithObjects:@"Hello", @"World", nil];
    
    // Find out the path of Doaa.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Doaa" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    for (id key in dict) {
        NSLog(@"key: %@, value: %@ \n", key, [dict objectForKey:key]);
    }
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return [array count];
    return [dict count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSArray *currentDict = [dict allKeys];
    NSArray *currentDictValue = [dict allValues];
    
    NSLog(@"%@", [currentDict objectAtIndex:0]);
    //cell.textLabel.text = [array objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"Key: %@, Value: %@", [currentDict objectAtIndex:indexPath.row], [currentDictValue objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text = [currentDictValue objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
