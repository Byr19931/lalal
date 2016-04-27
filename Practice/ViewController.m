//
//  ViewController.m
//  Practice
//
//  Created by lanouhn on 16/4/20.
//  Copyright © 2016年 ZS. All rights reserved.
//

#import "ViewController.h"
#import "Practice.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
//    NSString *timeString = @"2016-04-19";
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    formatter.dateFormat = @"yyyy-MM-dd";
//    NSDate *date = [formatter dateFromString:timeString];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (NSInteger)[date timeIntervalSince1970]];
//    NSLog(@"%@", timeSp);
//    [self getTimeIntervalSince1970];
    self.view.backgroundColor = [UIColor redColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    scrollView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:scrollView];
    

}



- (NSArray *)getTimeIntervalSince1970 {
    NSDate *nowDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyyMMdd";
    NSString *nowTimeString = [formatter stringFromDate:nowDate];
    NSMutableArray *timeArray = [NSMutableArray array];
    [timeArray addObject:@"0"];
    for (int i = 1; i < 7; i++) {
        NSString *timeString = [NSString stringWithFormat:@"%ld", [nowTimeString integerValue] - i];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (NSInteger)[[formatter dateFromString:timeString] timeIntervalSince1970]];
        [timeArray addObject:timeSp];
    }
    return timeArray;
}







@end
