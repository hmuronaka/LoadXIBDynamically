//
//  NSFileManager+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (LoadXIBDynamically)

-(void)lx_deleteFilesEndsWith:(NSString*)endsWith path:(NSString*)path;

@end
