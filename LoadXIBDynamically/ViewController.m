//
//  ViewController.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "ViewController.h"
#import "SampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

-(void)viewDidAppear:(BOOL)animated {
   SampleViewController* vc = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
