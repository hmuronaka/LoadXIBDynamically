//
//  LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/15.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoadXIBDynamically : NSObject

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark properties

@property(nonatomic, readonly) NSUInteger port;
@property(nonatomic, readonly) NSString* path;

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark public instance methods
-(BOOL)setupWebDAVServer;
-(BOOL)setupWebDAVServerWithPort:(NSUInteger)port;
-(BOOL)setupWebDAVServerWithBasePath:(NSString*)path port:(NSUInteger)port;

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark public class methods
+ (instancetype)sharedInstance;

@end
