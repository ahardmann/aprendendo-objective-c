#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonOutlet;
- (IBAction)disable:(id)sender;
- (IBAction)enable:(id)sender;

@end

