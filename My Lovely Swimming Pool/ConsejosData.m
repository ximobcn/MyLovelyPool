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
    
    NSDictionary *primerConsejoDictionary = @{INFO_ID : @001, INFO_TITULO : @"Nivel Agua", INFO_SUBTITULO : @"Importante mantener el nivel de agua adecuado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nEs muy importante mantener un nivel de agua adecuado en nuestra piscina. Debido a la evaporación por calor, al limpiado del filtro de la bomba y otros motivos, el nivel del agua va bajando. Hay que tener en cuenta esto y nunca dejar que el nivel esté por debajo del Skimmer ya que esto estropearía nuestra bomba al no llegarle el agua cuando se encienda la bomba."};
    [consejos addObject:primerConsejoDictionary];
    
    NSDictionary *segundoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Manejo de la bomba", INFO_SUBTITULO : @"Importante cambiar las posiciones en parado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nCuando queremos cambiar la posición de la bomba, es muy importante, para evitar daños en la misma, apagar el motor totalmente de la corriente cada vez que movamos la llave selectora. Así evitaremos que la bomba se pueda forzar y acabar estropeando."};
    [consejos addObject:segundoConsejoDictionary];
    
    NSDictionary *terceroConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Días de mucho viento", INFO_SUBTITULO : @"Para mejorar la efectividad del filtrado", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nCuando hace mucho viento llega mucha suciedad a la superficie de nuestra piscina. Esa suciedad tarda unas horas en llegar al fondo. Por eso, si en posición de filtrado dejamos la válvula del fondo a mitad, ni cerrada ni abierta. Haremos que la fuerza de succión del Skimmer sea mayor y las hojas y demás cosas que hayan caído a la piscina por el viento serán recogidas rápidamente."};
    [consejos addObject:terceroConsejoDictionary];
    
    NSDictionary *cuartoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Agua turbia", INFO_SUBTITULO : @"Tratamiento de floculante de choque", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nSi el agua tiene unos valores de PH y cloro correctos pero el agua está muy turbia o lechosa. Debemos hacer un tratamiento de choque con floculante. El tratamiento se efectúa como el tratamiento de floculante normal explicado en el apartado de químicos, pero usando más cantidad. El consejo es que al día siguiente, cuando hagamos la limpieza, pasemos el limpia fondos por las partes más sucias con la posición de la bomba en vaciado para que la suciedad salga directamente afuera y no sobrecarguemos el filtro."};
    [consejos addObject:cuartoConsejoDictionary];
    
    NSDictionary *quintoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Temporada invierno", INFO_SUBTITULO : @"Invernación de nuestra piscina", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nExisten unos productos especiales para invernar nuestra piscina. Pero nosotros aconsejamos lo siguiente. En la época de frio, el sol ya no evapora el cloro. Así que en vez de usar los productos de invernación, podemos echar directamente una o dos pastillas de cloro al fondo de la piscina y como ya no usaremos la bomba, las pastillas se irán deshaciendo muy lentamente con el movimiento del agua. Esto será suficiente para mantener el agua en buenas condiciones hasta la próxima temporada."};
    [consejos addObject:quintoConsejoDictionary];
    
    NSDictionary *sextoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Usar la red", INFO_SUBTITULO : @"Sacar con la red la suciedad de la superficie", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nAunque tenemos un sistema de filtrado que trabaja durante varias horas al día, es muy aconsejable que si vemos algo de suciedad en la superficie, la recojamos usando una red. Si lo hacemos regularmente, alargaremos la vida de nuestro filtro y mantendremos la piscina limpia más fácilmente."};
    [consejos addObject:sextoConsejoDictionary];
    
    NSDictionary *septimoConsejoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpiar las paredes", INFO_SUBTITULO : @"Encender la bomba una hora al mes", INFO_IMAGE : [UIImage imageNamed:@"swimmingPool50.jpg"], INFO_CONTENIDO : @"\nCuando invernamos nuestra piscina, como hemos comentado antes, no es necesario tener la bomba encendida durante el invierno. De todas formas, si nuestro filtro es de arena, es aconsejable encenderla una hora al mes aproximadamente para que la arena no se apelmace demasiado y tengamos que cambiarla cuando se inicie la temporada."};
    [consejos addObject:septimoConsejoDictionary];
    
    return [consejos copy];
}

@end
