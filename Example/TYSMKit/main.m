//
//  main.m
//  TYSMKit
//
//  Created by cookies-J on 01/31/2019.
//  Copyright (c) 2019 cookies-J. All rights reserved.
//

@import UIKit;
#import "TYSMAppDelegate.h"
#import "TYSMApplication.h"
int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv,
                                 NSStringFromClass([TYSMApplication class]),
                                 NSStringFromClass([TYSMAppDelegate class])
                                 );
    }
}
