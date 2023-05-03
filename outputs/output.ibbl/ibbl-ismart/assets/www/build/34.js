webpackJsonp([34],{

/***/ 468:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LocationOuter02PageModule", function() { return LocationOuter02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__location_outer02__ = __webpack_require__(571);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var LocationOuter02PageModule = (function () {
    function LocationOuter02PageModule() {
    }
    LocationOuter02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__location_outer02__["a" /* LocationOuter02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__location_outer02__["a" /* LocationOuter02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__location_outer02__["a" /* LocationOuter02Page */]
            ]
        })
    ], LocationOuter02PageModule);
    return LocationOuter02PageModule;
}());

//# sourceMappingURL=location-outer02.module.js.map

/***/ }),

/***/ 571:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationOuter02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_alert_alert__ = __webpack_require__(251);
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





var LocationOuter02Page = (function () {
    function LocationOuter02Page(navCtrl, navParams, config, alertProvider, locationService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.config = config;
        this.alertProvider = alertProvider;
        this.locationService = locationService;
        this.filterData = [];
        this.setFilteredItems = function () {
            var _this = this;
            this.filterData = this.locationDetails.filter(function (location) {
                return ((location.name.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1) ||
                    (location.address.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1));
            });
        };
        this.showSingleLocation = function (listItem) {
            var flag = true;
            var latLong = "";
            if (listItem.longitude == "" || listItem.longitude == null || listItem.longitude == "0" || typeof (listItem.longitude) == "undefined") {
                flag = false;
                latLong = "Longitude";
            }
            if (listItem.latitude == "" || listItem.latitude == null || listItem.latitude == "0" || typeof (listItem.latitude) == "undefined") {
                flag = false;
                latLong = "Latitude";
            }
            if (flag) {
                listItem["dist"] = this.locationService.getDistanceFromLatLonInKm(this.currentLocLat, this.currentLocLong, listItem.latitude, listItem.longitude);
                ;
                var arrayText = [];
                arrayText.push(listItem);
                this.navCtrl.push('LocationOuter03Page', {
                    'type': this.type,
                    'searchingType': this.searchingType,
                    'currentLocLat': this.currentLocLat,
                    'currentLocLong': this.currentLocLong,
                    'zoomVal': this.zoomVal,
                    'locationDetails': JSON.stringify(arrayText)
                });
            }
            else {
                var alertHead = "Alert !";
                var message = "Invalid " + latLong + " value. Please Update it";
                this.alertProvider.showAlert(alertHead, message, 20000);
            }
        };
        this.type = this.navParams.get("type");
        this.searchingType = this.navParams.get("searchingType");
        this.currentLocLat = this.navParams.get("currentLocLat");
        this.currentLocLong = this.navParams.get("currentLocLong");
        this.locationDetails = this.navParams.get("locationDetails");
        this.locationDetails = JSON.parse(this.locationDetails);
        this.filterData = this.locationDetails;
        this.zoomVal = this.config.mapZoomingSingle;
    }
    LocationOuter02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad LocationOuter02Page');
    };
    LocationOuter02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-location-outer02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-outer02\location-outer02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{type}} Location Map</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <ion-grid>\n    <ion-row>\n      <ion-col>\n        <ion-searchbar\n          [(ngModel)]="searchTerm" animated="true" placeholder="Search {{type}}"\n          [showCancelButton]="shouldShowCancel" float="true"\n          (ionInput)="setFilteredItems()"\n          (ionCancel)="onCancel($event)">\n        </ion-searchbar>\n      </ion-col>\n    </ion-row>\n    <ion-row>\n      <ion-col>\n        <ion-scroll style="width:100%;height:100vh" scrollY="true">\n          <ion-list scroll="true">\n            <ion-item *ngFor="let location of filterData; let i=index " (click)="showSingleLocation(location)">\n              <div class="item-text-wrap regular-font"><span><b>Serial : </b></span><span\n                class=" regular-font">{{i+1}}</span>\n              </div>\n              <div class="item-text-wrap regular-font"><span><b>Name : </b></span><span class=" regular-font">{{location.name}}</span>\n              </div>\n              <div class="item-text-wrap regular-font"><span><b>Address : </b></span><span\n                class="regular-font">{{location.address}}</span>\n              </div>\n            </ion-item>\n          </ion-list>\n        </ion-scroll>\n      </ion-col>\n    </ion-row>\n\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-outer02\location-outer02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_alert_alert__["a" /* AlertProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_location_location__["a" /* LocationProvider */]])
    ], LocationOuter02Page);
    return LocationOuter02Page;
}());

//# sourceMappingURL=location-outer02.js.map

/***/ })

});
//# sourceMappingURL=34.js.map