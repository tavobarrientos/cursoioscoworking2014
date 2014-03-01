//
//  ACDViewController.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ACDAgregarPaisDelegate.h"

@interface ACDViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, ACDAgregarPaisDelegate, NSFetchedResultsControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *_tableView;

@property(nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property(nonatomic, strong) NSFetchedResultsController *fetchedResults;
@end
