//
//  AgregarAlumnoController.m
//  CoreDataExample
//
//  Created by Gustavo Barrientos on 6/20/13.
//  Copyright (c) 2013 Acid Studios. All rights reserved.
//

#import "AgregarAlumnoController.h"

@interface AgregarAlumnoController ()

@end

@implementation AgregarAlumnoController

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

#pragma mark - IBActions
-(IBAction)AddAlumno:(id)sender {
    [self.delegate agregarAlumnoWithNombre:txtNombre.text Apellido:txtApellido.text andEdad:txtEdad.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)Cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
