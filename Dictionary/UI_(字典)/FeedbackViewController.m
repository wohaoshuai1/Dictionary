//
//  FeedbackViewController.m
//  UI_(字典)
//
//  Created by ibokan on 16/7/21.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "FeedbackViewController.h"
#import "FindViewController.h"
@interface FeedbackViewController ()<UITextViewDelegate>

@end

@implementation FeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"意见反馈";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"beijing"]];
    backgroundImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:backgroundImageView];
    
    UIBarButtonItem *leafButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"return"] style:UIBarButtonItemStylePlain target:self action:@selector(leafButtonItem)];
    self.navigationItem.leftBarButtonItem = leafButtonItem;
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"magnifier"] style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonItem)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
    UIImageView *myImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fankuikuang"]];
    myImageView.frame = CGRectMake(0, 84, self.view.frame.size.width, self.view.frame.size.height-160);
    [self.view addSubview:myImageView];
    
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 84, self.view.frame.size.width, self.view.frame.size.height-160)];
    textView.text = @"请在这里输入您的反馈信息";
    
    textView.backgroundColor = [UIColor clearColor];
    
    textView.font = [UIFont systemFontOfSize:32];
    textView.delegate = self;
    [self.view addSubview:textView];
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [submitButton addTarget:self action:@selector(submitButton) forControlEvents:UIControlEventTouchUpInside];
    [submitButton setTitle:@"提交" forState:0];
    submitButton.frame = CGRectMake(375, 670, 30, 50);
    [self.view addSubview:submitButton];
    
}

-(void)submitButton{
    //代理回调
    
}

-(void)textViewDidBeginEditing:(UITextView *)textView{
    if ([textView.text isEqualToString:@"请在这里输入您的反馈信息"]) {
        textView.text = @"";
        textView.font = [UIFont systemFontOfSize:24];
    }
}


-(void)leafButtonItem{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)rightButtonItem{
    [self.navigationController pushViewController:[FindViewController new] animated:YES];
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
