//
//  ViewController.m
//  Singleton(MRC)
//
//  Created by upliver on 15/1/14.
//  Copyright © 2015年 Upriver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 工具类放在了SingleTonTool文件夹下,再写一些单利的时候可以直接拖过去用(注意是MRC下使用)后续会上传ARC下的单利工具类
    NSString *readme = [NSString stringWithFormat:@"    %@",@"   工具类放在了SingleTonTool文件夹下,再写一些单利的时候可以直接拖过去用(注意是MRC下使用)后续会上传ARC下的单利工具类!!!"];
    self.textView.font = [UIFont systemFontOfSize:20];
    self.textView.textColor = [UIColor brownColor];
    self.textView.text = readme;
}

@end
