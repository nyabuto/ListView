//
//  DetailsViewController.m
//  ListView
//
//  Created by ilabadmin on 7/19/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

@synthesize languages=_languages;
@synthesize imImage = _imImage;
@synthesize imDescription=_imDescription;
@synthesize imName = _imName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_imImage setImage:[UIImage imageNamed:_languages.image]];
    [_imName setText:_languages.name];
    NSLog(@"loaded here ---%@ old %@",_languages.name,_imName.text);
    [_imDescription setText:_languages.langDescription];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
