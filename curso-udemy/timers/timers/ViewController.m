#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.label.alpha = 0;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender {
	self.label.alpha = 1;
	count = 0;
	
	self.label.text = [NSString stringWithFormat:@"%i", count];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countTimer) userInfo:nil repeats:YES];
}

- (void) countTimer{
	count +=1;
	self.label.text = [NSString stringWithFormat:@"%i", count];
}

- (IBAction)stopButton:(id)sender {
	[timer invalidate];
}

@end
