//
//  RARecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Peter Zimmerman on 6/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RARecipesTableViewDataSource.h"
#import "RARecipes.h"

@implementation RARecipesTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [RARecipes count];
//In numberOfRows return RARecipes class method count
//in cellForRowAtIndexPath return a cell with the textLabel.text set to the string RARecipes class titleAtIndex for indexPath.row
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"My cell"];
    cell.textLabel.text = [RARecipes titleAtIndex: indexPath.row];
    return cell;
}
@end
