//
//  XABomba.h
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XABomba : NSObject

@property (nonatomic) int codigoId;
@property (strong, nonatomic) NSString *titulo;
@property (strong, nonatomic) NSString *subtitulo;
@property (strong, nonatomic) UIImage *imagen;
@property (strong, nonatomic) UIImage *imagenTH;
@property (strong, nonatomic) NSString *contenido;

-(id)initWhithData:(NSDictionary *)data;

@end
