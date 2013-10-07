//
//  Puma.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Puma.h"

@interface Puma()
{
    //tai day co the khai bao cac ivar
}

@end

@implementation Puma

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Bao keu", nil];
    
    return self;
}

-(void)doSomeThing
{
    self->_moveable = FALSE;
    NSLog(@"%d", self->_moveable);//truy xuat den bien thanh phan khong can dung self
}

-(void)swimming
{
    NSLog(@"Con bao dang boi.");
}

@end
