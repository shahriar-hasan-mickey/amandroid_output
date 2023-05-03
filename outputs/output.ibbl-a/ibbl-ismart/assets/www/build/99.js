webpackJsonp([99],{

/***/ 405:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddCreditAccountOtherBank01PageModule", function() { return AddCreditAccountOtherBank01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank01__ = __webpack_require__(508);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddCreditAccountOtherBank01PageModule = (function () {
    function AddCreditAccountOtherBank01PageModule() {
    }
    AddCreditAccountOtherBank01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank01__["a" /* AddCreditAccountOtherBank01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank01__["a" /* AddCreditAccountOtherBank01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account_other_bank01__["a" /* AddCreditAccountOtherBank01Page */]
            ]
        })
    ], AddCreditAccountOtherBank01PageModule);
    return AddCreditAccountOtherBank01PageModule;
}());

//# sourceMappingURL=add-credit-account-other-bank01.module.js.map

/***/ }),

/***/ 508:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddCreditAccountOtherBank01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var AddCreditAccountOtherBank01Page = (function () {
    function AddCreditAccountOtherBank01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, config, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.config = config;
        this.gaProvider = gaProvider;
        //this veriable is for showing error
        this.addCreditAccountOBError01 = "";
        this.branchList = [];
        this.formVal = { recAcc: "", recName: "" };
        this.AddOBNewCreditAccount01Action = function () {
            var _this = this;
            this.addCreditAccountOBError01 = "";
            var flag = true;
            this.recAcc = this.formVal.recAcc;
            this.recName = this.formVal.recName;
            if (this.bankCode == "" || typeof (this.bankCode) == "undefined") {
                this.addCreditAccountOBError01 = "Please select beneficiary bank.";
                flag = false;
                return;
            }
            if (this.eftFlag) {
                if (this.branchCode == "" || typeof (this.branchCode) == "undefined") {
                    this.addCreditAccountOBError01 = "Please select beneficiary branch.";
                    flag = false;
                    return;
                }
            }
            if (this.recAcc == "" || typeof (this.recAcc) == "undefined") {
                this.addCreditAccountOBError01 = "Receiver account no can not be blank.";
                flag = false;
                return;
            }
            if (this.recName == "" || typeof (this.recName) == "undefined") {
                this.addCreditAccountOBError01 = "Receiver name can not be blank.";
                flag = false;
                return;
            }
            if (this.eftFlag) {
                this.encRoutingNo = this.cryptoUtil.getEncryptVal(this.branchCode);
            }
            else {
                this.encRoutingNo = this.cryptoUtil.getEncryptVal(this.bankCode);
            }
            if (flag) {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                this.tokenService.getNewToken(unMaskRefToken)
                    .then(function (data) {
                    _this.onNewTokenGenCompleteForAdd(data);
                });
            }
        };
        this.onNewTokenGenCompleteForAdd = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var is2Factor = "0";
                var appData = this.storage.retrieveFromStorage("appData");
                var encTxService = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encRecType = this.cryptoUtil.getEncryptVal(this.receiverType);
                this.encRecAcc = this.cryptoUtil.getEncryptVal(this.recAcc);
                this.encRecName = this.cryptoUtil.getEncryptVal(this.recName);
                var encTwoFactor = this.cryptoUtil.getEncryptVal(is2Factor);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.initAddObFtBeneficiaryAccount(unMaskToken, appData.userId, appData.appId, encTxService, encRecType, this.encRoutingNo, this.encRecAcc, this.encRecName, encTwoFactor)
                    .then(function (data) {
                    _this.OBCreditAccountAddComplete(data);
                });
            }
        };
        this.OBCreditAccountAddComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('AddCreditAccountOtherBank02Page', {
                    'subAccDetail': JSON.stringify(data.object),
                    'fundTransferType': this.fundTransferType,
                    'receiverType': this.receiverType,
                    'eftBankDetail': JSON.stringify(this.eftBankDetail),
                    'eftBranchDetail': JSON.stringify(this.eftBranchDetail),
                    'npsbBankDetail': JSON.stringify(this.npsbBankDetail),
                    'encRoutingNo': this.encRoutingNo,
                    'encRecAcc': this.encRecAcc,
                    'encRecName': this.encRecName
                });
            }
            else if (data.statusCode == 0) {
                this.addCreditAccountOBError01 = data.note;
            }
            else {
                this.addCreditAccountOBError01 = "System Error Contact with Administrator.";
            }
        };
        this.initBankList = function () {
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
                var encTxService = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encDescType = this.cryptoUtil.getEncryptVal(this.receiverType);
                this.iTransferService.fetchBankList(unMaskToken, appData.userId, appData.appId, encTxService, encDescType)
                    .then(function (data) {
                    _this.onFetchBankListComplete(data);
                });
            }
        };
        this.onFetchBankListComplete = function (data) {
            if (data.statusCode == 1) {
                this.bankList = data.object;
                if (this.bankList == null) {
                    this.addCreditAccountOBError01 = "You have no credit account subscription. Please subscribe first.";
                }
                else {
                    this.listSize = this.bankList.length;
                }
            }
            else if (data.statusCode == 0) {
                this.addCreditAccountOBError01 = data.note;
            }
            else {
                this.addCreditAccountOBError01 = "System Error Contact with Administrator.";
            }
        };
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.eftFlag = this.fundTransferType != this.config.transferTypeNPSB;
        this.initBankList();
    }
    AddCreditAccountOtherBank01Page.prototype.onEFTBankListChange = function (bankCode) {
        this.branchList = [];
        for (var i = 0; i < this.bankList.length; i++) {
            var eachBank = this.bankList[i];
            if (eachBank.bankCode == bankCode) {
                this.branchCode = "";
                this.branchList = eachBank.branches;
                this.eftBankDetail = eachBank.bankName;
            }
        }
        // console.log(this.eftBankDetail);
    };
    AddCreditAccountOtherBank01Page.prototype.onNPSBBankListChange = function (code) {
        this.branchList = [];
        for (var i = 0; i < this.bankList.length; i++) {
            var eachBank = this.bankList[i];
            if (eachBank.code == code) {
                this.npsbBankDetail = eachBank;
            }
        }
        // console.log(this.npsbBankDetail);
    };
    AddCreditAccountOtherBank01Page.prototype.onEFTBranchChange = function (code) {
        this.eftBranchDetail = "";
        for (var i = 0; i < this.branchList.length; i++) {
            var eachBranch = this.branchList[i];
            if (eachBranch.value == code) {
                this.eftBranchDetail = eachBranch;
            }
        }
        // console.log(this.eftBranchDetail);
    };
    AddCreditAccountOtherBank01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Add Beneficiary Other Bank");
    };
    AddCreditAccountOtherBank01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-credit-account-other-bank01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank01\add-credit-account-other-bank01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Add Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n  <form (submit)="AddOBNewCreditAccount01Action()">\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="addCreditAccountOBError01">{{addCreditAccountOBError01}}\n  </div>\n\n\n  <div class="list" *ngIf="listSize>=1">\n    <div class="row" style="background: rgba(157, 174, 119, 0.47);color: #222222">\n      <div class="col-75 text-left regular-font" style="padding-left: 18px"><b>Provide beneficiary information</b></div>\n      <div class="col-25 text-right regular-font" style="padding-right: 17px"><b></b></div>\n    </div>\n\n\n    <ion-list>\n\n      <div class="row item regular-font" *ngIf="eftFlag" >\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <b>Beneficiary Bank :</b>\n      </div>\n      <div col col-7>\n        <select [(ngModel)]="bankCode" name="bankCode" class="textFieldCustom"\n                style="width: 100%"  (change)="onEFTBankListChange(bankCode)">\n          <option *ngFor="let bank of bankList" value="{{bank.bankCode}}">{{bank.bankName}}</option>\n        </select>\n      </div>\n    </div>\n\n      <div class="row item regular-font" *ngIf="!eftFlag">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Beneficiary Bank :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="bankCode" name="bankCode" class="textFieldCustom"\n                  style="width: 100%" (change)="onNPSBBankListChange(bankCode)">\n            <option *ngFor="let bank of bankList" value="{{bank.code}}">{{bank.name}}</option>\n          </select>\n        </div>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="eftFlag">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Beneficiary Branch :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="branchCode" name="branchCode" class="textFieldCustom" style="width: 100%"\n                  (change)="onEFTBranchChange(branchCode)">\n            <option *ngFor="let branch of branchList" value="{{branch.value}}">{{branch.label}}</option>\n          </select>\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary A/C :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Account No" name="accountNo" type="tel" [(ngModel)]="formVal.recAcc" maxlength="17" class="textField">\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary Name :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Name" name="receiverName" type="text" [(ngModel)]="formVal.recName" maxlength="15" class="textField">\n        </div>\n      </div>\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n\n    </ion-list>\n\n  </div>\n\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="listSize<=0">\n      No banks are currently receiving instructions.\n    </div>\n\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account-other-bank01\add-credit-account-other-bank01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_7__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], AddCreditAccountOtherBank01Page);
    return AddCreditAccountOtherBank01Page;
}());

//# sourceMappingURL=add-credit-account-other-bank01.js.map

/***/ })

});
//# sourceMappingURL=99.js.map