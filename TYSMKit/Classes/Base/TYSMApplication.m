//
//  TYSMApplication.m
//  TYSMKit_Example
//
//  Created by jele lam on 2/1/2020.
//  Copyright © 2020 cookies-J. All rights reserved.
//

#import "TYSMApplication.h"

@implementation TYSMApplication
+(void)load {
    printf("%s",__FUNCTION__);
    [super load];
    
}

+ (void)initialize {
    [super initialize];
}

- (instancetype)init {
    return [super init];
}

- (BOOL)openURL:(NSURL *)url {
    return [super openURL:url];
}

- (NSSet<UISceneSession *> *)openSessions {
    return [super openSessions];
}

- (void)openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenExternalURLOptionsKey,id> *)options completionHandler:(void (^)(BOOL))completion {
    return [super openURL:url options:options completionHandler:completion];
}

- (BOOL)canOpenURL:(NSURL *)url {
    return [super canOpenURL:url];
}



- (void)scheduleLocalNotification:(UILocalNotification *)notification {
    [super scheduleLocalNotification:notification];
}

- (BOOL)accessibilityActivate {
    return [super accessibilityActivate];
}

- (NSInteger)applicationIconBadgeNumber {
    return [super applicationIconBadgeNumber];
}


@end
