//
//  XAAgenda.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAAgenda.h"

@implementation XAAgenda

-(id)init
{
    self = [self initWhithData:nil];
    return self;
}

-(id)initWhithData:(NSDictionary *)data
{
    self = [super init];
    
    self.nombre = data[@"nombre"];
    self.fechaInicio = data[@"fechaInicio"];
    self.numero = [data[@"numero"] intValue];
    self.frecuencia = [data[@"frecuencia"] intValue];
    
    return self;
}

@end
