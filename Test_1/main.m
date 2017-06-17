//
//  main.m
//  Test_1
//
//  Created by 陈心思 on 2017/6/17.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

const int WIDTH = 10;
const int HEIGHT = 5;
#define NEWLINE 'X';



@interface SampleClass : NSObject
- (int)max:(int)num1 andNum2:(int) num2;
@end
@implementation SampleClass

- (int)max:(int)num1 andNum2:(int)num2{
    int result;

    if(num1 > num2){

        result = num1;
    }else{
        result = num2;
    }

    return result;

}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!   \nXinsi!");
        int a = 0;
        int b = 0;
        a = 5;
        b = 7;
        int ret;

        SampleClass *sampleClass = [[SampleClass alloc] init];
        ret = [sampleClass max:a andNum2:b];
        NSLog(@"Max value is : %d", ret);
    }
    return 0;
}
