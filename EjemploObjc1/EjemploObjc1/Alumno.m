//
//  Alumno.m
//  EjemploObjc1
//
//  Created by Acid Studios on 15/02/14.
//
//

#import "Alumno.h"

@implementation Alumno

- (id) initWithNombre:(NSString*)name YEdad:(NSInteger)age yCorreo:(NSString*)correo {
    self = [self init];
    self.Nombre = name;
    self.Edad = age;
    self.Correo = correo;
    self.Materias = [NSMutableArray arrayWithObjects:@"Matematicas", @"Español", @"Historia", nil];
    [self.Materias addObject:@"Naturales"];
    
    return self;
}

- (void) imprimirAlumno {
    NSLog(@"Nombre del Alumno: %@", self.Nombre);
}


- (NSString*)getNombre {
    return self.Nombre;
}


- (void)AgregarNombre:(NSString*)name {
    if(name) {
        self.Nombre = name;
    }
}

- (NSString *)getMateria:(NSInteger)index {
    if(self.Materias.count >= index) {
        return self.Materias[index];
    }
    
    return nil;
}

-(void)DituNombre {
    NSLog(@"Mi nombre es %@", self.Nombre);
}

-(void)ImprimeEdad {
    NSLog(@"Mi edad es %li", (long)self.Edad);
}

@end
