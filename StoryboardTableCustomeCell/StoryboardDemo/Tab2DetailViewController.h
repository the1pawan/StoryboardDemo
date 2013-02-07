//
//  Tab2DetailViewController.h
//  StoryboardDemo
//
//  Created by Pawan Dhamane on 07/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tab2DetailViewController : UIViewController
{
    NSString *selectedItem;
    NSInteger selectedIndex;
    IBOutlet UILabel *outputLabel;
    IBOutlet UIImageView *outputImage;
}

@property (nonatomic) NSInteger selectedIndex;
@property (nonatomic, retain) NSString *selectedItem;

@end
