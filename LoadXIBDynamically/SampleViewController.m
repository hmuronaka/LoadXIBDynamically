//
//  SampleViewController.m
//  LoadXIBDynamically
//
//  Created by Muronaka Hiroaki on 2015/11/11.
//  Copyright © 2015年 Muronaka Hiroaki. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)pressedUpdate:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        SampleViewController* vc = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:nil];
        [self.parentViewController presentViewController:vc animated:YES completion:nil];
    }];
}

@end
