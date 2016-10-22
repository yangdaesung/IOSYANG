//
//  BlackPink.m
//  TableView1022
//
//  Created by Yang on 2016. 10. 22..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "BlackPink.h"

@interface BlackPink()
@property UIImageView *backgroundImage;
@property UIView *coverView;
@property UILabel *titlelb;

@end



@implementation BlackPink



//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;

}
//크기가 설정 될때마다 불림
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self updateLayout];
}

//cell의 모양,크기,사진,글자 등을 설정
- (void) createView
{
    self.backgroundImage = [[UIImageView alloc] init];
    self.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    self.backgroundImage.clipsToBounds = YES;
    [self addSubview:self.backgroundImage];
    
    //cell 크기 만들기
    self.coverView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-20)];
    self.coverView.backgroundColor = [[UIColor alloc]initWithRed:30.f/255 green:30.f/255 blue:30.f/255 alpha:0.5];
    [self.backgroundImage addSubview:self.coverView];
    //cell 글자
    
    self.titlelb = [[UILabel alloc]init];
    self.titlelb.font = [UIFont boldSystemFontOfSize:30];
    self.titlelb.textAlignment = NSTextAlignmentCenter;
    self.titlelb.textColor = [UIColor whiteColor];
    [self.coverView addSubview:self.titlelb];

}

//사진 크기 변경

- (void)updateLayout
{
    self.backgroundImage.frame = self.bounds;
    self.coverView.frame = CGRectMake(10, 10, self.frame.size.width-20, self.frame.size.height-20);
    self.titlelb.frame = CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height-40);
}

//이미지 설정
- (void)setbackgroundImageName:(NSString *)name
{
    self.backgroundImage.image = [UIImage imageNamed:name];
    
}
//타이틀 이름 설정
- (void)setTitle:(NSString *)title{
    self.titlelb.text = title;
}






- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
