webpackJsonp([98],{

/***/ 404:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddCreditAccountOtherBank02PageModule", function() { return AddCreditAccountOtherBank02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank02__ = __webpack_require__(507);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddCreditAccountOtherBank02PageModule = (function () {
    function AddCreditAccountOtherBank02PageModule() {
    }
    AddCreditAccountOtherBank02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank02__["a" /* AddCreditAccountOtherBank02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank02__["a" /* AddCreditAccountOtherBank02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank02__["a" /* AddCreditAccountOtherBank02Page */]
            ]
        })
    ], AddCreditAccountOtherBank02PageModule);
    return AddCreditAccountOtherBank02PageModule;
}());

//# sourceMappingURL=add-credit-account-other-bank02.module.js.map

/***/ }),

/***/ 507:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddCreditAccountOtherBank02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
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








var AddCreditAccountOtherBank02Page = (function () {
    function AddCreditAccountOtherBank02Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.config = config;
        this.addCreditAccountOBError02 = "";
        this.AddNewCreditAccountOB02Action = function () {
            var _this = this;
            this.addCreditAccountOBError02 = "";
            var flag = true;
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
                var oneTimeKeyVal = "";
                var appData = this.storage.retrieveFromStorage("appData");
                var encTxService = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encRecType = this.cryptoUtil.getEncryptVal(this.receiverType);
                var encOtp = this.cryptoUtil.getEncryptVal(oneTimeKeyVal);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.confirmAddObFtBeneficiaryAccount(unMaskToken, appData.userId, appData.appId, encTxService, encRecType, this.encRoutingNo, this.encRecAcc, this.encRecName, encOtp)
                    .then(function (data) {
                    _this.onConfirmOBAddCreditAccComplete(data);
                });
            }
        };
        this.onConfirmOBAddCreditAccComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('AddCreditAccountOtherBank03Page', {
                    'subAccDetail': JSON.stringify(data.object),
                    'fundTransferType': this.fundTransferType,
                    'receiverType': this.receiverType,
                    'eftBankDetail': JSON.stringify(this.eftBankDetail),
                    'eftBranchDetail': JSON.stringify(this.eftBranchDetail),
                    'npsbBankDetail': JSON.stringify(this.npsbBankDetail),
                });
            }
            else if (data.statusCode == 0) {
                this.addCreditAccountOBError02 = data.note;
            }
            else {
                this.addCreditAccountOBError02 = "System Error Contact with Administrator.";
            }
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
        this.encRoutingNo = this.navParams.get("encRoutingNo");
        this.encRecAcc = this.navParams.get("encRecAcc");
        this.encRecName = this.navParams.get("encRecName");
        this.eftFlag = this.fundTransferType != this.config.transferTypeNPSB;
    }
    AddCreditAccountOtherBank02Page.prototype.ionViewDidLoad = function () {
    };
    AddCreditAccountOtherBank02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-credit-account-other-bank02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank02\add-credit-account-other-bank02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Add Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n  <form (submit)="AddNewCreditAccountOB02Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red"\n         *ngIf="addCreditAccountOBError02">{{addCreditAccountOBError02}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Add new beneficiary </b></div>\n\n      <div class="row item">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary A/C :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{subAccDetail.subscriptionValue}}</div>\n      </div>\n\n      <div class="row item">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Name :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{subAccDetail.subscriptionDesc}}</div>\n      </div>\n\n      <div class="row item" *ngIf="eftFlag">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Bank :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{eftBankDetail}}</div>\n      </div>\n\n      <div class="row item" *ngIf="eftFlag">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Branch :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{eftBranchDetail.label}}</div>\n      </div>\n\n      <div class="row item" *ngIf="eftFlag">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Routing No :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{eftBranchDetail.value}}</div>\n      </div>\n\n      <div class="row item" *ngIf="!eftFlag">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Bank :</b></div>\n        <div col col-7  class="item-text-wrap regular-font"> {{npsbBankDetail.name}}</div>\n      </div>\n\n\n      <button class="button button-green button-block" type="submit">Add\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank02\add-credit-account-other-bank02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_6__providers_config_config__["a" /* ConfigProvider */]])
    ], AddCreditAccountOtherBank02Page);
    return AddCreditAccountOtherBank02Page;
}());

//# sourceMappingURL=add-credit-account-other-bank02.js.map

/***/ })

});
//# sourceMappingURL=98.js.map