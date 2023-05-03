webpackJsonp([62],{

/***/ 439:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTranserOtherBank05PageModule", function() { return FundTranserOtherBank05PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank05__ = __webpack_require__(542);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTranserOtherBank05PageModule = (function () {
    function FundTranserOtherBank05PageModule() {
    }
    FundTranserOtherBank05PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank05__["a" /* FundTranserOtherBank05Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank05__["a" /* FundTranserOtherBank05Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank05__["a" /* FundTranserOtherBank05Page */]
            ]
        })
    ], FundTranserOtherBank05PageModule);
    return FundTranserOtherBank05PageModule;
}());

//# sourceMappingURL=fund-transer-other-bank05.module.js.map

/***/ }),

/***/ 542:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTranserOtherBank05Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var FundTranserOtherBank05Page = (function () {
    function FundTranserOtherBank05Page(navCtrl, navParams, gaProvider, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.config = config;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.transferAnother = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('fundTransferOtherBank01');
        };
        this.initObTxDetails = JSON.parse(this.navParams.get("initObTxDetails"));
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.selectedDest = JSON.parse(this.navParams.get("selectedDest"));
        this.routeShow = this.fundTransferType != config.transferTypeNPSB;
    }
    FundTranserOtherBank05Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("iTransfer - Other Bank Successful");
    };
    FundTranserOtherBank05Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transer-other-bank05',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank05\fund-transer-other-bank05.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap"\n         style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>iTransfer enqueued Successfully. Please Check\n      Your Email for Details.</b></div>\n\n\n    <div class="preview-box01">\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Beneficiary Name :</b></span>\n        <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryName}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Destination A/C :</b></span>\n        <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryAccount}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Bank Name :</b></span>\n        <span class="col item-text-wrap regular-font">{{selectedDest.bankName}}</span>\n      </label>\n\n      <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Branch Name :</b></span>\n        <span class="col item-text-wrap regular-font">{{selectedDest.branchName}}</span>\n      </label>\n\n      <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Routing No :</b></span>\n        <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryRoute}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Amount\n          : </b></span>\n        <span class="col col-40 item-text-wrap regular-font " style="text-align: left;color: blue">{{initObTxDetails.totalDeductAmount| currency : "BDT" : 2}}</span>\n      </label>\n    </div>\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines style="width: 100%" (click)="goToWelcome()">Home\n          </button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%"\n                  (click)="transferAnother()">Transfer Another\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank05\fund-transer-other-bank05.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_config_config__["a" /* ConfigProvider */]])
    ], FundTranserOtherBank05Page);
    return FundTranserOtherBank05Page;
}());

//# sourceMappingURL=fund-transer-other-bank05.js.map

/***/ })

});
//# sourceMappingURL=62.js.map