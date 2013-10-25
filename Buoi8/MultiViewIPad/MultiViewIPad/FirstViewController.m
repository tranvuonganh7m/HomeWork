//
//  FirstViewController.m
//  MultiViewIPad
//
//  Created by Mr Bin on 10/25/13.
//  Copyright (c) 2013 VuongAnh. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (IBAction)goSecondViewController:(id)sender {
   SecondViewController * second = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    
    [self presentViewController:second animated:YES completion:^{
        NSLog(@"Go to Second ViewController");
    }];
    
}
 */
@end
