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
    NSDictionary *primeraInfoDictionary = @{INFO_ID : @001, INFO_TITULO : @"Pastillas Multifunción", INFO_SUBTITULO : @"Pastillas de cloro con otros químicos incluidos", INFO_IMAGE : [UIImage imageNamed:@"5Efectos.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"5EfectosTH.jpg"], INFO_CONTENIDO : @"El PH del agua debe estar entre 7,2 y 7,6. Estos es muy importante, porque si el PH no se mantiene dentro de estos valores, el cloro que echemos a la piscina no tendrá ningún efecto. Y por lo tanto el agua se estropeará. \n\r También es importante, porque al mantenerse en estos valores, el baño será agradable para las personas y no provocará ninguna reacción o picor en la piel. \n\r Normalmente, habrá que bajar el PH de nuestro agua, porque el cloro y otros químicos tienden a subirlo, pero también dependerá del agua con que llenemos la piscina. Según la zona nos encontraremos con agua de diferentes niveles de PH. Así que el agua de nuestra zona afectará de una forma u otra a los niveles de PH. \n\r El uso es fácil. Se ha de disolver el polvo necesario en agua y echarlo por el Skimmer con la bomba en marcha. Después de dos hora se puede volver a hacer el test y se puede añadir más producto en caso que sea necesario. Normalmente, para bajar o subir 0,1 el PH se ha añadir 100gr de producto por 10 metros cúbicos de piscina."};
    
    // Guardamos la instrucción en la array
    [informacionQuimicos addObject:primeraInfoDictionary];
    
    NSDictionary *segundaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"PH", INFO_SUBTITULO : @"Bajar o subir el PH del agua", INFO_IMAGE : [UIImage imageNamed:@"reductorPH.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"reductorPHTH.jpg"], INFO_CONTENIDO : @"El PH del agua debe estar entre 7,2 y 7,6. Estos es muy importante, porque si el PH no se mantiene dentro de estos valores, el cloro que echemos a la piscina no tendrá ningún efecto. Y por lo tanto el agua se estropeará. \n\r También es importante, porque al mantenerse en estos valores, el baño será agradable para las personas y no provocará ninguna reacción o picor en la piel. \n\r Normalmente, habrá que bajar el PH de nuestro agua, porque el cloro y otros químicos tienden a subirlo, pero también dependerá del agua con que llenemos la piscina. Según la zona nos encontraremos con agua de diferentes niveles de PH. Así que el agua de nuestra zona afectará de una forma u otra a los niveles de PH. \n\r El uso es fácil. Se ha de disolver el polvo necesario en agua y echarlo por el Skimmer con la bomba en marcha. Después de dos hora se puede volver a hacer el test y se puede añadir más producto en caso que sea necesario. Normalmente, para bajar o subir 0,1 el PH se ha añadir 100gr de producto por 10 metros cúbicos de piscina."};
    
    [informacionQuimicos addObject:segundaInfoDictionary];
    
    NSDictionary *terceraInfoDictionary = @{INFO_ID : @003, INFO_TITULO : @"Cloro Rápido", INFO_SUBTITULO : @"Tratamiento de choque", INFO_IMAGE : [UIImage imageNamed:@"cloroRapido.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"cloroRapidoTH.jpg"], INFO_CONTENIDO : @"Si nuestro agua se ha quedado sin cloro durante algún tiempo, o el cloro que tenemos no ha sido suficiente, necesitaremos hacer un tratamiento de choque. Para hacer esto usaremos el cloro rápido que normalmente lo encontraremos en polvo. \n\r Los pasos a seguir son los siguientes, primero nos debemos asegurar que el PH está dentro de los valores aconsejados, luego debemos echar la cantidad recomendada por el Skimmer con la bomba encendida en modo de filtración o circulación. \n\r Es aconsejable hacerlo por la noche sabiendo que no se debe bañar nadie hasta el día siguiente. También es recomendable comprobar el PH al día siguiente y ajustar si es necesario ya que el cloro tiende a subir la acidez del agua."};
    
    [informacionQuimicos addObject:terceraInfoDictionary];
    
    NSDictionary *cuartaInfoDictionary = @{INFO_ID : @004, INFO_TITULO : @"Floculante", INFO_SUBTITULO : @"Mantener el agua cristalina", INFO_IMAGE : [UIImage imageNamed:@"floculante.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"floculanteTH.jpg"], INFO_CONTENIDO : @"Mantener el agua clara no sólo depende de seguir un buen programa de filtrado del agua y limpieza de fondo. A veces en el agua pueden haber partículas que son tan pequeñas que nuestro filtro no las recoge. Por lo que nuestro agua puede parecer turbia o, incluso, lechosa. \n\r Si hemos comprobado, mediante un test del agua, que nuestra piscina está con el PH ajustado y con cloro suficiente, y nuestro filtro funciona correctamente, el problema puede ser de que existen partículas en el agua demasiado pequeñas. Para eso deberemos usar el floculante. \n\r El floculante se suministra por el Skimmer con la bomba encendida durante una media hora y luego se deja con la bomba apagada durante toda la noche. Este producto se adherirá a las diminutas partículas y acabarán en el fondo. Luego basta con hacer una limpieza de fondo y tendremos una agua cristalina. "};
    
    [informacionQuimicos addObject:cuartaInfoDictionary];
    
    NSDictionary *quintaInfoDictionary = @{INFO_ID : @005, INFO_TITULO : @"Test", INFO_SUBTITULO : @"Controlar el estado del agua", INFO_IMAGE : [UIImage imageNamed:@"test.jpg"], INFO_IMAGE_TH : [UIImage imageNamed:@"testTH.jpg"], INFO_CONTENIDO : @"Controlar el estado del agua periódicamente es muy importante para mantener un agua clara, limpia y apta para el baño. Además, si no hacemos el mantenimiento regularmente el agua puede llegar a estropearse, por lo que deberemos cambiar el agua. Y esto deberíamos evitarlo, no sólo por el coste económico que tiene, sino por el coste medioambiental que supone.\n\rPara controlar el estado del agua, debemos efectuar un test semanalmente. Para ello existen varios tipos en el mercado. Nosotros recomendamos los que funcionan con pastillas, estos test nos muestran de una forma clara los niveles del PH y el cloro que son los valores más importantes ha tener en cuenta.\n\rEl proceso es muy simple, recogemos el agua introduciendo el envase en la piscina, al menos debemos sumergirlo unos 30 cm de la superficie, y luego añadimos la pastilla que le toca a cada zona. Es importante no tocar ni la pastilla ni el interior del bote con nuestras manos, ya que esto podría modificar los resultados."};
    
    [informacionQuimicos addObject:quintaInfoDictionary];
    
    return [informacionQuimicos copy];
}

@end
