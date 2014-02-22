//
//  main.m
//  EjemploObjc1
//
//  Created by Acid Studios on 15/02/14.
//
//

#import <Foundation/Foundation.h>

#import "Alumno.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Alumno *alumno = [[Alumno alloc] initWithNombre:@"Gustavo" YEdad:28 yCorreo:@"tavo@gmail.com"];
        
        [alumno imprimirAlumno];
        
        NSString *materia = [alumno getMateria:1];
        NSLog(@"Materia: %@", materia);
        
        [alumno.Materias addObject:@"Civismo"];
        [alumno DituNombre];
    }
    return 0;
}

