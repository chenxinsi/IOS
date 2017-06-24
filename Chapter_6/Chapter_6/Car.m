//
//  Car.m
//  Chapter_6
//
//  Created by 陈心思 on 2017/6/24.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import "Car.h"

#import "Tire.h"
#import "Engine.h"

@implementation Car{

    Tire *tires[4];
    Engine *engine;
    
}
- (void) setEngine:(Engine *)newEngine{

    engine = newEngine;

}

- (Engine *) engine{
    return engine;
}

- (void) setTire:(Tire *)tire atIndex:(int)index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(0);
    }
    
    tires[index] = tire;
}

- (Tire *) tireAtIndex:(int)index{
    if(index < 0 || index > 3){
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(0);
    }
    
    return tires[index];

}

- (void) print{
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
    
    NSLog(@"%@", engine);
}


@end
