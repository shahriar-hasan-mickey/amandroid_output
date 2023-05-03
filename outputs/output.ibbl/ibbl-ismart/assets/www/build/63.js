webpackJsonp([63],{

/***/ 441:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTranserOtherBank04PageModule", function() { return FundTranserOtherBank04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank04__ = __webpack_require__(544);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTranserOtherBank04PageModule = (function () {
    function FundTranserOtherBank04PageModule() {
    }
    FundTranserOtherBank04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank04__["a" /* FundTranserOtherBank04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank04__["a" /* FundTranserOtherBank04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank04__["a" /* FundTranserOtherBank04Page */]
            ]
        })
    ], FundTranserOtherBank04PageModule);
    return FundTranserOtherBank04PageModule;
}());

//# sourceMappingURL=fund-transer-other-bank04.module.js.map

/***/ }),

/***/ 544:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTranserOtherBank04Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var FundTranserOtherBank04Page = (function () {
    function FundTranserOtherBank04Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, ftOtherBankService, tokenService, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.ftOtherBankService = ftOtherBankService;
        this.tokenService = tokenService;
        this.config = config;
        //this value is for form input
        this.otherBankTransferError04 = "";
        this.formVal = { tpin: "", otp: "" };
        this.tpin = "";
        this.otp = "";
        this.iTransferOtherBank04Action = function () {
            var _this = this;
            var flag = true;
            this.tpin = this.formVal.tpin;
            this.otp = this.formVal.otp;
            var validateTpinExp = new RegExp("[0-9]{4}$");
            var validateOtpExp = new RegExp("[0-9]{6}$");
            if (this.tpin == "" || typeof (this.tpin) == "undefined") {
                this.otherBankTransferError04 = "Please Enter TPIN.";
                flag = false;
                return;
            }
            if (this.otp == "" || typeof (this.otp) == "undefined") {
                this.otherBankTransferError04 = "Please Enter OTP.";
                flag = false;
                return;
            }
            if (!validateTpinExp.test(this.tpin)) {
                this.otherBankTransferError04 = "Invalid TPIN.";
                flag = false;
                this.formVal = { tpin: "" };
                return;
            }
            if (!validateOtpExp.test(this.otp)) {
                this.otherBankTransferError04 = "Invalid OTP.";
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
                var encTxID = this.cryptoUtil.getEncryptVal(this.initObTxDetails.transferId);
                var encTpin = this.cryptoUtil.getEncryptVal(this.tpin);
                var encOtp = this.cryptoUtil.getEncryptVal(this.otp);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.ftOtherBankService.confirmOtherBankTransfer(unMaskToken, appData.userId, appData.appId, encTxID, encTpin, encOtp)
                    .then(function (data) {
                    _this.onConfirmFundTransferComplete(data);
                });
            }
        };
        this.onConfirmFundTransferComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('FundTranserOtherBank05Page', {
                    'initObTxDetails': JSON.stringify(this.initObTxDetails),
                    'selectedDest': JSON.stringify(this.selectedDest),
                    'fundTransferType': this.fundTransferType
                });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError04 = data.note;
                this.formVal = { tpin: "", otp: "" };
            }
            else {
                this.otherBankTransferError04 = "System Error Contact with Administrator.";
                this.formVal = { tpin: "", otp: "" };
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.amount = this.navParams.get("amount");
        this.srcAccDetails = JSON.parse(this.navParams.get("srcAccDetails"));
        this.selectedDest = JSON.parse(this.navParams.get("selectedDest"));
        this.initObTxDetails = JSON.parse(this.navParams.get("initObTxDetails"));
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.routeShow = this.fundTransferType != config.transferTypeNPSB;
    }
    FundTranserOtherBank04Page.prototype.ionViewDidLoad = function () {
    };
    FundTranserOtherBank04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transer-other-bank04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank04\fund-transer-other-bank04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="iTransferOtherBank04Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="otherBankTransferError04">\n      {{otherBankTransferError04}}\n    </div>\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>iTransfer\n        Summary\n      </b></div>\n\n      <div class="preview-box01">\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Execution Date\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left; color: blue">{{initObTxDetails.executionDate}}</span>\n        </label>\n\n        <label class="row item" *ngIf="initObTxDetails.note !=null">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>**\n               </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left; color: blue">{{initObTxDetails.note}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Source Account\n              :</b></span>\n          <span class="col item-text-wrap regular-font">{{accountNo}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title :</b></span>\n          <span class="col item-text-wrap regular-font">{{srcAccDetails.accountTitle}}</span>\n        </label>\n\n      </div>\n\n      <div class="preview-box01">\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Beneficiary Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryName}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Destination A/C :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryAccount}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Bank Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.bankName}}</span>\n        </label>\n\n        <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Branch Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.branchName}}</span>\n        </label>\n\n        <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Routing No :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryRoute}}</span>\n        </label>\n\n      </div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Transfer Amount\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{amount | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Commission\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initObTxDetails.commission | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Vat\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left">{{initObTxDetails.vatOnCommission | currency : "BDT" : 2}}</span>\n        </label>\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Total Deduction\n              : </b></span>\n          <span class="col item-text-wrap regular-font"\n                style="text-align: left; color: blue">{{initObTxDetails.totalDeductAmount | currency : "BDT" : 2}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="tpin" style="-webkit-text-security:disc" placeholder="Enter TPIN"\n                 [(ngModel)]="formVal.tpin"\n                 maxlength="4" class="textField">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="otp" placeholder="Enter OTP" [(ngModel)]="formVal.otp" maxlength="6"\n                 class="textField">\n             </span>\n        </label>\n      </div>\n      <button class="button-green button-block " type="submit"> Submit\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank04\fund-transer-other-bank04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_config_config__["a" /* ConfigProvider */]])
    ], FundTranserOtherBank04Page);
    return FundTranserOtherBank04Page;
}());

//# sourceMappingURL=fund-transer-other-bank04.js.map

/***/ })

});
//# sourceMappingURL=63.js.map