//
//  PlayerCell.h
//  Ratings
//
//  Created by Simon Baumgartner on 5/16/12.
//  Copyright (c) 2012 AppOrchard, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView;

@end
