//
//  ViewController.m
//  multipractice
//
//  Created by 研发部 on 2017/9/22.
//  Copyright © 2017年 development team. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "HttpTool.h"
@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


 UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
 btn.backgroundColor = [UIColor redColor];
 [btn addTarget:self action:@selector(clickbtn) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:btn];
}
-(void)clickbtn{
 secondViewController *secondView = [[secondViewController alloc]init];
 [self presentViewController:secondView animated:YES completion:nil];
}

@end
