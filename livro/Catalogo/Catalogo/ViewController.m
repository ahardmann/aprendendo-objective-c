
#import "ViewController.h"
#import "Produto.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.labelSuccess.hidden = YES;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)increment:(id)sender {
	
	//convertendo sender pra UIStepper
	UIStepper *incrementador = (UIStepper *) sender;
	
	//convertendo valor pra string, componente UiTextFiel, não aceita numero diretamente
	self.qtdField.text = [NSString stringWithFormat:@"%d", (int) incrementador.value];
}

- (IBAction)saveButton:(id)sender {
	
	//Libera o teclado
	[self.nomeField resignFirstResponder];
	
	//instanciando um produto
	//alocando memoria e iniciando o objeto produto
	Produto *p = [[Produto alloc] init];
	
	//preenchendo propriedades com valores do componente da tela
	p.nome = self.nomeField.text;
	p.qtd = [self.qtdField.text intValue];
	
	[self salvaProduto:p];
	[self mostraCatalogo];
	
	//ocultando label
	self.labelSuccess.alpha = 0;
	
	//animacao pra exibir a mensagem de sucesoo, e um tempo depois oculta-la novamente
	[UIView animateWithDuration:1 animations:^{
		self.labelSuccess.hidden = NO;
		self.labelSuccess.alpha = 1;
	} completion:^(BOOL finished) {
		[UIView animateWithDuration:1 delay:2 options:0 animations:^{
			self.labelSuccess.alpha = 1;
		} completion:^(BOOL finished) {
			self.labelSuccess.hidden = YES;
		}];
	}];
}

- (void) salvaProduto: (Produto *) novoProduto{
	if(!catalogo){
		//insanciando uma nova lista, caso não exista uma
		catalogo = [[NSMutableArray alloc] init];
	}
	
	//adicionando produto a lista catalogo
	[catalogo addObject:novoProduto];
}

- (void) mostraCatalogo {
	NSLog(@"Lista Produtos: ");
	
	for(Produto *produto in catalogo){
		//exibindo lista no log
		// %@ usado para qualquer tipo de objeto, incluindo outra NSString
		NSLog(@"Produto: %@ , Quantidade: %d", produto.nome, produto.qtd);
	}
}

@end
