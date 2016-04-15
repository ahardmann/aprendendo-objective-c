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

- (IBAction)disable:(id)sender {
	self.buttonOutlet.enabled = NO;
}

- (IBAction)enable:(id)sender {
	self.buttonOutlet.enabled = YES;
}
@end
