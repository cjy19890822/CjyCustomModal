//
//  CustomView.m
//  CustomModalAnimation
//
//  Created by cjy on 2019/1/19.
//  Copyright © 2019 HW. All rights reserved.
//

#import "CustomView.h"
#import "WHC_AutoLayout.h"
@interface CustomView()
@property(nonatomic,strong) UILabel* titleLabel;
@property(nonatomic,strong) UILabel* contentLabel;
@property(nonatomic,strong) UIButton* YesBtn;
@end
@implementation CustomView

-(instancetype)initWithFrame:(CGRect)frame
{
    if(self= [super initWithFrame:frame])
    {
        [self setUp];
       
    }
     return self;
}

-(void)setUp
{
   // self.titleLabel = [[UILabel alloc] init];
    self.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.titleLabel];
    [self addSubview:self.contentLabel];
    [self addSubview:self.YesBtn];
    self.titleLabel.whc_LeftSpace(10).whc_CenterX(0).whc_TopSpace(10).whc_HeightAuto();
    self.contentLabel.whc_TopSpace(30).whc_CenterX(0).whc_LeftSpace(0).whc_HeightAuto();
    self.YesBtn.whc_LeftSpace(0).whc_RightSpace(0).whc_BottomSpace(0).whc_Height(44);
    
    
}

-(UILabel *)titleLabel
{
    if(!_titleLabel)
    {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"sdsadsa";
        _titleLabel.textColor = [UIColor redColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}


-(UILabel *)contentLabel
{
    if(!_contentLabel)
    {
        _contentLabel = [[UILabel alloc] init];
    _contentLabel.text=@"sdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsasdsadsa";
        _contentLabel.numberOfLines = 0;
        _contentLabel.textColor = [UIColor redColor];
    }
    return _contentLabel;
}

-(UIButton *)YesBtn
{
    if(!_YesBtn)
    {
        _YesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_YesBtn setTitle:@"yes" forState:UIControlStateNormal];
        [_YesBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    }
    return _YesBtn;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)dealloc
{
    NSLog(@"%@ --> dealloc",[self class]);
}
@end
