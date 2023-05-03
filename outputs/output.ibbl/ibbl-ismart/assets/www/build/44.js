webpackJsonp([44],{

/***/ 459:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ITransfer05PageModule", function() { return ITransfer05PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_transfer05__ = __webpack_require__(562);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ITransfer05PageModule = (function () {
    function ITransfer05PageModule() {
    }
    ITransfer05PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer05__["a" /* ITransfer05Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_transfer05__["a" /* ITransfer05Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer05__["a" /* ITransfer05Page */]
            ]
        })
    ], ITransfer05PageModule);
    return ITransfer05PageModule;
}());

//# sourceMappingURL=i-transfer05.module.js.map

/***/ }),

/***/ 562:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransfer05Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var ITransfer05Page = (function () {
    function ITransfer05Page(navCtrl, navParams, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.transferAnother = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('iTransfer01');
        };
        this.initTransferResponse = JSON.parse(this.navParams.get("initTransferResponse"));
        this.totalDeduction = this.navParams.get("totalDeduction");
    }
    ITransfer05Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("iTransfer Successful");
    };
    ITransfer05Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-transfer05',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer05\i-transfer05.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>iTransfer Completed Successfully. Please Check Your Email for Details.</b></div>\n\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Transfer ID : </b></span>\n      <span class="col col-60 item-text-wrap regular-font " style="text-align: left">{{initTransferResponse.transferID}}</span>\n    </label>\n\n    <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Amount\n          : </b></span>\n      <span class="col col-40 item-text-wrap regular-font " style="text-align: left">{{initTransferResponse.transferAmount| currency : "BDT" : 2}}</span>\n    </label>\n\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col text-right>\n        <button class="btnTextRightUnderline" icon-only no-lines  style="width: 100%" (click)="goToWelcome()" >Home</button>\n\n      </ion-col>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="transferAnother()" >Transfer Another\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer05\i-transfer05.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], ITransfer05Page);
    return ITransfer05Page;
}());

//# sourceMappingURL=i-transfer05.js.map

/***/ })

});
//# sourceMappingURL=44.js.map