//
//  TYSMViewController.m
//  TYSMKit
//
//  Created by cookies-J on 01/31/2019.
//  Copyright (c) 2019 cookies-J. All rights reserved.
//

#import "TYSMViewController.h"
#import <TYSMKit/TYSMLogManager.h>

@interface TYSMViewController ()

@end

@implementation TYSMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[TYSMLogManager sharedManager] startLogger];
    DDLogInfo(@"%@",self);
    DDLogError(@"%@",self);
    DDLogVerbose(@"%@",self);
    DDLogWarn(@"%@",self);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
