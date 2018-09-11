//
//  KWEEntryModel.h
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KWEEntryModel : NSObject

@property (nonatomic) NSString *entryTitle;
@property (nonatomic) NSString *noteText;

-(instancetype)initWithEntry: (NSString *)entryTitle note:(NSString *)noteText;

@end
