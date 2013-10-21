//
//  ViewController.m
//  ReadPutinFile
//
//  Created by Mr Bin on 10/21/13.
//  Copyright (c) 2013 VuongAnh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextView *textView;

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

- (IBAction)readPutinFile:(id)sender {
    
    //lay ve no dung cua file
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];
    NSString * content = [NSString stringWithContentsOfFile:filePath];
    NSLog(@"%@", content);
    
    NSArray * arrWords = [content componentsSeparatedByString:@" "];
    NSLog(@"%@", arrWords);
    
    //khai bao 1 set
    NSMutableSet * set = [[NSMutableSet alloc] init];
    
    //duyet vong lap de add du lieu vao set
    //muon loai bo tu vo nghia nao ta chi viec them dieu kien
    for (int i=0; i<arrWords.count; i++) {
        if([[arrWords objectAtIndex:i] isEqualToString:@"the"]
           || [[arrWords objectAtIndex:i] isEqualToString:@"a"]
           || [[arrWords objectAtIndex:i] isEqualToString:@"an"]
           || [[arrWords objectAtIndex:i] isEqualToString:@"or"]
           || [[arrWords objectAtIndex:i] isEqualToString:@"is"])
        {
            continue;
        }
        else
        {
            [set addObject:[arrWords objectAtIndex:i]];
        }
    }
    
    NSLog(@"%@", set);
    
    self.textView.text = [set description];
}

@end
