#import "ViewController.h"
#import "MapPin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.mapView.delegate = self;
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	
	MKCoordinateRegion region = {{0.0, 0.0}, {0.0,0.0}};
	
	//Farol da barra - salvador latitude,longitude
	region.center.latitude = -13.0103315;
	region.center.longitude = -38.532926799999984;
	region.span.latitudeDelta = 0.01f;
	region.span.longitudeDelta = 0.01f;
	[self.mapView setRegion:region animated:YES];
	
	//pin
	MapPin *ann = [[MapPin alloc] init];
	ann.title = @"Farol da Barra";
	ann.subtitle = @"Salvador";
	ann.coordinate = region.center;
	
	[self.mapView addAnnotation:ann];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)changeMap:(id)sender {
	if (self.segmentControl.selectedSegmentIndex == 0) {
		self.mapView.mapType = MKMapTypeStandard;
	}
	if (self.segmentControl.selectedSegmentIndex == 1) {
		self.mapView.mapType = MKMapTypeSatellite;
	}
	if (self.segmentControl.selectedSegmentIndex == 2) {
		self.mapView.mapType = MKMapTypeHybrid;
	}
}

- (IBAction)locateMe:(id)sender {
	[locationManager requestWhenInUseAuthorization];
	[locationManager requestAlwaysAuthorization];
	
	[locationManager startUpdatingLocation];
	
	self.mapView.showsUserLocation = YES;
}

- (IBAction)route:(id)sender {
	NSString *urlstring = @"http://maps.apple.com/maps?daddr=-13.0103315,-38.532926799999984";
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlstring]];
}
@end
