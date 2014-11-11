//
//  XAContacto.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAContacto.h"

@implementation XAContacto

-(id)init
{
    self = [self initWhithData:nil andImage:nil];
    return self;
}

-(id)initWhithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    
    self.nombre = data[@"nombre"];
    self.subnombre = data[@"subnombre"];
    self.imagen = image;
    self.nombreCalle = data[@"nombreCalle"];
    self.numeroCalle = [data[@"numeroCalle"] intValue];
    self.poblacion = data[@"poblacion"];
    self.codigoPostal = [data[@"codigoPostal"] intValue];
    self.notas = data[@"notas"];
    
    return self;
}

@end
