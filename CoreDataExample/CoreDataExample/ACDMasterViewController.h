//
//  ACDMasterViewController.h
//  CoreDataExample
//
//  Created by Gustavo Barrientos on 6/20/13.
//  Copyright (c) 2013 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AgregarAlumnoProtocol.h"

@class ACDDetailViewController;

#import <CoreData/CoreData.h>

@interface ACDMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate, AgregarAlumnoProtocol>

@property (strong, nonatomic) ACDDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
