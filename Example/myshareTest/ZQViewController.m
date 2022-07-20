//
//  ZQViewController.m
//  myshareTest
//
//  Created by Jons on 07/11/2022.
//  Copyright (c) 2022 Jons. All rights reserved.
//

#import "ZQViewController.h"
#import <UIKit/UIKit.h>

@interface ZQViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *zqTabview;
@property (nonatomic, strong) NSMutableArray *dataMutArr;
@property (nonatomic, weak) id<ZQShareSelectProtocol> delegate;

@end

@implementation ZQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _dataMutArr = [[NSMutableArray alloc] init];
    NSMutableArray *dataArr = [[NSMutableArray alloc] init];
    
    [dataArr addObject:@"1"];
    [dataArr addObject:@"2"];
    [dataArr addObject:@"3"];

    
    NSMutableArray *dataArr2 = [[NSMutableArray alloc] init];
    [dataArr2 addObject:@"4"];
    [dataArr2 addObject:@"5"];
    [dataArr2 addObject:@"6"];
    
    [_dataMutArr addObject:dataArr];
    [_dataMutArr addObject:dataArr2];
    
    _zqTabview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _zqTabview.delegate = self;
    _zqTabview.dataSource = self;
    [self.view addSubview:_zqTabview];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *rowsArr = self.dataMutArr[section];
    
    return rowsArr.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataMutArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"hello"];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 10, 10, 10)];
    view.backgroundColor = [UIColor blueColor];
    [cell.contentView addSubview:view];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 10, 14, 14)];
    label.font = [UIFont fontWithName:UIFontTextStyleBody size:10];
    label.text = self.dataMutArr[indexPath.section][indexPath.row];
    label.textColor = [UIColor blackColor];
    [view addSubview:label];
    [cell.contentView addSubview:view];
    
    [cell setSelected:YES animated:YES];
//    cell.selectedBackgroundView = [UIImage imagew];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.delegate respondsToSelector:@selector(shareSelectDataString:)]) {
        id vc = [self.delegate shareSelectDataString: self.dataMutArr[indexPath.section][indexPath.row]];
        if ([vc isKindOfClass:UIAlertController.class]) {
            UIAlertController *alvc = vc;
            [self presentViewController:alvc animated:NO completion:nil];
        }
    }
    
}


- (void)loadDelegate:(id <ZQShareSelectProtocol>)delegate
{
    self.delegate = delegate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
