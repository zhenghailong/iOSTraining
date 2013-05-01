//
//  SVSViewController.m
//  scrollViewSample
//
//  Created by 武田 祐一 on 2013/04/19.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "SVSViewController.h"

static CGRect const kImageMovedFrame = {{320, 586}, {170, 170}};

@interface SVSViewController ()

@end

@implementation SVSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];

    UIImage *image = [UIImage imageNamed:@"big_image.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    imageView.image = image;
    imageView.tag   = 5;

    [scrollView addSubview:imageView];

    scrollView.contentSize = imageView.frame.size;
    scrollView.maximumZoomScale = 3.0;
    scrollView.minimumZoomScale = 0.5;

    scrollView.delegate = self;
    [UIView beginAnimations:@"HideOjisanView" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
    [scrollView scrollRectToVisible:kImageMovedFrame animated:YES];
    [UIView commitAnimations];
/*
    [UIView animateWithDuration:3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{ [scrollView scrollRectToVisible:kImageMovedFrame animated:NO]; }
                     completion:NULL];
*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    for (UIView *view in scrollView.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            return view;
        }
    }
    return nil;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //float x = [scrollView viewWithTag:5].frame.origin.x;
    //float y = [scrollView viewWithTag:5].frame.origin.y;
    //NSLog(@"%f",x);
    //NSLog(@"%f",y);

    for (UIView *view in scrollView.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            NSLog(@"for %f",view.frame.origin.x);
            NSLog(@"for %f",view.frame.origin.y);
        }
    }
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    return YES;
}
@end
