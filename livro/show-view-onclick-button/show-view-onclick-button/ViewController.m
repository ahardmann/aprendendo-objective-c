
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

- (IBAction)HideButton:(id)sender {
	[UIView beginAnimations:nil context:nil];
	self.viewToHideShow.alpha = 0;
	[UIView commitAnimations];
}

- (IBAction)showButton:(id)sender {
	[UIView beginAnimations:nil context:nil];
	self.viewToHideShow.alpha = 1;
	[UIView commitAnimations];
}
@end
