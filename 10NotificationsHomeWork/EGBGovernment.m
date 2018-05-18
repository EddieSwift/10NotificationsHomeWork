//
//  EGBGovernment.m
//  NotificationsTest
//
//  Created by Eddie on 09.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import "EGBGovernment.h"

NSString *const EGBGovernmentTaxLevelDidChangeNotification = @"EGBGovernmentTaxLevelDidChangeNotification";
NSString *const EGBGovernmentSalaryDidChangeNotification =
@"EGBGovernmentSalaryDidChangeNotification";
NSString *const EGBGovernmentPensionDidChangeNotification = @"EGBGovernmentPensionDidChangeNotification";
NSString *const EGBGovernmentAveragePriceDidChangeNotification = @"EGBGovernmentAveragePriceDidChangeNotification";

NSString *const EGBGovernmentTaxLevelUserInfoKey = @"EGBGovernmentTaxLevelUserInfoKey";
NSString *const EGBGovernmentSalaryUserInfoKey = @"EGBGovernmentSalaryUserInfoKey";
NSString *const EGBGovernmentPensionUserInfoKey = @"EGBGovernmentPensionUserInfoKey";
NSString *const EGBGovernmentAveragePriceUserInfoKey = @"EGBGovernmentAveragePriceUserInfoKey";

@implementation EGBGovernment

- (id)init
{
    self = [super init];
    if (self) {
        _taxLevel = 10;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 20;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:EGBGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:EGBGovernmentTaxLevelDidChangeNotification object:nil userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:EGBGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:EGBGovernmentSalaryDidChangeNotification object:nil userInfo:dictionary];
}


- (void) setPension:(CGFloat)pension {
    
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:EGBGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:EGBGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
}

/*
 - (void) setPesion:(CGFloat)pension {
 _pension = pension;
 
 NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:EGBGovernmentPensionUserInfoKey];
 
 [[NSNotificationCenter defaultCenter] postNotificationName:EGBGovernmentPensionDidChangeNotification object:nil userInfo:dictionary];
 }
 */

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:EGBGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:EGBGovernmentAveragePriceDidChangeNotification object:nil userInfo:dictionary];
}

@end
