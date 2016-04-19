#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)generateButton:(id)sender {
	
	int randomNumber = arc4random() % 100;
	self.label.text = [[NSString alloc] initWithFormat: @"%d", randomNumber];
}

- (IBAction)generateWord:(id)sender {
	int randomWord = arc4random() %5;
	
	switch (randomWord) {
		case 0:
			self.labelWord.text = @"Red";
			break;
		
		case 1:
			self.labelWord.text = @"Yellow";
			break;
			
		case 2:
			self.labelWord.text = @"Blue";
			break;
			
		case 3:
			self.labelWord.text = @"Black";
			break;
		
		case 4:
			self.labelWord.text = @"Green";
			break;
		
		case 5:
			self.labelWord.text = @"White";
			break;
		
		default:
			break;
	}
}

- (IBAction)randomPlist:(id)sender {
	//selecionar um dos itens do Lists.plist
	
	NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"Lists" ofType:@"plist"];
	NSDictionary *wordDic = [[NSDictionary alloc] initWithContentsOfFile:fileContents];
	
	NSMutableArray *items = [wordDic valueForKey:@"List"];
	int randomGem = arc4random() % [items count];
	
	NSString *word = [items objectAtIndex:randomGem];
	[self.labelPlist setText:[[NSString alloc] initWithFormat:@"%@", word]];
}


@end
