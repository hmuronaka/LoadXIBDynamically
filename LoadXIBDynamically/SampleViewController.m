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

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if( self ) {
        _animationDuration = 1;
    }
    return self;
}

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

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark action

-(IBAction)pressedUpdate:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        SampleViewController* vc = [[SampleViewController alloc] initWithNibName:@"SampleViewController" bundle:nil];
        [self.parentViewController presentViewController:vc animated:YES completion:nil];
    }];
}

-(IBAction)pressedView:(UITapGestureRecognizer*)gesture {
    [self animateView:gesture.view];
}

/////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark private

-(void)animateView:(UIView*)view {
    [UIView animateWithDuration:self.animationDuration animations:^{
        view.transform = CGAffineTransformMakeRotation(M_PI);
    } completion:^(BOOL finished) {
        view.transform = CGAffineTransformMakeRotation(0);
    }];
}

@end
