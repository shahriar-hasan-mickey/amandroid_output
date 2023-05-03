webpackJsonp([80],{

/***/ 432:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCode02PageModule", function() { return CashByCode02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code02__ = __webpack_require__(535);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCode02PageModule = (function () {
    function CashByCode02PageModule() {
    }
    CashByCode02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code02__["a" /* CashByCode02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code02__["a" /* CashByCode02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code02__["a" /* CashByCode02Page */]
            ]
        })
    ], CashByCode02PageModule);
    return CashByCode02PageModule;
}());

//# sourceMappingURL=cash-by-code02.module.js.map

/***/ }),

/***/ 535:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCode02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_cash_by_code_service_cash_by_code_service__ = __webpack_require__(255);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var CashByCode02Page = (function () {
    function CashByCode02Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, cashByCodeService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.cashByCodeService = cashByCodeService;
        this.tokenService = tokenService;
        this.showMobile = false;
        this.showNameNID = false;
        this.formVal = { amount: "", benType: "", benAccount: "", benName: "", benNID: "" };
        this.CashByCode02Action = function () {
            var _this = this;
            this.cashByCodeError02 = "";
            var validateAmountExp = new RegExp("[0-9]{1,6}$");
            var flag = true;
            this.amount = this.formVal.amount;
            this.benAccount = this.formVal.benAccount;
            this.benName = this.formVal.benName;
            this.benType = this.formVal.benType;
            this.nid = this.formVal.benNID;
            if (this.benType == "" || typeof (this.benType) == "undefined") {
                this.cashByCodeError02 = "Please Select Beneficiary Type.";
                flag = false;
                return;
            }
            if (this.benType == "O") {
                if (this.benAccount == "" || typeof (this.benAccount) == "undefined") {
                    this.cashByCodeError02 = "Please Enter Beneficiary Mobile No.";
                    flag = false;
                    return;
                }
                if (this.benName == "" || typeof (this.benName) == "undefined") {
                    this.cashByCodeError02 = "Please Enter Beneficiary Name.";
                    flag = false;
                    return;
                }
            }
            if (this.amount == "" || typeof (this.amount) == "undefined") {
                this.cashByCodeError02 = "Please Enter Transfer Account.";
                flag = false;
                return;
            }
            if (!validateAmountExp.test(this.amount)) {
                this.cashByCodeError02 = "Invalid Transfer amount.";
                flag = false;
                this.formVal = { amount: "" };
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
                var encSrcAccNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encBenType = this.cryptoUtil.getEncryptVal(this.benType);
                var encAmount = this.cryptoUtil.getEncryptVal(this.amount.toString());
                var encBenAccount = this.cryptoUtil.getEncryptVal(this.benAccount);
                var encName = this.cryptoUtil.getEncryptVal(this.benName);
                var encNID = this.cryptoUtil.getEncryptVal(this.nid);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.cashByCodeService.initCashRemittance(unMaskToken, appData.userId, appData.appId, encSrcAccNo, encBenType, encBenAccount, encName, encNID, encAmount)
                    .then(function (data) {
                    _this.onInitCashRemitComplete(data);
                });
            }
        };
        this.onInitCashRemitComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('CashByCode03Page', {
                    'srcAccDetails': JSON.stringify(this.srcAccDetails),
                    'initCashByCodeResponse': JSON.stringify(data.object),
                    'nid': this.formVal.benNID
                });
            }
            else if (data.statusCode == 0) {
                this.cashByCodeError02 = data.note;
            }
            else {
                this.cashByCodeError02 = "System Error Contact with Administrator.";
            }
        };
        this.selectDestinationAccount = function () {
            var _this = this;
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenCompleteForFetch(data);
            });
        };
        this.onNewTokenGenCompleteForFetch = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.cashByCodeService.fetchCashByCodeBeneficiary(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onFetchCashByCodeAccountsListComplete(data);
                });
            }
        };
        this.onFetchCashByCodeAccountsListComplete = function (data) {
            if (data.statusCode == 1) {
                var creditAccDetails = data.object;
                this.beneficiaryList = creditAccDetails.beans;
                var listSize = this.beneficiaryList.length;
                if (listSize <= 0) {
                    this.cashByCodeError02 = "You have no beneficiary subscription. Please subscribe first.";
                    return;
                }
                else {
                    this.navCtrl.push('CashByCodeBeneficiarySelectionPage', {
                        'accountNo': this.accountNo,
                        'beneficiaryList': JSON.stringify(this.beneficiaryList),
                        'transferDetails01': JSON.stringify(this.transferDetails01),
                        'amount': this.formVal.amount
                    });
                }
            }
            else if (data.statusCode == 0) {
                this.cashByCodeError02 = data.note;
            }
            else {
                this.cashByCodeError02 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        var txDetail = this.navParams.get("transferDetails01");
        this.transferDetails01 = JSON.parse(txDetail);
        this.srcAccDetails = this.transferDetails01.accInfoBean;
        var srPage = this.navParams.get("sourcePage");
        if (srPage == "listPage") {
            var selAccount = this.navParams.get("selectedAccount");
            this.selectedAccount = JSON.parse(selAccount);
            var amount = this.navParams.get("amount");
            this.formVal = {
                amount: amount, benType: "O", benAccount: this.selectedAccount.subscriptionValue,
                benName: this.selectedAccount.subscriptionDesc, benNID: this.selectedAccount.additionalInfo
            };
            this.showMobile = true;
            this.showNameNID = true;
        }
        else {
            this.formVal = { amount: "500", benType: "", benAccount: "", benName: "", benNID: "" };
            this.showMobile = false;
            this.showNameNID = false;
        }
    }
    CashByCode02Page.prototype.onSelectChange = function (selectedValue) {
        if (selectedValue == "O") {
            this.showMobile = true;
            this.showNameNID = false;
        }
        else {
            this.showMobile = false;
            this.showNameNID = false;
            this.formVal.benAccount = "";
            this.formVal.benName = "";
            this.formVal.benNID = "";
        }
    };
    CashByCode02Page.prototype.ionViewDidLoad = function () {
    };
    CashByCode02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code02\cash-by-code02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iCashRemit</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="CashByCode02Action(formVal)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="cashByCodeError02">\n      {{cashByCodeError02}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Required information for iCashRemit</b></div>\n\n      <div class="preview-box01">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Source Account : </strong>\n          </div>\n          <div col col-7 >\n            {{accountNo}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Title : </strong>\n          </div>\n          <div col col-7 >\n            {{srcAccDetails.accountTitle}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Balance : </strong>\n          </div>\n          <div col col-7 >\n            {{srcAccDetails.availableBalance| currency : "BDT" : 2}}\n          </div>\n        </div>\n      </div>\n\n\n      <div class="row item regular-font">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary ? : </strong>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="formVal.benType" (change)="onSelectChange(formVal.benType)" name="benType"\n                  class="textFieldCustom" style="width: 100%;" id="benType" tabindex="1">\n            <option value="S">Self</option>\n            <option value="O">Others</option>\n          </select>\n        </div>\n\n      </div>\n\n\n      <div class="preview-box01">\n        <div class="row item regular-font" *ngIf="showMobile">\n\n          <div col col-5 text-right class="item-text-wrap item-divider regular-font">\n            <strong>Beneficiary mobile No : </strong>\n          </div>\n          <div col col-7 (click)="selectDestinationAccount()">\n            <ion-icon name="ios-arrow-dropdown-outline" style="margin-top: -0px;padding-left: 5px;font-size: 28px">\n            </ion-icon>\n            {{formVal.benAccount}}\n          </div>\n        </div>\n\n        <div class="row item regular-font" *ngIf="showNameNID">\n\n          <div col col-5 text-right class="item-text-wrap item-divider regular-font">\n            <strong>Beneficiary Name (As per NID/Passport) : </strong>\n          </div>\n          <div col col-7>\n            {{formVal.benName}}\n          </div>\n        </div>\n\n        <div class="row item regular-font"  *ngIf="showNameNID">\n\n          <div col col-5 text-right class="item-text-wrap item-divider regular-font">\n            <strong>Beneficiary NID : </strong>\n          </div>\n          <div col col-7>\n            {{formVal.benNID}}\n          </div>\n        </div>\n      </div>\n\n\n      <div class="row item regular-font">\n\n        <div col col-5 text-right class="item-text-wrap item-divider regular-font">\n          <strong>Amount : </strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Amount" type="tel" name="amount" [(ngModel)]="formVal.amount" maxlength="6"\n          class="textField" autocomplete="off">\n\n          <ion-range min="500" max="20000" step="500" snaps="false" [(ngModel)]="formVal.amount" name="amount" color="secondary">\n\n            <ion-label range-left>500</ion-label>\n            <ion-label range-right>20000</ion-label>\n          </ion-range>\n          <!--<label class="row item">Change Amount</label>-->\n\n        </div>\n\n      </div>\n\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code02\cash-by-code02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_6__providers_cash_by_code_service_cash_by_code_service__["a" /* CashByCodeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], CashByCode02Page);
    return CashByCode02Page;
}());

//# sourceMappingURL=cash-by-code02.js.map

/***/ })

});
//# sourceMappingURL=80.js.map