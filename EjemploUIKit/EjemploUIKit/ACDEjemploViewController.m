//
//  ACDEjemploViewController.m
//  EjemploUIKit
//
//  Created by Acid Studios on 15/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDEjemploViewController.h"

@interface ACDEjemploViewController ()

@end

@implementation ACDEjemploViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


// Se carga en memoria
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

// La pantalla va aparecer
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //contador = 0;
}

// La pantalla ya cargo en memoria y ya aparecio
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    contador = 0;
}

// Cambiaste de pantalla
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

// Se fue a backgorund
-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

// Cuando la pantalla sale de memoria.
// En ARC ya no se utiliza.
-(void)viewDidUnload {
    
}

// Se ejecuta solo cuando la interfaz fue ejecutada por Storyboard o XIB
-(void)awakeFromNib {
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)btnMensajitoAction:(id)sender {
    contador++;
    self.lblMensajito.text = [NSString stringWithFormat:@"Me tocaste %li veces", (long)contador];
}

@end
