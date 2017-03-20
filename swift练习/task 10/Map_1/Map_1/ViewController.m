//
//  ViewController.m
//  Map_1
//
//  Created by 张皓 on 16/7/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"
#import "MyAnnotation.h"
#import "MyannotationView.h"
@interface ViewController ()<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *address;


@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, strong) CLLocationManager *lManager;

@end

@implementation ViewController

//搜索
- (IBAction)go:(id)sender {
    
    CLGeocoder *coder = [[CLGeocoder alloc] init];
    
    //反地理编码
    [coder geocodeAddressString:self.address.text completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        for (CLPlacemark *mark in placemarks) {
            NSDictionary *dict = mark.addressDictionary;
            NSLog(@"查找成功, 地址是: %@",dict[@"Name"]);
            
            
            //设置中心
            [self.mapView setCenterCoordinate: mark.location.coordinate];
            
            //设置地图显示区域
            [self.mapView setRegion:MKCoordinateRegionMakeWithDistance(mark.location.coordinate, 100, 100)];
            
            //定义一个大头针
            MyAnnotation *annotation = [[MyAnnotation alloc] init];
            annotation.coordinate = mark.location.coordinate;
            annotation.title = dict[@"Name"];
            annotation.subtitle = @"This is subtitle";
            
            //添加大头针
            [_mapView addAnnotation:annotation];
            
        }
    }];
    
    //回收键盘
    [self.address resignFirstResponder];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    
    
    if (status == kCLAuthorizationStatusNotDetermined) {
        [self.lManager requestAlwaysAuthorization];
        
    }

    self.mapView.userTrackingMode = MKUserTrackingModeFollow;
}


- (MKMapView *)mapView {
    if (!_mapView) {
        
        CGRect rect = self.view.bounds;
        rect.origin.y = 100;
        rect.size.height -=100;
        _mapView = [[MKMapView alloc] initWithFrame:rect];
        _mapView.delegate = self;
        [self.view addSubview:_mapView];
    }
    
    return _mapView;
}
- (CLLocationManager *)lManager {
    if (!_lManager) {
        _lManager = [[CLLocationManager alloc] init];
    }
    
    return _lManager;
}

//定位位置更新
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    CLLocation *location = userLocation.location;
    CLGeocoder *coder = [[CLGeocoder alloc] init];
    [coder reverseGeocodeLocation:location completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        CLPlacemark *mark = [placemarks lastObject];
        NSDictionary *dict = mark.addressDictionary;
        NSLog(@"Done, 地址是: %@", dict[@"Name"]);
    }];
    
    
}

//大头针
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    MyannotationView *annView = [[MyannotationView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
//    annView.backgroundColor = [UIColor redColor];
    
    return annView;
}
    

@end






