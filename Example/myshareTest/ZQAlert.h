//
//  ZQAlert.h
//  myshareTest_Example
//
//  Created by Jons on 2022/7/19.
//  Copyright © 2022 Jons. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZQViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface ZQAlert : NSObject

@property (nonatomic ,strong) ZQViewController *zqVC;
- (instancetype)initWithVC:(ZQViewController *)vc;
@end

NS_ASSUME_NONNULL_END
