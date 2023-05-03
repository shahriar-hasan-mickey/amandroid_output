webpackJsonp([97],{

/***/ 406:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddCreditAccountOtherBank03PageModule", function() { return AddCreditAccountOtherBank03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank03__ = __webpack_require__(509);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddCreditAccountOtherBank03PageModule = (function () {
    function AddCreditAccountOtherBank03PageModule() {
    }
    AddCreditAccountOtherBank03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank03__["a" /* AddCreditAccountOtherBank03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank03__["a" /* AddCreditAccountOtherBank03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank03__["a" /* AddCreditAccountOtherBank03Page */]
            ]
        })
    ], AddCreditAccountOtherBank03PageModule);
    return AddCreditAccountOtherBank03PageModule;
}());

//# sourceMappingURL=add-credit-account-other-bank03.module.js.map

/***/ }),

/***/ 509:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddCreditAccountOtherBank03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var AddCreditAccountOtherBank03Page = (function () {
    function AddCreditAccountOtherBank03Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, config, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.config = config;
        this.gaProvider = gaProvider;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.transferAnother = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('fundTransferOtherBank01');
        };
        this.subAccDetail = JSON.parse(this.navParams.get("subAccDetail"));
        this.eftBankDetail = this.navParams.get("eftBankDetail");
        this.eftBranchDetail = this.navParams.get("eftBranchDetail");
        this.npsbBankDetail = this.navParams.get("npsbBankDetail");
        if (typeof (this.eftBankDetail) != "undefined") {
            this.eftBankDetail = JSON.parse(this.eftBankDetail);
        }
        if (typeof (this.eftBranchDetail) != "undefined") {
            this.eftBranchDetail = JSON.parse(this.eftBranchDetail);
        }
        if (typeof (this.npsbBankDetail) != "undefined") {
            this.npsbBankDetail = JSON.parse(this.npsbBankDetail);
        }
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.eftFlag = this.fundTransferType != this.config.transferTypeNPSB;
    }
    AddCreditAccountOtherBank03Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Beneficiary Add other bank successful");
    };
    AddCreditAccountOtherBank03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-credit-account-other-bank03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank03\add-credit-account-other-bank03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Add Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Beneficiary successfully added with following Details.</b></div>\n\n\n    <div class="row item">\n      <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary A/C :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{subAccDetail.subscriptionValue}}</div>\n    </div>\n\n    <div class="row item">\n      <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Name :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{subAccDetail.subscriptionDesc}}</div>\n    </div>\n\n    <div class="row item" *ngIf="eftFlag">\n      <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Bank :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{eftBankDetail}}</div>\n    </div>\n\n    <div class="row item" *ngIf="eftFlag">\n      <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Branch :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{eftBranchDetail.label}}</div>\n    </div>\n\n\n    <div class="row item" *ngIf="!eftFlag">\n      <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Bank :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{npsbBankDetail.name}}</div>\n    </div>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines  style="width: 100%" (click)="goToWelcome()" >Home</button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="transferAnother()" >Make transfer\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank03\add-credit-account-other-bank03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_3__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], AddCreditAccountOtherBank03Page);
    return AddCreditAccountOtherBank03Page;
}());

//# sourceMappingURL=add-credit-account-other-bank03.js.map

/***/ })

});
//# sourceMappingURL=97.js.map