
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.Label.text = @"TEXT PROPERTIES";
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)setColour:(id)sender {
	self.Label.textColor = [UIColor redColor];
}

- (IBAction)setSizeFont:(id)sender {
	[self.Label setFont:[UIFont fontWithName:@"Verdana" size:25] ];
}

- (IBAction)setShadow:(id)sender {
	self.Label.layer.shadowColor = [[UIColor blackColor] CGColor];
	
	self.Label.layer.shadowOpacity = 0.5;
	self.Label.layer.shadowRadius = 10.0f;
	self.Label.layer.shadowOffset = CGSizeMake(0, 2);
}

- (IBAction)alignLeft:(id)sender {
	self.Label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)alignRight:(id)sender {
	self.Label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)alignCenter:(id)sender {
	self.Label.textAlignment = NSTextAlignmentCenter;
}
@end
