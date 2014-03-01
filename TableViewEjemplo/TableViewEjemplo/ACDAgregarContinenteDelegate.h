//
//  ACDAgregarContinenteDelegate.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 01/03/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ACDAgregarContinenteDelegate <NSObject>
-(NSArray*)getContinentesArray;
-(void) SetContinenteWithIndex:(NSInteger)index;
@end
