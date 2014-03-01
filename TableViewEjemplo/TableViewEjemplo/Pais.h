//
//  Pais.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 01/03/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Continente;

@interface Pais : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) Continente *pais_continente;

@end
