//
//  ModalViewController.h
//  ToDo
//
//  Created by 錬 土戸 on 12/07/04.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModalViewController : UIViewController <UIActionSheetDelegate>

@property (nonatomic, strong) IBOutlet UITextView* textView;

-(IBAction)pressActionSheet:(id)sender;

@end
