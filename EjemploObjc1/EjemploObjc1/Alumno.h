//
//  Alumno.h
//  EjemploObjc1
//
//  Created by Acid Studios on 15/02/14.
//
//

#import <Foundation/Foundation.h>

#import "Persona.h"
#import "AlumnoProtocol.h"

@interface Alumno : Persona <AlumnoProtocol>

@property(nonatomic) NSMutableArray *Materias;

- (id) initWithNombre:(NSString*)name YEdad:(NSInteger)age yCorreo:(NSString*)correo;
- (void) imprimirAlumno;

- (NSString*)getNombre;
- (void)AgregarNombre:(NSString*)name;
- (NSString *)getMateria:(NSInteger)index;
@end
