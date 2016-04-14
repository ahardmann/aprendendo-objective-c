
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//adding font on support files and create a new key on info.plist
	//that key is "Fonts provided by application", and her value is the name of font file
	self.Label.font = [UIFont fontWithName:@"Sophia" size:50];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
