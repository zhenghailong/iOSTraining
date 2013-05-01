//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by 鄭 海龍 on 2013/04/19.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"

@interface TestQueue ()

@property(nonatomic,strong) NSMutableArray *queue;

@end

@implementation TestQueue

-(id)init
{
    self = [super init];
    if(self){
        _queue = [NSMutableArray array];
    }
    return self;
}

-(void)push:(id)object{
    [_queue addObject:object];
}

-(id)pop{
    // count check
    if ([self size] <= 0){ return @"queue is empty"; }

    // pop
    id obj = [_queue objectAtIndex:0];
    [_queue removeObjectAtIndex:0];

    return obj;
}

-(NSInteger)size{
    return [_queue count];
}

@end
