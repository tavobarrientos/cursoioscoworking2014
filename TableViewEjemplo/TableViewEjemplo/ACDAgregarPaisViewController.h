//
//  ACDAgregarPaisViewController.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ACDAgregarPaisDelegate.h"
#import "ACDAgregarContinenteDelegate.h"

@interface ACDAgregarPaisViewController : UITableViewController<ACDAgregarContinenteDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblContinenteName;
- (IBAction)btnCancelAction:(id)sender;
- (IBAction)btnSaveAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtNombrePais;
@property(nonatomic, strong) id<ACDAgregarPaisDelegate> delegate;
@property(nonatomic) NSArray *continentes;
@end
