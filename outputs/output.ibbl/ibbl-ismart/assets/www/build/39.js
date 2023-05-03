webpackJsonp([39],{

/***/ 464:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "LocationInner01PageModule", function() { return LocationInner01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__location_inner01__ = __webpack_require__(567);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var LocationInner01PageModule = (function () {
    function LocationInner01PageModule() {
    }
    LocationInner01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner01__["a" /* LocationInner01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__location_inner01__["a" /* LocationInner01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__location_inner01__["a" /* LocationInner01Page */]
            ]
        })
    ], LocationInner01PageModule);
    return LocationInner01PageModule;
}());

//# sourceMappingURL=location-inner01.module.js.map

/***/ }),

/***/ 567:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationInner01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ionic_native_diagnostic__ = __webpack_require__(68);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_location_location__ = __webpack_require__(253);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var LocationInner01Page = (function () {
    function LocationInner01Page(navCtrl, diagnostic, navParams, configLoader, alertCtrl, locationService, cryptoUtil) {
        this.navCtrl = navCtrl;
        this.diagnostic = diagnostic;
        this.navParams = navParams;
        this.configLoader = configLoader;
        this.alertCtrl = alertCtrl;
        this.locationService = locationService;
        this.cryptoUtil = cryptoUtil;
        this.locationServiceError01 = "";
        this.FindLocation01Action = function (locType01) {
            var _this = this;
            this.locationServiceError01 = "";
            this.locationType = locType01;
            if (this.locationType == "" || typeof (this.locationType) == "undefined") {
                this.locationServiceError01 = "Please Select Location Type";
                return;
            }
            this.type = this.locationService.getLocationDescription(this.locationType);
            var encLocType = this.cryptoUtil.getEncryptVal(this.locationType);
            //Check GPS Enable Here
            if (this.gpsEnableCheck) {
                this.diagnostic.isLocationEnabled()
                    .then(function (state) {
                    if (state == true) {
                        _this.locationService.getActiveLocationByType(encLocType)
                            .then(function (data) {
                            _this.locationFetchComplete(data);
                        });
                    }
                    else {
                        _this.showAlert();
                    }
                }).catch(function (e) { return console.error(e); });
            }
            else {
                this.locationService.getActiveLocationByType(encLocType)
                    .then(function (data) {
                    _this.locationFetchComplete(data);
                });
            }
        };
        this.locationFetchComplete = function (data) {
            if (data.status == 0) {
                this.locationServiceError01 = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.statusCode == 1) {
                this.navCtrl.push('LocationInner02Page', { 'type': this.type, 'locationDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.locationServiceError01 = data.note;
                return;
            }
            else {
                this.locationServiceError01 = "System Error, Please Contact with Administrator.";
            }
        };
        this.showAlert = function () {
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Alert!');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>Device location access is disabled. Please enable it and try again.</center>");
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 20000);
        };
        this.gpsEnableCheck = this.configLoader.gpsCheckEnabled;
    }
    LocationInner01Page.prototype.ionViewDidLoad = function () {
    };
    LocationInner01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-location-inner01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner01\location-inner01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Find Location</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap  regular-font box-shade" style="color:red;background-color: transparent"\n       *ngIf="locationServiceError01">{{locationServiceError01}}\n  </div>\n\n  <!--<ion-list radio-group [(ngModel)]="locationType">-->\n  <!--<ion-item>-->\n  <!--<ion-label><ion-icon name="md-checkbox-outline"></ion-icon>&nbsp;&nbsp;&nbsp;ATM Location</ion-label>-->\n  <!--<ion-radio  value="2" (ionSelect)="FindLocation01Action()" checked></ion-radio>-->\n  <!--</ion-item>-->\n\n  <!--<ion-item >-->\n  <!--<ion-label><ion-icon name="md-checkbox-outline"></ion-icon>&nbsp;&nbsp;&nbsp;Branch Location</ion-label>-->\n  <!--<ion-radio value="1" (ionSelect)="FindLocation01Action()"></ion-radio>-->\n  <!--</ion-item>-->\n  <!--</ion-list>-->\n  <ion-list>\n    <ion-item>\n      <div class="row regular-font  ">\n        <div class="col box_shade" >\n          <img src="assets/imgs/location/branchLoc.jpg" width="100%" (click)="FindLocation01Action(\'1\')"/>\n        </div>\n      </div>\n    </ion-item>\n\n\n    <ion-item>\n      <div class="row regular-font ">\n        <div class="col box_shade" >\n          <img src="assets/imgs/location/atmLoc.jpg" width="100%" (click)="FindLocation01Action(\'2\')"/>\n        </div>\n      </div>\n    </ion-item>\n  </ion-list>\n\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\location-inner01\location-inner01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_3__ionic_native_diagnostic__["a" /* Diagnostic */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_4__providers_location_location__["a" /* LocationProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */]])
    ], LocationInner01Page);
    return LocationInner01Page;
}());

//# sourceMappingURL=location-inner01.js.map

/***/ })

});
//# sourceMappingURL=39.js.map