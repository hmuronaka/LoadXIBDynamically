//
//  UIApplication+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (LoadXIBDynamically)

-(BOOL)lx_setupWebDAVServer;
-(BOOL)lx_setupWebDAVServerWithPort:(NSUInteger)port;
-(BOOL)lx_setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port;
-(NSString*)lx_path;

@end
