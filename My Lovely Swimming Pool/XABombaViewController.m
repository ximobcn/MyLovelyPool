//
//  XABombaViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XABombaViewController.h"
#import "XABomba.h"
#import "BombaData.h"
#import "XABombaDetallesViewController.h"

@interface XABombaViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *bombas;
@property (strong, nonatomic) IBOutlet UITableView *bombaTableView;

@end

@implementation XABombaViewController

-(NSMutableArray *)bombas
{
    if (!_bombas) {
        _bombas = [[NSMutableArray alloc] init];
    }
    return _bombas;
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
    
    
    for (NSMutableDictionary *bombasInfo in [BombaData todasInstruccionesBombas]) {
        XABomba *bomba = [[XABomba alloc] initWhithData:bombasInfo];
        [self.bombas addObject:bomba];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.bombas count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //cell.textLabel.text = [NSString stringWithFormat:@"cell %i", indexPath.row];
    XABomba *bomba= self.bombas[indexPath.row];
    
    cell.textLabel.text = bomba.titulo;
    cell.detailTextLabel.text = bomba.subtitulo;
    cell.imageView.image = bomba.imagenTH;
    
    return cell;
}

//Aumentamos un poco el tamaño de la celda
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kNormalCellHeigh = 70;
    
    return kNormalCellHeigh;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        if ([segue.destinationViewController isKindOfClass:[XABombaDetallesViewController class]]) {
            XABombaDetallesViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.bombaTableView indexPathForCell:sender];
            XABomba *selectedObject;
            
            selectedObject = self.bombas[path.row];
            
            nextViewController.bombasObject = selectedObject;
        }
    }
}

@end
