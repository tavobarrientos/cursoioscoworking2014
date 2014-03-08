//
//  AgregarAlumnoProtocol.h
//  CoreDataExample
//
//  Created by Gustavo Barrientos on 6/20/13.
//  Copyright (c) 2013 Acid Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AgregarAlumnoProtocol <NSObject>
-(void)agregarAlumnoWithNombre:(NSString*)nombre Apellido:(NSString*)apellido andEdad:(NSString*)edad;
@end
