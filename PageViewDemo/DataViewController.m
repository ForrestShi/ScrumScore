//
//  DataViewController.m
//  PageViewDemo
//
//  Created by Shi Lin on 9/2/13.
//  Copyright (c) 2013 Forrest Shi. All rights reserved.
//

#import "DataViewController.h"
#import <FlatUIKit/UIFont+FlatUI.h>
#import <FlatUIKit/UIColor+FlatUI.h>

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)tap:(UITapGestureRecognizer*)gesture{
    
    if (!self.dataLabel.hidden) {
        [UIView animateWithDuration:.5 animations:^{
            self.dataLabel.alpha = 0.;
        } completion:^(BOOL finished) {
            self.dataLabel.hidden = YES;
        }];
        
    }else{
    
        [UIView animateWithDuration:.5 animations:^{
            self.dataLabel.hidden = NO;
            self.dataLabel.alpha = 1.;
        } completion:^(BOOL finished) {
        }];

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
    self.dataLabel.font = [UIFont flatFontOfSize:200.];
    self.dataLabel.textColor = [UIColor greenSeaColor];  
}

@end
