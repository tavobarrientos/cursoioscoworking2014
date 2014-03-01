//
//  ACDAgregarPaisViewController.m
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDAgregarPaisViewController.h"
#import "ACDSeleccionarContinenteViewController.h"

@interface ACDAgregarPaisViewController (){
    NSInteger continenteIndex;
}
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
    [self.delegate GuardarPaisConNombre:self.txtNombrePais.text yContinente:continenteIndex];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Agregar Continente Delegate
-(void)SetContinenteWithIndex:(NSInteger)index {
    continenteIndex = index;
    self.lblContinenteName.text = self.continentes[index];
}

-(NSArray*)getContinentesArray {
    return self.continentes;
}

#pragma mark - Segues
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"MostrarContinentes"]) {
        ACDSeleccionarContinenteViewController *controller = [segue destinationViewController];
        controller.delegate = self;
    }
}
@end
