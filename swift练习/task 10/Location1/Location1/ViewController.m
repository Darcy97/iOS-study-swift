//
//  ViewController.m
//  Location1
//
//  Created by 张皓 on 16/7/8.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import "ViewController.h"
#import "CoreLocation/CoreLocation.h"


@interface ViewController () <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *manager1;

@property (nonatomic, strong) CLGeocoder *coder1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    
    
    if (status == kCLAuthorizationStatusNotDetermined) {
        //发送授权请求
        [self.manager1 requestAlwaysAuthorization];
        
    } else if (status == kCLAuthorizationStatusAuthorizedAlways) {
        
        self.manager1.delegate = self;
        
        [self.manager1 startUpdatingLocation];
    } else {
        NSLog(@"lose");
    }
    
}

- (CLLocationManager *)manager1 {
    if (_manager1 == nil) {
        _manager1 = [[CLLocationManager alloc] init];
    }
    
    return _manager1;
}

- (CLGeocoder *)coder1 {
    if (_coder1 == nil) {
        _coder1 = [[CLGeocoder alloc] init];
    }
    
    return _coder1;
}


//定位成功回调函数
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
    //取出数据
    CLLocation *location1 = [locations lastObject];
    
    
    NSLog(@"定位成功: 经度 = %f, 纬度 = %f, 高度 = %f, 速度 = %f, 时间 = %@", location1.coordinate.longitude, location1.coordinate.latitude, location1.altitude, location1.course, location1.timestamp);
    
    //反地理编码
    [self.coder1 reverseGeocodeLocation:location1 completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        if (error == nil) {
            CLPlacemark *mark = [placemarks firstObject];
            
            NSDictionary *dict = mark.addressDictionary;
            
            NSLog(@"成功");
        } else {
            NSLog(@"获取失败");
        }
    }];
    
    //停止定位
    [self.manager1 stopUpdatingLocation];
}


- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
    
    NSLog(@"fail");
}


@end
