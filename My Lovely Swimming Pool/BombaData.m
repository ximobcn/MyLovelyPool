//
//  BombaData.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "BombaData.h"

@implementation BombaData

+ (NSArray *)todasInstruccionesBombas
{
    NSMutableArray *informacionBombas = [@[] mutableCopy];
    
    NSDictionary *primeraInfoDictionary = @{INFO_ID : @001, INFO_TITULO : @"Filtrado", INFO_SUBTITULO : @"Proceso normal de filtrado", INFO_IMAGE : [UIImage imageNamed:@"bombaFiltracion.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaFiltracionTH.png"],  INFO_CONTENIDO : @"El agua de la piscina necesita un proceso de filtrado diario. Es aconsejable unas 6 horas al día, aumentando el tiempo de filtrado si nos encontramos en una zona de mucho calor, o disminuyéndolo si la zona en la que estamos no es tan calurosa o la piscina no recibe los rayos del sol directamente durante todo el día.\n\rEs aconsejable utilizar el reloj del automático y repartir esas seis horas en tres periodo de dos horas, una por la mañana, otra al mediodia y la útilma por la tarde. Para el proceso de filtrado las válvulas del fondo y el skimmer tienen que estar abiertas. La bomba se ha de poner en la posición del filtrado."};
    [informacionBombas addObject:primeraInfoDictionary];
    
    NSDictionary *segundaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpieza Filtro", INFO_SUBTITULO : @"Limpieza del filtro de la bomba", INFO_IMAGE : [UIImage imageNamed:@"bombaLimpieza.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaLimpiezaTH.png"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    [informacionBombas addObject:segundaInfoDictionary];
    
    NSDictionary *terceraInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Enjuagado Filtro", INFO_SUBTITULO : @"Enjuague del filtro de la bomba", INFO_IMAGE : [UIImage imageNamed:@"bombaEnjuague.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaEnjuagueTH.png"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    [informacionBombas addObject:terceraInfoDictionary];
    
    NSDictionary *cuartaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpieza Fondo", INFO_SUBTITULO : @"Limpieza del fondo de la piscina", INFO_IMAGE : [UIImage imageNamed:@"bombaAspiracion.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaFiltracionTH.png"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    [informacionBombas addObject:cuartaInfoDictionary];
    
    return [informacionBombas copy];
}

@end
