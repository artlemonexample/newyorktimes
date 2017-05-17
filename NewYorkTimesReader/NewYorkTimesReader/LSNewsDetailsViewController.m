//
//  LSNewsDetailsViewController.m
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/17/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import "LSNewsDetailsViewController.h"

@interface LSNewsDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation LSNewsDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.newsItem) {
        NSURL *nsUrl = [NSURL URLWithString:self.newsItem.link];
        NSURLRequest *request = [NSURLRequest requestWithURL:nsUrl cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30];
        [self.webView loadRequest:request];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
