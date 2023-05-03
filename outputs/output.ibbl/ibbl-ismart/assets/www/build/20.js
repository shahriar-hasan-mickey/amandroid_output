webpackJsonp([20],{

/***/ 483:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "TxSummary01PageModule", function() { return TxSummary01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__tx_summary01__ = __webpack_require__(586);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var TxSummary01PageModule = (function () {
    function TxSummary01PageModule() {
    }
    TxSummary01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__tx_summary01__["a" /* txSummary */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__tx_summary01__["a" /* txSummary */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__tx_summary01__["a" /* txSummary */]
            ]
        })
    ], TxSummary01PageModule);
    return TxSummary01PageModule;
}());

//# sourceMappingURL=tx-summary01.module.js.map

/***/ }),

/***/ 586:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return txSummary; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
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








var txSummary = (function () {
    function txSummary(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, accountService, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.accountService = accountService;
        this.gaProvider = gaProvider;
        this.accountSummary = [];
        this.intAccountSummary = function () {
            var _this = this;
            this.txSummaryError01 = "";
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
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.accountService.getTxSummary(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onViewAccSummaryFetchComplete(data);
                });
            }
        };
        this.onViewAccSummaryFetchComplete = function (data) {
            if (data.statusCode == 1) {
                this.accountSummary = data.object.accSummaries;
                this.totalBalance = data.object.totalBalance;
            }
            else if (data.statusCode == 0) {
                this.txSummaryError01 = data.note;
            }
            else {
                this.txSummaryError01 = "System Error Contact with Administrator.";
            }
        };
        this.intAccountSummary();
    }
    txSummary.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Transaction Summary");
    };
    txSummary = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-tx-summary01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\tx-summary01\tx-summary01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Transaction Summary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n  <ion-content class="background container">\n    <div class="item item-divider item-text-wrap  regular-font" style="color:red" *ngIf="txSummaryError01">\n      {{txSummaryError01}}\n    </div>\n\n\n    <div class="list">\n\n      <div class="row" style="background: rgba(157, 174, 119, 0.47);color: #222222" *ngIf="totalBalance">\n        <div class="col-75 text-left regular-font" style="padding-left: 18px"><b>Account Details</b></div>\n        <div class="col-25 text-right regular-font" style="padding-right: 17px"><b>Balance</b></div>\n      </div>\n\n\n      <ion-list>\n        <ion-item *ngFor="let account of accountSummary">\n          <div class="row">\n\n            <div class="col-67 item-text-wrap regular-font">\n              <span><b>Account No :&nbsp;</b></span><span> {{account.accNo}}</span><br>\n              <span><b>Branch : &nbsp;</b></span><span>{{account.branchName}}</span><br>\n              <span><b>Type : &nbsp;</b></span><span> {{account.accDesc}}</span><br>\n              <span><b>Last Tx Date : &nbsp;</b></span><span> {{account.lastTrDate| date:\'dd/MMM/yy\'}}</span>\n            </div>\n\n            <div class="col-33 item-text-wrap regular-font text-right" style="margin-top: 0px">\n              <span><b> {{account.balance | currency : "BDT" : 2}}</b></span><br>\n            </div>\n\n          </div>\n        </ion-item>\n      </ion-list>\n    </div>\n\n    <ion-item style="margin-top: -35px">\n      <div *ngIf="totalBalance">\n                <span class="col item-text-wrap  regular-font " style="text-align: right;padding-right: 5px"><b>Total\n                  Balance :&nbsp; </b>\n                {{totalBalance | currency : "BDT" : 2}}</span>\n      </div>\n\n    </ion-item>\n    <!--<ion-item style="border-top: none;border-bottom: none">-->\n      <!--<br>-->\n      <!--&lt;!&ndash;<div class="row"></div>&ndash;&gt;-->\n    <!--</ion-item>-->\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\tx-summary01\tx-summary01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_account_service_account_service__["a" /* AccountServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], txSummary);
    return txSummary;
}());

//# sourceMappingURL=tx-summary01.js.map

/***/ })

});
//# sourceMappingURL=20.js.map