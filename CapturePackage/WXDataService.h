//
//  WXDataService.m
//  MyWeibo
//
//  Created by zsm on 14-3-5.
//  Copyright (c) 2014年 zsm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void(^CompletionLoad)(NSObject *result);

@interface WXDataService : NSObject


//AFNetworking
+ (AFHTTPRequestOperation *)requestAFWithURL:(NSString *)url
                                    params:(NSMutableDictionary *)params
                             requestHeader:(NSDictionary *)header
                                httpMethod:(NSString *)httpMethod
                                     block:(CompletionLoad)block;

//系统自带类库
+ (NSMutableURLRequest *)requestWithURL:(NSString *)url
                                 params:(NSMutableDictionary *)params
                          requestHeader:(NSDictionary *)header
                             httpMethod:(NSString *)httpMethod
                                  block:(CompletionLoad)block;

@end
