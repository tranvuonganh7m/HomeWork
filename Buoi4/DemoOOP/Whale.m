//
//  CaVoi.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Whale.h"
@interface Whale()
{
    float _hourSleep;
}
@end

@implementation Whale

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    _hourSleep = 0;
    
    return self;
}

-(id)initWithName:(NSString *)name andOrigin:(NSString *)origin
{
    
    self = [super initWithName:name andOrigin:origin];
    _hourSleep = 0;
    
    return self;
}

-(void)swimming
{
    NSLog(@"Whale is swimming");
}

-(void)sleep
{
    NSLog(@"Whale sleep in %f", _hourSleep);
}

@end
