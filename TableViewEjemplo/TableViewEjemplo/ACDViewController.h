//
//  ACDViewController.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACDAgregarPaisDelegate.h"

@interface ACDViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, ACDAgregarPaisDelegate>
    @property (weak, nonatomic) IBOutlet UITableView *_tableView;
@end
