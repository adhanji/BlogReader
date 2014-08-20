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
        self.author = @"Unknown";
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL {
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    [dateFormatter setDateFormat:@"EE MMM, dd"];
    
    return [dateFormatter stringFromDate:tempDate];
}

@end
