//
//  main.m
//  Chapter_6
//
//  Created by 陈心思 on 2017/6/24.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Engine.h"
#import "Tire.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        Engine *engine = [Engine new];
        for(int i = 0; i<4; i++){
            Tire *tire = [Tire new];
            [car setTire:tire atIndex:i];
        }
        [car setEngine:engine];
        [car print];
    }
    return 0;
}
