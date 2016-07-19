//
//  AppDelegate.h
//  ListView
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreData/coreData.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSMutableData *_responseData;
    
}

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,retain,readonly) NSManagedObjectModel *managedObjectModel;
@property(nonatomic,retain,readonly) NSManagedObjectContext *managedObjectContext;
@property(nonatomic,retain,readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@end

