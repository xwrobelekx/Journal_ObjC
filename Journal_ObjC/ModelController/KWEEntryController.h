//
//  KWEEntryController.h
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KWEEntryModel.h"

@interface KWEEntryController : NSObject



@property (nonatomic, readwrite) NSMutableArray *entriesArray;

+ (KWEEntryController *)shared;

- (void)saveEntry: (NSString *)entryTitle note:(NSString *)note;

- (void)deleteEntry: (KWEEntryModel *)enrty;

//- (NSURL*)fileURL;

//-(void)loadFromPersistentStore;

//-(void)saveToPersistentStore;





@end
