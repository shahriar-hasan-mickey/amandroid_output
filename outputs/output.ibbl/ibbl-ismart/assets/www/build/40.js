webpackJsonp([40],{

/***/ 463:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "IssueChequeBook04PageModule", function() { return IssueChequeBook04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book04__ = __webpack_require__(566);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var IssueChequeBook04PageModule = (function () {
    function IssueChequeBook04PageModule() {
    }
    IssueChequeBook04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book04__["a" /* IssueChequeBook04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__issue_cheque_book04__["a" /* IssueChequeBook04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book04__["a" /* IssueChequeBook04Page */]
            ]
        })
    ], IssueChequeBook04PageModule);
    return IssueChequeBook04PageModule;
}());

//# sourceMappingURL=issue-cheque-book04.module.js.map

/***/ }),

/***/ 566:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return IssueChequeBook04Page; });
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



var IssueChequeBook04Page = (function () {
    function IssueChequeBook04Page(navCtrl, navParams, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.issueAnotherCheque = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('issueChequeBook01');
        };
        this.accountNo = this.navParams.get("accountNo");
        this.leafCount = this.navParams.get("leafCount");
    }
    IssueChequeBook04Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Cheque Book Issue Successful.");
    };
    IssueChequeBook04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-issue-cheque-book04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\issue-cheque-book04\issue-cheque-book04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Issue Cheque Book</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Cheque book issue successful.</b></div>\n\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Account No : </b></span>\n      <span class="col col-60 item-text-wrap regular-font " style="text-align: left">{{accountNo}}</span>\n    </label>\n\n    <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>No of leaf\n          : </b></span>\n      <span class="col col-40 item-text-wrap regular-font " style="text-align: left">{{leafCount}}</span>\n    </label>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines  style="width: 100%" (click)="goToWelcome()" >Home</button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="issueAnotherCheque()" >Issue Another\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\issue-cheque-book04\issue-cheque-book04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], IssueChequeBook04Page);
    return IssueChequeBook04Page;
}());

//# sourceMappingURL=issue-cheque-book04.js.map

/***/ })

});
//# sourceMappingURL=40.js.map