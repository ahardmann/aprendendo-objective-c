#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

