//
//  AppDelegate.h
//  operationQueueExample
//
//  Created by Mohamad Farhand on 10/22/16.
//  Copyright © 2016 Acceptto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

