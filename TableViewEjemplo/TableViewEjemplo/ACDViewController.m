//
//  ACDViewController.m
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDViewController.h"
#import "ACDDetailViewController.h"

@interface ACDViewController ()
{
    NSMutableArray *datos;
}
@end

@implementation ACDViewController

#pragma mark - ciclo de vida de la vista
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    datos = [NSMutableArray arrayWithObjects:@"España", @"Portugal", @"Francia", @"Inglaterra", @"Alemania", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return datos.count;
}
    
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"PaisCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    //NSString *pais = datos[indexPath.row];
    cell.textLabel.text = datos[indexPath.row];
    
    return cell;
}
    
#pragma mark - Segues
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"PushSegue"]) {
        ACDDetailViewController *destination = [segue destinationViewController];
        NSIndexPath *indexPath = [self._tableView indexPathForSelectedRow];
        destination.pais = datos[indexPath.row];
    }
}
@end
