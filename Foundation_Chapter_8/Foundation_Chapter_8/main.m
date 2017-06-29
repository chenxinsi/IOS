//
//  main.m
//  Foundation_Chapter_8
//
//  Created by 陈心思 on 2017/6/26.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *height;
        height = [NSString stringWithFormat:@"Your height is %d feet, %d inches", 5, 11];
        NSLog(@"%@",height);
        
        //字符串的长度
//        if([height length] > 35){
//            NSLog(@"wow, height > 35");
//        }else{
//            NSLog(@"wow, height < 35");
//        }
        //字符串的比较
        NSString *thing1 = @"hello 5";
        NSString *thing2 = [NSString stringWithFormat:@"hello %d", 5];
        if ([thing1 isEqualToString:thing2]){
            NSLog(@"They are the same");
        }
        
        if([thing1 compare: thing2 options:NSCaseInsensitiveSearch |
            NSNumericSearch] == NSOrderedSame){
            NSLog(@"They match!");
        }
        
        NSString *fileName = @"draft-chap1ter.pages";
        //匹配字符串开头
        if([fileName hasPrefix:@"draft"]){
            NSLog(@"this has draft");
        }
        //匹配字符串结尾
        if([fileName hasSuffix:@".pages"]){
            NSLog(@"this has .pages");
        }
        
        //匹配字符串中对应的字符串
        NSRange range = [fileName rangeOfString:@"chapter"];
        if(range.location == NSNotFound){
        NSLog(@"range.location : %lu range.length : %lu", range.location, range.length);
        }
        
        NSMutableString *string = [NSMutableString stringWithCapacity:50];
        [string appendString:@"Hello there"];
        [string appendFormat:@"human %d!", 39];
        NSLog(@"string: %@", string);
        
        NSRange stringRange = [string rangeOfString:@"human"];
        [string deleteCharactersInRange:stringRange];
        NSLog(@"string: %@" , string);
        
        NSArray *array = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
        NSArray *array2 = @[@"one",@"two",@"three"];
        //id *myObject = array[1];
        for(int i = 0;i< [array count]; i++){
            NSLog(@"index %d has %@ .", i , array[i]);
        }
        
        //可变数组
        NSMutableArray *array3 = [NSMutableArray arrayWithCapacity:17];
        array3 = [NSMutableArray arrayWithArray: @[@"one",@"two",@"three"]];
        [array3 removeObjectAtIndex:1];
        for(int i = 0; i < [array3 count]; i++){
            NSLog(@"array3: i =%d array[%d]: %@",i,i,array3[i]);
        }
        
        for(NSString *str in array3){
            NSLog(@"I found %@",str);
        }
    }
    return 0;
}
