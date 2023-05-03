webpackJsonp([52],{

/***/ 451:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "IRecharge04PageModule", function() { return IRecharge04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_recharge04__ = __webpack_require__(554);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var IRecharge04PageModule = (function () {
    function IRecharge04PageModule() {
    }
    IRecharge04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge04__["a" /* IRecharge04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_recharge04__["a" /* IRecharge04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge04__["a" /* IRecharge04Page */]
            ]
        })
    ], IRecharge04PageModule);
    return IRecharge04PageModule;
}());

//# sourceMappingURL=i-recharge04.module.js.map

/***/ }),

/***/ 554:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return IRecharge04Page; });
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



var IRecharge04Page = (function () {
    function IRecharge04Page(navCtrl, navParams, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.rechargeAnother = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('rechargeMobile01');
        };
        this.goAddToFavoriteList = function () {
            this.navCtrl.push('AddToFavorite01Page', {
                'mobileNo': this.mobileNo,
                'package': this.package,
                'shortTitle': this.shortTitle
            });
        };
        this.mobileNo = navParams.get("mobileNo");
        this.amount = navParams.get("amount");
        this.package = navParams.get("package");
        this.shortTitle = navParams.get("shortTitle");
    }
    IRecharge04Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("iRecharge Successful");
    };
    IRecharge04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-recharge04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge04\i-recharge04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iRecharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <ion-list>\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Recharge\n      Request is accepted to process.</b></div>\n\n    <div class="row item regular-font" >\n\n        <div col col-4 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Mobile No : </strong>\n        </div>\n        <div col col-4>\n        {{mobileNo}}\n      </div>\n\n        <div col col-4>\n          <button class="btnTextLeft" icon-left icon-only style="width: 100%" (click)="goAddToFavoriteList()" >\n            <ion-icon name="person-add"></ion-icon>\n          </button>\n        </div>\n    </div>\n\n\n    <div class="row item regular-font" >\n\n        <div col col-4 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Amount : </strong>\n        </div >\n        <div col col-8>\n          {{amount}}\n        </div>\n\n    </div>\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines  style="width: 100%" (click)="goToWelcome()" >Home</button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="rechargeAnother()" >Recharge Another\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge04\i-recharge04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], IRecharge04Page);
    return IRecharge04Page;
}());

//# sourceMappingURL=i-recharge04.js.map

/***/ })

});
//# sourceMappingURL=52.js.map