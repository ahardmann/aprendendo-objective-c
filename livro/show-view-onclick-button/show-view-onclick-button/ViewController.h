
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)HideButton:(id)sender;

- (IBAction)showButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *viewToHideShow;

@end

