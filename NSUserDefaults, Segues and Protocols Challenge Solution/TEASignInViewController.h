//
//  TEASignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Tony Angelo on 7/27/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TEACreateAccountViewController.h"

@interface TEASignInViewController : UIViewController <TEACreateAccountDelegage>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;

@end
