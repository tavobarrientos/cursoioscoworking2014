//
//  ACDViewController.m
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDViewController.h"
#import "ACDDetailViewController.h"
#import "ACDAgregarPaisViewController.h"

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

-(void)viewWillAppear:(BOOL)animated {
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"description" ascending:YES];
    datos = [[datos sortedArrayUsingDescriptors:@[descriptor]] mutableCopy];
    [self._tableView reloadData];
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
    
    
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
    
#pragma mark - Segues
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"PushSegue"]) {
        ACDDetailViewController *destination = [segue destinationViewController];
        NSIndexPath *indexPath = [self._tableView indexPathForSelectedRow];
        destination.pais = datos[indexPath.row];
    } else if ([segue.identifier isEqualToString:@"AgregarPaisSegue"]) {
        UINavigationController *nav = [segue destinationViewController];
        ACDAgregarPaisViewController *destination = nav.childViewControllers[0];
        destination.delegate = self;
    }
}
    
#pragma mark - Agregar Pais
-(void)GuardarPaisConNombre:(NSString *)pais {
    [datos addObject:pais];
    //[self._tableView reloadData];
}
@end
