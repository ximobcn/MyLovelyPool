//
//  XAAddContactoViewController.h
//  My Lovely Swimming Pool
//
//  Created by Ximo on 25/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XAContacto.h"

@protocol XAAddContactoViewControllerDelegate <NSObject>

@required

-(void)addContactoObject:(XAContacto *)contactoObject;
-(void)didCancel;

@end

@interface XAAddContactoViewController : UIViewController

@property (weak, nonatomic) id <XAAddContactoViewControllerDelegate> delegate;

@end
