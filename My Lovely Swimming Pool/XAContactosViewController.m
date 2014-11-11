//
//  XAContactosViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAContactosViewController.h"
#import "XAContactosDetallesViewController.h"

@interface XAContactosViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *contactosTableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addButtonItem;

@property (strong, nonatomic) NSMutableArray *addedContactosObjects;

@end

@implementation XAContactosViewController

#define ADDED_CONTACTO_OBJECTS_KEY @"Added Contacto Objects Array"

//Lazy Instantiation

-(NSMutableArray *)addedContactosObjects
{
    if (!_addedContactosObjects) {
        _addedContactosObjects = [[NSMutableArray alloc] init];
    }
    return _addedContactosObjects;
}

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
    
    NSArray *myContactosAsPropertyList = [[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_CONTACTO_OBJECTS_KEY];
    for (NSDictionary *dictionary in myContactosAsPropertyList) {
        XAContacto *contactoObject = [self contactoObjectForDictionary:dictionary];
        [self.addedContactosObjects addObject:contactoObject];
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[XAContactosDetallesViewController class]]) {
        XAContactosDetallesViewController *nextViewController = segue.destinationViewController;
        NSIndexPath *path = [self.contactosTableView indexPathForCell:sender];
        
        XAContacto *selectedObject;
        selectedObject = self.addedContactosObjects[path.row];
        
        nextViewController.contactoObject = selectedObject;
    }
    
    if ([segue.destinationViewController isKindOfClass:[XAAddContactoViewController class]]) {
        XAAddContactoViewController *addContactoObjectViewController = segue.destinationViewController;
        addContactoObjectViewController.delegate = self;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

#pragma mark - XAAddContactoViewController Delegate

-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)addContactoObject:(XAContacto *)contactoObject
{
    [self.addedContactosObjects addObject:contactoObject];
    
    // Guardamos los objetos usando NSuserDefaults
    NSMutableArray *contactoObjectsAsPropertyList = [[[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_CONTACTO_OBJECTS_KEY] mutableCopy];
    if (!contactoObjectsAsPropertyList) contactoObjectsAsPropertyList = [[NSMutableArray alloc] init];
    
    [contactoObjectsAsPropertyList addObject:[self contactoObjectAsAPropertyList:contactoObject]];
    [[NSUserDefaults standardUserDefaults] setObject:contactoObjectsAsPropertyList forKey:ADDED_CONTACTO_OBJECTS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.contactosTableView reloadData];
}

#pragma mark - Helper Methods

-(NSDictionary *)contactoObjectAsAPropertyList:(XAContacto *)contactoObject
{
    //Pasa la imagen a datos para poder guardarla en el diccionario
    NSData *imageData = UIImageJPEGRepresentation(contactoObject.imagen, 100);
    
    NSDictionary *dictionary = @{@"nombre" : contactoObject.nombre, @"subnombre" : contactoObject.subnombre, @"imagen" : imageData, @"nombreCalle" : contactoObject.nombreCalle, @"numeroCalle" : @(contactoObject.numeroCalle), @"poblacion" : contactoObject.poblacion, @"codigoPostal" : @(contactoObject.codigoPostal), @"notas" : contactoObject.notas};
    
    return dictionary;
}

-(XAContacto *)contactoObjectForDictionary:(NSDictionary *)dictionary
{
    NSData *dataForImage = dictionary[@"imagen"];
    UIImage *contactoObjectImagen = [UIImage imageWithData:dataForImage];
    XAContacto *contactoObject = [[XAContacto alloc] initWhithData:dictionary andImage:contactoObjectImagen];
    
    return contactoObject;
}

#pragma mark - TableView Delegate and Datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.addedContactosObjects count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"contactoCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    XAContacto *contacto = [self.addedContactosObjects objectAtIndex:indexPath.row];
    cell.textLabel.text = contacto.nombre;
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"%@ %i, %@", contacto.nombreCalle, contacto.numeroCalle, contacto.poblacion];
    cell.imageView.image = contacto.imagen;
    
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.addedContactosObjects removeObjectAtIndex:indexPath.row];
        
        NSMutableArray *newSavedContactoObjectData = [[NSMutableArray alloc] init];
        for (XAContacto *contactoObject in self.addedContactosObjects){
            [newSavedContactoObjectData addObject:[self contactoObjectAsAPropertyList:contactoObject]];
        }
        [[NSUserDefaults standardUserDefaults] setObject:newSavedContactoObjectData forKey:ADDED_CONTACTO_OBJECTS_KEY];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//Aumentamos un poco el tamaño de la celda
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kNormalCellHeigh = 70;
    return kNormalCellHeigh;
}

- (IBAction)addBarButtonItemPressed:(UIBarButtonItem *)sender
{
    
}


@end
