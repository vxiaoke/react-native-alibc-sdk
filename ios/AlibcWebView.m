//
//  AlibcWebView.m
//  RNAlibcSdk
//
//  Created by et on 17/4/19.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "AlibcWebView.h"
#import <React/RCTLog.h>

@implementation AlibcWebView
{
    UIWebView *_webView;
}
- (void)setParam:(NSDictionary *)param
{
    [[AlibcSdkBridge sharedInstance] showInWebView:self param:param];
}
- (void)injectJavaScript:(NSString *)script
{
    [_webView stringByEvaluatingJavaScriptFromString:script];
}
@end
