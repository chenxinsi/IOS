//
//  main.m
//  Fuhe
//
//  Created by 陈心思 on 2017/6/23.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject

@end// Tire

@implementation Tire

- (NSString *) description{
    return (@"I am a tire. I last a while");
}// description

@end// Tire

 
@interface Engine : NSObject

@end // Engine

@implementation Engine

- (NSString *) description{
    return (@"I am an engine. Vrooom");
}// descrition

@end // Engine
//
//@interface Car : NSObject{
//    Engine *engine;
//    Tire *tires[4];
//}
//- (void) print;
//
//@end// Car
//
//@implementation Car
//
//- (id) init{
//    if(self = [super init]){
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return (self);
//}// init
//
//- (void) print{
//    NSLog(@"%@", engine);
//    NSLog(@"%@", tires[0]);
//    NSLog(@"%@", tires[1]);
//    NSLog(@"%@", tires[2]);
//    NSLog(@"%@", tires[3]);
//}
//
//@end


/* 为Car添加一些setter 和 getter方法
 */

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}

- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire atIndex: (int) index;
- (void) print;
@end //car


@implementation Car

- (Engine *) engine{
    return (engine);
}

- (void) setEngine:(Engine *)newEngine{
    engine = newEngine;
}

- (void) setTire:(Tire *)tire atIndex:(int)index{
    if(index < 0 || index >3){
        NSLog(@"bad index (%d) in setTire:atIndex:",index);
        exit(1);
    }
    tires[index] = tire;
}// setTire: atIndex;

- (Tire *) tireAtIndex:(int)index{
    if(index < 0 || index >3){
        NSLog(@"bad index (%d) in setTire:atIndex:",index);
        exit(1);
    }
    return (tires[index]);
}// tireAtIndex

//- (id) init{
//    if(self = [super init]){
//        engine = [Engine new];
//        tires[0] = [Tire new];
//        tires[1] = [Tire new];
//        tires[2] = [Tire new];
//        tires[3] = [Tire new];
//    }
//    return (self);
//}// init

- (void) print{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end


@interface  Slant6 : Engine

@end// Slant6

@implementation Slant6

- (NSString *) description{
    return (@"I am s slant-6. VROOOM!");
}// description

@end// Slant6

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        //Engine *engine = [Engine new];
        Slant6 *slant6 = [Slant6 new];
        [car setEngine: slant6];
        for(int i = 0; i < 4; i++){
            Tire *tire = [Tire new];
            [car setTire: tire atIndex:i];
        }
        [car print];
        
    }
    return 0;
}
