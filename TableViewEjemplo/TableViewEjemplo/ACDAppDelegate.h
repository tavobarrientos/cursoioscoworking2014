//
//  ACDAppDelegate.h
//  TableViewEjemplo
//
//  Created by Acid Studios on 22/02/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface ACDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// Core Data
@property(nonatomic, strong, readonly) NSManagedObjectModel *managedObjectModel;
@property(nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;
@property(nonatomic, strong, readonly) NSPersistentStoreCoordinator *persistentStoreCoodinator;

-(NSURL *)applicationDocumentsDirectory;
-(NSManagedObjectContext *)managedObjectContext;
-(NSManagedObjectModel *)managedObjectModel;
-(NSPersistentStoreCoordinator *)persistentStoreCoodinator;
@end
