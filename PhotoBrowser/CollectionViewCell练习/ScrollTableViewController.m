
#import "ScrollTableViewController.h"
#import "PPImageScrollingTableViewCell.h"

@interface ScrollTableViewController()<PPImageScrollingTableViewCellDelegate>

@property (strong, nonatomic) NSArray *images;

@end

@implementation ScrollTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"";

    static NSString *CellIdentifier = @"Cell";
    [self.tableView registerClass:[PPImageScrollingTableViewCell class] forCellReuseIdentifier:CellIdentifier];
    self.images = @[
                    @{ @"category": @"Category A",
                       @"images":
                           @[
                               @{ @"name":@"1.jpg", @"title":@"0"},
                               @{ @"name":@"2.jpg", @"title":@"1"},
                               @{ @"name":@"3.jpg", @"title":@"2"},
                               @{ @"name":@"4.jpg", @"title":@"3"},
                               @{ @"name":@"5.jpg", @"title":@"4"},
                               @{ @"name":@"6.jpg", @"title":@"5"}

                            ]
                       },
                    @{ @"category": @"Category B",
                       @"images":
                           @[
                               @{ @"name":@"1.jpg", @"title":@"0"},
                               @{ @"name":@"2.jpg", @"title":@"1"},
                               @{ @"name":@"3.jpg", @"title":@"2"},
                               @{ @"name":@"4.jpg", @"title":@"3"},
                               @{ @"name":@"5.jpg", @"title":@"4"},
                               @{ @"name":@"6.jpg", @"title":@"5"}
                            ]
                       },
                    @{ @"category": @"Category C",
                       @"images":
                           @[
                               @{ @"name":@"1.jpg", @"title":@"0"},
                               @{ @"name":@"2.jpg", @"title":@"1"},
                               @{ @"name":@"3.jpg", @"title":@"2"},
                               @{ @"name":@"4.jpg", @"title":@"3"},
                               @{ @"name":@"5.jpg", @"title":@"4"},
                               @{ @"name":@"6.jpg", @"title":@"5"}
                            ]
                       },
                    @{ @"category": @"Category D",
                       @"images":
                           @[
                               @{ @"name":@"1.jpg", @"title":@"0"},
                               @{ @"name":@"2.jpg", @"title":@"1"},
                               @{ @"name":@"3.jpg", @"title":@"2"},
                               @{ @"name":@"4.jpg", @"title":@"3"},
                               @{ @"name":@"5.jpg", @"title":@"4"},
                               @{ @"name":@"6.jpg", @"title":@"5"}
                               ]
                       }
                    ];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.images count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    NSDictionary *cellData = [self.images objectAtIndex:[indexPath section]];
    PPImageScrollingTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [customCell setBackgroundColor:[UIColor grayColor]];
    [customCell setDelegate:self];
    [customCell setImageData:cellData];
    [customCell setCategoryLabelText:[cellData objectForKey:@"category"] withColor:[UIColor whiteColor]];
    [customCell setTag:[indexPath section]];
    [customCell setImageTitleTextColor:[UIColor whiteColor] withBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.7]];
    [customCell setImageTitleLabelWitdh:90 withHeight:45];
    [customCell setCollectionViewBackgroundColor:[UIColor darkGrayColor]];
 
    return customCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 170;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - PPImageScrollingTableViewCellDelegate

- (void)scrollingTableViewCell:(PPImageScrollingTableViewCell *)scrollingTableViewCell didSelectImageAtIndexPath:(NSIndexPath*)indexPathOfImage atCategoryRowIndex:(NSInteger)categoryRowIndex
{
}

@end
