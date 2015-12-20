//
//  FYGridViewController.m
//  FYUIScrollViewDemo
//
//  Created by Frankenstein Yang on 12/20/15.
//  Copyright © 2015 Frankenstein Yang. All rights reserved.
//

#import "FYGridViewController.h"
#import "FYUIButton.h"

@interface FYGridViewController ()

@end

@implementation FYGridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FYUIButton *backBtn = [[FYUIButton alloc] initWithFrame:CGRectZero
                                                      style:FYUIButtonStyleTranslucent];
    backBtn.text = @"返回";
    backBtn.font = [UIFont systemFontOfSize:14.0f];
    backBtn.vibrancyEffect = nil;
    [self.view addSubview:backBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
