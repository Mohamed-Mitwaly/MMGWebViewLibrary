//
//  ViewController.m
//  MMGWebViewLibrary
//
//  Created by Mohamed Mitwaly on 7/21/14.
//  Copyright (c) 2014 MMG. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController (){
    secondViewController *secondView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPressed:(id)sender {
    secondView=[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    [[MMGWebLibrary getInstance] setUrlString:@"http://developer.apple.com/iphone/library/documentation/UIKit/Reference/UIWebView_Class/UIWebView_Class.pdf"];
    [self presentViewController:secondView animated:YES completion:nil];
    [[MMGWebLibrary getInstance] show:[secondView myWebView]];
}

@end
