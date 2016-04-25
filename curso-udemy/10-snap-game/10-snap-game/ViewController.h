#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
	int timerInt;
	
	NSTimer *imgUpdate;
	int scoreInt;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (weak, nonatomic) IBOutlet UIButton *startOutlet;
@property (weak, nonatomic) IBOutlet UIButton *snapOutlet;

- (IBAction)startButton:(id)sender;
- (IBAction)snapButton:(id)sender;

@end

