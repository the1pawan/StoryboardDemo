//
//  Tab2DetailViewController.m
//  StoryboardDemo
//
//  Created by Pawan Dhamane on 07/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import "Tab2DetailViewController.h"

@interface Tab2DetailViewController ()

@end

@implementation Tab2DetailViewController
@synthesize selectedIndex,selectedItem;
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
    [outputLabel setText:selectedItem];
    [outputImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", selectedIndex]]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
