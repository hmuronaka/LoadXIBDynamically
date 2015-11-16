//
//  UIApplication+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UIApplication+LoadXIBDynamically.h"
#import "Cls_LoadXIBDynamically.h"

@implementation UIApplication (LoadXIBDynamically)

-(BOOL)lx_setupWebDAVServer {
    return [[LoadXIBDynamically sharedInstance] setupWebDAVServerWithPort:8080];
}

-(BOOL)lx_setupWebDAVServerWithPort:(NSUInteger)port {
    NSString* documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return [[LoadXIBDynamically sharedInstance] setupWebDAVServerWithBasePath:documentsPath port:port];
}

-(BOOL)lx_setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port {
    return [[LoadXIBDynamically sharedInstance] setupWebDAVServerWithBasePath:path port:port];
}

-(NSString*)lx_path {
    return [[LoadXIBDynamically sharedInstance] path];
}

@end
