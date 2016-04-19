#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
	int countInt;
	int scoreInt;
	int modeInt;
}
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
- (IBAction)startGame:(id)sender;


@end

