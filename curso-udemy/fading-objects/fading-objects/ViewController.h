#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)fadeIn:(id)sender;
- (IBAction)fadeOut:(id)sender;

@end

