//
//  ACDEjemploViewController.h
//  EjemploUIKit
//
//  Created by Acid Studios on 15/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACDEjemploViewController : UIViewController {
    NSInteger contador;
}

@property (weak, nonatomic) IBOutlet UILabel *lblMensajito;
@property (weak, nonatomic) IBOutlet UIButton *btnTocame;


-(IBAction)btnMensajitoAction:(id)sender;
@end
