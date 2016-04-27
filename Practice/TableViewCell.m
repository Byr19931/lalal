//
//  TableViewCell.m
//  Practice
//
//  Created by lanouhn on 16/4/20.
//  Copyright © 2016年 ZS. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.picture];
    }
    return self;
}


- (UIImageView *)picture {
    if (!_picture) {
        self.picture = [[UIImageView alloc] init];
    }
    return _picture;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    self.picture.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height);
}



@end
