//
//  ConsejosData.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 22/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "ConsejosData.h"

@implementation ConsejosData

+ (NSArray *)todosConsejos
{
    NSMutableArray *consejos = [@[] mutableCopy];
    
    NSDictionary *primerConsejoDictionary = @{INFO_ID : @001, INFO_TITULO : @"Nivel Agua", INFO_SUBTITULO : @"Importante mantener el nivel de agua adecuado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante mantener el nivel de agua adecuado \n\rEs muy importante mantener un nivel de agua adecuado en nuestra piscina. Debido a la evaporación por calor, al limpiado del filtro de la bomba y otros motivos, el nivel del agua va bajando. Que tener en cuenta esto y nunca dejar que el nivel esté por debajo del Skimmer ya que esto estropearía nuestra bomba al no llegarle el agua."};
    [consejos addObject:primerConsejoDictionary];
    
    NSDictionary *segundoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Manejo de la bomba", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:segundoConsejoDictionary];
    
    NSDictionary *terceroConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Días de mucho viento", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:terceroConsejoDictionary];
    
    NSDictionary *cuartoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Agua turbia", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:cuartoConsejoDictionary];
    
    NSDictionary *quintoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Temporada invierno", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:quintoConsejoDictionary];
    
    NSDictionary *sextoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Usar la red", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:sextoConsejoDictionary];
    
    NSDictionary *septimoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpiar las paredes", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nImportante cambiar las posiciones en parado \n\rCuando hacemos uso de la bomba, es muy importante para evitar daños en la misma apagar el motor totalmente de la corriente. Así evitaremos que la bomba se pueda forzar y acabar estropeando"};
    [consejos addObject:septimoConsejoDictionary];
    
    return [consejos copy];
}

@end
