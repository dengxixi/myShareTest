//
//  ZQViewController.h
//  myshareTest
//
//  Created by Jons on 07/11/2022.
//  Copyright (c) 2022 Jons. All rights reserved.
//

@import UIKit;
#import "ZQShareSelectProtocol.h"

@interface ZQViewController : UIViewController
- (void)loadDelegate:(id <ZQShareSelectProtocol>)delegate;
@end
