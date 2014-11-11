//
//  XAHomeViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAHomeViewController.h"

@interface XAHomeViewController ()

@property (strong, nonatomic) IBOutlet UINavigationItem *homeNavigationItem;
@property (strong, nonatomic) IBOutlet UIButton *quimicosButton;
@property (strong, nonatomic) IBOutlet UIButton *bombaButton;
@property (strong, nonatomic) IBOutlet UIButton *agendaButton;
@property (strong, nonatomic) IBOutlet UIButton *consejosButton;
@property (strong, nonatomic) IBOutlet UIButton *contactosButton;
@property (strong, nonatomic) IBOutlet UIImageView *headerImage;

@end

@implementation XAHomeViewController

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
    
    // Para saber el nombre de la fuente
//    for (NSString* family in [UIFont familyNames])
//    {
//        NSLog(@"%@", family);
//        
//        for (NSString* name in [UIFont fontNamesForFamilyName: family])
//        {
//            NSLog(@"  %@", name);
//        }
//    }
//    if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone)
//    {
//        if ([[UIScreen mainScreen] bounds].size.height == 568.0f)
//        {
//            //iphone 4 inch screen or more
//        }
//        else
//        {
//            //iphone 3.5 inch screen
//        
//        }
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

// Rellenar en caso de tener que hacer alguna acción antes de enviar

- (IBAction)quimicosButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)bombaButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)agendaButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)consejosButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)contactosButtonPressed:(UIButton *)sender
{
    
}

@end
