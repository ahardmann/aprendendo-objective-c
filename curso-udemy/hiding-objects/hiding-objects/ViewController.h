#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)hide:(id)sender;

- (IBAction)reveal:(id)sender;
@end

