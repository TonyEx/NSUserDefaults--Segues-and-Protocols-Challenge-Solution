//
//  TEASignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Tony Angelo on 7/27/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEASignInViewController.h"
#import "TEACreateAccountViewController.h"
#import "TEAViewController.h"


@interface TEASignInViewController ()

@end

@implementation TEASignInViewController


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





- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
	[self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:self];
}


- (IBAction)loginButtonPressed:(UIButton *)sender {
	
	NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
	NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
	
	if(([userName isEqualToString:self.usernameTextField.text]) && ([password isEqualToString:self.passwordTextField.text]))
	{
		[self performSegueWithIdentifier:@"toViewControllerSegue" sender:self];
	}
	else
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid login credentials" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
		
		[alertView show];
	}
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([sender isKindOfClass:[TEASignInViewController class]])
	{
		if([segue.destinationViewController isKindOfClass:[TEACreateAccountViewController class]])
		{
			TEACreateAccountViewController *destVC;
			destVC = segue.destinationViewController;
			
			destVC.delegate = self;
		}
		
		else if([segue.destinationViewController isKindOfClass:[TEAViewController class]])
		{
			TEAViewController *destVC;
			destVC = segue.destinationViewController;
			
		}
		
	}
	
}

#pragma mark - TEACreateAccountDelegate Protocol Methods


-(void) didCancel
{
	[self dismissViewControllerAnimated:true completion:nil];
	
}


-(void) didCreateAccount
{
	[self dismissViewControllerAnimated:true completion:nil];
}



@end
