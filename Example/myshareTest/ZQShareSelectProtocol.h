//
//  ZQShareSelectProtocol.h
//  myshareTest_Example
//
//  Created by Jons on 2022/7/19.
//  Copyright © 2022 Jons. All rights reserved.
//

#ifndef ZQShareSelectProtocol_h
#define ZQShareSelectProtocol_h

@protocol ZQShareSelectProtocol <NSObject>

- (__kindof UIAlertController *)shareSelectDataString:(NSString *)string;

@end

#endif /* ZQShareSelectProtocol_h */
