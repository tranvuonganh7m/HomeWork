//
//  Cat.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Cat.h"
@interface Cat()
{
    int _vellocity;
}
@end

@implementation Cat

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Meo meo", nil];
    
    return self;
}

-(id)initWithName:(NSString *)name andOrigin:(NSString *)origin
{
    self = [super initWithName:name andOrigin:origin];
    self->_voices = [NSMutableArray arrayWithObjects:@"Meo meo", nil];
    _vellocity = 0;
    
    return self;
}

-(void)standing
{
    NSLog(@"Cat is standing");
}

-(void)running
{
    NSLog(@"Cat is running");
}

-(void)runWithVellocity: (int)vellocity
{
    NSLog(@"Cat is running with vellocity = %d", _vellocity);
}

-(void)climbing
{
    NSLog(@"Cat is climbing in the tree");
}

@end
