#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)generateButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)generateWord:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelWord;

- (IBAction)randomPlist:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelPlist;


@end

