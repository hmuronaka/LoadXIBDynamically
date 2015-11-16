//
//  LoadXIBDynamically.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/15.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "Cls_LoadXIBDynamically.h"

#import "GCDWebServer/GCDWebDAVServer.h"
#import "NSFileManager+loadXIBDynamically.h"

@interface LoadXIBDynamically()

@property(nonatomic, strong) GCDWebServer* davServer;
@property(nonatomic, assign) NSUInteger port;
@property(nonatomic, strong) NSString* path;

@end


@implementation LoadXIBDynamically

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark instance methods

-(BOOL)setupWebDAVServer {
    return [self setupWebDAVServerWithPort:8080];
}

-(BOOL)setupWebDAVServerWithPort:(NSUInteger)port {
    NSString* documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return [self setupWebDAVServerWithBasePath:documentsPath port:port];
}

-(BOOL)setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port {
    
    [[NSFileManager defaultManager] lx_deleteFilesEndsWith:@"xib.lxd" path:path];
    
    self.davServer = [[GCDWebDAVServer alloc] initWithUploadDirectory:path];
    self.path = path;
    
    BOOL result = [self.davServer startWithPort:port bonjourName:@""];
    NSLog(@"Visit %@ in your WebDAV client", self.davServer.serverURL);
    
    return result;
}

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark class methods

+ (instancetype)sharedInstance {
    static LoadXIBDynamically *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [LoadXIBDynamically new];
    });
    
    return _sharedInstance;
}


@end
