webpackJsonp([89],{

/***/ 414:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeAddBeneficiary01PageModule", function() { return CashByCodeAddBeneficiary01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary01__ = __webpack_require__(517);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeAddBeneficiary01PageModule = (function () {
    function CashByCodeAddBeneficiary01PageModule() {
    }
    CashByCodeAddBeneficiary01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary01__["a" /* CashByCodeAddBeneficiary01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary01__["a" /* CashByCodeAddBeneficiary01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary01__["a" /* CashByCodeAddBeneficiary01Page */]
            ]
        })
    ], CashByCodeAddBeneficiary01PageModule);
    return CashByCodeAddBeneficiary01PageModule;
}());

//# sourceMappingURL=cash-by-code-add-beneficiary01.module.js.map

/***/ }),

/***/ 517:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeAddBeneficiary01Page; });
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








var CashByCodeAddBeneficiary01Page = (function () {
    function CashByCodeAddBeneficiary01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, cashByCodeService, alertCtrl, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.cashByCodeService = cashByCodeService;
        this.alertCtrl = alertCtrl;
        this.gaProvider = gaProvider;
        this.formVal = { mobileNo: "", name: "", nid: "" };
        this.cashByCodeAddBeneficiary01Error = "";
        this.AddICashRemitAccount01Action = function () {
            var _this = this;
            this.cashByCodeAddBeneficiary01Error = "";
            var flag = true;
            this.mobileNo = this.formVal.mobileNo;
            this.name = this.formVal.name;
            this.nid = this.formVal.nid;
            if (this.mobileNo == "" || typeof (this.mobileNo) == "undefined") {
                this.cashByCodeAddBeneficiary01Error = "Beneficiary mobile no. is required.";
                flag = false;
                return;
            }
            if (this.name == "" || typeof (this.name) == "undefined") {
                this.cashByCodeAddBeneficiary01Error = "Beneficiary Name is required.";
                flag = false;
                return;
            }
            // if (this.nid == "" || typeof(this.nid) == "undefined") {
            //   this.cashByCodeAddBeneficiary01Error = "NID number is required.";
            //   flag = false;
            //   return;
            // }
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
                var encMobileNo = this.cryptoUtil.getEncryptVal(this.mobileNo);
                var encName = this.cryptoUtil.getEncryptVal(this.name);
                var encNID = this.cryptoUtil.getEncryptVal(this.nid);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.cashByCodeService.addCashByCodeBeneficiary(unMaskToken, appData.userId, appData.appId, encMobileNo, encName, encNID)
                    .then(function (data) {
                    _this.BeneficiaryAccountAddComplete(data);
                });
            }
        };
        this.BeneficiaryAccountAddComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('CashByCodeAddBeneficiary02Page', { 'subscriptionDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.cashByCodeAddBeneficiary01Error = data.note;
            }
            else {
                //$log.info("else Loop");
                this.cashByCodeAddBeneficiary01Error = "System Error Contact with Administrator.";
            }
        };
    }
    CashByCodeAddBeneficiary01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad AddCreditAccount01Page');
        this.gaProvider.startTrackerWithId("Add Cash by code beneficiary");
    };
    CashByCodeAddBeneficiary01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-add-beneficiary01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-add-beneficiary01\cash-by-code-add-beneficiary01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Add iCashRemit Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n  <form (submit)="AddICashRemitAccount01Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red"\n         *ngIf="cashByCodeAddBeneficiary01Error">{{cashByCodeAddBeneficiary01Error}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Add new beneficiary</b></div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary Mobile No :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Mobile No" name="mobileNo" type="tel" [(ngModel)]="formVal.mobileNo" maxlength="11" class="textField">\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary Name (As per NID/Passport) :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Name" name="name" type="text" [(ngModel)]="formVal.name" maxlength="40" class="textField">\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Beneficiary NID :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter NID" name="nid" type="tel" [(ngModel)]="formVal.nid" maxlength="17" class="textField">\n        </div>\n      </div>\n\n      <button class="button button-green button-block" tabindex="1">Add\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-add-beneficiary01\cash-by-code-add-beneficiary01.html"*/,
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
    ], CashByCodeAddBeneficiary01Page);
    return CashByCodeAddBeneficiary01Page;
}());

//# sourceMappingURL=cash-by-code-add-beneficiary01.js.map

/***/ })

});
//# sourceMappingURL=89.js.map