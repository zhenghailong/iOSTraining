//
//  EFMViewController.m
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "EFMViewController.h"
#import "EFMSecondViewController.h"

@interface EFMViewController ()
@property(nonatomic,strong) EFMSecondViewController *secondViewController;
@end

@implementation EFMViewController

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

- (IBAction)buttonTapped:(id)sender {

    //EFMSecondViewController *secondViewController = [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];
    self.secondViewController =  [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];

    // TODO secondViewControllerのdelegateを自分にセット
    _secondViewController.delegate = self;
    // TODO [self presentViewController:￼ animated:￼ completion:￼] を呼ぶ
    [self presentViewController:_secondViewController animated:YES completion:nil];

}

#pragma EMFSecondViewController delegate
// TODO EFMSecondViewController の delegateメソッドを実装
- (void) didPressCloseModal
{
    __weak EFMViewController *_self = self;

    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismissViewController");
        _self.secondViewController.delegate = _self;
        [_self presentViewController:_self.secondViewController animated:YES completion:nil];
    }];

}



@end
