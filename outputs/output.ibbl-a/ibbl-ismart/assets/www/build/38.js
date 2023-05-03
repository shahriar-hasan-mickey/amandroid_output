webpackJsonp([38],{

/***/ 466:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LocationInner02PageModule", function() { return LocationInner02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__location_inner02__ = __webpack_require__(569);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var LocationInner02PageModule = (function () {
    function LocationInner02PageModule() {
    }
    LocationInner02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner02__["a" /* LocationInner02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__location_inner02__["a" /* LocationInner02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner02__["a" /* LocationInner02Page */]
            ]
        })
    ], LocationInner02PageModule);
    return LocationInner02PageModule;
}());

//# sourceMappingURL=location-inner02.module.js.map

/***/ }),

/***/ 569:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationInner02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ionic_native_geolocation__ = __webpack_require__(261);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_location_location__ = __webpack_require__(253);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var LocationInner02Page = (function () {
    function LocationInner02Page(navCtrl, navParams, config, geolocation, locationService, loadingCtrl) {
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
        this.FindLocation02Action = function (searchingType) {
            this.locationServiceError02 = "";
            var flag = true;
            this.searchingType = searchingType;
            if (this.searchingType == "" || typeof (this.searchingType) == "undefined") {
                this.locationServiceError02 = "Please Select Searching Criteria.";
                flag = false;
                return;
            }
            if (flag) {
                if (this.searchingType == 1) {
                    this.navCtrl.push('LocationInner03Page', {
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
                    this.navCtrl.push('LocationInner04Page', {
                        'type': this.type,
                        'searchingType': this.searchingType,
                        'currentLocLat': this.currentLocLat,
                        'currentLocLong': this.currentLocLong,
                        'zoomVal': this.zoomVal,
                        'locationDetails': JSON.stringify(this.sortedDistanceList)
                    });
                    loading.dismiss();
                }
            }
        };
        this.type = this.navParams.get("type");
        this.locationDetails = this.navParams.get("locationDetails");
        this.zoomVal = this.config.mapZoomingMultiple;
        this.noOfLocationNearestMe = this.config.noOfLocationNearestMe;
        this.getMyCurrentPosition();
    }
    LocationInner02Page.prototype.getMyCurrentPosition = function () {
        var _this = this;
        this.geolocation.getCurrentPosition().then(function (resp) {
            _this.currentLocLat = resp.coords.latitude;
            _this.currentLocLong = resp.coords.longitude;
        }).catch(function (error) {
            console.log('Error getting location', error);
        });
    };
    LocationInner02Page.prototype.MakeSortedList = function (curLat, curLong, locationList) {
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
    LocationInner02Page.prototype.ionViewDidLoad = function () {
        console.log('ionViewDidLoad LocationInner02Page');
    };
    LocationInner02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-location-inner02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner02\location-inner02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{type}} Location Map</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="locationServiceError02">{{locationServiceError02}}\n  </div>\n\n\n  <ion-list>\n    <ion-item>\n      <div class="row regular-font">\n        <div class="col"><b>{{type}} Nearest Me</b></div>\n      </div>\n      <div class="row ">\n        <div class="col box_shade" (click)="FindLocation02Action(\'2\')">\n          <img src="assets/imgs/location/aroundMe.jpg"  width="100%"/>\n        </div>\n      </div>\n    </ion-item>\n\n\n    <ion-item>\n      <div class="row regular-font">\n        <div class="col"><b>Specific {{type}}</b></div>\n      </div>\n      <div class="row ">\n        <div  class="col box_shade" (click)="FindLocation02Action(\'1\')">\n          <img src="assets/imgs/location/specific.jpg" width="100%"/>\n        </div>\n      </div>\n    </ion-item>\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner02\location-inner02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3__ionic_native_geolocation__["a" /* Geolocation */],
            __WEBPACK_IMPORTED_MODULE_4__providers_location_location__["a" /* LocationProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["h" /* LoadingController */]])
    ], LocationInner02Page);
    return LocationInner02Page;
}());

//# sourceMappingURL=location-inner02.js.map

/***/ })

});
//# sourceMappingURL=38.js.map