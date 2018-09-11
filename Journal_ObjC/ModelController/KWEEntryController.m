//
//  KWEEntryController.m
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEEntryController.h"
#import "KWEEntryModel.h"

@implementation KWEEntryController

+ (KWEEntryController *)shared {
    static KWEEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [KWEEntryController new];
    });
    return shared;
}




-(instancetype)init {
    self = [super init];
    if (self){
        _entriesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)saveEntry: (NSString *)entryTitle note:(NSString *)note
{
    KWEEntryModel *entry = [[KWEEntryModel alloc]initWithEntry:entryTitle note:note];
    [[KWEEntryController shared].entriesArray addObject:entry];
}

- (void)deleteEntry: (KWEEntryModel *)enrty
{
    NSUInteger index = [_entriesArray indexOfObject:enrty];
    [_entriesArray removeObjectAtIndex:index];
}




//- (NSURL*)fileURL
//{
//    const NSURL *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
//
//    const NSString *fileName = @"Journal_ObjC.json";
//    const NSURL *documentDirectoryURL = [urls[0].a fileName];
//    //not sure hot to append the path component
//
//}




@end
