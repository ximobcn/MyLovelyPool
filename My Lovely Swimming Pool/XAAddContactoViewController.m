//
//  XAAddContactoViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 25/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAAddContactoViewController.h"

@interface XAAddContactoViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nombreTextField;
@property (strong, nonatomic) IBOutlet UITextField *contactoTextField;
@property (strong, nonatomic) IBOutlet UITextField *direccionTextField;
@property (strong, nonatomic) IBOutlet UITextField *numeroTextField;
@property (strong, nonatomic) IBOutlet UITextField *codigoPostalTextField;
@property (strong, nonatomic) IBOutlet UITextField *poblacionTextField;

@property (strong, nonatomic) IBOutlet UIButton *seleccionarFotoButton;
@property (strong, nonatomic) IBOutlet UITextField *notasTextField;

@property (strong, nonatomic) IBOutlet UIButton *addContactoButton;
@property (strong, nonatomic) IBOutlet UIButton *cancelContactoButton;

@property (strong, nonatomic) UIImage *imagenTemporal;
@end

@implementation XAAddContactoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPhotoButtonPressed:(UIButton *)sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //You can retrieve the actual UIImage
    self.imagenTemporal = [info valueForKey:UIImagePickerControllerOriginalImage];
    
    [picker dismissViewControllerAnimated:YES completion:^{
    }];
}

- (IBAction)addContactoButtonPressed:(UIButton *)sender
{
    XAContacto *newContactoObject = [self returnNewContactoObject];
    [self.delegate addContactoObject:newContactoObject];
}

- (IBAction)cancelContactoButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

#pragma mark - Helper Method

-(XAContacto *)returnNewContactoObject
{
    XAContacto *addedContactoObject = [[XAContacto alloc] init];
    
    if (self.imagenTemporal != nil) {
        addedContactoObject.imagen = self.imagenTemporal;
    }
    else {
        addedContactoObject.imagen = [UIImage imageNamed:@"default.jpg"];
    }
    
    addedContactoObject.nombre = self.nombreTextField.text;
    addedContactoObject.subnombre = self.contactoTextField.text;
    addedContactoObject.nombreCalle = self.direccionTextField.text;
    addedContactoObject.numeroCalle = [self.numeroTextField.text intValue];
    addedContactoObject.codigoPostal = [self.codigoPostalTextField.text intValue];
    addedContactoObject.poblacion = self.poblacionTextField.text;
    addedContactoObject.notas = self.notasTextField.text;
    
    return addedContactoObject;
}

// Esconde el teclado si tocamos otra parte de la pantalla
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

// Esconde el teclado al darle a la tecla Intro del teclado
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO; //Retorna YES si se permiten saltos de linea
}

// Subimos el Textfield si aparece el teclado
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    if (textField == self.notasTextField) {
        const int movementDistance = 120; // tweak as needed
        const float movementDuration = 0.3f; // tweak as needed
        
        int movement = (up ? -movementDistance : movementDistance);
        
        [UIView beginAnimations: @"anim" context: nil];
        [UIView setAnimationBeginsFromCurrentState: YES];
        [UIView setAnimationDuration: movementDuration];
        self.view.frame = CGRectOffset(self.view.frame, 0, movement);
        [UIView commitAnimations];
    }
}
@end
