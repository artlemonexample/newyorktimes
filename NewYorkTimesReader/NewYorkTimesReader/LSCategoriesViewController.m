//
//  LSCategoriesViewController.m
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/16/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import "LSCategoriesViewController.h"

#import "LSNewsListViewController.h"
#import "LSNewsCategory.h"

@interface LSCategoriesViewController ()

@property (nonatomic, strong) NSArray *categories;

@end

@implementation LSCategoriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"category_cell" forIndexPath:indexPath];
    LSNewsCategory *category = self.categories[indexPath.row];
    cell.textLabel.text = category.title;
    cell.imageView.image = [UIImage imageNamed:category.imageName];
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell*)sender {
    LSNewsListViewController *newsList = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    newsList.category = self.categories[indexPath.row];
}



#pragma mark - Private

- (NSArray *)categories {
    if (!_categories) {
        NSMutableArray *array = [NSMutableArray array];
        LSNewsCategory *category = [LSNewsCategory new];
        category.imageName = @"world.png";
        category.title = @"World";
        category.link = @"World.xml";
        [array addObject:category];
        category = [LSNewsCategory new];
        category.imageName = @"business.jpg";
        category.title = @"Business";
        category.link = @"Business.xml";
        [array addObject:category];
        category = [LSNewsCategory new];
        category.imageName = @"technology.png";
        category.title = @"Technology";
        category.link = @"Technology.xml";
        [array addObject:category];
        category = [LSNewsCategory new];
        category.imageName = @"jobmarket.jpeg";
        category.title = @"Job Market";
        category.link = @"JobMarket.xml";
        [array addObject:category];
        category = [LSNewsCategory new];
        category.imageName = @"travel.jpg";
        category.title = @"Travel";
        category.link = @"Travel.xml";
        [array addObject:category];
        _categories = [array copy];
    }
    return _categories;
}

@end
