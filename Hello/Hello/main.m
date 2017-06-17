///Users/chenxinsi/code/Hello/Hello/main.m
//  main.m
//  Hello
//
//  Created by 陈心思 on 2017/6/17.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int thing1, int thing2){
//    if (thing1 == thing2){
//        return NO;
//    }else{
//        return YES;
//    }

    return (thing1 - thing2);
}

NSString *boolString(BOOL yesNo){
    if(yesNo == NO){
        return (@"NO");
    }else{
        return (@"YES");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL areTheyDifferent;
        areTheyDifferent = areIntsDifferent(5, 5);
        NSLog(@"are %d and %d different? %@",
              5,5,boolString(areTheyDifferent));
        
        areTheyDifferent = areIntsDifferent(4, 5);
        NSLog(@"are %d and %d different? %@",
              4,5,boolString(areTheyDifferent));
    }
    return 0;
}
