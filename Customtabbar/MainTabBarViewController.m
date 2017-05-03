//
//  MainTabBarViewController.m
//  Customtabbar
//
//  Created by hydom on 2017/5/3.
//  Copyright © 2017年 Liu. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "HomeViewController.h"
#import "DiscoverViewController.h"
#import "MusicViewController.h"
#import "OtherViewController.h"

//颜色RGB
#define COLOR(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define FONT12 [UIFont systemFontOfSize:12 ]
@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addViewController];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tabBar.hidden = NO;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
}


#pragma mark-- 添加视图
- (void)addViewController{
    HomeViewController *home = [[HomeViewController alloc]init];
    home.title = @"首页";
    home.tabBarItem.image = [[UIImage imageNamed:@"首页_首页"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    home.tabBarItem.selectedImage = [[UIImage imageNamed:@"首页_首页 (1)"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    home.view.backgroundColor = [UIColor clearColor];
    [home.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR(19, 150, 219, 1),NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateSelected];
    [home.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateNormal];
    [self addChildViewController:home];
    
    DiscoverViewController *discover = [[DiscoverViewController alloc]init];
    discover.title = @"发现";
    discover.tabBarItem.image = [[UIImage imageNamed:@"发现_on"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    discover.tabBarItem.selectedImage = [[UIImage imageNamed:@"发现_on (1)"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    discover.view.backgroundColor = [UIColor clearColor];
    [discover.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR(19, 150, 219, 1),NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateSelected];
    [discover.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateNormal];
    [self addChildViewController:discover];
    
    MusicViewController *music = [[MusicViewController alloc]init];
    music.title = @"音乐";
    music.tabBarItem.image = [[UIImage imageNamed:@"音乐V1"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    music.tabBarItem.selectedImage = [[UIImage imageNamed:@"音乐V1 (1)"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    music.view.backgroundColor = [UIColor clearColor];
    [music.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR(19, 150, 219, 1),NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateSelected];
    [music.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateNormal];
    [self addChildViewController:music];
    
    OtherViewController *other = [[OtherViewController alloc]init];
    other.title = @"我的";
    other.tabBarItem.image = [[UIImage imageNamed:@"我的"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    other.tabBarItem.selectedImage = [[UIImage imageNamed:@"我的 (1)"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    other.view.backgroundColor = [UIColor clearColor];
    [other.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR(19, 150, 219, 1),NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateSelected];
    [other.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName,FONT12,NSFontAttributeName,nil] forState:UIControlStateNormal];
    [self addChildViewController:other];
    
}


@end
