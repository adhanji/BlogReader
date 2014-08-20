//
//  ADBlogPost.h
//  BlogReader
//
//  Created by Aleem Dhanji on 08-19-14.
//  Copyright (c) 2014 Aleem Dhanji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADBlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

// @property behind the scenes sets up instance variables + getter/setter methods
// no need to use @synthesize in implementation

// Designated Initializer
- (id) initWithTitle:(NSString *)title;
// when creating designated initializer return type id (allows for dynamic binding)

// Convenience Constructor
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) thumbnailURL;
- (NSString *) formattedDate;
@end
