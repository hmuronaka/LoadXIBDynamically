//
//  UINib+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UINib+LoadXIBDynamically.h"
#import "UIApplication+LoadXIBDynamically.h"

@implementation UINib (LoadXIBDynamically)

+(instancetype)lx_loadWithNibName:(NSString*)nibName bundle:(NSBundle *)bundleOrNil {
    
    UINib* result = [self lx_loadDynamicallyWithNibName:nibName bundle:bundleOrNil];
    if( !result ) {
        result = [UINib nibWithNibName:nibName bundle:bundleOrNil];
    }
    
    return result;
}

+(instancetype)lx_loadDynamicallyWithNibName:(NSString*)nibName bundle:(NSBundle *)bundleOrNil {
    NSString* path = [UIApplication sharedApplication].lx_path;
    
    if(!path) {
        return nil;
    }
    
    NSString* tempNibName = [NSString stringWithFormat:@"%@.xib.lxd", nibName];
    NSString* xibPath = [path stringByAppendingPathComponent:tempNibName];
    NSData* xibData = [NSData dataWithContentsOfFile:xibPath];
    
    if( !xibData ) {
        return nil;
    }
    
    UINib* dynamicNIB = [UINib nibWithData:xibData bundle:bundleOrNil];
    return dynamicNIB;
}

@end
