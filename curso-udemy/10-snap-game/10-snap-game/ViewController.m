#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	scoreInt = 0;
	timerInt = 20;
	
	self.snapOutlet.enabled = NO;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender {
	if (scoreInt == 0) {
		timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerUpadate) userInfo:nil repeats:YES];
		self.snapOutlet.enabled = YES;
		self.startOutlet.enabled = NO;
	}
	
	if (timerInt == 0) {
		timerInt = 20;
		scoreInt = 0;
		self.timeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
		self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
		
		[self.startOutlet setTitle:@"Start" forState:UIControlStateNormal];

	}
}

- (void) timerUpadate{
	timerInt -= 1;
	
	self.timeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
	
	[self randomImage];
	
	if (timerInt == 0) {
		[timer invalidate];
		
		self.snapOutlet.enabled = NO;
		self.startOutlet.enabled = YES;
		
		[self.startOutlet setTitle:@"Restart" forState:UIControlStateNormal];
	}
}

-(void) randomImage{
	int randomOne = arc4random() %6;
	switch (randomOne) {
		case 0:
			self.imgView1.image = [UIImage imageNamed:@"smw.png"];
			break;
		case 1:
			self.imgView1.image = [UIImage imageNamed:@"smw1.png"];
			break;
		case 2:
			self.imgView1.image = [UIImage imageNamed:@"smw2.png"];
			break;
		case 3:
			self.imgView1.image = [UIImage imageNamed:@"smw3.png"];
			break;
		case 4:
			self.imgView1.image = [UIImage imageNamed:@"smw4.png"];
			break;
		case 5:
			self.imgView1.image = [UIImage imageNamed:@"smw5.png"];
			break;
			
		default:
			break;
	}
	
	
	int randomTwo = arc4random() %6;
	switch (randomTwo) {
		case 0:
			self.imgView2.image = [UIImage imageNamed:@"smw.png"];
			break;
		case 1:
			self.imgView2.image = [UIImage imageNamed:@"smw1.png"];
			break;
		case 2:
			self.imgView2.image = [UIImage imageNamed:@"smw2.png"];
			break;
		case 3:
			self.imgView2.image = [UIImage imageNamed:@"smw3.png"];
			break;
		case 4:
			self.imgView2.image = [UIImage imageNamed:@"smw4.png"];
			break;
		case 5:
			self.imgView2.image = [UIImage imageNamed:@"smw5.png"];
			break;
			
		default:
			break;
	}
}

- (IBAction)snapButton:(id)sender {
	
	if ([self.imgView1.image isEqual:self.imgView2.image]) {
		scoreInt += 1;
		self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
	}else{
		scoreInt -= 1;
		self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
	}
}
@end
