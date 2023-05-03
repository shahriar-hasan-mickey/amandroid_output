webpackJsonp([67],{

/***/ 437:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ExpirePageModule", function() { return ExpirePageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__expire__ = __webpack_require__(540);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ExpirePageModule = (function () {
    function ExpirePageModule() {
    }
    ExpirePageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__expire__["a" /* ExpirePage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__expire__["a" /* ExpirePage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__expire__["a" /* ExpirePage */]
            ]
        })
    ], ExpirePageModule);
    return ExpirePageModule;
}());

//# sourceMappingURL=expire.module.js.map

/***/ }),

/***/ 540:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ExpirePage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





/**
 * Generated class for the ExpirePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var ExpirePage = (function () {
    function ExpirePage(navCtrl, storage, navParams, menu, gaProvider, config) {
        this.navCtrl = navCtrl;
        this.storage = storage;
        this.navParams = navParams;
        this.menu = menu;
        this.gaProvider = gaProvider;
        this.config = config;
        this.backToLoginPage = function () {
            var dbVal = this.storage.retrieveFromStorage('appData');
            dbVal.refreshToken = "";
            dbVal.token = "";
            this.storage.insertIntoStorage('appData', dbVal);
            this.storage.removeFromIntoStorage('accounts');
            this.storage.removeFromIntoStorage('welcomeVal');
            this.storage.removeFromIntoStorage('passPolicy');
            this.navCtrl.popToRoot();
            this.navCtrl.setRoot('UserLogin01Page');
        };
        this.menu.enable(false);
        this.version = this.config.iSmartVersion;
    }
    ExpirePage.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Page Expire");
    };
    ExpirePage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-expire',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\expire\expire.html"*/'<div class="row  index-background" style="height: 25%">\n    <div class="col">\n\n      <div class="row cam-img ">\n        <div col col-5 style="text-align: right">\n          <img src="assets/imgs/logo.gif" style="max-width: 65px;height:60px;width:60px"/>\n        </div>\n        <div col col-7 style="text-align: left; ">\n          <h1 class="moduleNameNew" style="color: #276213;margin-bottom: 0px">\n            IBBL iBanking\n          </h1>\n\n          <div class="versionStyle">\n            Version {{version}}\n          </div>\n\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <div class="col col-center">\n    <ion-grid text-center class="vertical-align-content">\n\n      <ion-row text-center>\n        <ion-col col>\n          <br>\n        </ion-col>\n      </ion-row>\n      <ion-row text-center>\n        <ion-col col>\n          <br>\n        </ion-col>\n      </ion-row>\n      <ion-row text-center>\n        <ion-col col>\n          Session Expired !\n        </ion-col>\n      </ion-row>\n\n      <ion-row text-center>\n        <ion-col col class="regular-font">\n          Please\n          <button type="button" class="btnTextLeftUnderline" (click)="backToLoginPage()">login</button>\n          again\n        </ion-col>\n      </ion-row>\n    </ion-grid>\n  </div>\n\n\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\expire\expire.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["i" /* MenuController */],
            __WEBPACK_IMPORTED_MODULE_3__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_config_config__["a" /* ConfigProvider */]])
    ], ExpirePage);
    return ExpirePage;
}());

//# sourceMappingURL=expire.js.map

/***/ })

});
//# sourceMappingURL=67.js.map