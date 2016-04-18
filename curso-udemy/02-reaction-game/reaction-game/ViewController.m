#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//label score = 0
	coutScore = 0;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)sender:(id)sender {
	if(coutScore == 0){
		countTimer = 3;
		
		//atribuindo valores das variaveis int a label
		self.readyLabel.text = [NSString stringWithFormat:@"%i", countTimer];
		self.timerLabel.text = [NSString stringWithFormat:@"%i", coutScore];
		
		//timer de 1seg usando o metodo startCounter como selector
		timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
		
		//alterando nome do butao pra stop
		[sender setTitle:@"Stop" forState:UIControlStateNormal];
	}else{
		//parando score timer;
		[score invalidate];
	}
	
	if(countTimer == 0){
		//quando o timer estiver  = 0, score = 0 e altera nome do botao pra restart
		coutScore = 0;
		[sender setTitle:@"Restart" forState:UIControlStateNormal];
	}
}

- (void) startCounter{
	
	countTimer -= 1;
	self.readyLabel.text = [NSString stringWithFormat:@"%i", countTimer];
	
	if(countTimer == 0){
		//quando o timer estiver no 0, para ele.
		[timer invalidate];
		
		//inicia o score
		coutScore = 0;
		self.timerLabel.text = [NSString stringWithFormat:@"%i", coutScore];
		
		//timer do score de 0.001, com scoreCounter de selector
		score = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
	}
}

- (void) scoreCounter{
	//incrementando score
	coutScore += 1;
	self.timerLabel.text = [NSString stringWithFormat:@"%i", coutScore];
}

@end
