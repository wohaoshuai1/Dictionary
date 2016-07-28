//
//  HomeViewController.m
//  UI_(字典)
//
//  Created by ibokan on 16/7/18.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "moreViewController.h"
#import "moreTableViewCell.h"
#import "CollectingViewController.h"
#import "ShareViewController.h"
#import "FeedbackViewController.h"
#import "APPViewController.h"
#import "APPRateViewController.h"
#import "AboutUsViewController.h"
@interface moreViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *store;
}
@end

@implementation moreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"beijing"]];
    backgroundImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:backgroundImageView];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    tableView.backgroundColor = [UIColor clearColor];

    self.navigationItem.title = @"更多";
    UIBarButtonItem *returnBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"return"] style:UIBarButtonItemStylePlain target:self action:@selector(returnItem)];
    self.navigationItem.leftBarButtonItem = returnBarButtonItem;
    
    store = @[@"我的收藏",@"分享",@"意见反馈",@"精品应用",@"应用打分",@"关于我们"];
    
    [tableView registerNib:[UINib nibWithNibName:@"moreTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"asbl"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return store.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    moreTableViewCell *cell = (moreTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"asbl"];
    cell.backgroundColor = [UIColor clearColor];
    cell.labelName.text = store[indexPath.row];
    cell.jumpImageView.image = [UIImage imageNamed:@"continue"];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            [self.navigationController pushViewController:[CollectingViewController new] animated:YES];
        }
            break;
        
        case 1:{
            [self.navigationController pushViewController:[ShareViewController new] animated:YES];
        }
            break;
        
        case 2:{
            [self.navigationController pushViewController:[FeedbackViewController new] animated:YES];
        }
            break;
        
        case 3:{
            [self.navigationController pushViewController:[APPViewController new] animated:YES];
        }
            break;
        
        case 4:{
            [self.navigationController pushViewController:[APPRateViewController new] animated:YES];
        }
            break;
        
        case 5:{
            [self.navigationController pushViewController:[AboutUsViewController new] animated:YES];
        }
        default:
            break;
    }
}

-(void)returnItem{
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
