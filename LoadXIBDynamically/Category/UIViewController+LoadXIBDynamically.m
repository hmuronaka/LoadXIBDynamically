//
//  UIViewController+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UIViewController+LoadXIBDynamically.h"
#import "AppDelegate+LoadXIBDynamically.h"
#import <objc/runtime.h>

static NSString const* LoadXIBDynamicallyDynamicNIB = @"LoadXIBDynamicallyDynamicNIB";

@implementation UIViewController (LoadXIBDynamically)

-(UINib*)lx_loadNib {
    AppDelegate* appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    NSString* path = [appDelegate lx_path];
        
    if(!path) {
        return nil;
    }
    
    NSString* tempNibName = [NSString stringWithFormat:@"%@.xib.lxd", self.nibName];
    NSString* xibPath = [path stringByAppendingPathComponent:tempNibName];
    NSData* xibData = [NSData dataWithContentsOfFile:xibPath];
    
    if( !xibData ) {
        return nil;
    }
    
    UINib* dynamicNIB = [UINib nibWithData:xibData bundle:self.nibBundle];
    return dynamicNIB;
}


-(BOOL)lx_loadView {
    UINib* nib = [self lx_loadNib];
    if( nib ) {
        [nib instantiateWithOwner:self options:nil];
        return YES;
    }
    return NO;
}


@end
