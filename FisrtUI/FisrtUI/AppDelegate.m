//
//  AppDelegate.m
//  FisrtUI
//
//  Created by 陈心思 on 2017/6/30.
//  Copyright © 2017年 陈心思. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //UIScreen mainScreen 主屏幕的对象；initWithFrame
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //setBackgroundColor 设置背景颜色
    [self.window setBackgroundColor:[UIColor whiteColor]];
    //window可见
    [self.window makeKeyAndVisible];
    //设定一个根视图
    [self.window setRootViewController:[[UIViewController alloc] init]];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    [view setBackgroundColor:[UIColor orangeColor]];
    [self.window addSubview:view];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(220, 50, 100, 400)];
    [view1 setBackgroundColor:[UIColor blackColor]];
    [self.window addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 300, 400)];
    [view2 setBackgroundColor:[UIColor blackColor]];
    [self.window addSubview:view2];
    //setAlpha 0~1
    [view2 setAlpha:0.5];
    //父视图的透明度会影响到子视图的透明度
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 120, 120)];
    [view3 setBackgroundColor:[UIColor whiteColor]];
    [view2 addSubview:view3];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
