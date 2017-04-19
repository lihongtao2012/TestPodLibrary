//
//  HTViewController.m
//  TestPodLibrary
//
//  Created by 1004646858@qq.com on 04/19/2017.
//  Copyright (c) 2017 1004646858@qq.com. All rights reserved.
//

#import "HTViewController.h"
#import "UIImageView+WebCache.h"
#import "UIView+Frame.h"

@interface HTViewController ()

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    image.center = self.view.center;

    [image sd_setImageWithURL:[NSURL URLWithString:@"http://pic.58pic.com/58pic/13/61/00/61a58PICtPr_1024.jpg"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
    [self.view addSubview:image];

    NSLog(@"view %@",@(image.width));
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
