webpackJsonp([35],{

/***/ 470:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LocationOuter01PageModule", function() { return LocationOuter01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__location_outer01__ = __webpack_require__(573);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var LocationOuter01PageModule = (function () {
    function LocationOuter01PageModule() {
    }
    LocationOuter01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__location_outer01__["a" /* LocationOuter01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__location_outer01__["a" /* LocationOuter01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__location_outer01__["a" /* LocationOuter01Page */]
            ]
        })
    ], LocationOuter01PageModule);
    return LocationOuter01PageModule;
}());

//# sourceMappingURL=location-outer01.module.js.map

/***/ }),

/***/ 573:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationOuter01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_location_location__ = __webpack_require__(253);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__ionic_native_geolocation__ = __webpack_require__(261);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var LocationOuter01Page = (function () {
    function LocationOuter01Page(navCtrl, navParams, config, geolocation, locationService, loadingCtrl) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.config = config;
        this.geolocation = geolocation;
        this.locationService = locationService;
        this.loadingCtrl = loadingCtrl;
        this.currentLocLat = 23.7265562; //Islami Bank head office lat  value
        this.currentLocLong = 90.4185879; //Islami Bank head office long value
        this.sortedDistanceList = [];
        this.noOfLocationNearestMe = 0;
        this.getMyCurrentPosition = function () {
            var _this = this;
            this.geolocation.getCurrentPosition().then(function (resp) {
                _this.currentLocLat = resp.coords.latitude;
                _this.currentLocLong = resp.coords.longitude;
            }).catch(function (error) {
                console.log('Error getting location', error);
            });
        };
        this.FindLocation02Action = function (sType) {
            this.searchingType = sType;
            if (this.searchingType == 1) {
                this.navCtrl.push('LocationOuter02Page', {
                    'type': this.type,
                    'searchingType': this.searchingType,
                    'currentLocLat': this.currentLocLat,
                    'currentLocLong': this.currentLocLong,
                    'locationDetails': this.locationDetails
                });
            }
            if (this.searchingType == 2) {
                var loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.config.getLoadingSpinner()
                });
                this.MakeSortedList(this.currentLocLat, this.currentLocLong, JSON.parse(this.locationDetails));
                this.navCtrl.push('LocationOuter03Page', {
                    'type': this.type,
                    'searchingType': this.searchingType,
                    'currentLocLat': this.currentLocLat,
                    'currentLocLong': this.currentLocLong,
                    'zoomVal': this.zoomVal,
                    'locationDetails': JSON.stringify(this.sortedDistanceList)
                });
                loading.dismiss();
            }
        };
        this.locationOuterError01 = "";
        this.type = this.navParams.get("type");
        this.locationDetails = this.navParams.get("locationDetails");
        this.zoomVal = this.config.mapZoomingMultiple;
        this.noOfLocationNearestMe = this.config.noOfLocationNearestMe;
        this.getMyCurrentPosition();
    }
    LocationOuter01Page.prototype.MakeSortedList = function (curLat, curLong, locationList) {
        var newDistanceList = [];
        for (var _i = 0, locationList_1 = locationList; _i < locationList_1.length; _i++) {
            var result = locationList_1[_i];
            var lat = result.latitude;
            var long = result.longitude;
            var distance = this.locationService.getDistanceFromLatLonInKm(curLat, curLong, lat, long);
            result["dist"] = distance;
            newDistanceList.push(result);
        }
        newDistanceList.sort(function (a, b) { return Number.parseFloat((a.dist)) - Number.parseFloat(b.dist); });
        var loopVal = 0;
        for (var _a = 0, newDistanceList_1 = newDistanceList; _a < newDistanceList_1.length; _a++) {
            var loc = newDistanceList_1[_a];
            if (loopVal < this.noOfLocationNearestMe) {
                this.sortedDistanceList.push(loc);
            }
            loopVal++;
        }
    };
    LocationOuter01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad LocationOuter01Page');
    };
    LocationOuter01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-location-outer01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-outer01\location-outer01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{type}} Location Map</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="locationOuterError01">{{locationOuterError01}}\n  </div>\n\n  <ion-list>\n    <ion-item>\n      <div class="row">\n        <div class="col"><strong>{{type}} Nearest Me</strong></div>\n      </div>\n      <div class="row ">\n        <div class="col box_shade" (click)="FindLocation02Action(\'2\')">\n          <img src="assets/imgs/location/aroundMe.jpg"  width="100%"/>\n        </div>\n      </div>\n    </ion-item>\n\n\n    <ion-item>\n      <div class="row">\n        <div class="col "><strong>Specific {{type}}</strong></div>\n      </div>\n      <div class="row ">\n        <div  class="col box_shade" (click)="FindLocation02Action(\'1\')">\n          <img src="assets/imgs/location/specific.jpg" width="100%"/>\n        </div>\n      </div>\n    </ion-item>\n  </ion-list>\n\n</ion-content>\n\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-outer01\location-outer01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_4__ionic_native_geolocation__["a" /* Geolocation */],
            __WEBPACK_IMPORTED_MODULE_3__providers_location_location__["a" /* LocationProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["h" /* LoadingController */]])
    ], LocationOuter01Page);
    return LocationOuter01Page;
}());

//# sourceMappingURL=location-outer01.js.map

/***/ })

});
//# sourceMappingURL=35.js.map