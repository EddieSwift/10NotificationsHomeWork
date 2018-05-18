//
//  EGBDoctor.m
//  NotificationsTest
//
//  Created by Eddie on 09.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "EGBDoctor.h"
#import "EGBGovernment.h"

@implementation EGBDoctor

#pragma mark - Initialisation


- (id)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self selector:@selector(salaryChangedNotification:) name:EGBGovernmentSalaryDidChangeNotification object:nil];
        
        [nc addObserver:self
               selector:@selector(avaregePriceChangedNotification:) name:EGBGovernmentAveragePriceDidChangeNotification
                 object:nil];
        
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
 

#pragma mark - Notifications

- (void) salaryChangedNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentSalaryUserInfoKey];
    
    CGFloat salary = [value floatValue];
    
    _persentOfChangedSalary = (salary * 100)/_salary - 100;
    
    //CGFloat temp = 1;
    
    if (_persentOfChangedSalary > 1) {
        NSLog(@"Doctors are happy with salaries, salary grew up on %.2f%%", _persentOfChangedSalary);
    } else {
        NSLog(@"Doctors are NOT happy with salaries, because salaries decreased by %.2f%%", _persentOfChangedSalary);
    }
   
    /*
    if (salary > self.salary) {
        NSLog(@"Doctors are happy with salaries");
    } else {
        NSLog(@"Doctors are NOT happy with salaries");
    }
     */
    
    self.salary = salary;
}

- (void) avaregePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentAveragePriceUserInfoKey];
    
    CGFloat price = [value floatValue];
    
   
    
    //NSLog(@"amountOfProductsCanBuy = %f", _amountOfProductsCanBuy);
    
    /*
    if (price < self.averagePrice) {
        NSLog(@"Doctors Like less prices for products");
    } else {
        NSLog(@"Doctors do NOT like higher prices for products");
    }
     */
    
    self.averagePrice = price;
}

@end





/*
 - (void) avaregePriceChangedNotification:(NSNotification*) notification {
 
 NSNumber *value = [notification.userInfo objectForKey:EGBGovernmentAveragePriceUserInfoKey];
 
 CGFloat price = [value floatValue];
 
 if (price > self.averagePrice) {
 NSLog(@"Doctors Like less prices for products");
 } else {
 NSLog(@"Doctors do NOT like higher prices for products");
 }
 
 self.averagePrice = price;
 }

 */

