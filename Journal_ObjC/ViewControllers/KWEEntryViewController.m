//
//  KWEEntryViewController.m
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEEntryViewController.h"
#import "KWEEntryController.h"

@interface KWEEntryViewController ()


@property (weak, nonatomic) IBOutlet UITextField *titleTextView;
@property (weak, nonatomic) IBOutlet UITextView *noteTextView;


@end


@implementation KWEEntryViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.updateViews;
}



-(void) updateViews
{
    _titleTextView.text = self.entryPad.entryTitle;
    _noteTextView.text = self.entryPad.noteText;
    
}

//-(void) setState:(KWEEntryModel *)entryPad
//{
//    _entryPad = entryPad;
//    [self updateViews];
//}



- (IBAction)saveButtonTapped:(id)sender {

    [[KWEEntryController shared] saveEntry:_titleTextView.text note:_noteTextView.text];
    [self.navigationController popViewControllerAnimated:true];
}

@end
