#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
	
	int timeInt;
	int tapInt;
}
@property (weak, nonatomic) IBOutlet UILabel *tieLabel;

@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapButtonOutlet;

- (IBAction)start:(id)sender;

- (IBAction)tap:(id)sender;

@end

