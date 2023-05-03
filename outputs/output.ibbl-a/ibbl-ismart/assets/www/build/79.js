webpackJsonp([79],{

/***/ 423:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCode03PageModule", function() { return CashByCode03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code03__ = __webpack_require__(526);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCode03PageModule = (function () {
    function CashByCode03PageModule() {
    }
    CashByCode03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code03__["a" /* CashByCode03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code03__["a" /* CashByCode03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code03__["a" /* CashByCode03Page */]
            ]
        })
    ], CashByCode03PageModule);
    return CashByCode03PageModule;
}());

//# sourceMappingURL=cash-by-code03.module.js.map

/***/ }),

/***/ 526:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCode03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_cash_by_code_service_cash_by_code_service__ = __webpack_require__(255);
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







var CashByCode03Page = (function () {
    function CashByCode03Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, tokenService, cashByCodeService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.tokenService = tokenService;
        this.cashByCodeService = cashByCodeService;
        this.formVal = { tpin: "", otp: "" };
        this.CashByCode03Action = function () {
            var _this = this;
            var flag = true;
            this.tpin = this.formVal.tpin;
            this.otp = this.formVal.otp;
            var validateTpinExp = new RegExp("[0-9]{4}$");
            var validateOtpExp = new RegExp("[0-9]{6}$");
            if (this.tpin == "" || typeof (this.tpin) == "undefined") {
                this.cashByCodeError03 = "Please Enter TPIN.";
                flag = false;
                return;
            }
            if (this.otp == "" || typeof (this.otp) == "undefined") {
                this.cashByCodeError03 = "Please Enter OTP.";
                flag = false;
                return;
            }
            if (!validateTpinExp.test(this.tpin)) {
                this.cashByCodeError03 = "Invalid TPIN.";
                flag = false;
                this.formVal = { tpin: "" };
                return;
            }
            if (!validateOtpExp.test(this.otp)) {
                this.cashByCodeError03 = "Invalid OTP.";
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
                var encTxID = this.cryptoUtil.getEncryptVal(this.initCashByCodeResponse.transferID);
                var encOtp = this.cryptoUtil.getEncryptVal(this.otp);
                var encTpin = this.cryptoUtil.getEncryptVal(this.tpin);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.cashByCodeService.confirmCashRemittance(unMaskToken, appData.userId, appData.appId, encTxID, encTpin, encOtp)
                    .then(function (data) {
                    _this.onConfirmCashByCodeComplete(data);
                });
            }
        };
        this.onConfirmCashByCodeComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('CashByCode04Page', {
                    'srcAccTitle': this.srcAccTitle,
                    'initCashByCodeResponse': JSON.stringify(this.initCashByCodeResponse),
                    'confirmCashByCodeResponse': JSON.stringify(data.object),
                    'totalDeduction': this.totalDeduction
                });
            }
            else if (data.statusCode == 0) {
                this.cashByCodeError03 = data.note;
                this.formVal = { tpin: "", otp: "" };
            }
            else {
                this.cashByCodeError03 = "System Error Contact with Administrator.";
            }
        };
        this.initCashByCodeResponse = JSON.parse(this.navParams.get("initCashByCodeResponse"));
        this.nid = this.navParams.get("nid");
        this.srcAccDetails = JSON.parse(this.navParams.get("srcAccDetails"));
        this.totalDeduction = this.initCashByCodeResponse.transferAmount +
            this.initCashByCodeResponse.transferCharge +
            this.initCashByCodeResponse.vatOnTransferCharge;
    }
    CashByCode03Page.prototype.ionViewDidLoad = function () {
    };
    CashByCode03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code03\cash-by-code03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iCashRemit</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="CashByCode03Action(formVal)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="cashByCodeError03">\n      {{cashByCodeError03}}\n    </div>\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Confirm iCashRemit</b></div>\n\n\n      <div class="preview-box01">\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Source Account: </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{srcAccDetails.accountNo}}</span>\n        </label>\n\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{srcAccDetails.accountTitle}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initCashByCodeResponse.destAccountTitle}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Mobile No\n            : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initCashByCodeResponse.destAccount}}</span>\n        </label>\n\n        <label class="row item"  *ngIf="nid">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary NID\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{nid}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Amount\n              : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initCashByCodeResponse.transferAmount| currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item" *ngIf="initCashByCodeResponse.transferCharge>0">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Service\n            Charge : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initCashByCodeResponse.transferCharge| currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item" *ngIf="initCashByCodeResponse.vatOnTransferCharge>0">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Vat on Charge\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">{{initCashByCodeResponse.vatOnTransferCharge | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Total\n            Deduction : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{totalDeduction| currency : "BDT" : 2}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="tpin" style="-webkit-text-security:disc" placeholder="Enter TPIN"\n                 [(ngModel)]="formVal.tpin"\n                 maxlength="4" class="textField" tabindex="1" autocomplete="off">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="otp" placeholder="Enter OTP" [(ngModel)]="formVal.otp" maxlength="6"\n                 class="textField" tabindex="2" autocomplete="off">\n             </span>\n        </label>\n      </div>\n\n      <button class="button-green button-block "  tabindex="3"> Submit\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code03\cash-by-code03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_cash_by_code_service_cash_by_code_service__["a" /* CashByCodeServiceProvider */]])
    ], CashByCode03Page);
    return CashByCode03Page;
}());

//# sourceMappingURL=cash-by-code03.js.map

/***/ })

});
//# sourceMappingURL=79.js.map