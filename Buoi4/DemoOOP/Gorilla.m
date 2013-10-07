//
//  Khi.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Gorilla.h"

@implementation Gorilla

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Gorilla shout", nil];
    
    return self;
}

-(id)initWithName:(NSString *)name andOrigin:(NSString *)origin
{
    self = [super initWithName:name andOrigin:origin];
    self->_voices = [NSMutableArray arrayWithObjects:@"Gorilla shout", nil];
    
    return self;
}

-(void)eatLeaf
{
    NSLog(@"Gorilla is eating Leaf");
}

-(void)jump
{
    NSLog(@"Gorilla jump");
}

@end
