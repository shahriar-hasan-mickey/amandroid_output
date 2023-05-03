webpackJsonp([45],{

/***/ 458:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ITransfer04PageModule", function() { return ITransfer04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_transfer04__ = __webpack_require__(561);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ITransfer04PageModule = (function () {
    function ITransfer04PageModule() {
    }
    ITransfer04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer04__["a" /* ITransfer04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_transfer04__["a" /* ITransfer04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer04__["a" /* ITransfer04Page */]
            ]
        })
    ], ITransfer04PageModule);
    return ITransfer04PageModule;
}());

//# sourceMappingURL=i-transfer04.module.js.map

/***/ }),

/***/ 561:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransfer04Page; });
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







var ITransfer04Page = (function () {
    function ITransfer04Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, iTransferService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.iTransferService = iTransferService;
        this.tokenService = tokenService;
        this.iTransferError04 = "";
        this.formVal = { tpin: "", otp: "" };
        this.tpin = "";
        this.otp = "";
        this.iTransfer04Action = function () {
            var _this = this;
            var flag = true;
            this.tpin = this.formVal.tpin;
            this.otp = this.formVal.otp;
            var validateTpinExp = new RegExp("[0-9]{4}$");
            var validateOtpExp = new RegExp("[0-9]{6}$");
            if (this.tpin == "" || typeof (this.tpin) == "undefined") {
                this.iTransferError04 = "Please Enter TPIN.";
                flag = false;
                return;
            }
            if (this.otp == "" || typeof (this.otp) == "undefined") {
                this.iTransferError04 = "Please Enter OTP.";
                flag = false;
                return;
            }
            if (!validateTpinExp.test(this.tpin)) {
                this.iTransferError04 = "Invalid TPIN.";
                flag = false;
                this.formVal = { tpin: "" };
                return;
            }
            if (!validateOtpExp.test(this.otp)) {
                this.iTransferError04 = "Invalid OTP.";
                flag = false;
                this.formVal = { otp: "" };
                return;
            }
            if (flag) {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                this.tokenService.getNewToken(unMaskRefToken)
                    .then(function (data) {
                    _this.onNewTokenGenComplete(data);
                });
            }
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var encTxID = this.cryptoUtil.getEncryptVal(this.initTransferResponse.transferID);
                var encTpin = this.cryptoUtil.getEncryptVal(this.tpin);
                var encOtp = this.cryptoUtil.getEncryptVal(this.otp);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.confirmFundTransfer(unMaskToken, appData.userId, appData.appId, encTxID, encTpin, encOtp)
                    .then(function (data) {
                    _this.onConfirmFundTransferComplete(data);
                });
            }
        };
        this.onConfirmFundTransferComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ITransfer05Page', {
                    'initTransferResponse': JSON.stringify(this.initTransferResponse),
                    'totalDeduction': this.totalDeduction
                });
            }
            else if (data.statusCode == 0) {
                this.iTransferError04 = data.note;
                this.formVal = { tpin: "", otp: "" };
            }
            else {
                this.iTransferError04 = "System Error Contact with Administrator.";
                this.formVal = { tpin: "", otp: "" };
            }
        };
        this.initTransferResponse = JSON.parse(this.navParams.get("initTransferResponse"));
        this.srcAccTitle = this.navParams.get("srcAccTitle");
        this.totalDeduction = this.navParams.get("totalDeduction");
    }
    ITransfer04Page.prototype.ionViewDidLoad = function () {
    };
    ITransfer04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-transfer04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer04\i-transfer04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n<form  (submit)="iTransfer04Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="iTransferError04">\n      {{iTransferError04}}\n    </div>\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>iTransfer\n        Summary\n      </b></div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Source Account: </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.srcAccount}}</span>\n        </label>\n\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{srcAccTitle}}</span>\n        </label>\n\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Dest. Account\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.destAccount}}</span>\n        </label>\n\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Title\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initTransferResponse.destAccountTitle}}</span>\n        </label>\n\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Transfer ID : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.transferID}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Transfer Amount\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initTransferResponse.transferAmount | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Deduction Amount\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{totalDeduction | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="tpin" style="-webkit-text-security:disc" placeholder="Enter TPIN" [(ngModel)]="formVal.tpin"\n                 maxlength="4" class="textField">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="otp" placeholder="Enter OTP" [(ngModel)]="formVal.otp" maxlength="6" class="textField">\n             </span>\n        </label>\n      </div>\n\n      <button class="button-green button-block " type="submit" > Submit\n      </button>\n\n    </ion-list>\n</form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer04\i-transfer04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_5__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], ITransfer04Page);
    return ITransfer04Page;
}());

//# sourceMappingURL=i-transfer04.js.map

/***/ })

});
//# sourceMappingURL=45.js.map