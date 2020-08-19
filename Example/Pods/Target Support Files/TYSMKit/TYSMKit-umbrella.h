#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TYSMLogFormatter.h"
#import "TYSMLogManager.h"
#import "TYSMSpeedTest.h"
#import "TYSMConstraintsHeader.h"
#import "TYSMKit.h"

FOUNDATION_EXPORT double TYSMKitVersionNumber;
FOUNDATION_EXPORT const unsigned char TYSMKitVersionString[];

