#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

	NSTimer *timer;
	int count;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)startButton:(id)sender;
- (IBAction)stopButton:(id)sender;
@end

