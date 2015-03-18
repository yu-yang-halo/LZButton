//
//  MyButton.m
//  objectc_ehome
//
//  Created by admin on 15/2/27.
//  Copyright (c) 2015年 cn.lztech  合肥联正电子科技有限公司. All rights reserved.
//

#import "MyButton.h"
#define  margin_space 5
#define  text_height  14
#define  min_height   49

@implementation MyButton

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        self.titleLabel.textAlignment=NSTextAlignmentCenter;
        self.titleLabel.font=[UIFont systemFontOfSize:12.0];
        NSLog(@"initWithFrame...");
    }
    return self;
}
-(void)awakeFromNib{
    self.titleLabel.textAlignment=NSTextAlignmentCenter;
    self.titleLabel.font=[UIFont systemFontOfSize:12.0];
    NSLog(@"awakeFromNib...");

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/*
 49  
 space 5  39 =25+14
 */
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    if(self.frame.size.height>=min_height){
        float side=self.frame.size.height-2*margin_space-text_height;
        CGFloat imageW=side;
        CGFloat imageH=side;
        CGFloat imageX=(contentRect.size.width-imageW)/2;
        CGFloat imageY=margin_space;
        contentRect=(CGRect){{imageX,imageY},{imageW,imageH}};
        NSLog(@"imageX:%f ;imageY:%f",imageX,imageY);
        return contentRect;
    }else{
        return contentRect;
    }
}
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    if(self.frame.size.height>=min_height){
        float side=self.frame.size.height-2*margin_space-text_height;
        CGFloat titleW=contentRect.size.width;
        CGFloat titleH=text_height;
        CGFloat titleX=(contentRect.size.width-titleW)/2+contentRect.origin.x;
        CGFloat titleY=side+margin_space;
        contentRect=(CGRect){{titleX,titleY},{titleW,titleH}};
        NSLog(@"titleX:%f ;titleW:%f",titleX,titleW);
        return contentRect;
    }else{
        return contentRect;
    }
}


@end
