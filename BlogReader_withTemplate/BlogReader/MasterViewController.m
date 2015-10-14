//
//  MasterViewController.m
//  BlogReader
//
//  Created by Raphael Melo on 14/10/15.
//  Copyright © 2015 raphaelgmelo. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"


@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.titlesArray = [[NSArray alloc] initWithObjects:@"Getting started with WordPress", @"Maecenas faucibus mollis interdum.", @"Morbi leo risus, porta ac consectetur ac, vestibulum at eros.", @"Donec id elit non mi porta gravida at eget metus.", @"Etiam porta sem malesuada magna mollis euismod.", nil];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

// this is not necessary when returning 1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    cell.textLabel.text = self.titlesArray[indexPath.row];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        NSString *title = self.titlesArray[indexPath.row];
        
        DetailViewController *controller =
                (DetailViewController *)[[segue destinationViewController]   topViewController];
        [controller setDetailItem:title];
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
        
    }
}

@end
