//
//  AppDelegate+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate (LoadXIBDynamically)

-(BOOL)lx_setupWebDAVServer;
-(BOOL)lx_setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port;
-(NSString*)lx_path;

@end
