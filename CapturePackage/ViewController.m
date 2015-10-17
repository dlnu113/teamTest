//
//  ViewController.m
//  CapturePackage
//
//  Created by JayWon on 14-10-6.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"

@interface ViewController ()

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

- (IBAction)requestGetButtonAction:(id)sender {
    UIStoryboard *stbd = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ResultViewController *resultVC = [stbd instantiateViewControllerWithIdentifier:@"kResultVC"];
    
    [self.navigationController pushViewController:resultVC animated:YES];

    [resultVC requestGet];
}

- (IBAction)requestPost1ButtonAction:(id)sender {
    UIStoryboard *stbd = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ResultViewController *resultVC = [stbd instantiateViewControllerWithIdentifier:@"kResultVC"];
    [self.navigationController pushViewController:resultVC animated:YES];
    [resultVC requestPost1];
}


- (IBAction)requestPost2ButtonAction:(id)sender {
    UIStoryboard *stbd = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ResultViewController *resultVC = [stbd instantiateViewControllerWithIdentifier:@"kResultVC"];
    [self.navigationController pushViewController:resultVC animated:YES];
    [resultVC requestPost2];
}

@end
