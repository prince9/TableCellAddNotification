//
//  DetailViewController.h
//  TableTabNotification
//
//  Created by 真有 津坂 on 12/04/18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    //追加、add 日時受け取り用
    NSString *myStr;
}
//追加、add
@property (nonatomic,retain) NSString *myStr;
@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
