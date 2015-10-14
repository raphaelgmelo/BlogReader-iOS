//
//  BlogPost.m
//  BlogReader
//
//  Created by Raphael Melo on 14/10/15.
//  Copyright © 2015 raphaelgmelo. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *) title{
    self = [super init];
    
    if (self){
        self.title = title;
        self.thumbnail = nil;
        self.author = nil;
    }
    
    return self;
};

+ (id) blogPostWithTitle:(NSString *) title{
    return [[self alloc] initWithTitle:title];
};

- (NSURL *) thumbnailURL {
    return [NSURL URLWithString:self.thumbnail];
}



@end
