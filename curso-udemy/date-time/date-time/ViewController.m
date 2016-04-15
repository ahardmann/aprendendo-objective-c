#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

- (void) updateTimer{
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"hh:mm:ss"];
	self.timeLabel.text = [formatter stringFromDate:[NSDate date]];
	
	NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
	[formatter2 setDateFormat:@"dd/MM/YYYY"];
	self.dateLabel.text = [formatter2 stringFromDate:[NSDate date]];
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
