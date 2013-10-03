//
//  ViewController.m
//  GiaiPhuongTrinhBacHai
//
//  Created by Mr Bin on 10/4/13.
//  Copyright (c) 2013 VuongAnh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float x1, x2;
}

@property (weak, nonatomic) IBOutlet UITextField *aInput;

@property (weak, nonatomic) IBOutlet UITextField *bInput;

@property (weak, nonatomic) IBOutlet UITextField *cInput;

@property (weak, nonatomic) IBOutlet UITextView *textOutput;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (IBAction)ketQua:(id)sender {
    
    //lay ve du lieu
    float a = [self.aInput.text floatValue];
    float b = [self.bInput.text floatValue];
    float c = [self.cInput.text floatValue];
    
    //tinh delta
    float delta = b*b - 4*a*c;
    
    if(delta > 0)
    {
        x1 = (-b + sqrtf(delta))/2*a;
        x2 = (-b - sqrtf(delta))/2*a;
        
        self.textOutput.text = [NSString stringWithFormat:@"Phương trình cần giải:\n\n %.2fX2 + %.2fX + %.2f = 0\n\nPhương trình có hai nghiệm:\nX1 = %.2f, X2 = %.2f", a, b, c, x1, x2];
    }else if (delta == 0)
    {
        x1 = x2 = -b/2*a;
        self.textOutput.text = [NSString stringWithFormat:@"Phương trình cần giải:\n\n%.2fX2 + %.2fX + %.2f = 0\n\nPhương trình có nghiệm kép:\nX = %.2f", a, b, c, x1];
    }else{
        self.textOutput.text = [NSString stringWithFormat:@"Phương trình cần giải:\n\n%.2fX2 + %.2fX + %.2f = 0\n\nPhương trình vô nghiệm", a, b, c];
    }

}

@end
