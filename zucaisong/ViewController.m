//
//  ViewController.m
//  zucaisong
//
//  Created by luo on 16/3/22.
//  Copyright © 2016年 罗健斌. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self text];
    
//    http://h148a34804.iok.la/appapi/checkcode/sendsms
    
}

/*
 result	string	返回结果状态。success：正常；fail：错误。
 msg	string	返回结果描述
 */

-(void)text
{
    NSString *urlStr = @"http://h148a34804.iok.la/appapi/checkcode/sendsms";
    
    NSDictionary *dic = @{@"PhoneNumber":@"13246315398"};
    
    //创建请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:urlStr parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"%@",responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
