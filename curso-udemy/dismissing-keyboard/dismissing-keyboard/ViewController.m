
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.label.alpha = 0;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
	self.label.alpha = 1;
	self.label.text = self.textField.text;
	[self.textField resignFirstResponder];
}

//action for action done on keyboard
- (IBAction)textDone:(id)sender {
	self.label.alpha = 1;
	self.label.text = self.textField.text;
	[self resignFirstResponder];
}
@end
