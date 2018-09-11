//
//  KWEEntryViewController.h
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KWEEntryModel.h"



@interface KWEEntryViewController : UIViewController

@property (nonatomic, readwrite) KWEEntryModel *entryPad;

-(void) updateViews;


@end
