//
//  ViewController.h
//  ListView
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model/Languages.h"
@interface ViewController :UIViewController<UITableViewDelegate,UITableViewDataSource>
//@property (weak,nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

-(void) appendelementx :(Languages *) langx;
@end

