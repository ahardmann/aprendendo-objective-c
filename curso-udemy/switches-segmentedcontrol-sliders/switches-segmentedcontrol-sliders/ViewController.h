#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *switchComp;

@property (weak, nonatomic) IBOutlet UILabel *labelSwitch;
@property (weak, nonatomic) IBOutlet UIButton *button1;
- (IBAction)theSwitchAction:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *labelSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)segmentButton:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *labelSlider;
- (IBAction)sliderAction:(id)sender;


@end
