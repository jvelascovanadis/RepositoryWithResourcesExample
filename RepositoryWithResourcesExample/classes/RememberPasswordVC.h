//
//  RememberPasswordVC.h
//  NearGay
//
//  Created by jorge Velasco on 09/01/15.
//  Copyright (c) 2015 Vanadis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VanadisLoginComponent.h"

@interface RememberPasswordVC : UIViewController<UITextFieldDelegate>

@property (nonatomic,strong) NSObject<VanadisLoginDelegate>* delegateController;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UIView *accesoryViewUp;
@property (weak, nonatomic) IBOutlet UIView *accesoryViewDown;
@property (weak, nonatomic) IBOutlet UILabel *contactEmailLabel;

@end
