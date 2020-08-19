//
//  TYSMAppDelegate.m
//  TYSMKit
//
//  Created by cookies-J on 01/31/2019.
//  Copyright (c) 2019 cookies-J. All rights reserved.
//

#import "TYSMAppDelegate.h"

@interface TYSMAppDelegate ()
@property (nonatomic, strong) CLLocationManager *locationManager;
@end

@implementation TYSMAppDelegate
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    if ([launchOptions.allKeys containsObject:UIApplicationLaunchOptionsLocationKey]) {
//        [self.locationManager requestWhenInUseAuthorization];
        
    }
    

    switch ([CLLocationManager authorizationStatus]) {

        case kCLAuthorizationStatusNotDetermined:
            [self.locationManager requestAlwaysAuthorization];
            break;
        case kCLAuthorizationStatusRestricted:
            
            break;
        case kCLAuthorizationStatusDenied:
            
            break;
        case kCLAuthorizationStatusAuthorizedAlways:
            [self.locationManager startMonitoringVisits];
            break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            [self.locationManager startMonitoringVisits];
            break;
    };
    return YES;
}

- (void)locationManager:(CLLocationManager *)manager didVisit:(CLVisit *)visit {
    NSLog(@"%@",manager.location);
    
    NSLog(@"%.f %.f", visit.coordinate.latitude, visit.coordinate.longitude);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    NSLog(@"%@",manager.location);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"%@",error);
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    NSLog(@"%@",manager.location);
}

- (CLLocationManager *)locationManager {
    if (_locationManager == nil) {
        _locationManager = [[CLLocationManager alloc] init];
        _locationManager.delegate = self;
    }
    return _locationManager;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder {
    [coder encodeObject:@"0.0.1" forKey:@"lastVersion"];
    return YES;
    
}
- (BOOL)application:(UIApplication *)application shouldRestoreSecureApplicationState:(NSCoder *)coder {
    
    NSString *lastVersion = [coder decodeObjectForKey:@"lastVersion"];
    
    if ([lastVersion isEqualToString:@"0.0.1"]) {
        return YES;
    }
    return NO;
}


@end
