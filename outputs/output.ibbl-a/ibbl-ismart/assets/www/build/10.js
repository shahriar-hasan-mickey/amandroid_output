webpackJsonp([10],{

/***/ 493:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Utilitybillpay03PageModule", function() { return Utilitybillpay03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utilitybillpay03__ = __webpack_require__(596);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var Utilitybillpay03PageModule = (function () {
    function Utilitybillpay03PageModule() {
    }
    Utilitybillpay03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay03__["a" /* Utilitybillpay03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utilitybillpay03__["a" /* Utilitybillpay03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay03__["a" /* Utilitybillpay03Page */]
            ]
        })
    ], Utilitybillpay03PageModule);
    return Utilitybillpay03PageModule;
}());

//# sourceMappingURL=utilitybillpay03.module.js.map

/***/ }),

/***/ 596:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Utilitybillpay03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__ = __webpack_require__(256);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__ = __webpack_require__(251);
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
 * Generated class for the Utilitybillpay03Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var Utilitybillpay03Page = (function () {
    function Utilitybillpay03Page(navCtrl, navParams, storage, maskTokenUtil, tokenService, cryptoUtil, billPayService, alertProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.billPayService = billPayService;
        this.alertProvider = alertProvider;
        this.ConfirmPayUtilityBillAction = function (oneTimePass) {
            var _this = this;
            this.utilityBillPayError03 = "";
            this.otp = oneTimePass;
            var flag = true;
            var validateOtpExp = new RegExp("[0-9]{6}$");
            if (!validateOtpExp.test(oneTimePass)) {
                this.utilityBillPayError03 = "Invalid OTP format";
                flag = false;
                this.otp = "";
                return;
            }
            this.otp = oneTimePass;
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
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encEnqueueID = this.cryptoUtil.getEncryptVal(this.utilityId);
                var encTPIN = this.cryptoUtil.getEncryptVal(this.tpin);
                var encOTP = this.cryptoUtil.getEncryptVal(this.otp);
                var encIsNewReg = this.cryptoUtil.getEncryptVal(this.isNewReg);
                var encCompanyBillData = this.cryptoUtil.getEncryptVal(this.companyBillData);
                this.billPayService.PayUtilityBill(unMaskToken, appData.userId, appData.appId, encEnqueueID, encTPIN, encOTP, encIsNewReg, encCompanyBillData)
                    .then(function (data) {
                    _this.PayUtilityBillComplete(data);
                });
            }
        };
        this.PayUtilityBillComplete = function (data) {
            // console.log(data);
            if (data.statusCode == 1) {
                this.navCtrl.push('Utilitybillpay04Page', {
                    'menuTitle': this.menuTitle,
                    'selectedCategory': this.selectedCategory,
                    'categoryDesc': this.categoryDesc,
                    'companyDetails': JSON.stringify(this.companyDetails),
                    'billingAccount': this.billingAccount,
                    'totAmount': this.totAmount,
                    'utilityId': this.utilityId,
                });
            }
            else if (data.statusCode == 0) {
                this.utilityBillPayError03 = data.note;
                this.otp = "";
                return;
            }
            else {
                this.utilityBillPayError03 = "System Error Contact with Administrator.";
                this.otp = "";
                return;
            }
        };
        this.utilityBillPayError03 = "";
        this.menuTitle = this.navParams.get("menuTitle");
        this.billingAccount = this.navParams.get("billingAccount");
        var com = this.navParams.get("companyDetails");
        this.companyDetails = JSON.parse(com);
        this.selectedCategory = this.navParams.get("selectedCategory");
        this.categoryDesc = this.navParams.get("categoryDesc");
        this.debitAccDetails = JSON.parse(this.navParams.get("debitAccDetails"));
        this.isNewReg = this.navParams.get("isNewReg");
        this.billNo = this.navParams.get("billNo");
        this.amount = this.navParams.get("amount");
        this.charge = this.navParams.get("charge");
        this.totAmount = this.navParams.get("totAmount");
        this.utilityId = this.navParams.get("utilityId");
        this.compGenerateBill = this.navParams.get("compGenerateBill");
        this.preview = JSON.parse(this.navParams.get("preview"));
        this.companyBillData = this.navParams.get("companyBillData");
        // console.log(this.companyBillData);
    }
    Utilitybillpay03Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad Utilitybillpay03Page');
    };
    Utilitybillpay03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utilitybillpay03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay03\utilitybillpay03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{menuTitle}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n  <form (submit)="ConfirmPayUtilityBillAction(otp)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="utilityBillPayError03">\n      {{utilityBillPayError03}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Confirm Utility Bill Payment</b></div>\n\n      <div class="preview-box01">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Debit Account :</b>\n          </div>\n          <div col col-7>\n            {{debitAccDetails.accountNo}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Account Title :</b>\n          </div>\n          <div col col-7 class="item-text-wrap">\n            {{debitAccDetails.accountTitle}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Available Balance :</b>\n          </div>\n          <div col col-7>\n            {{debitAccDetails.availableBalance| currency : "BDT" : 2}}\n          </div>\n        </div>\n      </div>\n\n      <div class="preview-box01" *ngIf="compGenerateBill==\'0\'">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Company Name :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{companyDetails.companyName.split(\'-\')[1]}}\n          </div>\n        </div>\n\n\n        <div class="row item regular-font" *ngIf="categoryDesc">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Bill Category :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{categoryDesc}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Customer/Account No :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{billingAccount}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Bill Number :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{billNo}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Amount :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{amount | currency : "BDT" : 2}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Charge :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{charge | currency : "BDT" : 2}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Total Deduction :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{totAmount | currency : "BDT" : 2}}\n          </div>\n        </div>\n\n      </div>\n\n      <div class="preview-box01" *ngIf="compGenerateBill==\'1\'">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Company Name :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{companyDetails.companyName.split(\'-\')[1]}}\n          </div>\n        </div>\n\n        <div class="row item regular-font" *ngFor="let item of preview">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>{{item.label}} :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n           {{item.value}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Bank Charge :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{charge | currency : "BDT" : 2}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Total Deduction :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{totAmount | currency : "BDT" : 2}}\n          </div>\n        </div>\n\n      </div>\n\n      <div class="preview-box">\n\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>OTP : </strong>\n          </div>\n          <div col col-7>\n            <input type="tel" name="otp"  placeholder="Enter OTP" [(ngModel)]="otp" autocomplete="false"  maxlength="6" class="textField">\n          </div>\n        </div>\n      </div>\n\n      <button class="button-green button-block " type="submit" tabindex="2"> Submit\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay03\utilitybillpay03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__["a" /* UtilitybillpayProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__["a" /* AlertProvider */]])
    ], Utilitybillpay03Page);
    return Utilitybillpay03Page;
}());

//# sourceMappingURL=utilitybillpay03.js.map

/***/ })

});
//# sourceMappingURL=10.js.map