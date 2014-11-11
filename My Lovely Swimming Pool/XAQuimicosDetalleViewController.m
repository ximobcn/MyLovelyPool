//
//  XAQuimicosDetalleViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAQuimicosDetalleViewController.h"

@interface XAQuimicosDetalleViewController ()

// Propiedades
@property (strong, nonatomic) IBOutlet UILabel *tituloLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtituloLabel;
@property (strong, nonatomic) IBOutlet UIImageView *quimicoImageView;
@property (strong, nonatomic) IBOutlet UITextView *quimicoTextView;


@end

@implementation XAQuimicosDetalleViewController

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
    
    // Mostramos el contenido del objeto
    self.tituloLabel.text = self.quimicosObject.titulo;
    self.subtituloLabel.text = self.quimicosObject.subtitulo;
    self.quimicoImageView.image = self.quimicosObject.imagen;
    self.quimicoTextView.text = self.quimicosObject.contenido;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
