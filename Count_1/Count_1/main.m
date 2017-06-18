//
//  main.m
//  Count_1
//
//  Created by 陈心思 on 2017/6/18.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FILE *wordFile = fopen("/Users/chenxinsi/code/IOS/Count_1/Count_1/File1", "r");
        char word[100];
        
        while(fgets(word, 100, wordFile)){
        word[strlen(word) - 1] ='\0';
            NSLog(@"%s is %lu characters long", word, strlen(word));
            
        }
        
        fclose(wordFile);
        
    }
    return 0;
}
