//
//  ACDAgregarPaisViewController.m
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDAgregarPaisViewController.h"

@interface ACDAgregarPaisViewController ()

@end

@implementation ACDAgregarPaisViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Acciones de los Botones
- (IBAction)btnCancelAction:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
    
- (IBAction)btnSaveAction:(id)sender {
    [self.delegate GuardarPaisConNombre:self.txtNombrePais.text];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
