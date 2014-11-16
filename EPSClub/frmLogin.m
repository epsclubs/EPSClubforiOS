//
//  frmLogin.m
//  EPSClub
//
//  Created by MysteryTony on 2014-11-15.
//  Copyright (c) 2014 Tony Li. All rights reserved.
//

#import "frmLogin.h"

@implementation frmLogin
{
    
    
}


@synthesize txtEmail, txtPassword;

-(void)viewDidLoad
{
    txtPassword.delegate = txtEmail.delegate = self;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == txtEmail) {
        [txtPassword becomeFirstResponder];
        return YES;
    } else if(textField == txtPassword) {
        [self performSegueWithIdentifier:@"SegueLogin" sender:self];
        
    }
    return NO;
}








@end
