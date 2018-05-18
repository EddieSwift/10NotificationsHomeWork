//
//  EGBPensioner.m
//  10NotificationsHomeWork
//
//  Created by Eddie on 11.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "EGBPensioner.h"
#import "EGBGovernment.h"

@implementation EGBPensioner

#pragma mark - Inilialisation

- (id)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *notificationCentre = [NSNotificationCenter defaultCenter];
        
        [notificationCentre addObserver:self selector:@selector(pensionChangerNotification:) name:EGBGovernmentPensionDidChangeNotification object:nil];
        
        [notificationCentre addObserver:self selector:@selector(avaregePriceChangedNotification:) name:EGBGovernmentAveragePriceDidChangeNotification object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

- (void) pensionChangerNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentPensionUserInfoKey];
    
    CGFloat pension = [value floatValue];
    
    /*
    if (pension > self.pension) {
        NSLog(@"Pensioners are happy with pensions");
    } else {
        NSLog(@"Pensioners are NOT happy with pensions");
    }
     */
    
    self.pension = pension;
}
 

- (void) avaregePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentAveragePriceUserInfoKey];
    
    CGFloat price = [value floatValue];
    /*
    if (price < self.averagePrice) {
        NSLog(@"Pensioners Like less prices for products");
    } else {
        NSLog(@"Pensioners do NOT like higher prices for products");
    }
     */
    
    self.averagePrice = price;
}


@end

