//
//  secondViewController.m
//  multipractice
//
//  Created by 研发部 on 2018/1/11.
//  Copyright © 2018年 development team. All rights reserved.
//

#import "secondViewController.h"
#import "NSObject+Netwoking.h"
#import "HttpTool.h"
@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
 [self createmoredata];
}
-(void)createmoredata{
 
 NSString *dongtaistr = @"get_circle_list";
 NSMutableDictionary *parmas = [NSMutableDictionary dictionary];
 parmas[@"uid"]=@3;
 parmas[@"p"] = @1;
 parmas[@"num"]=@5;
// [NSObject POST:dongtaistr parameters:parmas progress:^(NSProgress *downloadProgress) {
//
// } completionHandler:^(id responseObj, NSError *error) {
//  NSLog(@"响应responseObj:%@",responseObj);
// }];
 [HttpTool postWithURL:dongtaistr params:parmas success:^(id json) {
  NSLog(@"输出idjson:%@",json);
 } failure:^(NSError *error) {
  NSLog(@"输出error:%@",error);
 }];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
