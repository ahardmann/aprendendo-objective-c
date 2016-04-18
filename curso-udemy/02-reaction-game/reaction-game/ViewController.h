#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
	int countTimer;
	
	NSTimer *score;
	int coutScore;
}

@property (weak, nonatomic) IBOutlet UILabel *readyLabel;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)sender:(id)sender;

@end

