//
//  Continente.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 01/03/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Continente : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSOrderedSet *continente_pais;
@end

@interface Continente (CoreDataGeneratedAccessors)

- (void)insertObject:(NSManagedObject *)value inContinente_paisAtIndex:(NSUInteger)idx;
- (void)removeObjectFromContinente_paisAtIndex:(NSUInteger)idx;
- (void)insertContinente_pais:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeContinente_paisAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInContinente_paisAtIndex:(NSUInteger)idx withObject:(NSManagedObject *)value;
- (void)replaceContinente_paisAtIndexes:(NSIndexSet *)indexes withContinente_pais:(NSArray *)values;
- (void)addContinente_paisObject:(NSManagedObject *)value;
- (void)removeContinente_paisObject:(NSManagedObject *)value;
- (void)addContinente_pais:(NSOrderedSet *)values;
- (void)removeContinente_pais:(NSOrderedSet *)values;
@end
