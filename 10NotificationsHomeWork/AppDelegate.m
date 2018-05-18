//
//  AppDelegate.m
//  10NotificationsHomeWork
//
//  Created by Eddie on 10.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "AppDelegate.h"
#import "EGBGovernment.h"
#import "EGBDoctor.h"
#import "EGBPensioner.h"
#import "EGBBusinessman.h"

@interface AppDelegate ()
@property (strong, nonatomic) EGBGovernment *goverment;
@end


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
        
    
    self.goverment = [[EGBGovernment alloc] init];
    
    EGBDoctor *doctor1 = [[EGBDoctor alloc] init];
    
    EGBPensioner *pensioner1 = [[EGBPensioner alloc] init];
    
    EGBBusinessman *businessman1 = [[EGBBusinessman alloc] init];

    doctor1.salary = self.goverment.salary;
    doctor1.averagePrice = self.goverment.salary;
    
    pensioner1.pension = self.goverment.pension;
    pensioner1.averagePrice = self.goverment.averagePrice;
    
    businessman1.taxLevel = self.goverment.taxLevel;
    businessman1.averagePrice = self.goverment.averagePrice;
    
    self.goverment.taxLevel = 1;
    self.goverment.taxLevel = 4;
    self.goverment.taxLevel = 3;
    NSLog(@" ");
    self.goverment.salary = 900;
    self.goverment.salary = 1250;
    self.goverment.salary = 1150;
    self.goverment.salary = 1200;
    NSLog(@" ");
    self.goverment.pension = 550;
    self.goverment.pension = 500;
    self.goverment.pension = 600;
    NSLog(@" ");
    self.goverment.averagePrice = 10;
    self.goverment.averagePrice = 15;
    self.goverment.averagePrice = 5;
    
    
 
    
    return YES;
}

- (void) govermentNotification:(NSNotification*) notification {
    
    NSLog(@"govermentNotification userInfo = %@", notification.userInfo);
    
}


- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
