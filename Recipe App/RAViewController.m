//
//  RAViewController.m
//  Recipe App
//
//  Created by Peter Zimmerman on 6/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RARecipes.h"
#import "RARecipesTableViewDataSource.h"
@interface RAViewController () <UITableViewDataSource>

@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:tableView];
    // add DataSource
    tableView.dataSource = [[RARecipesTableViewDataSource alloc] init];
    // Deque
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"My cell"];
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
