//
//  UIViewController+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UIViewController+LoadXIBDynamically.h"
#import "UINib+LoadXIBDynamically.h"

static NSString const* LoadXIBDynamicallyDynamicNIB = @"LoadXIBDynamicallyDynamicNIB";

@implementation UIViewController (LoadXIBDynamically)

-(BOOL)lx_loadView {
    UINib* nib = [UINib lx_loadDynamicallyWithNibName:self.nibName bundle:self.nibBundle];
    if( nib ) {
        [nib instantiateWithOwner:self options:nil];
        return YES;
    }
    return NO;
}


@end
