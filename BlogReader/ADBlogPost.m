//
//  ADBlogPost.m
//  BlogReader
//
//  Created by Aleem Dhanji on 08-19-14.
//  Copyright (c) 2014 Aleem Dhanji. All rights reserved.
//

#import "ADBlogPost.h"

@implementation ADBlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
        // OR [self setTitle:title];
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

@end
