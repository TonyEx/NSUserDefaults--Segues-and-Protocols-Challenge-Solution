//
//  TEACreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Tony Angelo on 7/27/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEACreateAccountViewController.h"
#import "TEASignInViewController.h"

@interface TEACreateAccountViewController ()

@end

@implementation TEACreateAccountViewController

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
    // Do any additional setup after loading the view.
	
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)createAccountButtonPressed:(UIButton *)sender {
	
	if ((self.usernameTextField.text.length != 0) && (self.passwordTextField.text != 0) &&
		([self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]))
	{
		[[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
		[[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
		[[NSUserDefaults standardUserDefaults] synchronize];
		
		[self.delegate didCreateAccount];
		
	}
	else {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		
		[alertView show];
		
	}
	
}


- (IBAction)cancelButtonPressed:(UIButton *)sender {
	
	[self.delegate didCancel];
	
}


@end
