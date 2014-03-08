//
//  ACDAppDelegate.h
//  CoreDataExample
//
//  Created by Gustavo Barrientos on 6/20/13.
//  Copyright (c) 2013 Acid Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
