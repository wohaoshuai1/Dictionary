//
//  ViewController.m
//  UI_(字典)
//
//  Created by ibokan on 16/7/18.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"
#import "moreViewController.h"
#import "LetterViewController.h"
@interface ViewController ()
{
    UIButton *button;
    int index;
    int index1;
    NSArray *array;
    UIImageView *louverImageView;
    UIImageView *radicalImageView;
    NSArray *radicalArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self letter];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *backImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"beijing"]];
    backImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:backImageView];
    
    self.navigationItem.title = @"汉语字典";
    UISegmentedControl *tow_one = [[UISegmentedControl alloc]initWithItems:@[@"拼音检索",@"部首检索"]];
    tow_one.frame = CGRectMake(20, 80, 374, 50);
    
    [tow_one addTarget:self action:@selector(tow_oneAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:tow_one];
    
    UIBarButtonItem *moreBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"more"] style:UIBarButtonItemStylePlain target:self action:@selector(barItem)];
    self.navigationItem.rightBarButtonItem = moreBarButtonItem;
    
    UIImageView *inputImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"input"]];
    inputImageView.frame = CGRectMake(20, 140, 374, 30);
    [self.view addSubview:inputImageView];
    UITextField *inPutTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, 140, 374, 30)];
    inPutTextField.placeholder = @"请输入...";
    [self.view addSubview:inPutTextField];
    
    
    UILabel *searchLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 160, 374, 50)];
    searchLabel.text = @"最近搜索:";
    [self.view addSubview:searchLabel];
    
    UILabel *wireLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 220, 374, 1)];
    wireLabel.backgroundColor = [UIColor blackColor];
    [self.view addSubview:wireLabel];
    
    UILabel *recentLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 235, 374, 30)];
    recentLabel.text = @"哈 年 叶 啊 检 我 好 不 哈 年 叶 啊 检 我 好 不";
    [self.view addSubview:recentLabel];
    
    UILabel *nfyyLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 280, 374, 30)];
    nfyyLabel.text = @"按照拼音字母检索:";
    [self.view addSubview:nfyyLabel];
    
    UILabel *wireLabel1 =[[UILabel alloc]initWithFrame:CGRectMake(20, 310, 374, 1)];
    wireLabel1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:wireLabel1];
    index = 0;
    
    
    louverImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Key-frame2"]];
    louverImageView.frame = CGRectMake(20, 330, 374, 250);
    //打开交互
    louverImageView.userInteractionEnabled = YES;
    [self.view addSubview:louverImageView];
    
    radicalArray = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17"];
    radicalImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Key-frame2"]];
    radicalImageView.frame = CGRectMake(20, 330, 374, 250);
    //打开交互
    radicalImageView.userInteractionEnabled = YES;
    [self.view addSubview:radicalImageView];
    
    radicalImageView.hidden = YES;
    [self letter];
    [self radical];
}

-(void)tow_oneAction:(UISegmentedControl *)sender{
    if (sender.selectedSegmentIndex == 0) {
        louverImageView.hidden = NO;
        radicalImageView.hidden = YES;
    }else if (sender.selectedSegmentIndex == 1){
        louverImageView.hidden = YES;
        radicalImageView.hidden= NO;

        
    }
}

//拼音检索
-(void)letter{
    array = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"N",@"M",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 7 && index < 26; j++) {
            UIButton *letterButton = [UIButton buttonWithType:UIButtonTypeSystem];
            letterButton.frame = CGRectMake(0+j*52, 0+i*60, 55, 60);
            [letterButton setTitle:[NSString stringWithFormat:@"%@",array[index]] forState:UIControlStateNormal];
            [letterButton addTarget:self action:@selector(letterButton) forControlEvents:UIControlEventTouchUpInside];
            [letterButton setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
            [louverImageView addSubview:letterButton];
            index++;
        }
    }
}

//部首检索
-(void)radical{
    
    
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 7 && index1 < 17; j++) {
            
            UIButton *radicalButton = [UIButton buttonWithType:UIButtonTypeSystem];
            radicalButton.frame = CGRectMake(0+j*52, 0+i*60, 55, 60);
            [radicalButton setTitle:[NSString stringWithFormat:@"%@",radicalArray[index1]] forState:UIControlStateNormal];
            [radicalButton addTarget:self action:@selector(letterButton) forControlEvents:UIControlEventTouchUpInside];
            [radicalButton setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
            [radicalImageView addSubview:radicalButton];
            index1++;
        }
    }
}



-(void)letterButton{
    [self.navigationController pushViewController:[LetterViewController new] animated:YES];
}

-(void)barItem{
    moreViewController *mVC = [moreViewController new];
    [self.navigationController pushViewController:mVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

