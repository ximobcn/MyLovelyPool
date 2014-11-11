//
//  XAAgenda.h
//  My Lovely Swimming Pool
//
//  Created by Ximo on 16/09/14.
//  Copyright (c) 2014 Ximo Alloza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XAAgenda : NSObject

@property (strong, nonatomic) NSString *nombre;
@property (strong, nonatomic) NSDate *fechaInicio;
@property (nonatomic) int numero;
@property (nonatomic) int frecuencia;

-(id)initWhithData:(NSDictionary *)data;

@end
