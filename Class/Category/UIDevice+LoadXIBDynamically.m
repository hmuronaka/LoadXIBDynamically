//
//  UIDevice+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UIDevice+LoadXIBDynamically.h"

@implementation UIDevice (LoadXIBDynamically)

-(BOOL)lx_isIPad {
    NSString* model = [UIDevice currentDevice].model;
    return [model hasPrefix:@"iPad"];
}

@end
