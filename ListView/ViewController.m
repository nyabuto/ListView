//
//  ViewController.m
//  ListView
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import "ViewController.h"
#import "Model/Languages.h"
#import "DetailsViewController.h"
@interface ViewController ()

@end



@implementation ViewController{
    NSMutableArray *Language;
    
  //  NSArray *imageArray;

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    If the number of elements is unkown, use nsmutable array, it is dynamic
//    initialize table data
    
    //Languages=[NSArray arrayWithObjects:@"PHP",@"Java",@"XML",@"JSON",@"JQUERY",@"C++",@"C#", nil];
    //imageArray=[NSArray arrayWithObjects:@"php.png",@"Java.png",@"xml.png",@"json.png",@"jquery.png",@"cpp.png",@"csharp.png", nil];
 
    Languages *lang1=[Languages new];
    lang1.name=@"PHP";
    lang1.langDescription=@"PHP Description";
    lang1.image=@"php.png";
    
    Languages *lang2=[Languages new];
    lang2.name=@"Java";
    lang2.langDescription=@"Java Description";
    lang2.image=@"Java.png";
    
    Languages *lang3=[Languages new];
    lang3.name=@"XML";
    lang3.langDescription=@"XML Description";
    lang3.image=@"xml.png";
    
    Languages *lang4=[Languages new];
    lang4.name=@"JSON";
    lang4.langDescription=@"JSON Description";
    lang4.image=@"json.png";
    
    Languages *lang5=[Languages new];
    lang5.name=@"JQUERY";
    lang5.langDescription=@"JQUERY Description";
    lang5.image=@"jquery.png";
    
    Languages *lang6=[Languages new];
    lang6.name=@"C++";
    lang6.langDescription=@"C++ Description";
    lang6.image=@"cpp.png";
    
    Languages *lang7=[Languages new];
    lang7.name=@"C#";
    lang7.langDescription=@"C# Description";
    lang7.image=@"csharp.png";
    
    Language=[NSMutableArray arrayWithObjects:lang1,lang2,lang3,lang4,lang5,lang6,lang7, nil];
    
}

-(void) appendelementx :(Languages *) langx{
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [Language count];
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier=@"TableItem";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    Languages *lang = ((Languages *) Language [indexPath.row]);
                       
    cell.textLabel.text=lang.name;
    cell.imageView.image=[UIImage imageNamed:lang.image];
    //cell.detailTextLabel.text=lang.langDescription;
    [cell.detailTextLabel setText:lang.langDescription];
    return cell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSInteger index=[self.myTableView indexPathForSelectedRow].row;
   // NSInteger index=self.myTableView.indexPathForSelectedRow.row;
    NSLog(@"%d",index);

    if([segue.identifier isEqualToString:@"segueDetails"]){
    [(DetailsViewController *) segue.destinationViewController setLanguages:
     [self objectInListAtIndex:index] ];
    }
}
-(Languages *) objectInListAtIndex: (NSUInteger) index{
    
    return [Language objectAtIndex:index];
    
}

@end




