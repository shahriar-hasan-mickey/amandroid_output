webpackJsonp([46],{

/***/ 456:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ITransfer03PageModule", function() { return ITransfer03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_transfer03__ = __webpack_require__(559);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ITransfer03PageModule = (function () {
    function ITransfer03PageModule() {
    }
    ITransfer03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer03__["a" /* ITransfer03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_transfer03__["a" /* ITransfer03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer03__["a" /* ITransfer03Page */]
            ]
        })
    ], ITransfer03PageModule);
    return ITransfer03PageModule;
}());

//# sourceMappingURL=i-transfer03.module.js.map

/***/ }),

/***/ 559:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransfer03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var ITransfer03Page = (function () {
    function ITransfer03Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, iTransferService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.iTransferService = iTransferService;
        this.tokenService = tokenService;
        this.iTransfer03Action = function () {
            var _this = this;
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
                var encTxID = this.cryptoUtil.getEncryptVal(this.initTransferResponse.transferID);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.genOtpForFundTransfer(unMaskToken, appData.userId, appData.appId, encTxID)
                    .then(function (data) {
                    _this.onGenOtpForFundTransferComplete(data);
                });
            }
        };
        this.onGenOtpForFundTransferComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ITransfer04Page', {
                    'srcAccTitle': this.srcAccTitle,
                    'initTransferResponse': JSON.stringify(this.initTransferResponse),
                    'totalDeduction': this.totalDeduction
                });
            }
            else if (data.statusCode == 0) {
                this.iTransferError03 = data.note;
            }
            else {
                this.iTransferError03 = "System Error Contact with Administrator.";
            }
        };
        var intiResponse = this.navParams.get("initTransferResponse");
        this.initTransferResponse = JSON.parse(intiResponse);
        this.srcAccTitle = this.navParams.get("srcAccTitle");
        this.purpose = this.navParams.get("purpose");
        this.amount = this.navParams.get("amount");
        this.totalDeduction = this.initTransferResponse.transferAmount +
            this.initTransferResponse.transferCharge +
            this.initTransferResponse.vatOnTransferCharge;
    }
    ITransfer03Page.prototype.ionViewDidLoad = function () {
    };
    ITransfer03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-transfer03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer03\i-transfer03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n\n<ion-content class="row row-center col col-center background">\n\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="iTransferError03">\n      {{iTransferError03}}\n    </div>\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Confirm\n        Fund Transfer</b></div>\n\n\n      <div class="preview-box01">\n\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Source Account: </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.srcAccount}}</span>\n        </label>\n\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{srcAccTitle}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Dest. Account\n            : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.destAccount}}</span>\n        </label>\n\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Title\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initTransferResponse.destAccountTitle}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Transfer ID : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.transferID}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Amount\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{amount| currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Service\n            Charge : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.transferCharge| currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Vat on Charge\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initTransferResponse.vatOnTransferCharge | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Total\n            Deduction : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{totalDeduction| currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Purpose : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{purpose}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Note\n            : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.note}}</span>\n        </label>\n      </div>\n\n      <button class="button-green button-block " (click)="iTransfer03Action()" tabindex="2"> Submit\n      </button>\n\n    </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer03\i-transfer03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_5__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], ITransfer03Page);
    return ITransfer03Page;
}());

//# sourceMappingURL=i-transfer03.js.map

/***/ })

});
//# sourceMappingURL=46.js.map