//
//  XAQuimicosViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAQuimicosViewController.h"
#import "XAQuimico.h"
#import "QuimicosData.h"
#import "XAQuimicosDetalleViewController.h"

@interface XAQuimicosViewController () <UITableViewDataSource, UITableViewDelegate>

// Propiedades
@property (strong, nonatomic) NSMutableArray *quimicos;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation XAQuimicosViewController

// Inicializamos la array en caso de no estar inicializada
-(NSMutableArray *)quimicos
{
    if (!_quimicos) {
        _quimicos = [[NSMutableArray alloc] init];
    }
    return _quimicos;
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
    
    // Asignamos cada intrucción a un objeto de tipo quimico y lo guardamos en la array
    for (NSMutableDictionary *quimicosInfo in [QuimicosData todasInstruccionesQuimicas]) {
        XAQuimico *quimico = [[XAQuimico alloc] initWhithData:quimicosInfo];
        [self.quimicos addObject:quimico];
    }

//    XAQuimico *quimicoPrueba = self.quimicos[0];
//    NSLog(@"%@", quimicoPrueba.titulo);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // determinamos el número de filas según los objetos que contenga la array
    return [self.quimicos count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"quimicoCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Mostramos en cada fila el título, subtitulo e imagen del objeto
    XAQuimico *quimico = self.quimicos[indexPath.row];
    
    cell.textLabel.text = quimico.titulo;
    cell.detailTextLabel.text = quimico.subtitulo;
    cell.imageView.image = quimico.imagenTH;
    
    return cell;
}

//Aumentamos un poco el tamaño de la celda
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kNormalCellHeigh = 70;

    return kNormalCellHeigh;
}

// Enviamos el objeto de la fila seleccionada a la siguiente view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        if ([segue.destinationViewController isKindOfClass:[XAQuimicosDetalleViewController class]]) {
            XAQuimicosDetalleViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            XAQuimico *selectedObject;
            
            selectedObject = self.quimicos[path.row];
            
            nextViewController.quimicosObject = selectedObject;
        }
    }
}

@end
