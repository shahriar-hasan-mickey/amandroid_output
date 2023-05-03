webpackJsonp([66],{

/***/ 438:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTranserOtherBank01PageModule", function() { return FundTranserOtherBank01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank01__ = __webpack_require__(541);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTranserOtherBank01PageModule = (function () {
    function FundTranserOtherBank01PageModule() {
    }
    FundTranserOtherBank01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank01__["a" /* fundTransferOtherBank01 */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank01__["a" /* fundTransferOtherBank01 */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank01__["a" /* fundTransferOtherBank01 */]
            ]
        })
    ], FundTranserOtherBank01PageModule);
    return FundTranserOtherBank01PageModule;
}());

//# sourceMappingURL=fund-transer-other-bank01.module.js.map

/***/ }),

/***/ 541:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return fundTransferOtherBank01; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var fundTransferOtherBank01 = (function () {
    function fundTransferOtherBank01(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, transferService, ftOtherBankService, gaProvider) {
        var _this = this;
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.transferService = transferService;
        this.ftOtherBankService = ftOtherBankService;
        this.gaProvider = gaProvider;
        this.accounts = [];
        this.operationType = 0;
        this.iTransferOtherBank01Action = function (account) {
            var _this = this;
            this.otherBankTransferError01 = "";
            if (account.debitApproved == false) {
                this.otherBankTransferError01 = "This Account is not permitted for iRecharge.";
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
            var _this = this;
            if (data.statusCode == 1) {
                this.accountDetails = data.object.accInfoBean;
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.ftOtherBankService.fetchTransferTypeList(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onFetchFundTransferListTypeComplete(data);
                });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError01 = data.note;
            }
            else {
                this.otherBankTransferError01 = "System Error Contact with Administrator.";
            }
        };
        this.onFetchFundTransferListTypeComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('FundTranserOtherBank02Page', {
                    'accountNo': this.sourceAcc,
                    'transferTypes': JSON.stringify(data.object.ftObServices),
                    'ftOBDestType': JSON.stringify(data.object.ftObServicesDestTypes),
                    'accountDetails': JSON.stringify(this.accountDetails)
                });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError01 = data.note;
            }
            else {
                this.otherBankTransferError01 = "System Error Contact with Administrator.";
            }
        };
        this.goToTransferHistoryAction = function () {
            this.navCtrl.push('FundTransferOtherBankHistory01Page');
        };
        this.goToAddOBCreditAccountAction = function () {
            var _this = this;
            this.operationType = 1;
            this.header = "Add Beneficiary";
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenCompleteForManageAcc(data);
            });
        };
        this.goToDeleteOBCreditAccountAction = function () {
            var _this = this;
            this.operationType = 2;
            this.header = "Delete Beneficiary";
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenCompleteForManageAcc(data);
            });
        };
        this.onNewTokenGenCompleteForManageAcc = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.ftOtherBankService.fetchTransferTypeList(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onFetchDestAndPurposeListManageAccountComplete(data);
                });
            }
        };
        this.onFetchDestAndPurposeListManageAccountComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ManageObCreditAccount01Page', { 'operationType': this.operationType,
                    "header": this.header,
                    'ftOBDestType': JSON.stringify(data.object.ftObServicesDestTypes),
                    'transferTypes': JSON.stringify(data.object.ftObServices) });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError01 = data.note;
            }
            else {
                this.otherBankTransferError01 = "System Error Contact with Administrator.";
            }
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
    fundTransferOtherBank01.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ITransfer01Page');
        this.gaProvider.startTrackerWithId("iTransfer - Other Bank");
    };
    fundTransferOtherBank01 = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transer-other-bank01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank01\fund-transer-other-bank01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n  <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="otherBankTransferError01">{{otherBankTransferError01}}</div>\n\n  <div class="row item regular-font"  *ngIf="accounts.length>0">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%" (click)="goToTransferHistoryAction()" >Transfer History\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  <div class="row item regular-font"  *ngIf="accounts.length>0">\n    <ion-row>\n      <ion-col text-left col-6>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%" (click)="goToAddOBCreditAccountAction()" >Add Beneficiary\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  <div class="row item regular-font"  *ngIf="accounts.length>0">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%" (click)="goToDeleteOBCreditAccountAction()" >Delete Beneficiary\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n\n  <div class="item item-divider  regular-font item-text-wrap" *ngIf="accounts.length>0" style="background: rgba(98,193,105,0.52);color: #202020"><b>Select account to transfer</b></div>\n  <div class="list">\n    <ion-item *ngFor="let account of accounts">\n      <button ion-item no-lines (click)="iTransferOtherBank01Action(account)" >\n        <span class="row regular-font" ><span>Account No : &nbsp;</span> <span style="text-decoration: underline;color: blue">{{account.accountNo}}</span></span>\n        <span class="row item-text-wrap responsive-sm regular-font">Account Title : {{account.title}}</span>\n      </button>\n    </ion-item>\n  </div>\n\n  <ion-item class="item-text-wrap item-divider regular-font" style="color: red;" *ngIf="accounts.length<=0">Approve your account for debit from your branch</ion-item>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank01\fund-transer-other-bank01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], fundTransferOtherBank01);
    return fundTransferOtherBank01;
}());

//# sourceMappingURL=fund-transer-other-bank01.js.map

/***/ })

});
//# sourceMappingURL=66.js.map