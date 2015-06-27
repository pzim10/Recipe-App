//
//  RASecondViewController.m
//  Recipe App
//
//  Created by Peter Zimmerman on 6/27/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RASecondViewController.h"
#import "RARecipes.h"
#import "RARecipesTableViewDataSource.h"

@interface RASecondViewController ()

@property (nonatomic, assign) NSInteger recipeIndex;
@property (nonatomic, strong) UITableView *info; //, *ingredients, *directions;
@property (nonatomic, strong) RARecipesTableViewDataSource *infoSource;

@end

const int topMargin = 15;
@implementation RASecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.infoSource = [RARecipesTableViewDataSource new];

    self.info = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    self.info.dataSource = self.infoSource;
    [self.view addSubview:self.info];
    [self.info registerClass:[UITableViewCell class] forCellReuseIdentifier:@"My cell"];
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
