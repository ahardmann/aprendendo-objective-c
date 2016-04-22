#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UISearchBar *SearchBar;

@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@end

