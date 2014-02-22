//
//  Persona.h
//  EjemploObjc1
//
//  Created by Acid Studios on 15/02/14.
//
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject

@property(nonatomic) NSString* Nombre;
@property(nonatomic) NSInteger Edad;
@property(nonatomic) NSString *Correo;


-(void) DiHola;
@end
