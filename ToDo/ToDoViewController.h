//
//  ToDoViewController.h
//  ToDo
//
//  Created by 錬 土戸 on 12/07/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoViewController : UITableViewController

//@property (nonatomic, strong) NSMutableArray *array;

-(IBAction)PostButtonPress:(id)sender;
-(void)ModalViewCloseButtonPress:(int)iNumber;

@end
