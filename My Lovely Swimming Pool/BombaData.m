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
    
    NSDictionary *primeraInfoDictionary = @{INFO_ID : @001, INFO_TITULO : @"Filtrado", INFO_SUBTITULO : @"Proceso normal de filtrado", INFO_IMAGE : [UIImage imageNamed:@"bombaFiltracion.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaFiltracionTH.png"],  INFO_CONTENIDO : @"El agua de la piscina necesita un proceso de filtrado diario. Es aconsejable unas 6 horas al día, aumentando el tiempo de filtrado si nos encontramos en una zona de mucho calor, o disminuyéndolo si la zona en la que estamos no es tan calurosa o la piscina no recibe los rayos del sol directamente durante todo el día.\n\rEs aconsejable programar bien el reloj del automático y repartir esas seis horas en tres periodos de dos horas, normalmente uno por la mañana, otro al mediodía y el último por la tarde.\n\r Para el proceso de filtrado las válvulas del fondo y el skimmer tienen que estar abiertas. La bomba se ha de poner en la posición del filtrado."};
    [informacionBombas addObject:primeraInfoDictionary];
    
    NSDictionary *segundaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpieza Filtro", INFO_SUBTITULO : @"Limpieza del filtro de la bomba", INFO_IMAGE : [UIImage imageNamed:@"bombaLimpieza.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaLimpiezaTH.png"], INFO_CONTENIDO : @"El filtro de la bomba hay que limpiarlo frecuentemente. Si nuestra bomba dispone de barómetro, debemos efectuar la limpieza del filtro cuando muestre una presión más alta de lo normal. Normalmente la bomba tendría que trabajar por debajo de 1 bar.\n\r Si no disponemos de indicador, debemos lavar el filtro periódicamente. Si estamos en una zona donde suele haber bastante suciedad, es aconsejable hacer la limpieza después de cada limpieza de fondo de la piscina. Y si no hay mucha limpieza, lo podemos hacer después de cada tres o cuatro veces.\n\rPara efectuar dicho lavado, debemos tener abierta la válvula del fondo, la de aspiración y la de vaciado. La bomba se tiene que poner en la posición de vaciado o lavado. Al encender la bomba podremos ver por el indicador transparente el agua que sale. Debemos mantenerla encendida hasta que veamos que el agua sale limpia."};
    [informacionBombas addObject:segundaInfoDictionary];
    
    NSDictionary *terceraInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Enjuagado Filtro", INFO_SUBTITULO : @"Enjuague del filtro de la bomba", INFO_IMAGE : [UIImage imageNamed:@"bombaEnjuague.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaEnjuagueTH.png"], INFO_CONTENIDO : @"El enjuagado del filtro se ha de hacer siempre después de hacer un lavado o limpieza del filtro de la bomba. Esto limpiará de los conductos los restos de arena que hayan salido después de hacer la limpieza.\n\rLa posición de las válvulas es la misma que para el lavado. Fondo, aspiración y vaciado abiertas. La bomba la ponemos en posición Enjuague. Ponemos la bomba en marcha y la dejamos sólo entre 30 segundos y un minuto y esto será suficiente."};
    [informacionBombas addObject:terceraInfoDictionary];
    
    NSDictionary *cuartaInfoDictionary = @{INFO_ID : @002, INFO_TITULO : @"Limpieza Fondo", INFO_SUBTITULO : @"Limpieza del fondo de la piscina", INFO_IMAGE : [UIImage imageNamed:@"bombaAspiracion.png"], INFO_IMAGE_TH : [UIImage imageNamed:@"bombaFiltracionTH.png"], INFO_CONTENIDO : @"La limpieza del fondo de la piscina se debe hacer una vez por semana o más, dependiendo de la suciedad que le llegue a nuestra piscina. Para hacer esta tarea tenemos la opción manual o usar un robot que hará la limpieza de una forma automática.\n\rIndependientemente del método que usemos, las posiciones de las válvulas son, aspiración abierta y el resto cerradas. La bomba ha de estar en filtración. Recordar que antes de poner en marcha la bomba, habremos quitado el tapón protector de la piscina donde enchufamos la manguera conectada al limpia fondos.\n\rUna vez que tengamos la bomba en marcha, conectamos la manguera del limpia fondos manteniendo este dentro del agua. Si usamos un limpia fondos manual, recordar también pasarlo por las paredes de la piscina."};
    [informacionBombas addObject:cuartaInfoDictionary];
    
    return [informacionBombas copy];
}

@end
