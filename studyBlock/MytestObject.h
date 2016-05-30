//
//  MytestObject.h
//  studyBlock
//
//  Created by zhangzhihua on 16/5/19.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MytestObject : NSObject

//测试block的方法
-(void)blockTestMethod:(void(^)(NSString *dataString , UIImage *image))block;

@end
