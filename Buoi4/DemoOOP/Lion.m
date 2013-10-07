//
//  Lion.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Lion.h"
@interface Lion()
{

}
@end

@implementation Lion

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Lion keu", nil];
    
    return  self;
}

-(void)doSomeThing
{
    NSLog(@"Lion do something");
}

-(void)swimming
{
    NSLog(@"Lion is swimming");
}



@end
