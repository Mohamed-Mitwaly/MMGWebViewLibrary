//
//  MitwalyWebLibrary.m
//  webViewLibrary
//
//  Created by Mohamed Mitwaly on 7/15/14.
//  Copyright (c) 2014 Tawasol. All rights reserved.
//

#import "MMGWebLibrary.h"

@implementation MMGWebLibrary{
    NSURL *showURl;
}

static MMGWebLibrary *instance;

+(MMGWebLibrary *)getInstance{
    if (!instance) {
        instance=[[MMGWebLibrary alloc]init];
    }
    return instance;
}

-(int)show:(UIWebView *)presentedWebView{
    [presentedWebView setDelegate:self];
    if([presentedWebView isKindOfClass:[UIWebView class]])
    {
        if (showURl) {
            NSURLRequest *request = [NSURLRequest requestWithURL:showURl];
            [presentedWebView loadRequest:request];
#if __has_include("SVProgressHUD.h") && __has_include(<stdint.h>)
            [SVProgressHUD showWithStatus:@"loading"maskType:SVProgressHUDMaskTypeGradient];
#endif
            return 1; //success
        }else{
            return 0; //no url to be shown
        }
    }
    else
    {
        return 2;  //no web view or not of web view kind
    }
}

-(void)setUrlString:(NSString *)urlString{
    _urlString=urlString;
    showURl=[NSURL URLWithString:_urlString];
    _pathUrl=nil;
}

-(void)setPathUrl:(NSString *)pathUrl{
    _pathUrl=pathUrl;
    showURl=[NSURL fileURLWithPath:pathUrl];
    _urlString=nil;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
#if __has_include("SVProgressHUD.h") && __has_include(<stdint.h>)
    [SVProgressHUD dismiss];
#endif
}


@end
