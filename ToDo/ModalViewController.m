//
//  ModalViewController.m
//  ToDo
//
//  Created by 錬 土戸 on 12/07/04.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

@synthesize textView = _textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _textView.editable = YES;
    _textView.text = @"";
    [_textView becomeFirstResponder];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)pressActionSheet:(id)sender{
	[_textView resignFirstResponder];
    UIActionSheet *sheet =[[UIActionSheet alloc] 
						   initWithTitle:@"Close?"
						   delegate:self
						   cancelButtonTitle:@"Cancel" 
						   destructiveButtonTitle:@"OK"
						   otherButtonTitles:nil, nil];
	
	[sheet setActionSheetStyle:UIActionSheetStyleDefault];
	[sheet showInView:self.view];
    [_textView becomeFirstResponder];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == [actionSheet destructiveButtonIndex]) {
		[self dismissModalViewControllerAnimated:YES];
	}
}
- (IBAction)sendPost:(id)sender {
    NSString *todoStr;
    todoStr = _textView.text;
}

@end
