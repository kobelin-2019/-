#import "ScrollTableViewController.h"
#import "TView.h"


@interface ScrollTableViewController ()

@end

@implementation ScrollTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TView *tv = [[TView alloc] initWithFrame:self.view.frame];
    self.view = tv;
}
@end
