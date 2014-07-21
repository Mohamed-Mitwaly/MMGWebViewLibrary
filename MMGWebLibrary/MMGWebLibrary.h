//
//  MitwalyWebLibrary.h
//  webViewLibrary
//
//  Created by Mohamed Mitwaly on 7/15/14.
//  Copyright (c) 2014 Tawasol. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include("SVProgressHUD.h") && __has_include(<stdint.h>)
# include "SVProgressHUD.h"
#endif

@interface MMGWebLibrary : NSObject <UIWebViewDelegate>
+(MMGWebLibrary*)getInstance;  //get object from MMGWebLibrary
@property (nonatomic , strong) NSString *urlString;
@property (nonatomic , strong) NSString *pathUrl;
-(int)show:(UIWebView*)presentedWebView; //return 1 >> success , 0 >> invalid url , 2  >> invalid webView  
@end
