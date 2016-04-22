#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
	[self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.SearchBar.text]]]];
	
	[self.webview addSubview:self.indicator];
	[self.SearchBar resignFirstResponder];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

- (void) loading{
	if (!self.webview.loading) {
		[self.indicator stopAnimating];
	}else{
		[self.indicator startAnimating];
	}
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
	self.SearchBar.text = nil;
	[self.SearchBar resignFirstResponder];
}

@end
