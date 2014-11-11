//
//  XAContactosDetallesViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAContactosDetallesViewController.h"

@interface XAContactosDetallesViewController () <CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *contactoImageView;
@property (strong, nonatomic) IBOutlet UILabel *nombreContactoLabel;
@property (strong, nonatomic) IBOutlet UILabel *subnombreContactoLabel;
@property (strong, nonatomic) IBOutlet UILabel *direccionLabel;
@property (strong, nonatomic) IBOutlet UITextView *notasTextView;
@property (strong, nonatomic) IBOutlet MKMapView *contactoMKMapView;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicatorView;
@property (strong, nonatomic) CLGeocoder *geocoder;

@property (strong, nonatomic) NSString *address;

@end

@implementation XAContactosDetallesViewController

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
    
    self.nombreContactoLabel.text = self.contactoObject.nombre;
    self.subnombreContactoLabel.text = self.contactoObject.subnombre;
    
    self.address = [[NSString alloc] initWithFormat:@"%@, %i, %@", self.contactoObject.nombreCalle, self.contactoObject.numeroCalle, self.contactoObject.poblacion];
    
    self.direccionLabel.text = self.address;
    self.notasTextView.text = self.contactoObject.notas;
    self.contactoImageView.image = self.contactoObject.imagen;
    
    // Lo escondemos hasta que se cargue
    self.contactoMKMapView.hidden = YES;
    
    // Mientras mostramos la rueda de carga
    [self.indicatorView startAnimating];
    
    // Centramos el mapa y mostramos la anotation desde la dirección en texto
    [self usarGeocoder:0];
    // Creamos botón para ir a Maps
    [self botonMaps];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Helpers

-(void)openActionSheet:(id)sender {
    
    [self usarGeocoder:1];
    
}

- (void)usarGeocoder:(int) indicador{
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    
    [geocoder geocodeAddressString:self.address completionHandler:^(NSArray* placemarks, NSError* error){
        // Check for returned placemarks
        if (placemarks && placemarks.count > 0) {
            
            CLPlacemark *topResult = [placemarks objectAtIndex:0];
            MKPlacemark *placemark = [[MKPlacemark alloc]initWithPlacemark:topResult];
            
            if (indicador == 1) {
                NSDictionary *options = @{
                                          MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving,
                                          MKLaunchOptionsMapTypeKey:
                                              [NSNumber numberWithInteger:MKMapTypeStandard],
                                          MKLaunchOptionsShowsTrafficKey:@YES
                                          };
                MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:placemark];
                item.name = self.contactoObject.nombre;
                
                [item openInMapsWithLaunchOptions:options];
            }
            else {
                
                CLLocationCoordinate2D center = CLLocationCoordinate2DMake(placemark.location.coordinate.latitude, placemark.location.coordinate.longitude);
                MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
                MKCoordinateRegion regionToDisplay = MKCoordinateRegionMake(center, span);
                
                [self.contactoMKMapView setRegion:regionToDisplay];
                
                // Paramos y escondemos el indicador de carga
                [self.indicatorView stopAnimating];
                self.indicatorView.hidden = YES;
                
                // Mostramos el mapa con el punto de la dirección
                self.contactoMKMapView.hidden = NO;
                [self.contactoMKMapView addAnnotation:placemark];
            }
        }}];
    
}

- (void)botonMaps{
    CGFloat centroWidth = (self.contactoMKMapView.frame.size.width / 2) - 80;
    CGFloat abajoHeight = self.contactoMKMapView.frame.size.height - 50;
    
    // creamos botón para abrir en maps
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(centroWidth, abajoHeight, 160, 50);
    [btn setBackgroundImage:[UIImage imageNamed:@"boton.png"] forState:UIControlStateNormal];
    [btn setTitle:@"Abrir en Maps" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:242.0/255.0 green:56.0/255.0 blue:56.0/255.0 alpha:1] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont fontWithName:@"ThirstyScriptExtraboldDemo" size:14.0f];
    
    [btn addTarget:self action:@selector(openActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.contactoMKMapView addSubview:btn];
}

@end
