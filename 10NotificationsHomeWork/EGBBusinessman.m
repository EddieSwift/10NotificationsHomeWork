//
//  EGBBusinessman.m
//  10NotificationsHomeWork
//
//  Created by Eddie on 11.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "EGBBusinessman.h"
#import "EGBGovernment.h"

@implementation EGBBusinessman

#pragma mark - Inilialisation

- (id)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *notificationCentre = [NSNotificationCenter defaultCenter];
        
        [notificationCentre addObserver:self selector:@selector(taxChangetNotification:) name:EGBGovernmentTaxLevelDidChangeNotification object:nil];
        
        [notificationCentre addObserver:self selector:@selector(averagePriceChangedNotification:) name:EGBGovernmentAveragePriceDidChangeNotification object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

- (void) taxChangetNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentTaxLevelUserInfoKey];
    
    CGFloat tax = [value floatValue]; // Our previous value that had an object
   
    /*
    if (tax < self.taxLevel) {
        NSLog(@"Businessmen are happy with Less Taxes");
    } else {
        NSLog(@"Businessmen are NOT happy with higher Taxes");
    }
     */
    
    self.taxLevel = tax;
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentAveragePriceUserInfoKey];
    
    CGFloat price = [value floatValue];
    
    /*
    if (price < self.averagePrice) {
        NSLog(@"Businessmen Like less prices for products");
    } else {
        NSLog(@"Businessmen do NOT like higher prices for products");
    }
     */
    
    self.averagePrice = price;
}

@end
