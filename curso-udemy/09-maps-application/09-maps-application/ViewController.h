#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>{
	CLLocationManager *locationManager;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)changeMap:(id)sender;
- (IBAction)locateMe:(id)sender;
- (IBAction)route:(id)sender;
@end

