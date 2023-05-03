webpackJsonp([84],{

/***/ 418:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeManageBeneficiary01PageModule", function() { return CashByCodeManageBeneficiary01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_manage_beneficiary01__ = __webpack_require__(521);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeManageBeneficiary01PageModule = (function () {
    function CashByCodeManageBeneficiary01PageModule() {
    }
    CashByCodeManageBeneficiary01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_manage_beneficiary01__["a" /* CashByCodeManageBeneficiary01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_manage_beneficiary01__["a" /* CashByCodeManageBeneficiary01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_manage_beneficiary01__["a" /* CashByCodeManageBeneficiary01Page */]
            ]
        })
    ], CashByCodeManageBeneficiary01PageModule);
    return CashByCodeManageBeneficiary01PageModule;
}());

//# sourceMappingURL=cash-by-code-manage-beneficiary01.module.js.map

/***/ }),

/***/ 521:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeManageBeneficiary01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_cash_by_code_service_cash_by_code_service__ = __webpack_require__(255);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var CashByCodeManageBeneficiary01Page = (function () {
    function CashByCodeManageBeneficiary01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, cashByCodeService, alertCtrl, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.cashByCodeService = cashByCodeService;
        this.alertCtrl = alertCtrl;
        this.gaProvider = gaProvider;
        this.manageICashRemitCreditAccError = "";
        this.mobileNo = "";
        this.listSize = 0;
        this.initCashByCodeBeneficiary = function () {
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
                this.cashByCodeService.fetchCashByCodeBeneficiary(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onFetchCashByCodeAccountsListComplete(data);
                });
            }
        };
        this.onFetchCashByCodeAccountsListComplete = function (data) {
            if (data.statusCode == 1) {
                this.creditAccDetails = data.object;
                this.destAccList = this.creditAccDetails.beans;
                this.maxSubscriptions = this.creditAccDetails.maxSubscriptions;
                this.listSize = this.destAccList.length;
            }
            else if (data.statusCode == 0) {
                this.manageICashRemitCreditAccError = data.note;
            }
            else {
                this.manageICashRemitCreditAccError = "System Error Contact with Administrator.";
            }
        };
        this.goToAddCashByCodeBeneficiaryAction = function () {
            var currentSubs = this.destAccList.length;
            var maxSubs = this.maxSubscriptions;
            if (currentSubs >= maxSubs) {
                this.manageICashRemitCreditAccError = "You have no more subscription left.";
            }
            else {
                this.navCtrl.push('CashByCodeAddBeneficiary01Page');
            }
        };
        this.deleteCashByCodeBeneficiary = function (listItem) {
            var _this = this;
            this.mobileNo = listItem.subscriptionValue;
            this.manageICashRemitCreditAccError = "";
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Confirm Delete');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>Are you sure you want to delete beneficiary mobile no :  <strong>" + listItem.subscriptionValue) + '</strong></center>';
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
            }, 30000);
        };
        this.onNewTokenGenCompleteForDelete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.push('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encMobileNo = this.cryptoUtil.getEncryptVal(this.mobileNo);
                this.cashByCodeService.removeCashByCodeBeneficiary(unMaskToken, appData.userId, appData.appId, encMobileNo)
                    .then(function (data) {
                    _this.onDeleteBeneficiaryComplete(data);
                });
            }
        };
        this.onDeleteBeneficiaryComplete = function (data) {
            var _this = this;
            if (data.statusCode == 1) {
                var radioAlert_1 = this.alertCtrl.create();
                radioAlert_1.setTitle('Success');
                radioAlert_1.setCssClass("alertLogCss");
                radioAlert_1.setMessage("<center>Beneficiary successfully Deleted.</center>");
                radioAlert_1.addButton({
                    text: 'OK',
                    handler: function (data) {
                        _this.initCashByCodeBeneficiary();
                    }
                });
                radioAlert_1.present();
                setTimeout(function () {
                    radioAlert_1.dismiss();
                }, 20000);
            }
            else if (data.statusCode == 0) {
                this.manageICashRemitCreditAccError = data.note;
            }
            else {
                this.manageICashRemitCreditAccError = "System Error Contact with Administrator.";
            }
        };
        this.initCashByCodeBeneficiary();
    }
    CashByCodeManageBeneficiary01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Manage iCashRemit Credit Account");
    };
    CashByCodeManageBeneficiary01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-manage-beneficiary01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-manage-beneficiary01\cash-by-code-manage-beneficiary01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Manage iCashRemit Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="manageICashRemitCreditAccError">{{manageICashRemitCreditAccError}}\n  </div>\n\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%" (click)="goToAddCashByCodeBeneficiaryAction()" >Add new\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  <div class="list" *ngIf="listSize>=1">\n    <div class="row" style="background: rgba(157, 174, 119, 0.47);color: #222222">\n      <div class="col-75 text-left regular-font" style="padding-left: 18px"><b>Beneficiary list</b></div>\n      <div class="col-25 text-right regular-font" style="padding-right: 17px"><b></b></div>\n    </div>\n\n\n    <ion-list>\n      <ion-item *ngFor="let listItem of destAccList" >\n\n        <div class="row">\n\n          <div class="col-75 item-text-wrap regular-font">\n            <span><b>Mobile No :&nbsp;</b></span><span> {{listItem.subscriptionValue}}</span><br>\n            <span><b>Name : &nbsp;</b></span><span>{{listItem.subscriptionDesc}}</span><br>\n            <span><b>NID : &nbsp;</b></span><span>{{listItem.additionalInfo}}</span><br>\n          </div>\n\n          <div class="col-25 item-text-wrap regular-font text-right" style="\n                margin-top: 0px" (click)="deleteCashByCodeBeneficiary(listItem)">\n            <span style="text-decoration: underline; color: blue" class="regular-font"><b>Delete</b></span><br>\n          </div>\n\n        </div>\n      </ion-item>\n    </ion-list>\n\n  </div>\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="listSize<=0">\n    You have no beneficiary subscription.\n  </div>\n\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-manage-beneficiary01\cash-by-code-manage-beneficiary01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_cash_by_code_service_cash_by_code_service__["a" /* CashByCodeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_6__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], CashByCodeManageBeneficiary01Page);
    return CashByCodeManageBeneficiary01Page;
}());

//# sourceMappingURL=cash-by-code-manage-beneficiary01.js.map

/***/ })

});
//# sourceMappingURL=84.js.map