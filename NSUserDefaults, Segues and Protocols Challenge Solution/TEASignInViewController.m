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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
	[self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:self];
}


- (IBAction)loginButtonPressed:(UIButton *)sender {
	[self performSegueWithIdentifier:@"toViewControllerSegue" sender:self];
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([sender isKindOfClass:[TEASignInViewController class]])
	{
		if([segue.destinationViewController isKindOfClass:[TEACreateAccountViewController class]])
		{
			TEACreateAccountViewController *destVC;
			destVC = segue.destinationViewController;
			
			
		}
		
		else if([segue.destinationViewController isKindOfClass:[TEAViewController class]])
		{
			TEAViewController *destVC;
			destVC = segue.destinationViewController;
			
		}
		
	}
	
}


@end
