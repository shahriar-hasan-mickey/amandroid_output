webpackJsonp([78],{

/***/ 424:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCode04PageModule", function() { return CashByCode04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code04__ = __webpack_require__(527);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCode04PageModule = (function () {
    function CashByCode04PageModule() {
    }
    CashByCode04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code04__["a" /* CashByCode04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code04__["a" /* CashByCode04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code04__["a" /* CashByCode04Page */]
            ]
        })
    ], CashByCode04PageModule);
    return CashByCode04PageModule;
}());

//# sourceMappingURL=cash-by-code04.module.js.map

/***/ }),

/***/ 527:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCode04Page; });
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



var CashByCode04Page = (function () {
    function CashByCode04Page(navCtrl, navParams, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.transferAnother = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('CashByCode01Page');
        };
        this.initCashByCodeResponse = JSON.parse(this.navParams.get("initCashByCodeResponse"));
        this.confirmCashByCodeResponse = JSON.parse(this.navParams.get("confirmCashByCodeResponse"));
        this.totalDeduction = this.navParams.get("totalDeduction");
    }
    CashByCode04Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Transfer Cash By Code Successful");
    };
    CashByCode04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code04\cash-by-code04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iCashRemit</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap"\n         style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>iCashRemit enqueued Successfully. Use the\n      following to withdraw fund from ATM.</b></div>\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font "\n            style="text-align: right;"><b>Transaction ID : </b></span>\n      <span class="col col-60 item-text-wrap regular-font "\n            style="text-align: left">{{confirmCashByCodeResponse.refID}}</span>\n    </label>\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font "\n            style="text-align: right;"><b>PIN 1 : </b></span>\n      <span class="col col-60 item-text-wrap regular-font " style="text-align: left">{{confirmCashByCodeResponse.otpValue}}</span>\n    </label>\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Mobile No : </b></span>\n      <span class="col col-60 item-text-wrap regular-font " style="text-align: left">{{confirmCashByCodeResponse.destAccount}}</span>\n    </label>\n\n    <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Amount\n          : </b></span>\n      <span class="col col-40 item-text-wrap regular-font " style="text-align: left">{{confirmCashByCodeResponse.transferAmount| currency : "BDT" : 2}}</span>\n    </label>\n\n    <br/>\n      <ul style="padding-left: 40px;padding-top: 10px;list-style-type:square" class="regular-font">\n        <li>{{confirmCashByCodeResponse.note}}</li><br/>\n        <li>Account will be debited when the fund withdraws from ATM.</li>\n      </ul>\n    <br/>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines style="width: 100%" (click)="goToWelcome()">Home\n          </button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%"\n                  (click)="transferAnother()">Another iCashRemit\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code04\cash-by-code04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], CashByCode04Page);
    return CashByCode04Page;
}());

//# sourceMappingURL=cash-by-code04.js.map

/***/ })

});
//# sourceMappingURL=78.js.map