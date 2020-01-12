//
//  MLLogManager.m
//  MLife
//
//  Created by jele lam on 10/1/2020.
//  Copyright © 2020 CookiesJ. All rights reserved.
//

#import "TYSMLogManager.h"
#import "TYSMLogFormatter.h"

@interface TYSMLogManager ()
@property (nonatomic, strong) TYSMLogFormatter *logFmt;
@property (nonatomic, strong) DDFileLogger *fileLogger;
@end

static TYSMLogManager *manager = nil;

@implementation TYSMLogManager
+ (TYSMLogManager *)sharedManager {
    static dispatch_once_t TYSMLogManagerOnceToken;
    dispatch_once(&TYSMLogManagerOnceToken, ^{
        manager = [[super allocWithZone:NULL] init];
        manager.logFmt = [[TYSMLogFormatter alloc] init];
        manager.fileLogger = [[DDFileLogger alloc] init];
    });
    return manager;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [TYSMLogManager sharedManager];
}

- (id)copyWithZone:(struct _NSZone *)zone
{
    return [TYSMLogManager sharedManager];
}

- (void)startLogger {
    // DDTTYLogger，日志语句发送到Xcode
    [[DDTTYLogger sharedInstance] setLogFormatter:self.logFmt];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];           // 启用颜色区分
    [[DDTTYLogger sharedInstance] setForegroundColor:DDMakeColor(255, 0, 0) backgroundColor:nil forFlag:DDLogFlagError];
    [[DDTTYLogger sharedInstance] setForegroundColor:DDMakeColor(105, 200, 80) backgroundColor:nil forFlag:DDLogFlagInfo];
    [[DDTTYLogger sharedInstance] setForegroundColor:DDMakeColor(100, 100, 200) backgroundColor:nil forFlag:DDLogFlagDebug];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
}

- (void)stopLogger {
    [DDLog removeAllLoggers];
}

- (void)enableASLLogger {
    // DDASLLogger，日志语句发送到苹果文件系统、日志状态发送到Console.app
    [[DDASLLogger sharedInstance] setLogFormatter:self.logFmt];
    [DDLog addLogger:[DDASLLogger sharedInstance]];
}

- (void)enableFileLogger {
    // DDFileLogger，日志语句写入到文件中（默认路径：Library/Caches/Logs/目录下，文件名为bundleid+空格+日期.log）
    
    self.fileLogger.rollingFrequency = 60 * 60 * 24;                 // 刷新频率为24小时
    self.fileLogger.logFileManager.maximumNumberOfLogFiles = 7;      // 保存一周的日志，即7天
    self.fileLogger.maximumFileSize = 1024 * 1024 * 2;               // 最大文件大小
    
    [self.fileLogger setLogFormatter:self.logFmt];
    [DDLog addLogger:self.fileLogger withLevel:DDLogLevelError];        // 错误日志，写到文件中
}

@end
