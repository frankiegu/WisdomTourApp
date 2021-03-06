/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "AppDelegate.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  NSURL *jsCodeLocation;
  [AMapServices sharedServices].apiKey = @"5cd17ddb6fe69f5a05c481eb79a6dc5f";
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];

  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"WisdomTourApp"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  NSInteger totalCount = 0;
  NSArray *familyNames = [UIFont familyNames];
  for( NSString *familyName in familyNames ){
    printf("Family: %s \n", [familyName UTF8String] );
    NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
    for( NSString *fontName in fontNames ){
      printf("\tFont: %s \n", [fontName UTF8String] );
    }
  }
  NSLog(@"totalCount=%ld",totalCount);
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
