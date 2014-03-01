//
//  ACDSeleccionarContinenteViewController.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 01/03/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACDAgregarContinenteDelegate.h"

@interface ACDSeleccionarContinenteViewController : UITableViewController {
    NSArray *continentes;
}
@property(nonatomic, strong) id<ACDAgregarContinenteDelegate> delegate;
@end
