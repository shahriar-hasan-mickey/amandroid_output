webpackJsonp([68],{

/***/ 435:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "DeleteCreditAccountOtherBank01PageModule", function() { return DeleteCreditAccountOtherBank01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__delete_credit_account_other_bank01__ = __webpack_require__(538);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var DeleteCreditAccountOtherBank01PageModule = (function () {
    function DeleteCreditAccountOtherBank01PageModule() {
    }
    DeleteCreditAccountOtherBank01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__delete_credit_account_other_bank01__["a" /* DeleteCreditAccountOtherBank01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__delete_credit_account_other_bank01__["a" /* DeleteCreditAccountOtherBank01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__delete_credit_account_other_bank01__["a" /* DeleteCreditAccountOtherBank01Page */]
            ]
        })
    ], DeleteCreditAccountOtherBank01PageModule);
    return DeleteCreditAccountOtherBank01PageModule;
}());

//# sourceMappingURL=delete-credit-account-other-bank01.module.js.map

/***/ }),

/***/ 538:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return DeleteCreditAccountOtherBank01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var DeleteCreditAccountOtherBank01Page = (function () {
    function DeleteCreditAccountOtherBank01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, config, gaProvider) {
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
        this.deleteCreditAccountOBError01 = "";
        this.accountNo = "";
        this.listSize = 0;
        this.initCreditAccount = function () {
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
                var encRec = this.cryptoUtil.getEncryptVal(this.receiverType);
                this.iTransferService.getObFtBeneficiaryAccountList(unMaskToken, appData.userId, appData.appId, encTxService, encRec)
                    .then(function (data) {
                    _this.onFetchOBCreditAccountListComplete(data);
                });
            }
        };
        this.onFetchOBCreditAccountListComplete = function (data) {
            if (data.statusCode == 1) {
                this.creditAccList = data.object.obFtBeneficiaries;
                if (this.creditAccList == null) {
                    this.listSize = 0;
                    this.deleteCreditAccountOBError01 = "You have no credit account subscription. Please subscribe first.";
                }
                else {
                    this.listSize = this.creditAccList.length;
                }
            }
            else if (data.statusCode == 0) {
                this.deleteCreditAccountOBError01 = data.note;
            }
            else {
                this.deleteCreditAccountOBError01 = "System Error Contact with Administrator.";
            }
        };
        this.deleteOtherBankCreditAccount = function (listItem) {
            var _this = this;
            this.beneficiaryId = listItem.beneficiaryId;
            this.deleteCreditAccountOBError01 = "";
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Confirm Delete');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>Are you sure you want to delete Account : <strong>" + listItem.beneficiaryAccount + "</strong>" + " Beneficiary Name : <strong>" + listItem.beneficiaryName + "</strong></center>");
            radioAlert.addButton('Cancel');
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                    var appData = _this.storage.retrieveFromStorage("appData");
                    var unMaskRefToken = _this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                    _this.tokenService.getNewToken(unMaskRefToken)
                        .then(function (data) {
                        _this.onNewTokenGenCompleteForDelete(data);
                    });
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 20000);
        };
        this.onNewTokenGenCompleteForDelete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encBenId = this.cryptoUtil.getEncryptVal(this.beneficiaryId);
                var encTxService = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encRec = this.cryptoUtil.getEncryptVal(this.receiverType);
                this.iTransferService.removeObFtBeneficiaryAccount(unMaskToken, appData.userId, appData.appId, encBenId, encTxService, encRec)
                    .then(function (data) {
                    _this.onDeleteOBCreditAccountListComplete(data);
                });
            }
        };
        this.onDeleteOBCreditAccountListComplete = function (data) {
            var _this = this;
            if (data.statusCode == 1) {
                var radioAlert_1 = this.alertCtrl.create();
                radioAlert_1.setTitle('Success');
                radioAlert_1.setCssClass("alertLogCss");
                radioAlert_1.setMessage("<center>Credit Account successfully Deleted.</center>");
                radioAlert_1.addButton({
                    text: 'OK',
                    handler: function (data) {
                        _this.initCreditAccount();
                    }
                });
                radioAlert_1.present();
                setTimeout(function () {
                    radioAlert_1.dismiss();
                }, 20000);
            }
            else if (data.statusCode == 0) {
                this.deleteCreditAccountOBError01 = data.note;
            }
            else {
                this.deleteCreditAccountOBError01 = "System Error Contact with Administrator.";
            }
        };
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.routeShow = this.fundTransferType != this.config.transferTypeNPSB;
        this.initCreditAccount();
    }
    DeleteCreditAccountOtherBank01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Manage Other Bank Credit Account");
    };
    DeleteCreditAccountOtherBank01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-delete-credit-account-other-bank01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\delete-credit-account-other-bank01\delete-credit-account-other-bank01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Delete Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="deleteCreditAccountOBError01">{{deleteCreditAccountOBError01}}\n  </div>\n\n\n  <div class="list" *ngIf="listSize>=1">\n    <div class="row" style="background: rgba(157, 174, 119, 0.47);color: #222222">\n      <div class="col-75 text-left regular-font" style="padding-left: 18px"><b>Beneficiary List</b></div>\n      <div class="col-25 text-right regular-font" style="padding-right: 17px"><b></b></div>\n    </div>\n\n\n    <ion-list>\n      <ion-item *ngFor="let listItem of creditAccList" >\n\n        <div class="row">\n\n          <div class="col-75 item-text-wrap regular-font">\n            <span><b>Beneficiary Name :&nbsp;</b></span><span> {{listItem.beneficiaryName}}</span><br>\n            <span><b>Beneficiary A/C : &nbsp;</b></span><span>{{listItem.beneficiaryAccount}}</span><br>\n            <span ><b>Bank Name : &nbsp;</b></span><span>{{listItem.bankName}}</span><br>\n            <span *ngIf="routeShow"><b>Branch Name : &nbsp;</b></span><span *ngIf="routeShow">{{listItem.branchName}}</span><br>\n            <span *ngIf="routeShow"><b>Routing No : &nbsp;</b></span><span *ngIf="routeShow"> {{listItem.beneficiaryRoute}}</span>\n          </div>\n\n          <div class="col-25 item-text-wrap regular-font text-right" style="\n                margin-top: 0px" (click)="deleteOtherBankCreditAccount(listItem)">\n            <span style="text-decoration: underline; color: blue" class="regular-font"><b>Delete</b></span>\n          </div>\n\n        </div>\n      </ion-item>\n    </ion-list>\n\n  </div>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\delete-credit-account-other-bank01\delete-credit-account-other-bank01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_8__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], DeleteCreditAccountOtherBank01Page);
    return DeleteCreditAccountOtherBank01Page;
}());

//# sourceMappingURL=delete-credit-account-other-bank01.js.map

/***/ })

});
//# sourceMappingURL=68.js.map