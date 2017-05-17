//
//  LSNewsListViewController.m
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/16/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import "LSNewsListViewController.h"

#import "LSNewsDetailsViewController.h"
#import "LSDataProvider.h"
#import "LSNewsItem.h"

@interface LSNewsListViewController ()

@property (nonatomic, strong) NSArray *newsList;

@end

@implementation LSNewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.category) {
        
        [[LSDataProvider sharedInstance] loadListOfNews:self.category.link completion:^(NSArray *newsList) {
            self.newsList = newsList;
            [self.tableView reloadData];
        }];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"news_cell" forIndexPath:indexPath];
    __block LSNewsItem *item = self.newsList[indexPath.row];
    cell.textLabel.text = item.title;
    if (item.image) {
        cell.imageView.image = item.image;
    } else {
        cell.imageView.image = [UIImage imageNamed:@"placeholder.png"];
        [[LSDataProvider sharedInstance] loadImage:item.imageLink completion:^(UIImage *image) {
            item.image = image;
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }];
    }
    return cell;
}

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell*)sender {
    LSNewsDetailsViewController *newsDetails = [segue destinationViewController];
    newsDetails.newsItem = self.newsList[[self.tableView indexPathForCell:sender].row];
}

@end
