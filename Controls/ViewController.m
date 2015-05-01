//
//  ViewController.m
//  Controls
//
//  Created by Michael Sacks on 4/28/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(15, 20, 100, 100);
    button.backgroundColor = [UIColor redColor];
    
    [button setTitle:@"Go Green!" forState:UIControlStateNormal];
    [button setTitle:@"Done!" forState:UIControlStateHighlighted];
    
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    CGRect infoButtonFrame = infoButton.frame;
    
    infoButtonFrame.origin = CGPointMake(200, 200);
    infoButton.frame = infoButtonFrame;
    
    [self.view addSubview:button];
    [self.view addSubview:infoButton];
    
    NSArray *names = @[@"First", @"Second", @"Third"];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:names];
    
    CGRect segmentedControlFrame = segmentedControl.frame;
    segmentedControlFrame.origin = CGPointMake(10, 200);
    segmentedControl.frame = segmentedControlFrame;
    
    [segmentedControl addTarget:self action:@selector(segmentedControlChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmentedControl];
    
}

- (void)segmentedControlChanged:(UISegmentedControl *)sender{
    NSLog(@"%li", sender.selectedSegmentIndex);
}

- (void)buttonTapped:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

@end
