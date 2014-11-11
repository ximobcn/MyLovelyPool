//
//  XAConsejosViewController.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAConsejosViewController.h"
#import "XAConsejo.h"
#import "ConsejosData.h"
#import "XAConsejosDetallesViewController.h"

@interface XAConsejosViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *consejosTableView;
@property (strong, nonatomic) NSMutableArray *consejos;

@property (strong, nonatomic) NSMutableArray *expandedCells;

@property (nonatomic) BOOL desplegada;

@end

@implementation XAConsejosViewController

-(NSMutableArray *)expandedCells
{
    if (!_expandedCells) {
        _expandedCells = [[NSMutableArray alloc] init];
    }
    return _expandedCells;
}

-(NSMutableArray *)consejos
{
    if (!_consejos) {
        _consejos = [[NSMutableArray alloc] init];
    }
    return _consejos;
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
    
    for (NSMutableDictionary *consejosInfo in [ConsejosData todosConsejos]) {
        XAConsejo *consejo = [[XAConsejo alloc] initWhithData:consejosInfo];
        [self.consejos addObject:consejo];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark  - TableView DataSource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.consejos count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"consejosCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    XAConsejo *consejo = self.consejos[indexPath.row];
    
    cell.textLabel.text = consejo.titulo;
    
    //cell.imageView.image = consejo.imagen;
    
    if (self.desplegada) {
        cell.detailTextLabel.text = consejo.contenido;
    }
    else {
        cell.detailTextLabel.text = consejo.subtitulo;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if ([self.expandedCells containsObject:indexPath])
    {
        [self.expandedCells removeObject:indexPath];
        self.desplegada = NO;
    }
    else
    {
        [self.expandedCells addObject:indexPath];
        self.desplegada = YES;
    }
    [tableView beginUpdates];
    [self.consejosTableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [tableView endUpdates];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat kExpandedCellHeight = 190;
    CGFloat kNormalCellHeigh = 50;
    
    if ([self.expandedCells containsObject:indexPath])
    {
        return kExpandedCellHeight; //It's not necessary a constant, though
    }
    else
    {
        return kNormalCellHeigh; //Again not necessary a constant
    }
}

@end
