//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by 鄭 海龍 on 2013/04/19.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "TestStack.h"

@interface TestStack ()

@property(nonatomic,strong) NSMutableArray *stack;

@end

@implementation TestStack

-(id)init
{
    self = [super init];
    if(self){
        _stack = [NSMutableArray array];
    }
    return self;
}

-(void)push:(id)object{
    [_stack insertObject:object atIndex:0];
}

-(id)pop{
    // count check
    if ([self size] <= 0){ return @"stack is empty"; }

    // pop
    id obj = [_stack objectAtIndex:0];
    [_stack removeObjectAtIndex:0];

    return obj;
}

-(NSInteger)size{
    return [_stack count];
}

@end
