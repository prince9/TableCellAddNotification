//
//  Tab1ViewController.m
//  TableTabNotification
//
//  Created by 真有 津坂 on 12/04/18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Tab1ViewController.h"

@interface Tab1ViewController ()

@end

@implementation Tab1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//追加、add
//Tab3 is chosen automatically. 
- (void)viewWillAppear:(BOOL)animated {
    //アプリが起動したときにセルのあるタブをあらかじめ選択した状態にしておく。Tabbarはタブを選択して初めてViewが作られるため、アプリ起動後、セルのあるタブをタップしないでセルを追加する場合はこうする必要がある(が、この方法がいいかどうか・・・)
    //セルのあるタブを選択したことにする
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 2];
    //0.05秒後に1つ目のタブ(Tab1ViewController)に戻る
    //returns to the 1st tab in 0.05 second.
    [self performSelector:@selector(delayTab) withObject:nil afterDelay:0.05f];
    
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//追加、add セル追加の通知の作成と実行、MasterViewControllerの- (void)insertNewObject:を実行する
//The notice which adds a cell is made and performed. 
- (IBAction)add:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P1" object:self];
}

//1つ目のタブ(Tab1ViewController)に戻る
//returns to the 1st tab. 
- (void)delayTab {
    
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 0];
    
}



@end
