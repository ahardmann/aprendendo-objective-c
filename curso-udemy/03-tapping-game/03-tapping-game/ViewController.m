#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	timeInt = 10;
	tapInt = 0;
	
	self.tapButtonOutlet.enabled = NO;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
	if (timeInt == 10) {
		
		tapInt = 0;
		
		self.tapButtonOutlet.enabled = YES;
		
		timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(starCount) userInfo:nil repeats:YES];
	}
}

- (IBAction)tap:(id)sender {
	if (timeInt > 0 ) {
		tapInt += 1;
		
		self.tapLabel.text = [NSString stringWithFormat:@"%i", tapInt];
	}
	
	if (timeInt == 0) {
		timeInt = 10;
		tapInt = 0;
		
		self.tapLabel.text = [NSString stringWithFormat:@"%i", tapInt];
		self.tieLabel.text = [NSString stringWithFormat:@"%i", timeInt];
		
		self.tapButtonOutlet.enabled = NO;
	}
}

- (void) starCount {
	timeInt -= 1;
	
	self.tieLabel.text = [NSString stringWithFormat:@"%i", timeInt];
	
	if (timeInt == 0) {
		[timer invalidate];
	}
}
@end
