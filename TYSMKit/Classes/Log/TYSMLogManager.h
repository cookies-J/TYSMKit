//
//  MLLogManager.h
//  MLife
//
//  Created by jele lam on 10/1/2020.
//  Copyright © 2020 CookiesJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>


#if DEBUG
static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
#else
static const DDLogLevel ddLogLevel = DDLogLevelWarning;
#endif

NS_ASSUME_NONNULL_BEGIN

@interface TYSMLogManager : NSObject
+ (TYSMLogManager *)sharedManager;

/*
 开始日志监控，默认输出 Xcode
 */
- (void)startLogger;

/*
关闭日志监控
*/
- (void)stopLogger;

/*
 开启系统 console 日志监控
 */
- (void)enableASLLogger;

/*
 开启日志监控写入文件功能
 */
- (void)enableFileLogger;
@end

NS_ASSUME_NONNULL_END
