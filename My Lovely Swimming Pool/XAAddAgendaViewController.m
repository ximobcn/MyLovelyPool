//
//  XAAddAgendaViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 25/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAAddAgendaViewController.h"

@interface XAAddAgendaViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nombreEventoTextField;
@property (strong, nonatomic) IBOutlet UIDatePicker *eventoDatePicker;
@property (strong, nonatomic) IBOutlet UIPickerView *frecuenciaPickerView;
@property (strong, nonatomic) IBOutlet UIButton *guardarButton;
@property (strong, nonatomic) IBOutlet UIButton *cancelarButton;

@property (strong, nonatomic) NSArray *frecuencias;

//para recoger el valor del Picker
@property (nonatomic) int frecuencia;

@end

@implementation XAAddAgendaViewController

- (NSArray *)frecuencias
{
    if (!_frecuencias) _frecuencias = [[NSArray alloc] initWithObjects:@"No",@"Cada día",@"Cada semana", @"Cada Mes", @"Cada año", nil];
    return _frecuencias;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //las inicializamos a 0, que sería cada 1 día, porque si el usuario no lo mueve no se guardaría
    self.frecuencia = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Picker DataSource and Delegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    // dos columnas/componentes
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.frecuencias count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.frecuencias objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.frecuencia = row;
}

#pragma mark - IBActions

- (IBAction)cancelarButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

- (IBAction)guardarButtonPressed:(UIButton *)sender
{
    [self.nombreEventoTextField resignFirstResponder];
    
    // Get the current date
    NSDate *pickerDate = [self.eventoDatePicker date];
    
    // Schedule the notification
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = pickerDate;
    
    // para que no queden los avisos sin título
    if (self.nombreEventoTextField.text && self.nombreEventoTextField.text.length > 0){
        localNotification.alertBody = [NSString stringWithFormat:@" %@ ", self.nombreEventoTextField.text];
    }
    else{
        localNotification.alertBody = [self tituloAvisoPorDefecto:self.frecuencia];
    }
    
    localNotification.alertAction = @"Show me the item";
    localNotification.timeZone = [NSTimeZone localTimeZone];
    
    if (self.frecuencia != 0) {
        localNotification.repeatInterval = [self frecuenciaEscogida:self.frecuencia];
    }
    
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    // Request to reload table view data
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
    // Dismiss the view controller
    [self dismissViewControllerAnimated:YES completion:nil];

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

#pragma mark - Helpers

- (NSCalendarUnit)frecuenciaEscogida:(int)selector
{
        if (self.frecuencia == 1) return NSDayCalendarUnit;
        else if (self.frecuencia == 2) return NSWeekCalendarUnit;
        else if (self.frecuencia == 3) return NSMonthCalendarUnit;
        else return NSYearCalendarUnit;
}

- (NSString *)tituloAvisoPorDefecto:(int)selector
{
    NSString *tituloAviso;
    
    if (self.frecuencia == 0) tituloAviso = @" Aviso sin repetición ";
    else if (self.frecuencia == 1) tituloAviso = @" Aviso Diario ";
    else if (self.frecuencia == 2) tituloAviso = @" Aviso Semanal ";
    else if (self.frecuencia == 3) tituloAviso = @" Aviso Mensual ";
    else tituloAviso = @" Aviso Anual ";
    
    return tituloAviso;
}

@end
