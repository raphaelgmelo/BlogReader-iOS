//
//  MasterViewController.h
//  BlogReader
//
//  Created by Raphael Melo on 14/10/15.
//  Copyright © 2015 raphaelgmelo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSArray *titlesArray;

@end

