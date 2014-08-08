//
//  ViewController.m
//  MontserratDemo
//
//  Created by Kyle Fuller on 08/08/2014.
//  Copyright (c) 2014 Cocode. All rights reserved.
//

#import <Montserrat/UIFont+Montserrat.h>
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *montserratLabel;
@property (nonatomic, weak) IBOutlet UILabel *montserratBoldLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.montserratLabel.font = [UIFont montserratFontOfSize:17.0];
    self.montserratBoldLabel.font = [UIFont montserratBoldFontOfSize:17.0];
}

@end
