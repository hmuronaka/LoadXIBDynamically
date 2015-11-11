//
//  UINib+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UINib+LoadXIBDynamically.h"
#import "UIApplication+LoadXIBDynamically.h"
#import "UIDevice+LoadXIBDynamically.h"

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
    
    NSString* nibFilePath = [self lx_nibFilePath:nibName];
    NSData* xibData = [NSData dataWithContentsOfFile:nibFilePath];
    
    if( !xibData ) {
        return nil;
    }
    
    UINib* dynamicNIB = [UINib nibWithData:xibData bundle:bundleOrNil];
    return dynamicNIB;
}

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark private

+(NSString*)lx_nibFilePath:(NSString*)nibName {
    NSString* path = [UIApplication sharedApplication].lx_path;
    if(path == nil ) {
        return nil;
    }
    
    NSString* tempNibName;
    if( [UIDevice currentDevice].lx_isIPad ) {
        tempNibName = [NSString stringWithFormat:@"%@~ipad.xib.lxd", nibName];
    } else {
        tempNibName = [NSString stringWithFormat:@"%@~iphone.xib.lxd", nibName];
    }
    
    NSString* nibFilePath = [path stringByAppendingPathComponent:tempNibName];
    if( [[NSFileManager defaultManager] fileExistsAtPath:nibFilePath] ) {
        return nibFilePath;
    }
    
    tempNibName = [NSString stringWithFormat:@"%@.xib.lxd", nibName];
    nibFilePath = [path stringByAppendingPathComponent:tempNibName];
    return nibFilePath;
}

@end
