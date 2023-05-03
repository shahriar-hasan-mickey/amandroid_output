webpackJsonp([60],{

/***/ 444:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTransferOtherBankHistory02PageModule", function() { return FundTransferOtherBankHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history02__ = __webpack_require__(547);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTransferOtherBankHistory02PageModule = (function () {
    function FundTransferOtherBankHistory02PageModule() {
    }
    FundTransferOtherBankHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history02__["a" /* FundTransferOtherBankHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history02__["a" /* FundTransferOtherBankHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history02__["a" /* FundTransferOtherBankHistory02Page */]
            ]
        })
    ], FundTransferOtherBankHistory02PageModule);
    return FundTransferOtherBankHistory02PageModule;
}());

//# sourceMappingURL=fund-transfer-other-bank-history02.module.js.map

/***/ }),

/***/ 547:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTransferOtherBankHistory02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__ionic_native_date_picker__ = __webpack_require__(249);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_google_analytics_google_analytics__ = __webpack_require__(246);
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
 * Generated class for the FundTransferOtherBankHistory02Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var FundTransferOtherBankHistory02Page = (function () {
    function FundTransferOtherBankHistory02Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, datePicker, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.datePicker = datePicker;
        this.gaProvider = gaProvider;
        this.showTransferDetails = function (listItem) {
            var _this = this;
            this.transId = listItem.appTransId.toString();
            this.transferType = listItem.transType.toString();
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
                var encTransId = this.cryptoUtil.getEncryptVal(this.transId);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.getObFundTransferDetail(unMaskToken, appData.userId, appData.appId, encTransId)
                    .then(function (data) {
                    _this.onTransferHistoryDetailsComplete(data);
                });
            }
        };
        this.onTransferHistoryDetailsComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('FundTransferOtherBankHistory03Page', {
                    'iTransferDetails': JSON.stringify(data.object),
                    'transferType': this.transferType
                });
            }
            else if (data.statusCode == 0) {
                this.iTransferOBHistoryError02 = data.note;
            }
            else {
                this.iTransferOBHistoryError02 = "System Error Contact with Administrator.";
            }
        };
        this.iTransferDetails = JSON.parse(navParams.get("iTransferDetails"));
    }
    FundTransferOtherBankHistory02Page.prototype.ionViewDidLoad = function () {
    };
    FundTransferOtherBankHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transfer-other-bank-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-history02\fund-transfer-other-bank-history02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iTransfer - Other Bank History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="iTransferOBHistoryError02">\n    {{iTransferOBHistoryError02}}\n  </div>\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="iTransferDetails.length<=0">\n      No iTransfer Found in this date range.\n    </div>\n\n\n    <ion-item *ngFor="let listItem of iTransferDetails" (click)="showTransferDetails(listItem)">\n\n      <div class="row" >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Transfer Date :</b></label>\n        <label class="col item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left">{{listItem.transDate|date : \'dd/MM/yyyy\'}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-40  item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Transfer Type :</b></label>\n        <label class="col item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.transType==106 ? "EFT" : listItem.transType==107 ? "NPSB" : ""}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Amount :</b></label>\n        <label class="col item-text-wrap regular-font " style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.amount|currency : "BDT" : 2}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"></label>\n        <label class="col item-text-wrap regular-font " style="padding-top: 0px;margin: 0px;text-align: left; color: blue;text-decoration: underline">Details</label>\n      </div>\n\n    </ion-item>\n\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-history02\fund-transfer-other-bank-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_7__ionic_native_date_picker__["a" /* DatePicker */],
            __WEBPACK_IMPORTED_MODULE_8__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], FundTransferOtherBankHistory02Page);
    return FundTransferOtherBankHistory02Page;
}());

//# sourceMappingURL=fund-transfer-other-bank-history02.js.map

/***/ })

});
//# sourceMappingURL=60.js.map