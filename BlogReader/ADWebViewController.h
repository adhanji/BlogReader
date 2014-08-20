//
//  ADWebViewController.h
//  BlogReader
//
//  Created by Aleem Dhanji on 08-20-14.
//  Copyright (c) 2014 Aleem Dhanji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADWebViewController : UIViewController

@property (strong, nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
