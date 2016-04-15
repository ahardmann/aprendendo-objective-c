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

- (IBAction)hide:(id)sender {
	self.segmentControl.hidden = YES;
	self.label.hidden = YES;
}

- (IBAction)reveal:(id)sender {
	self.segmentControl.hidden = NO;
	self.label.hidden = NO;
}
@end
