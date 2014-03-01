//
//  ACDAgregarPaisDelegate.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ACDAgregarPaisDelegate <NSObject>
-(void)GuardarPaisConNombre:(NSString*)pais yContinente:(NSInteger)index;
@end
