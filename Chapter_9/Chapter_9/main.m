//
//  main.m
//  Chapter_9
//
//  Created by 陈心思 on 2017/6/29.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import <Cocoa/Cocoa.h>


/**  9.1.1 引用计数     */
//对象生命周期
@interface RetainTracker : NSObject
@end//RetainTracker

@implementation RetainTracker

- (id) init{
    if(self = [super init]){
        //关闭ARC
        NSLog(@"init : Retain count of %lu", [self retainCount]);
    }
    return self;
}// init

- (void) dealloc
{
    NSLog(@"dealloc called. Bye Bye.");
    [super dealloc];
}// dealloc

@end// RetainTracker
/** 9.1.2 对象所有权  */
@interface Engine : NSObject
@end// Engine
@implementation Engine

- (NSString *) description
{
    return (@"I am an engine");
}
@end// Engine

@interface  Car : NSObject
{
    Engine *engine;
}

- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;

@end// interface Car

@implementation Car

- (Engine *) engine{
    return (engine);
}

- (void) setEngine:(Engine *)newEngine{
    [newEngine retain];
    [engine release];
    engine = newEngine;
}

@end//implementation Car


int main(int argc, const char * argv[]) {
    //初始化对象（通过 alloc new 或者 copy）保留计数器值 1
    //RetainTracker *tracker = [RetainTracker new];
    //发送 retain 消息， 保留计数器值 + 1
//    [tracker retain];
//    NSLog(@"count: %lu", [tracker retainCount]);
//    [tracker retain];
//    NSLog(@"count: %lu", [tracker retainCount]);
//    [tracker release];
//    NSLog(@"count: %lu", [tracker retainCount]);
//    [tracker release];
//    NSLog(@"count: %lu", [tracker retainCount]);
//    [tracker release];
    @autoreleasepool {
        RetainTracker *tracker = [RetainTracker new];
        [tracker retain];
        NSLog(@"count :%lu", [tracker retainCount]);
        [tracker autorelease];
        NSLog(@"count :%lu", [tracker retainCount]);
        [tracker release];
        NSLog(@"count :%lu", [tracker retainCount]);
        NSLog(@"auto releasing pool");
    }
    return 0;
}
