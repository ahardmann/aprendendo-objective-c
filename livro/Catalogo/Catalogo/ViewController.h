
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
	//equivalente a um ArrayList "mutavel", NSArray seria "imutavel"
	NSMutableArray *catalogo;
}

@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *qtdField;
@property (weak, nonatomic) IBOutlet UILabel *labelSuccess;
- (IBAction)increment:(id)sender;
- (IBAction)saveButton:(id)sender;

@end

