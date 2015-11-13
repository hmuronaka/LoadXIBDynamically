//
//  UIApplication+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "UIApplication+LoadXIBDynamically.h"
#import "GCDWebServer/GCDWebDAVServer.h"
#import "NSFileManager+loadXIBDynamically.h"
#import <objc/runtime.h>

static NSString const* LoadXIBDynamicallyWebDAVServer = @"LoadXIBDynamicallyWebDAVServer";
static NSString const* LoadXIBDynamicallyUploadDirectory = @"LoadXIBDynamicallyUploadDirectory";

@implementation UIApplication (LoadXIBDynamically)

-(BOOL)lx_setupWebDAVServer {
    return [self lx_setupWebDAVServerWithPort:8080];
}

-(BOOL)lx_setupWebDAVServerWithPort:(NSUInteger)port {
    NSString* documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return [self lx_setupWebDAVServerWithBasePath:documentsPath port:port];
}

-(BOOL)lx_setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port {
    
    [[NSFileManager defaultManager] lx_deleteFilesEndsWith:@"xib.lxd" path:path];
    
    GCDWebDAVServer* davServer = [[GCDWebDAVServer alloc] initWithUploadDirectory:path];
    objc_setAssociatedObject(self, &LoadXIBDynamicallyWebDAVServer, davServer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &LoadXIBDynamicallyUploadDirectory, path, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    BOOL result = [davServer startWithPort:port bonjourName:@""];
    NSLog(@"Visit %@ in your WebDAV client", davServer.serverURL);
    
    return result;
}

-(NSString*)lx_path {
    return objc_getAssociatedObject(self, &LoadXIBDynamicallyUploadDirectory);
}

@end
