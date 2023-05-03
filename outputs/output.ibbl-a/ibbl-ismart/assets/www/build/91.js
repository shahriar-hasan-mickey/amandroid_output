webpackJsonp([91],{

/***/ 412:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BalanceEnquiry01PageModule", function() { return BalanceEnquiry01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__balance_enquiry01__ = __webpack_require__(515);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var BalanceEnquiry01PageModule = (function () {
    function BalanceEnquiry01PageModule() {
    }
    BalanceEnquiry01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__balance_enquiry01__["a" /* viewBalanceInfo01 */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__balance_enquiry01__["a" /* viewBalanceInfo01 */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__balance_enquiry01__["a" /* viewBalanceInfo01 */]
            ]
        })
    ], BalanceEnquiry01PageModule);
    return BalanceEnquiry01PageModule;
}());

//# sourceMappingURL=balance-enquiry01.module.js.map

/***/ }),

/***/ 515:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return viewBalanceInfo01; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_account_service_account_service__ = __webpack_require__(254);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var viewBalanceInfo01 = (function () {
    function viewBalanceInfo01(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, accountService, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.accountService = accountService;
        this.gaProvider = gaProvider;
        this.accounts = [];
        this.viewBalanceInfoAction = function (account) {
            var _this = this;
            this.accBalanceInfoError01 = "";
            this.accountNumber = account.accountNo;
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenComplete(data);
            });
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var encAccNo = this.cryptoUtil.getEncryptVal(this.accountNumber);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.accountService.getAccBalanceInformation(unMaskToken, appData.userId, appData.appId, encAccNo)
                    .then(function (data) {
                    _this.onViewBalanceInfoFetchComplete(data);
                });
            }
        };
        this.onViewBalanceInfoFetchComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('BalanceEnquiry02Page', { 'balanceDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.accBalanceInfoError01 = data.note;
            }
            else {
                this.accBalanceInfoError01 = "System Error Contact with Administrator.";
            }
        };
        var dAccount = this.storage.retrieveFromStorage('accounts');
        dAccount = cryptoUtil.getDecryptVal(dAccount);
        this.accounts = JSON.parse(dAccount);
    }
    viewBalanceInfo01.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad BalanceEnquiry01Page');
        this.gaProvider.startTrackerWithId("Balance Information");
    };
    viewBalanceInfo01 = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-balance-enquiry01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\balance-enquiry01\balance-enquiry01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Balance Enquiry</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n  <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="accBalanceInfoError01">{{accBalanceInfoError01}}</div>\n\n\n  <div class="list">\n    <ion-item *ngFor="let account of accounts">\n      <button ion-item no-lines (click)="viewBalanceInfoAction(account)" >\n        <span class="row regular-font" ><span>Account No : &nbsp;</span> <span style="text-decoration: underline;color: blue">{{account.accountNo}}</span></span>\n        <span class="row item-text-wrap responsive-sm regular-font">Account Title : {{account.title}}</span>\n      </button>\n    </ion-item>\n  </div>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\balance-enquiry01\balance-enquiry01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_account_service_account_service__["a" /* AccountServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], viewBalanceInfo01);
    return viewBalanceInfo01;
}());

//# sourceMappingURL=balance-enquiry01.js.map

/***/ })

});
//# sourceMappingURL=91.js.map