//
//  ZQAlert.m
//  myshareTest_Example
//
//  Created by Jons on 2022/7/19.
//  Copyright © 2022 Jons. All rights reserved.
//

#import "ZQAlert.h"
#import "ZQShareSelectProtocol.h"

@interface ZQAlert () <ZQShareSelectProtocol>
@property (nonatomic ,copy) NSString *titleString;
@end

@implementation ZQAlert


- (instancetype)initWithVC:(ZQViewController *)vc
{
    if (self = [super init]) {
        _zqVC = vc;
        _zqVC.delegate = self;
    }
    return self;
    
}

- (UIAlertController *)shareSelectDataString:(NSString *)string
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"title" message:string preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:nil];
    [alertVC addAction:confirmAction];
    
    return alertVC;
}

@end
