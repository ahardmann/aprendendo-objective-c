#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
	NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indiicator;

@end

