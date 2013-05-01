//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    // array
    [self printOutArray];

    // queue
    [self printOutQueue];

    // stack
    [self printOutStack];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printOutArray
{
    // normal
    NSArray *array1 = @[
                        [NSDictionary dictionaryWithObjectsAndKeys:
                         @"mixi.jp", @"domain",
                         [NSArray arrayWithObjects: @"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl", nil], @"entry",
                         nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:
                         @"mmall.jp", @"domain",
                         [NSArray arrayWithObject:
                          [NSDictionary dictionaryWithObjectsAndKeys:@"add_diary.pl",@"path", [NSArray arrayWithObject:[NSDictionary dictionaryWithObjectsAndKeys:@7,@"tag_id", nil]],@"qurey", nil]], @"entry",
                         nil],
                        [NSDictionary dictionaryWithObjectsAndKeys:@"itunes.apple.com",@"domain", nil]
                        ];

    NSLog(@"%@", array1);

    // literals
    NSArray *array2 = @[
                        @{
                            @"domain": @"mixi.jp",
                            @"entry": @[@"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl"]
                            },
                        @{
                            @"domain":@"mmall.jp",
                            @"entry":@[
                                    @{
                                        @"path":@"add_diary.pl",
                                        @"query":@[ @{ @"tag_id":@7 } ]
                                        }
                                    ]
                            },
                        @{
                            @"domain":@"itunes.apple.com"
                            }
                        ];

    NSLog(@"%@", array2);
    
}

-(void)printOutQueue
{
    TestQueue *queue = [[TestQueue alloc] init];

    NSLog(@"%@", [queue pop]);
    NSLog(@"%d", [queue size]);

    [queue push:@"a"];
    [queue push:@"b"];
    [queue push:@"c"];
    [queue push:@"d"];

    NSLog(@"%d", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%d", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%d", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%d", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%d", [queue size]);

}

-(void)printOutStack
{
    TestStack *stack =[[TestStack alloc] init];

    NSLog(@"%@", [stack pop]);
    NSLog(@"%d", [stack size]);

    [stack push:@"a"];
    [stack push:@"b"];
    [stack push:@"c"];
    [stack push:@"d"];

    NSLog(@"%d", [stack size]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%d", [stack size]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%d", [stack size]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%d", [stack size]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%d", [stack size]);
}


@end
