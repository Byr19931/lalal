//
//  Practice.m
//  Practice
//
//  Created by lanouhn on 16/4/20.
//  Copyright © 2016年 ZS. All rights reserved.
//

#import "Practice.h"

@interface Practice ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UILabel *label;
@end


@implementation Practice

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        self.frame.size
        self.redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width / 2, self.frame.size.height)];
        self.redView.backgroundColor = [UIColor redColor];
        [self addSubview:self.redView];
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.redView.frame), CGRectGetMinY(self.redView.frame), self.frame.size.width - CGRectGetWidth(self.redView.frame), CGRectGetHeight(self.redView.frame))];
        self.label.backgroundColor = [UIColor cyanColor];
        [self addSubview:self.label];
    }
    return self;
}




@end
