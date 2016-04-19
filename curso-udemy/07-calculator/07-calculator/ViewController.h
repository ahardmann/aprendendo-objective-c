#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	int currentOperation;
	
	float result;
	float currentNumber;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)numberButton:(id)sender;
- (IBAction)cancel:(id)sender;

- (IBAction)operationButton:(id)sender;


@end

