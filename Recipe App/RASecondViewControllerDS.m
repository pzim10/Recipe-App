//
//  RASecondViewControllerDS.m
//  Recipe App
//
//  Created by Peter Zimmerman on 6/27/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RASecondViewControllerDS.h"
#import "RARecipes.h"

@implementation RASecondViewControllerDS

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [RARecipes count];
    //In numberOfRows return RARecipes class method count
    //in cellForRowAtIndexPath return a cell with the textLabel.text set to the string RARecipes class titleAtIndex for indexPath.row
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"My cell"];
    cell.textLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
@end
