//
//  AgregarAlumnoController.h
//  CoreDataExample
//
//  Created by Gustavo Barrientos on 6/20/13.
//  Copyright (c) 2013 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AgregarAlumnoProtocol.h"

@interface AgregarAlumnoController : UITableViewController
{
    IBOutlet UITextField *txtNombre;
    IBOutlet UITextField *txtApellido;
    IBOutlet UITextField *txtEdad;
}

@property(nonatomic) id<AgregarAlumnoProtocol> delegate;

-(IBAction)AddAlumno:(id)sender;
-(IBAction)Cancel:(id)sender;
@end
