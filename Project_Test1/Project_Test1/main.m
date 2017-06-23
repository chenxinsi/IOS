//
//  main.m
//  Project_Test1
//
//  Created by 陈心思 on 2017/6/19.
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

typedef struct{
    int x, y, width, height;
} ShapeRect;

//typedef struct{
//    ShapeType type;
//    ShapeColor fillColor;
//    ShapeRect bounds;
//} Shape;

@interface Shape : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
- (void) setFillColor:(ShapeColor)fillColor;
- (void) setBounds:(ShapeRect)bounds;
- (void) draw;
@end // Shape

@implementation Shape
- (void)setFillColor:(ShapeColor)c
{
    fillColor = c;
}//setFillColor

- (void)setBounds:(ShapeRect)b
{
    bounds = b;
}// setBounds

- (void) draw
{
}
@end

NSString *colorName(ShapeColor colorName){
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
        default:
            return @"no clue";
            break;
    }
    
}

@interface Circle : Shape
@end// Circle

@implementation Circle

- (void) draw
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",
          bounds.x,bounds.y,bounds.width,bounds.height,
          colorName(fillColor));
}

@end

@interface Rectangle : Shape

@end// Rectangle

@implementation Rectangle
- (void) draw
{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@",
          bounds.x,bounds.y,bounds.width,bounds.height,
          colorName(fillColor));
}
@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Shape shapes[3];
//        
//        ShapeRect rect0 = {0, 0, 10, 30};
//        shapes[0].type = kCircle;
//        shapes[0].fillColor = kRedColor;
//        shapes[0].bounds = rect0;
//        
//        ShapeRect rect1 = {30, 40, 50, 60};
//        shapes[1].type = kRectangle;
//        shapes[1].fillColor = kGreenColor;
//        shapes[1].bounds = rect1;
//        
//        ShapeRect rect2 = {15, 18, 37, 29};
//        shapes[2].type = kEgg;
//        shapes[2].fillColor = kBlueColor;
//        shapes[2].bounds = rect2;
//        
//        
//        drawShapes(shapes, 3);
        Circle *cicle = [Circle new];
        [cicle setBounds:(ShapeRect){10 , 20, 30, 40}];
        [cicle setFillColor:kRedColor];
        [cicle draw];
    }
    return 0;
}




