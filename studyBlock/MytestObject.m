//
//  MytestObject.m
//  studyBlock
//
//  Created by zhangzhihua on 16/5/19.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "MytestObject.h"

@implementation MytestObject

-(void)blockTestMethod:(void(^)(NSString *dataString , UIImage *image))block{
    NSString* dataSting = [NSString stringWithFormat:@"%@",@"asjkldjaskldjsakldjsakld"];
    
    UIImage *image = [UIImage imageNamed:@"icon.png"];
    
    block(dataSting,image);
    //block(dataSting);
}
@end
