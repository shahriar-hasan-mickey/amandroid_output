webpackJsonp([96],{

/***/ 408:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddCreditAccount01PageModule", function() { return AddCreditAccount01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_credit_account01__ = __webpack_require__(511);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddCreditAccount01PageModule = (function () {
    function AddCreditAccount01PageModule() {
    }
    AddCreditAccount01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account01__["a" /* AddCreditAccount01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_credit_account01__["a" /* AddCreditAccount01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account01__["a" /* AddCreditAccount01Page */]
            ]
        })
    ], AddCreditAccount01PageModule);
    return AddCreditAccount01PageModule;
}());

//# sourceMappingURL=add-credit-account01.module.js.map

/***/ }),

/***/ 511:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddCreditAccount01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var AddCreditAccount01Page = (function () {
    function AddCreditAccount01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.gaProvider = gaProvider;
        this.formVal = { accountNo: "" };
        this.addCreditAccount01Error = "";
        this.AddNewCreditAccount01Action = function () {
            var _this = this;
            this.addCreditAccount01Error = "";
            var flag = true;
            this.accountNo = this.formVal.accountNo;
            if (this.accountNo == "" || typeof (this.accountNo) == "undefined") {
                this.addCreditAccount01Error = "Account No. can not be blank.";
                flag = false;
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
                var is2Factor = "0";
                var appData = this.storage.retrieveFromStorage("appData");
                var encAccountNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encTwoFactor = this.cryptoUtil.getEncryptVal(is2Factor);
                this.iTransferService.addCreditAccount(unMaskToken, appData.userId, appData.appId, encAccountNo, encTwoFactor)
                    .then(function (data) {
                    _this.CreditAccountAddComplete(data);
                });
            }
        };
        this.CreditAccountAddComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('AddCreditAccount02Page', { 'accDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.addCreditAccount01Error = data.note;
            }
            else {
                //$log.info("else Loop");
                this.addCreditAccount01Error = "System Error Contact with Administrator.";
            }
        };
    }
    AddCreditAccount01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad AddCreditAccount01Page');
        this.gaProvider.startTrackerWithId("Add Credit Account");
    };
    AddCreditAccount01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-credit-account01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account01\add-credit-account01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Manage Credit Account</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n<form (submit)="AddNewCreditAccount01Action()">\n  <div class="item item-divider item-text-wrap regular-font" style="color: red"\n       *ngIf="addCreditAccount01Error">{{addCreditAccount01Error}}\n  </div>\n\n  <ion-list>\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n      <b>Add new Account</b></div>\n\n    <div class="row item regular-font" *ngIf="!showVar">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Account No :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Account" name="accountNo" type="tel" [(ngModel)]="formVal.accountNo" maxlength="17" class="textField">\n        </div>\n    </div>\n\n    <button class="button button-green button-block" tabindex="1">Add\n    </button>\n\n  </ion-list>\n</form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account01\add-credit-account01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], AddCreditAccount01Page);
    return AddCreditAccount01Page;
}());

//# sourceMappingURL=add-credit-account01.js.map

/***/ })

});
//# sourceMappingURL=96.js.map