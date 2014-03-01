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
#import "ACDAppDelegate.h"

@interface ACDViewController ()
{
    NSMutableArray *datos;
    NSArray *continentes;
    
}
@end

@implementation ACDViewController

#pragma mark - ciclo de vida de la vista
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *america = [NSMutableArray arrayWithObjects:@"México", @"Estados Unidos", @"Canada", nil];
    NSMutableArray *europa = [NSMutableArray arrayWithObjects:@"Alemania", @"España", @"Portugal", @"Francia", nil];
    NSMutableArray *asia = [NSMutableArray arrayWithObjects:@"Japón", @"China", @"Corea del Sur", nil];
    
    datos = [NSMutableArray arrayWithObjects:america, europa, asia, nil];
    continentes = @[@"America", @"Europa", @"Asia"];
    
    _managedObjectContext = [(ACDAppDelegate *)[UIApplication sharedApplication].delegate managedObjectContext];
}

-(void)viewWillAppear:(BOOL)animated {
    //NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"description" ascending:YES];
    //datos = [[datos sortedArrayUsingDescriptors:@[descriptor]] mutableCopy];
    //[self._tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Datasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger sections = [_fetchedResults sections].count;
    return sections;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger rows = [[_fetchedResults sections][section] count];
    return rows;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *title = continentes[section];
    
    return [NSString stringWithFormat:@"Países de %@", title];
}
    
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"PaisCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    NSManagedObject *managedObject = [_fetchedResults objectAtIndexPath:indexPath];
    
    cell.textLabel.text = [managedObject valueForKey:@"nombre"];
    
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
        destination.pais = datos[indexPath.section][indexPath.row];
    } else if ([segue.identifier isEqualToString:@"AgregarPaisSegue"]) {
        UINavigationController *nav = [segue destinationViewController];
        ACDAgregarPaisViewController *destination = nav.childViewControllers[0];
        destination.delegate = self;
        destination.continentes = continentes;
    }
}
    
#pragma mark - Agregar Pais
-(void)GuardarPaisConNombre:(NSString *)pais yContinente:(NSInteger)index {
    [datos[index] addObject:pais];
    //[datos addObject:pais];
    [self._tableView reloadData];
}

#pragma mark - Fetched Results Controller
#pragma mark - Fetched Results
-(NSFetchedResultsController *)fetchedResults {
    if(_fetchedResults)
    {
        return _fetchedResults;
    }
    
    NSFetchRequest *request = [[NSFetchRequest alloc]init];
    NSEntityDescription *description = [NSEntityDescription entityForName:@"Continentes" inManagedObjectContext:_managedObjectContext];
    /*NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:kDateAdded ascending:YES];
    [request setSortDescriptors:@[descriptor]];*/
    [request setEntity:description];
    
    
    NSFetchedResultsController *controller = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                                 managedObjectContext:_managedObjectContext
                                                                                   sectionNameKeyPath:nil
                                                                                            cacheName:@"ContinentesMAster"];
    controller.delegate = self;
    _fetchedResults = controller;
    NSError *error = nil;
    
    if (![_fetchedResults performFetch:&error]) {
        abort();
    }
    
    return _fetchedResults;
}
@end
