//
//  ViewController.h
//  exp3
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageFilm1;
@property (weak, nonatomic) IBOutlet UITextView *filmText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSString *value;
@property UIImage *image;
@property NSString *text;
//типа коммент
@end
