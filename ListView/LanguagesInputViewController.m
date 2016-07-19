//
//  LanguagesInputViewController.m
//  ListView
//
//  Created by ilabadmin on 7/15/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import "LanguagesInputViewController.h"
#import "Model/Languages.h"
#import "ViewController.h"

@interface LanguagesInputViewController ()

@end

@implementation LanguagesInputViewController
@synthesize txtName;
@synthesize txtDescription;
@synthesize txtImage;
NSString *langName,*langDescription,*langImage;
NSMutableArray *Language;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btnSave:(id)sender {
//  function implementation here
    langName=txtName.text;
    langDescription=txtDescription.text;
    langImage=txtImage.text;
    
    Languages *lang=[[Languages alloc] init];
    lang.name=langName;
    lang.langDescription=langDescription;
    lang.image=langImage;
    
    ViewController *vClass = [[ViewController alloc]init];
    
    [vClass appendelementx:lang];
    
    NSLog(@"Language is : %@, its description is : %@ and the image url is : %@",langName,langDescription,langImage);
    
    
}
@end
