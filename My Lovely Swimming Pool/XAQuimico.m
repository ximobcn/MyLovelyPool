//
//  XAQuimico.m
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import "XAQuimico.h"

@implementation XAQuimico

-(id)init
{
    self = [self initWhithData:nil];
    return self;
}

// iniciamos el objeto con los datos que recibe
-(id)initWhithData:(NSDictionary *)data
{
    self = [super init];
    
    self.codigoId = [data[INFO_ID] intValue];
    self.titulo = data[INFO_TITULO];
    self.subtitulo = data[INFO_SUBTITULO];
    self.imagen = data[INFO_IMAGE];
    self.imagenTH = data[INFO_IMAGE_TH];
    self.contenido = data[INFO_CONTENIDO];
    
    return self;
}

@end
