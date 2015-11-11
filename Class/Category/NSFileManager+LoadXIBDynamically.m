//
//  NSFileManager+LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "NSFileManager+LoadXIBDynamically.h"

@implementation NSFileManager (LoadXIBDynamically)

-(void)lx_deleteFilesEndsWith:(NSString*)endsWith path:(NSString*)path {
    NSArray *dirContents = [self contentsOfDirectoryAtPath:path error:nil];
    
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"self ENDSWITH %@", endsWith];
    NSArray *onlyEndsWith = [dirContents filteredArrayUsingPredicate:filter];
    
    [onlyEndsWith enumerateObjectsUsingBlock:^(NSString*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString* fullPath = [path stringByAppendingPathComponent:obj];
        [self removeItemAtPath:fullPath error:nil];
    }];
}

@end
