//
//  ViewController.m
//  UploadAttachment
//
//  Created by Hannibal Yang on 12/23/14.
//  Copyright (c) 2014 Frankenstein Yang. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

/*
 接口名：http://panfile.xuele.net/mupload.ashx?U=教师ID&Type=文件扩展名&Size=文件大小&Name=文件名&Aid=课程ID
 接口方式：Post
 返回值：文件ID
 */

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"http://panfile.xuele.net/mupload.ashx"];
//    _http
    
}

#pragma mark - 文件上传
- (IBAction)uploadAttachment {
    
    
}

@end
