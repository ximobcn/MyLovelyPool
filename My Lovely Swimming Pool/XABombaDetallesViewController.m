//
//  XABombaDetallesViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XABombaDetallesViewController.h"

@interface XABombaDetallesViewController ()

@property (strong, nonatomic) IBOutlet UILabel *tituloLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtituloLabel;
@property (strong, nonatomic) IBOutlet UIImageView *bombaImageView;
@property (strong, nonatomic) IBOutlet UITextView *bombaTextView;

@end

@implementation XABombaDetallesViewController

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
    
    self.tituloLabel.text = self.bombasObject.titulo;
    self.subtituloLabel.text = self.bombasObject.subtitulo;
    self.bombaImageView.image = self.bombasObject.imagen;
    self.bombaTextView.text = self.bombasObject.contenido;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
