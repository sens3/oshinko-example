//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Simon Baumgartner on 5/16/12.
//  Copyright (c) 2012 AppOrchard, LLC. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"

@interface PlayerDetailsViewController ()

@end

@implementation PlayerDetailsViewController{
    NSString *game;
}

@synthesize delegate;
@synthesize nameTextField;
@synthesize detailLabel;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        game = @"Chess";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.detailLabel setText:game];
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [self setDetailLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"PickGame"])
	{
		GamePickerViewController *gamePickerViewController = segue.destinationViewController;
		gamePickerViewController.delegate = self;
		gamePickerViewController.game = game;
	}
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (indexPath.section == 0)
		[self.nameTextField becomeFirstResponder];
}

#pragma mark - Instance methods

- (IBAction)cancel:(id)sender
{
	[self.delegate playerDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
    Player *player = [[Player alloc] init];
	player.name = self.nameTextField.text;
	player.game = game;
	player.rating = 1;
    
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
}

#pragma mark - GamePickerViewControllerDelegate

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)theGame
{
    game = theGame;
    self.detailLabel.text = game;
    [self.navigationController popViewControllerAnimated:YES];
}

@end
