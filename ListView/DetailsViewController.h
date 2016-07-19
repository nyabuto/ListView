//
//  DetailsViewController.h
//  ListView
//
//  Created by ilabadmin on 7/19/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "model/Languages.h"

@interface DetailsViewController : UIViewController
@property(nonatomic,strong) Languages *languages;
@property (weak, nonatomic) IBOutlet UIImageView *imImage;
@property (weak, nonatomic) IBOutlet UILabel *imName;
@property (weak, nonatomic) IBOutlet UILabel *imDescription;


@end
