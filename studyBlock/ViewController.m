//
//  ViewController.m
//  studyBlock
//
//  Created by zhangzhihua on 16/5/19.
//  Copyright © 2016年 zhangzhihua. All rights reserved.
//

#import "ViewController.h"
#import "MytestObject.h"

typedef void (^MyBlock)(NSString*);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    void(^block1)(void);
//    //表示block的实现
//    block1 = ^(void){
//        NSLog(@"这是一个block");
//    };
//    block1();
//    
//    void(^block2)(NSString *str);
//    block2 = ^(NSString *str){
//        NSLog(@"传过来了%@",str);
//    };
//    block2(@"123");
//    
//    int (^block3)(NSString *number);
//    block3 =^(NSString *str){
//        NSLog(@"------%@",str);
//        return 3;
//    };
//    
//    NSInteger(^block4)(NSInteger number);
//    block4 = ^(NSInteger number){
//        return 3 + number;
//    };
//    NSLog(@"%ld",(long)block4(2));
//
//    MyBlock myblock =^(NSString *string){
//        NSLog(@"string 222 -%@",string);
//    };
//    myblock(@"string");
//    [self doMethod:@"NSString" withBlock:^(NSString *string) {
//        NSLog(@"我用的string--- %@",string);
//    }];
    UIImageView *showImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 40, 50)];
    [self.view addSubview:showImageView];
    
    MytestObject *object = [[MytestObject alloc]init];
    [object blockTestMethod:^(NSString *dataString, UIImage *image) {
        NSLog(@"dataString --- %@",dataString);
        showImageView.image = image;
        showImageView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    }];
    NSLog(@"last -- !");
//    [object blockTestMethod:^(NSString *dataString) {
//        NSLog(@"dataString ---- %@",dataString);
//    }];
}

//实现方法
-(void)doMethod:(NSString*)string withBlock:(void(^)(NSString *string))block{
    block(@"传过来的");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
