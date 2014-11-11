//
//  XAAddAgendaViewController.h
//  My Lovely Swimming Pool
//
//  Created by Ximo on 25/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XAAddAgendaViewControllerDelegate <NSObject>

@required

-(void)didCancel;

@end

@interface XAAddAgendaViewController : UIViewController

@property (weak, nonatomic) id <XAAddAgendaViewControllerDelegate> delegate;

@end
