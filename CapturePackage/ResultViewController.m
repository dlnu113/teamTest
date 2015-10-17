//
//  ResultViewController.m
//  CapturePackage
//
//  Created by JayWon on 14-10-6.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import "ResultViewController.h"
#import "WXDataService.h"

@interface ResultViewController ()
{
    
    __weak IBOutlet UITextView *txView;
}

@end

@implementation ResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"%s", __FUNCTION__);
}

-(void)requestGet
{
    
}

-(void)requestPost1
{
    
}

-(void)requestPost2
{
    //参数
    NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
    NSString *paramStr = @"4418F155D5CAD86C35A86A66D8D53F35D54DC643B46C0F14B7FEA088F82F602D58D76C2F2DC213E9546D24A8CF520678D84E2375E65381B427DA93F3EE829E651F080433D48F0201F4AA43ADC405231D55F483AABB54E09BECF39A3368C46CEB4DBCFB382EAD2DAE791CB744997C82498DBE140ACCF14D93";
    NSData *paramData = [paramStr dataUsingEncoding:NSUTF8StringEncoding];
    [mDic setObject:paramData forKey:@"此时key随便写，不用它"];
    
    //请求头
    NSMutableDictionary *header = [NSMutableDictionary dictionary];
    [header setObject:@"userid=(null);versionname=7.02;versioncode=7.02;buildversion=7.02;osversion=7.1.2;model=iPhone4,1;appname=groupbuy;clientname=iphone;channelid=10000;cityid=2419;idfa=A1AECF8A-3496-4BAF-8619-E9C1BDB044F9;clientid=aadcc4392a4447aa8368d6aa6c76456f22f0226b;location=116.196274,39.925674;network=WIFI;seq=aadcc4392a4447aa8368d6aa6c76456f22f0226b0002" forKey:@"traceinfo"];
    
    
    //发请求
//    [WXDataService requestWithURL:@"http://api7.mobile.lashou.com/lashou.php/Update/updateData" params:mDic httpMethod:@"POST" block:^(NSObject *result) {
//        
//        txView.text = result.description;
//    } requestHeader:header];
    
    
    //发请求
    [WXDataService requestWithURL:@"http://api7.mobile.lashou.com/lashou.php/Update/updateData" params:mDic requestHeader:header httpMethod:@"POST" block:^(NSObject * result) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            txView.text = result.description;
        });
    }];
}

@end
