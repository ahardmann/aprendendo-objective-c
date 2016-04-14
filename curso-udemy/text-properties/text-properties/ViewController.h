
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Label;

- (IBAction)setColour:(id)sender;

- (IBAction)setSizeFont:(id)sender;

- (IBAction)setShadow:(id)sender;

- (IBAction)alignLeft:(id)sender;

- (IBAction)alignRight:(id)sender;

- (IBAction)alignCenter:(id)sender;

@end

