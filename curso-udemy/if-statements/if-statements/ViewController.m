#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)okButton:(id)sender {
	
	if ([self.label1.text isEqualToString:@"Label1"] || [self.label1.text isEqualToString:@""]){
		self.label1.text = self.textField.text;
		[self showLabel];
	}else {
		[self showLabel];
	}
}

- (IBAction)dissmissKeyboard:(id)sender {
	self.label1.text = self.textField.text;
	[self resignFirstResponder];
}

- (NSString *) showLabel{
	if([self.label1.text isEqualToString:@"teste"]){
		return self.label2.text = @"teste ok!";
	}else {
		return self.label2.text = @"teste fail!";
	}
}
@end
