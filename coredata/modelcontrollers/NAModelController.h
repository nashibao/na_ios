//
//  NAModelController.h
//  SK3
//
//  Created by nashibao on 2012/09/28.
//  Copyright (c) 2012年 s-cubism. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NAFetchHelper.h"

#import "NASyncModel+sync.h"

#import "NSManagedObjectContext+na.h"

#import "NSFetchRequest+na.h"

/*
 model controller class.
 which includes "model", "coordinator", "mainContext".
 setup function made them all.
 
 "mainContext" is a context in the main thread. then don't use it for 
 heavy tasks! you can create new context in background thread.
 */
@interface NAModelController : NSObject

@property (strong, nonatomic) NSManagedObjectModel *model;
@property (strong, nonatomic) NSPersistentStoreCoordinator *coordinator;
@property (strong, nonatomic) NSManagedObjectContext *mainContext;

@property (readonly, nonatomic) NSString *name;
@property (readonly, nonatomic) NSBundle *bundle;

/** 初期化処理．すでにあるデータベースは削除する
 */
- (void)destroyAndSetup;

/*
 migrations
 */
//- (void)migrate:(NSString *)newpath newversion:(NSInteger)newversion;

@end
