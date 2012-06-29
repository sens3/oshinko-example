//
//  GamePickerViewController.h
//  Ratings
//
//  Created by Simon Baumgartner on 5/17/12.
//  Copyright (c) 2012 AppOrchard, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>
- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController 

@property (nonatomic, weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;


@end
