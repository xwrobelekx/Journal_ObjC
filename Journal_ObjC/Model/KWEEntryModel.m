//
//  KWEEntryModel.m
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEEntryModel.h"

@implementation KWEEntryModel

-(instancetype)initWithEntry: (NSString *)entryTitle note:(NSString *)noteText {
    self = [super init];
    if (self) {
        _entryTitle = entryTitle;
        _noteText = noteText;
    }
    return self;
}

@end
