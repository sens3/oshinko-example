//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Simon Baumgartner on 5/16/12.
//  Copyright (c) 2012 AppOrchard, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class PlayerDetailsViewController, Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end