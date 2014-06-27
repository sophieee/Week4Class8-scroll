//
//  MainViewController.m
//  Week4Class8 scroll
//
//  Created by Sophie Tang on 6/26/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *BackgroundImage;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *ForegroundImage;

@end

@implementation MainViewController

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

    self.ScrollView.contentSize = CGSizeMake(self.ScrollView.frame.size.width, self.ForegroundImage.frame.size.height);
    self.ScrollView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidScroll:(UIScrollView *)ScrollView{
    NSLog(@"Scroll: %f, %f", ScrollView.contentOffset.x, ScrollView.contentOffset.y);
    
    self.BackgroundImage.frame = CGRectMake(0, ScrollView.contentOffset.y * -0.2, self.BackgroundImage.frame.size.width, self.BackgroundImage.frame.size.height);
    
}


@end
