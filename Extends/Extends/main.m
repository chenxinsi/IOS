//
//  main.m
//  Extends
//
//  Created by 陈心思 on 2017/6/21.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    kCircle,
    kRectangle,
    kEgg
} ShapeType;

typedef enum{
  kRedColor,
  kGreenColor,
  kBlueColor
} ShapeColor;



@interface Shape : NSObject{
    ShapeColor fillColor;
    

}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
