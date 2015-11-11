//
//  UINib+LoadXIBDynamically.h
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINib (LoadXIBDynamically)

+(instancetype)lx_loadWithNibName:(NSString*)nibName bundle:(NSBundle*)bundleOrNil;
+(instancetype)lx_loadDynamicallyWithNibName:(NSString*)nibName bundle:(NSBundle *)bundleOrNil;

@end
