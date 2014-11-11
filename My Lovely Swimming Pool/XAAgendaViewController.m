//
//  XAAgendaViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAAgendaViewController.h"

@interface XAAgendaViewController ()

@property (strong, nonatomic) IBOutlet UITableView *agendaTableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addBarButtonItem;

@end

@implementation XAAgendaViewController

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
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reloadTable)
                                                 name:@"reloadData"
                                               object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XAAddContactoViewController Delegate

-(void)didCancel
{
    //NSLog(@"didCancel");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[XAAddAgendaViewController class]]) {
        XAAddAgendaViewController *addAgendaObjectViewController = segue.destinationViewController;
        addAgendaObjectViewController.delegate = self;
    }
}

#pragma mark - TableView Delegate and Datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"agendaCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Get list of local notifications
    NSArray *localNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
    UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
    
    // Formateamos la fecha para mostrarla más legible
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yy HH:mm"];
    
    NSDate *date = localNotification.fireDate;
    
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    NSString *formattedDateStringFinal;
    
    // Según la periodicidad, usamos una imagen u otra
    if (localNotification.repeatInterval == NSDayCalendarUnit) {
        cell.imageView.image = [UIImage imageNamed:@"avisosAzul.png"];
        formattedDateStringFinal = [NSString stringWithFormat:@"Rep: Diaria. Fecha: %@", formattedDateString];
    }
    else if (localNotification.repeatInterval == NSWeekCalendarUnit){
        cell.imageView.image = [UIImage imageNamed:@"avisosAmarillo.png"];
        formattedDateStringFinal = [NSString stringWithFormat:@"Rep: Semanal. Fecha: %@", formattedDateString];
    }
    else if (localNotification.repeatInterval == NSMonthCalendarUnit){
        cell.imageView.image = [UIImage imageNamed:@"avisosRojo.png"];
        formattedDateStringFinal = [NSString stringWithFormat:@"Rep: Mensual. Fecha: %@", formattedDateString];
    }
    else if (localNotification.repeatInterval == NSYearCalendarUnit){
        cell.imageView.image = [UIImage imageNamed:@"avisosRojo.png"];
        formattedDateStringFinal = [NSString stringWithFormat:@"Rep: Anual. Fecha: %@", formattedDateString];
    }
    else {
        cell.imageView.image = [UIImage imageNamed:@"avisosRosaF.png"];
        formattedDateStringFinal = [NSString stringWithFormat:@"Sin repetición. Fecha: %@", formattedDateString];
    }
    
    [cell.textLabel setText:localNotification.alertBody];
    [cell.detailTextLabel setText:formattedDateStringFinal];
    
    return cell;
}

// Añadimos canEditRowAtIndexPath y commitEditingStyle para que el usuario pueda borrar entras
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        UIApplication *app = [UIApplication sharedApplication];
        NSArray *eventArray = [app scheduledLocalNotifications];
        
        UILocalNotification* oneEvent = [eventArray objectAtIndex:indexPath.row];
        
        [app cancelLocalNotification:oneEvent];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//Aumentamos un poco el tamaño de la celda
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kNormalCellHeigh = 70;
    
    return kNormalCellHeigh;
}

#pragma mark - Helper Methods

- (void)reloadTable
{
    [self.agendaTableView reloadData];
}


@end
