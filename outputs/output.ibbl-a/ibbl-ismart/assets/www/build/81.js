webpackJsonp([81],{

/***/ 422:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCode01PageModule", function() { return CashByCode01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code01__ = __webpack_require__(525);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCode01PageModule = (function () {
    function CashByCode01PageModule() {
    }
    CashByCode01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code01__["a" /* CashByCode01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code01__["a" /* CashByCode01Page */])
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code01__["a" /* CashByCode01Page */]
            ]
        })
    ], CashByCode01PageModule);
    return CashByCode01PageModule;
}());

//# sourceMappingURL=cash-by-code01.module.js.map

/***/ }),

/***/ 525:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCode01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var CashByCode01Page = (function () {
    function CashByCode01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, transferService, gaProvider) {
        var _this = this;
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.transferService = transferService;
        this.gaProvider = gaProvider;
        this.accounts = [];
        this.CashByCode01Action = function (account) {
            var _this = this;
            this.cashByCodeError01 = "";
            if (account.debitApproved == false) {
                this.cashByCodeError01 = "This Account is not permitted for debit.";
                return;
            }
            if (this.transactional == 1) {
                this.sourceAcc = account.accountNo;
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                this.tokenService.getNewToken(unMaskRefToken)
                    .then(function (data) {
                    _this.onNewTokenGenComplete(data);
                });
            }
            else {
                this.navCtrl.push('TxErrorPage');
            }
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var encAccNo = this.cryptoUtil.getEncryptVal(this.sourceAcc);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.transferService.fetchDestAndPurposeList(unMaskToken, appData.userId, appData.appId, encAccNo)
                    .then(function (data) {
                    _this.onFetchDestAndPurposeListComplete(data);
                });
            }
        };
        this.onFetchDestAndPurposeListComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('CashByCode02Page', {
                    'accountNo': this.sourceAcc,
                    'sourcePage': 'cashByCode01',
                    'transferDetails01': JSON.stringify(data.object)
                });
            }
            else if (data.statusCode == 0) {
                this.cashByCodeError01 = data.note;
            }
            else {
                this.cashByCodeError01 = "System Error Contact with Administrator.";
            }
        };
        this.goToICashRemitHistoryAction = function () {
            this.navCtrl.push('CashByCodeHistory01Page', {});
        };
        this.goToWithdrawUsingCodeAction = function () {
            this.navCtrl.push('CashByCodeWithdraw01Page', {});
        };
        this.goToiCashRemitBeneficiaryAction = function () {
            this.navCtrl.push('CashByCodeManageBeneficiary01Page', {});
        };
        var dAccount = this.storage.retrieveFromStorage('accounts');
        if (dAccount == null || dAccount == "") {
            this.accounts = [];
        }
        else {
            dAccount = cryptoUtil.getDecryptVal(dAccount);
            dAccount = JSON.parse(dAccount);
            Object.keys(dAccount).forEach(function (key) {
                var value = dAccount[key];
                if (value.debitApproved == true) {
                    _this.accounts.push(value);
                }
            });
        }
        var dWelCome = this.storage.retrieveFromStorage('welcomeVal');
        if (dWelCome == null || dWelCome == "") {
        }
        else {
            dWelCome = cryptoUtil.getDecryptVal(dWelCome);
            dWelCome = JSON.parse(dWelCome);
            this.transactional = dWelCome.transactional;
        }
    }
    CashByCode01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Cash by code account selection");
    };
    CashByCode01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code01\cash-by-code01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iCashRemit</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n  <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="cashByCodeError01">\n    {{cashByCodeError01}}\n  </div>\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%"\n                (click)="goToWithdrawUsingCodeAction()">How to withdraw cash by code?\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%"\n                (click)="goToiCashRemitBeneficiaryAction()">Manage Beneficiary\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  <div class="row item regular-font" *ngIf="accounts.length>0">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%"\n                (click)="goToICashRemitHistoryAction()">iCashRemit History\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n\n  <div class="list">\n    <ion-item *ngFor="let account of accounts">\n      <button ion-item no-lines (click)="CashByCode01Action(account)">\n        <span class="row regular-font"><span>Account No : &nbsp;</span> <span\n          style="text-decoration: underline;color: blue">{{account.accountNo}}</span></span>\n        <span class="row item-text-wrap responsive-sm regular-font">Account Title : {{account.title}}</span>\n      </button>\n    </ion-item>\n  </div>\n\n  <ion-item class="item-text-wrap item-divider regular-font" style="color: red;" *ngIf="accounts.length<=0">Approve your\n    account for debit from your branch\n  </ion-item>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code01\cash-by-code01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], CashByCode01Page);
    return CashByCode01Page;
}());

//# sourceMappingURL=cash-by-code01.js.map

/***/ })

});
//# sourceMappingURL=81.js.map