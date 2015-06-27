//
//  RAViewController.m
//  Recipe App
//
//  Created by Peter Zimmerman on 6/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RASecondViewController.h"
#import "RARecipes.h"
#import "RARecipesTableViewDataSource.h"
@interface RAViewController () <UITableViewDelegate>
@property (nonatomic, strong) RARecipesTableViewDataSource *mySource;
@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"My Recipes";
    // Do any additional setup after loading the view.
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:tableView];
    // add DataSource
    self.mySource = [RARecipesTableViewDataSource new];
    tableView.dataSource =self.mySource;
    tableView.delegate = self;
    // Deque
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"My cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    RASecondViewController *controller = [RASecondViewController new];
    controller.navigationItem.title = [RARecipes titleAtIndex:indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 30;
    } else {
        return 44;
    }
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
