//
//  LanguagesInputViewController.h
//  ListView
//
//  Created by ilabadmin on 7/15/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LanguagesInputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtDescription;
@property (weak, nonatomic) IBOutlet UITextField *txtImage;
- (IBAction)btnSave:(id)sender;



@end
