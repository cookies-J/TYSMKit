//
//  TYSMLogFormatter.m
//  MLife
//
//  Created by jele lam on 10/1/2020.
//  Copyright © 2020 CookiesJ. All rights reserved.
//

#import "TYSMLogFormatter.h"
#import <CocoaLumberjack/DDLog.h>

@implementation TYSMLogFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage{
    NSString *loglevel = nil;
    switch (logMessage.flag){
        case DDLogFlagError:
            loglevel = @"[ERROR]==>";
            break;
        case DDLogFlagWarning:
            loglevel = @"[WARN]==>";
            break;
        case DDLogFlagInfo:
            loglevel = @"[INFO]==>";
            break;
        case DDLogFlagDebug:
            loglevel = @"[DEBUG]==>";
            break;
        case DDLogFlagVerbose:
            loglevel = @"[VBOSE]==>";
            break;
    }
    NSString *resultString = [NSString stringWithFormat:@"%@ %@___line[%ld]__%@", loglevel, logMessage->_function, logMessage->_line, logMessage->_message];
    return resultString;
}

@end
