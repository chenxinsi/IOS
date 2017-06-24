//
//  Car.h
//  Chapter_6
//
//  Created by 陈心思 on 2017/6/24.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

@interface Car : NSObject
- (void) setEngine: (Engine *) newEngine;
- (Engine *) engine;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;
- (void) print;
@end
