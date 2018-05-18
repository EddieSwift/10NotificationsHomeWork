//
//  EGBGovernment.h
//  NotificationsTest
//
//  Created by Eddie on 09.05.2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const EGBGovernmentTaxLevelDidChangeNotification;
extern NSString *const EGBGovernmentSalaryDidChangeNotification;
extern NSString *const EGBGovernmentPensionDidChangeNotification;
extern NSString *const EGBGovernmentAveragePriceDidChangeNotification;

extern NSString *const EGBGovernmentTaxLevelUserInfoKey;
extern NSString *const EGBGovernmentSalaryUserInfoKey;
extern NSString *const EGBGovernmentPensionUserInfoKey;
extern NSString *const EGBGovernmentAveragePriceUserInfoKey;

@interface EGBGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;


@end
