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

- (IBAction)sliderAction:(id)sender {
	self.fahrenheit.text = [[NSString alloc] initWithFormat:@"%4.0f fahrenheit", self.slider.value];
	
	double fahrenheit = self.slider.value;
	//convert fahrenheit on celsius
	double celsius = (fahrenheit - 32) / 1.8;
	
	NSString *result = [[NSString alloc] initWithFormat:@"%4.1f celsius", celsius];
	
	self.celsius.text = result;
}


@end
