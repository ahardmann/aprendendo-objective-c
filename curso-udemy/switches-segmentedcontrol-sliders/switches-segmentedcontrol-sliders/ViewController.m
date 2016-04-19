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

- (IBAction)theSwitchAction:(id)sender {
	
	if (self.switchComp.on) {
		self.labelSwitch.text = @"switch on";
		self.button1.enabled = YES;
	}else{
		self.labelSwitch.text = @"switch off";
		self.button1.enabled = NO;
	}
	
}

- (IBAction)segmentButton:(id)sender {
	
	if (self.segmentControl.selectedSegmentIndex == 0) {
		self.labelSegment.text = @"segment 1";
	}
	if (self.segmentControl.selectedSegmentIndex == 1) {
		self.labelSegment.text = @"segment 2";
	}
	if (self.segmentControl.selectedSegmentIndex == 2) {
		self.labelSegment.text = @"segment 3";
	}
	if (self.segmentControl.selectedSegmentIndex == 3) {
		self.labelSegment.text = @"segment 4";
	}
	
}

- (IBAction)sliderAction:(id)sender {
	
	[self.labelSlider setFont:[UIFont fontWithName:@"Verdana" size:self.slider.value]];
	
}

@end
