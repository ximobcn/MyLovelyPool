//
//  XAContacto.h
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XAContacto : NSObject

@property (nonatomic) int codigoId;
@property (strong, nonatomic) NSString *nombre;
@property (strong, nonatomic) NSString *subnombre;
@property (strong, nonatomic) UIImage *imagen;
@property (strong, nonatomic) NSString *nombreCalle;
@property (nonatomic) int numeroCalle;
@property (strong, nonatomic) NSString *poblacion;
@property (nonatomic) int codigoPostal;
@property (strong, nonatomic) NSString *notas;

-(id)initWhithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
