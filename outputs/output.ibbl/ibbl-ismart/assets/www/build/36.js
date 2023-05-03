webpackJsonp([36],{

/***/ 467:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LocationInner04PageModule", function() { return LocationInner04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__location_inner04__ = __webpack_require__(570);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var LocationInner04PageModule = (function () {
    function LocationInner04PageModule() {
    }
    LocationInner04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner04__["a" /* LocationInner04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__location_inner04__["a" /* LocationInner04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner04__["a" /* LocationInner04Page */]
            ]
        })
    ], LocationInner04PageModule);
    return LocationInner04PageModule;
}());

//# sourceMappingURL=location-inner04.module.js.map

/***/ }),

/***/ 570:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationInner04Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ionic_native_google_maps__ = __webpack_require__(262);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var LocationInner04Page = (function () {
    function LocationInner04Page(navParams, gaProvider, toastCtrl) {
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.toastCtrl = toastCtrl;
        this.currentLocLat = 23.7265562; //Islami Bank head office lat  value
        this.currentLocLong = 90.4185879; //Islami Bank head office long value
        this.showToastMessage = function () {
            var toast = this.toastCtrl.create({
                message: 'Please zoom in and zoom out map according to your requirement. Click on pin icon for details.',
                duration: 7000,
                showCloseButton: true,
                closeButtonText: 'OK',
                dismissOnPageChange: false
            });
            toast.present();
        };
        this.atmBooths = JSON.parse(this.navParams.get("locationDetails"));
        this.zoomVal = JSON.parse(this.navParams.get("zoomVal"));
        this.type = this.navParams.get("type");
        this.searchingType = this.navParams.get("searchingType");
        this.currentLocLat = this.navParams.get("currentLocLat");
        this.currentLocLong = this.navParams.get("currentLocLong");
        if (this.searchingType == "1") {
            this.loadMap(Number.parseFloat(this.atmBooths[0].latitude), Number.parseFloat(this.atmBooths[0].longitude));
        }
        else {
            this.loadMap(this.currentLocLat, this.currentLocLong);
        }
        this.showToastMessage();
    }
    LocationInner04Page.prototype.loadMap = function (lat, long) {
        var mapOptions = {
            camera: {
                target: {
                    lat: lat,
                    lng: long
                },
                zoom: this.zoomVal,
                tilt: 30
            }
        };
        this.map = __WEBPACK_IMPORTED_MODULE_2__ionic_native_google_maps__["a" /* GoogleMaps */].create('map', mapOptions);
        //2 means location nearest me
        if (this.searchingType == "2") {
            this.createSingleMarker(lat, long);
            this.createMultipleMarker();
        }
        else {
            this.createMultipleMarker();
        }
    };
    LocationInner04Page.prototype.createSingleMarker = function (lat, long) {
        var title = "<div style='padding : 7px;text-align: center' class='regular-font'><b>I am here</b>";
        var imageUrl = "assets/imgs/pin33232.png";
        this.setMarketText(title, imageUrl, lat, long);
    };
    LocationInner04Page.prototype.createMultipleMarker = function () {
        for (var _i = 0, _a = this.atmBooths; _i < _a.length; _i++) {
            var each = _a[_i];
            var title = "<div style='padding : 7px' class='regular-font'><b>Name : </b>" + each.name + "</br><b> Address : </b>" + each.address + "</br> <b>Distance : </b>" + each.dist + " KM away from current position.</div>";
            var imageUrl = "assets/imgs/blue4848.png";
            this.setMarketText(title, imageUrl, each.latitude, each.longitude);
        }
    };
    LocationInner04Page.prototype.setMarketText = function (title, image, lat, long) {
        var htmlInfoWindow = new __WEBPACK_IMPORTED_MODULE_2__ionic_native_google_maps__["c" /* HtmlInfoWindow */]();
        var frame = document.createElement('div');
        frame.innerHTML = [
            title
        ].join("");
        htmlInfoWindow.setContent(frame, {
            width: "220px"
        });
        var marker = this.map.addMarkerSync({
            icon: {
                url: image
            },
            animation: 'DROP',
            position: {
                lat: lat,
                lng: long,
            },
            draggable: true,
            disableAutoPan: true
        });
        marker.on(__WEBPACK_IMPORTED_MODULE_2__ionic_native_google_maps__["b" /* GoogleMapsEvent */].MARKER_CLICK).subscribe(function () {
            htmlInfoWindow.open(marker);
        });
    };
    LocationInner04Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad LocationInner01Page');
        this.gaProvider.startTrackerWithId("Location access after login");
    };
    LocationInner04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-location-inner04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner04\location-inner04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{type}} Location Map</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content>\n  <div #map id="map"></div>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner04\location-inner04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_3__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["n" /* ToastController */]])
    ], LocationInner04Page);
    return LocationInner04Page;
}());

//# sourceMappingURL=location-inner04.js.map

/***/ })

});
//# sourceMappingURL=36.js.map