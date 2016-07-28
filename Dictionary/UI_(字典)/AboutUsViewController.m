//
//  AboutUsViewController.m
//  UI_(字典)
//
//  Created by ibokan on 16/7/21.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "AboutUsViewController.h"
#import "ViewController.h"
@interface AboutUsViewController ()

@end

@implementation AboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"关于我们";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"beijing"]];
    backgroundImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:backgroundImageView];

    UIBarButtonItem *leafButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"return"] style:UIBarButtonItemStylePlain target:self action:@selector(leafButtonItem)];
    self.navigationItem.leftBarButtonItem = leafButtonItem;
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"magnifier"] style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonItem)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
    UIImageView *zzzImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"z"]];
    zzzImageView.frame = CGRectMake(20, 80, 380, 50);
    [self.view addSubview:zzzImageView];
    
    UILabel *textLabel = [[UILabel alloc]initWithFrame:CGRectMake(75, 85, 300, 30)];
    textLabel.text = @"智障无线";
    textLabel.font = [UIFont systemFontOfSize:32];
    [self.view addSubview:textLabel];
    
    UILabel *ziDianLabel = [[UILabel alloc]initWithFrame:CGRectMake(328, 130, 100, 30)];
    ziDianLabel.text = @"汉语字典";
    ziDianLabel.font = [UIFont systemFontOfSize:19];
    [self.view addSubview:ziDianLabel];
    
    UIImageView *ziDianImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"zidian"]];
    ziDianImageView.frame = CGRectMake(50, 150, 300, 300);
    [self.view addSubview:ziDianImageView];
    
    UILabel *textLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 470, 334, 100)];
    textLabel1.text = @"     汉语是世界上最精密的语言之一,语义丰富,耐人寻味.本词典篇幅简短,内容丰富,即求融科学性.知识性.实用性.规范性于一体.又注意突出时代特色";
    textLabel1.numberOfLines = 0;
    [self.view addSubview:textLabel1];
    
    UIImageView *inputImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"input"]];
    inputImageView.frame = CGRectMake(40, 575, 334, 100);
    inputImageView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:inputImageView];
    
    UILabel *textLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(50, 580, 314, 30)];
    textLabel2.text = @"官方网站:www.zhizhang.com";
    textLabel2.backgroundColor = [UIColor clearColor];
    [self.view addSubview:textLabel2];
    UILabel *textLabel3 = [[UILabel alloc]initWithFrame:CGRectMake(50, 605, 314, 30)];
    textLabel3.text = @"官方微博:e.weibo.com/u/3385145102";
    textLabel3.backgroundColor = [UIColor clearColor];
    [self.view addSubview:textLabel3];
    UILabel *textLabel4 = [[UILabel alloc]initWithFrame:CGRectMake(50, 630, 314, 30)];
    textLabel4.text = @"官方公众账号:智障无线";
    textLabel4.backgroundColor = [UIColor clearColor];
    [self.view addSubview:textLabel4];
    
    
    
}

-(void)rightButtonItem{

}


-(void)leafButtonItem{
    [self.navigationController popViewControllerAnimated:YES];
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
