//
//  LoginVC.h
//  NearGay
//
//  Created by jorge Velasco on 03/08/14.
//  Copyright (c) 2014 Vanadis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VanadisLoginComponent.h"
//#import <VanadisFrameworkSlideMenu/SlideMenuControl.h>
//#import "SlideMenuController.h"
//#import "TutorialVC.h"

//#import "UIActivityIndicatorView+AFNetworking.h"

#define OFFSET_KEYBOARD 65.0
#define Appearence_speed_keyBoard 0.75f

//@interface LoginVC : UIViewController<UITextFieldDelegate,TutorialVCDelegate>
@interface LoginVC : UIViewController<UITextFieldDelegate>
{
    NSString *email;
    NSString *password;
}

@property (nonatomic,strong) NSObject<VanadisLoginDelegate>* delegateController;

//@property (strong, nonatomic) SlideMenuController *menu;
@property (strong, nonatomic) IBOutlet UITextField *TF_password;
@property (strong, nonatomic) IBOutlet UITextField *TF_mail;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@property (strong, nonatomic) IBOutlet UIView *emailView;
@property (strong, nonatomic) IBOutlet UIView *passwordView;
@property (strong, nonatomic) IBOutlet UIButton *accessBtn;
@property (strong, nonatomic) IBOutlet UIButton *registerBtn;
@property (strong, nonatomic) IBOutlet UIButton *forgetBtn;
@property (strong, nonatomic) IBOutlet UIImageView *logoView;


- (IBAction)goLogin:(id)sender;
- (void)login;
//-(void) saveLoginInfoToDisk;
- (IBAction)goRememberPassword:(id)sender;

- (BOOL) validateEmail:(NSString *)checkString;
- (BOOL) checkLoginFields;

- (void)keyboardWillAppear;
- (void)keyboardWillDisappear;

@end
