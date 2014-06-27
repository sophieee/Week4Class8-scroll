//
//  ImageViewController.m
//  Week4Class8 scroll
//
//  Created by Sophie Tang on 6/26/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()
- (IBAction)OnDoubleTap:(id)sender;

@end

@implementation ImageViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}


- (IBAction)OnDoubleTap:(id)sender {
    CGPoint location = [sender locationInView:self.view];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cuteimage"]];
    [self.view addSubview:imageView];
    
    //imageView.frame = CGRectMake(location.x, location.y, imageView.frame.size.width * 0.2, imageView.frame.size.height * 0.2);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    CGRect frame = imageView.frame;
    frame.size.height = 50;
    frame.size.width = 50;
    imageView.frame = frame;
    imageView.center = location;
    
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onCustomPan:)];
    
    [imageView addGestureRecognizer:panGestureRecognizer];
    imageView.userInteractionEnabled = YES;
}

    

- (void)onCustomPan:(UIPanGestureRecognizer *)panGestureRecognizer {
    CGPoint location = [panGestureRecognizer locationInView:self.view];

    UIView *view = panGestureRecognizer.view;
    view.center = location;
}

@end
