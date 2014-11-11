//
//  QuimicosData.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "QuimicosData.h"

@implementation QuimicosData

+ (NSArray *)todasInstruccionesQuimicas
{
    NSMutableArray *informacionQuimicos = [@[] mutableCopy];
    
    // Creamos un diccionario con todas las intrucciones necesarias
    NSDictionary *primeraInfoDictionary = @{INFO_ID : @001, INFO_TITULO : @"X en uno", INFO_SUBTITULO : @"Pastillas de cloro con otros químicos incluídos", INFO_IMAGE : [UIImage imageNamed:@"5Efectos.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"5EfectosTH.jpg"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento. El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador. Pero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    
    // Guardamos la instrucción en la array
    [informacionQuimicos addObject:primeraInfoDictionary];
    
    NSDictionary *segundaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"PH", INFO_SUBTITULO : @"Bajar o subir el PH del agua", INFO_IMAGE : [UIImage imageNamed:@"reductorPH.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"reductorPHTH.jpg"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    
    [informacionQuimicos addObject:segundaInfoDictionary];
    
    NSDictionary *terceraInfoDictionary = @{INFO_ID : @003, INFO_TITULO : @"Cloro Rápido", INFO_SUBTITULO : @"En caso de necesidad", INFO_IMAGE : [UIImage imageNamed:@"cloroRapido.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"cloroRapidoTH.jpg"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    
    [informacionQuimicos addObject:terceraInfoDictionary];
    
    NSDictionary *cuartaInfoDictionary = @{INFO_ID : @004, INFO_TITULO : @"Floculante", INFO_SUBTITULO : @"Mantener el agua cristalina", INFO_IMAGE : [UIImage imageNamed:@"floculante.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"floculanteTH.jpg"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    
    [informacionQuimicos addObject:cuartaInfoDictionary];
    
    NSDictionary *quintaInfoDictionary = @{INFO_ID : @005, INFO_TITULO : @"Test", INFO_SUBTITULO : @"Controlar el estado del agua", INFO_IMAGE : [UIImage imageNamed:@"test.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"testTH.jpg"], INFO_CONTENIDO : @"El cloro es imprescindible en el mantenimiento de la piscina, para el buen mantenimiento existen pastillas de disolución lenta que se han de añadir en la piscina semanalmente, preferiblemente en el Skimer y si no es posible en un flotador.\n\rPero el cloro no es el único químico necesario, también necesitaremos un antialgas, etc, etc. En el mercado existen unas pastillas que se llaman tres, cuatro, cinco o incluso más en uno. Estas son recomendables porque nos facilitan el trabajos del mantenimiento."};
    
    [informacionQuimicos addObject:quintaInfoDictionary];
    
    return [informacionQuimicos copy];
}

@end
