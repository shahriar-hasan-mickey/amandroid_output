webpackJsonp([12],{

/***/ 491:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Utilitybillpay01PageModule", function() { return Utilitybillpay01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utilitybillpay01__ = __webpack_require__(594);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var Utilitybillpay01PageModule = (function () {
    function Utilitybillpay01PageModule() {
    }
    Utilitybillpay01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay01__["a" /* Utilitybillpay01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utilitybillpay01__["a" /* Utilitybillpay01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay01__["a" /* Utilitybillpay01Page */]
            ]
        })
    ], Utilitybillpay01PageModule);
    return Utilitybillpay01PageModule;
}());

//# sourceMappingURL=utilitybillpay01.module.js.map

/***/ }),

/***/ 594:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Utilitybillpay01Page; });
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
 * Generated class for the Utilitybillpay01Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var Utilitybillpay01Page = (function () {
    function Utilitybillpay01Page(navCtrl, navParams, storage, maskTokenUtil, tokenService, cryptoUtil, billPayService, alertProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.billPayService = billPayService;
        this.alertProvider = alertProvider;
        this.accountList = [];
        this.intCompanyWiseRegisteredAccount = function () {
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
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encCompanyCode = this.cryptoUtil.getEncryptVal(this.companyDetails.companyCode);
                this.billPayService.getRegisteredAccList(unMaskToken, appData.userId, appData.appId, encCompanyCode)
                    .then(function (data) {
                    _this.onGetUtilityCompanyListComplete(data);
                });
            }
        };
        this.onGetUtilityCompanyListComplete = function (data) {
            this.utilityBillPayError01 = "";
            if (data.statusCode == 1) {
                this.accountList = data.object;
                // console.log(this.accountList);
            }
            else if (data.statusCode == 0) {
                this.utilityBillPayError01 = data.note;
                return;
            }
            else {
                this.utilityBillPayError01 = "System Error Contact with Administrator.";
                return;
            }
        };
        /////This functin return label value list for bill Payment
        this.fetchLabelValueForPayBill = function () {
            var _this = this;
            this.utilityBillPayError01 = "";
            if (this.billingAccount == "" || typeof (this.billingAccount) == "undefined") {
                this.utilityBillPayError01 = "Please select billing account.";
                return;
            }
            if (this.billingAccount == "Other") {
                if (this.newAccount == "" || typeof (this.newAccount) == "undefined") {
                    this.utilityBillPayError01 = "Please Enter new account no.";
                    return;
                }
                this.billingAccount = this.newAccount;
            }
            var length = this.billCategories.length;
            if (length > 0) {
                if (this.billCategory == "" || typeof (this.billCategory) == "undefined") {
                    this.utilityBillPayError01 = "Please select bill category.";
                    return;
                }
            }
            else {
                this.billCategory = "";
            }
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenCompleteForLabelVaue(data);
            });
        };
        this.onNewTokenGenCompleteForLabelVaue = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encCompanyCode = this.cryptoUtil.getEncryptVal(this.companyDetails.companyCode);
                var encCategory = this.cryptoUtil.getEncryptVal(this.billCategory);
                var encDebitAccount = this.cryptoUtil.getEncryptVal(this.debitAccDetails.accountNo);
                var encIsNewReg = this.cryptoUtil.getEncryptVal(this.isNewReg);
                var encBillingAccount = this.cryptoUtil.getEncryptVal(this.billingAccount);
                this.billPayService.getUtilityBillPayLabels(unMaskToken, appData.userId, appData.appId, encCompanyCode, encDebitAccount, encCategory, encIsNewReg, encBillingAccount)
                    .then(function (data) {
                    _this.onGetUtilityBillLabelsComplete(data);
                });
            }
        };
        this.onGetUtilityBillLabelsComplete = function (data) {
            // console.log(data);
            if (data.statusCode == 1) {
                if (this.billCategory == "") {
                    this.billCategoryDesc = "";
                }
                else {
                    this.billCategoryDesc = this.getCategoryDesc();
                }
                this.navCtrl.push('Utilitybillpay02Page', {
                    'labelValueList': JSON.stringify(data.object.labelsMap),
                    'debitAccDetails': JSON.stringify(data.object.accInfoBean),
                    'menuTitle': this.menuTitle,
                    'selectedCategory': this.billCategory,
                    'categoryDesc': this.billCategoryDesc,
                    'companyDetails': JSON.stringify(this.companyDetails),
                    'billingAccount': this.billingAccount,
                    'isNewReg': this.isNewReg
                });
            }
            else if (data.statusCode == 0) {
                this.utilityBillPayError01 = data.note;
                return;
            }
            else {
                this.utilityBillPayError01 = "System Error Contact with Administrator.";
                return;
            }
        };
        this.getCategoryDesc = function () {
            for (var i = 0; i < this.companyDetails.category.length; i++) {
                if (this.companyDetails.category[i].value == this.billCategory) {
                    return this.companyDetails.category[i].label;
                }
            }
        };
        this.utilityBillPayError01 = "";
        this.menuTitle = this.navParams.get("menuTitle");
        this.operationType = this.navParams.get("operationType");
        var company = this.navParams.get("companyDetails");
        this.companyDetails = JSON.parse(company);
        // console.log(this.companyDetails);
        var debitAccDetails = this.navParams.get("debitAccDetails");
        this.debitAccDetails = JSON.parse(debitAccDetails);
        this.billCategories = this.companyDetails.category;
        this.isNewReg = "0";
        this.showNewReg = false;
        this.newAccount = "";
        this.intCompanyWiseRegisteredAccount();
    }
    Utilitybillpay01Page.prototype.onSelectChange = function (selectedValue) {
        if (selectedValue == "Other") {
            this.isNewReg = "1";
            this.showNewReg = true;
        }
        else {
            this.isNewReg = "0";
            this.showNewReg = false;
        }
    };
    Utilitybillpay01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad Utilitybillpay01Page');
    };
    Utilitybillpay01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utilitybillpay01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay01\utilitybillpay01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{menuTitle}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="utilityBillPayError01">\n    {{utilityBillPayError01}}\n  </div>\n\n  <ion-list>\n\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n      <b>Provide Required information</b></div>\n\n    <div class="preview-box01">\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Company Name :</b>\n        </div>\n        <div col col-7 class="item-text-wrap">\n          {{companyDetails.companyName.split(\'-\')[1]}}\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Debit Account :</b>\n        </div>\n        <div col col-7 class="item-text-wrap">\n          {{debitAccDetails.accountNo}}\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Account Title :</b>\n        </div>\n        <div col col-7 class="item-text-wrap">\n          {{debitAccDetails.title}}\n        </div>\n      </div>\n\n      <div class="row item regular-font" *ngIf="accountList.length>0">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Billing Account :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="billingAccount" (change)="onSelectChange(billingAccount)" class="textFieldCustom" style="width: 100%">\n            <option value="{{item.value}}" *ngFor="let item of accountList">{{item.value}}</option>\n          </select>\n        </div>\n      </div>\n\n      <div class="row item regular-font" *ngIf="showNewReg">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>New Account</b>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Billing Account"  [(ngModel)]="newAccount" maxlength="12" class="textField" type="tel">\n        </div>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="billCategories.length>0">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Bill Category :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="billCategory" class="textFieldCustom" style="width: 100%">\n            <option value="{{item.value}}" *ngFor="let item of billCategories">{{item.label}}</option>\n          </select>\n        </div>\n      </div>\n\n    </div>\n\n    <button class="button button-green button-block" color="success" fill="outline"\n            (click)="fetchLabelValueForPayBill()"> Submit\n    </button>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay01\utilitybillpay01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__["a" /* UtilitybillpayProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__["a" /* AlertProvider */]])
    ], Utilitybillpay01Page);
    return Utilitybillpay01Page;
}());

//# sourceMappingURL=utilitybillpay01.js.map

/***/ })

});
//# sourceMappingURL=12.js.map