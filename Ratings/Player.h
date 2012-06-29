//
//  Player.h
//  Ratings
//
//  Created by Simon Baumgartner on 5/16/12.
//  Copyright (c) 2012 AppOrchard, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end
