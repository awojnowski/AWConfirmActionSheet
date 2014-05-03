//
//  AWViewController.m
//  ConfirmActionSheet
//
//  Created by Aaron Wojnowski on 2014-05-03.
//  Copyright (c) 2014 Aaron. All rights reserved.
//

#import "AWViewController.h"

#import "AWConfirmActionSheet.h"

@interface AWViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation AWViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] init];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Something Destructive" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [[self view] addSubview:button];
    [self setButton:button];
    
}

-(void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    
    [[self button] setFrame:CGRectMake(10, 30, CGRectGetWidth([[self view] frame]) - 20, 100)];
    
}

#pragma mark - Actions

-(void)buttonTapped:(id)sender {
    
    AWConfirmActionSheet *confirmActionSheet = [[AWConfirmActionSheet alloc] initWithTitle:@"Do something destructive?" cancelButtonTitle:@"Cancel" destructiveButtonTile:@"Do It"];
    [confirmActionSheet setConfirmBlock:^{
        
        NSLog(@"Destructive action confirmed!");
        
    }];
    [confirmActionSheet setCancelBlock:^{
        
        NSLog(@"Cancelled!");
        
    }];
    [confirmActionSheet showInView:[self view]];
    
}

@end
