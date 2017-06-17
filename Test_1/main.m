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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!   \nXinsi!");
        int a = 0;
        int b = 0;
        a = 5;
        b = 7;
        int c = WIDTH * HEIGHT;
        char newline = NEWLINE;
        NSLog(@"变量c: %d %c",++c,newline);
    }
    return 0;
}
