webpackJsonp([86],{

/***/ 416:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeHistory01PageModule", function() { return CashByCodeHistory01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history01__ = __webpack_require__(519);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__ = __webpack_require__(250);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var CashByCodeHistory01PageModule = (function () {
    function CashByCodeHistory01PageModule() {
    }
    CashByCodeHistory01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history01__["a" /* CashByCodeHistory01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_history01__["a" /* CashByCodeHistory01Page */]),
                __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__["a" /* DatePickerModule */]
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history01__["a" /* CashByCodeHistory01Page */]
            ]
        })
    ], CashByCodeHistory01PageModule);
    return CashByCodeHistory01PageModule;
}());

//# sourceMappingURL=cash-by-code-history01.module.js.map

/***/ }),

/***/ 519:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeHistory01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__ionic_native_date_picker__ = __webpack_require__(249);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_cash_by_code_service_cash_by_code_service__ = __webpack_require__(255);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var CashByCodeHistory01Page = (function () {
    function CashByCodeHistory01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, cashByCodeService, datePicker, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.cashByCodeService = cashByCodeService;
        this.datePicker = datePicker;
        this.gaProvider = gaProvider;
        this.viewCashRemitHistory01Action = function (fromDate, toDate) {
            var _this = this;
            var fDay = (fromDate.getDate() < 10 ? '0' : '') + fromDate.getDate();
            var tDay = (toDate.getDate() < 10 ? '0' : '') + toDate.getDate();
            var fMonth = fromDate.getMonth() + 1;
            fMonth = (fMonth < 10 ? '' : '') + fMonth;
            var tMonth = toDate.getMonth() + 1;
            tMonth = (tMonth < 10 ? '' : '') + tMonth;
            this.fdt = fDay.toString() + "/" + fMonth.toString() + "/" + fromDate.getFullYear().toString();
            this.tdt = tDay.toString() + "/" + tMonth.toString() + "/" + toDate.getFullYear().toString();
            var dateExp = new RegExp("(0?[1-9]|[12][0-9]|3[01])/(0?[1-9]|1[012])/((19|20)\\d\\d)");
            var flag = true;
            if (!dateExp.test(this.fdt)) {
                this.iCashRemitHistoryError01 = "Invalid From Date. Please Enter Valid Date.";
                flag = false;
                return;
            }
            if (!dateExp.test(this.tdt)) {
                this.iCashRemitHistoryError01 = "Invalid To Date. Please Enter Valid Date";
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
                var appData = this.storage.retrieveFromStorage("appData");
                var encFromDate = this.cryptoUtil.getEncryptVal(this.fdt);
                var encToDate = this.cryptoUtil.getEncryptVal(this.tdt);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.cashByCodeService.getLocalTransferRecords(unMaskToken, appData.userId, appData.appId, encFromDate, encToDate)
                    .then(function (data) {
                    _this.onICashRemitHistoryComplete(data);
                });
            }
        };
        this.onICashRemitHistoryComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('CashByCodeHistory02Page', { 'iCashRemitDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.iCashRemitHistoryError01 = data.note;
            }
            else {
                this.iCashRemitHistoryError01 = "System Error Contact with Administrator.";
            }
        };
        this.toDate = new Date();
        this.fromDate = new Date();
        this.fromDate.setTime(this.toDate.getTime() - 30 * 24 * 60 * 60 * 1000);
        this.fromDate.toISOString();
        this.maxDate = new Date();
        this.minDate = new Date();
        this.minDate.setFullYear(this.maxDate.getFullYear() - 10);
        this.minDate.toISOString();
    }
    CashByCodeHistory01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("iCashRemit History");
    };
    CashByCodeHistory01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-history01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-history01\cash-by-code-history01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iCashRemit History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="iCashRemitHistoryError01">\n    {{iCashRemitHistoryError01}}\n  </div>\n\n  <ion-list>\n\n\n\n    <div class="row item regular-font" >\n\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>From Date : </strong>\n      </div>\n      <div col col-7 >\n         <span ion-datepicker  [(value)]="fromDate" [max]="maxDate" [min]="minDate" clear class="ScheduleDate">\n		    <span> <ion-icon name="clipboard" icon-left ></ion-icon> {{fromDate | date:"dd/MM/yyyy"}} </span>\n	      </span>\n      </div>\n\n    </div>\n\n    <div class="row item regular-font" >\n\n      <div col col-5  class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>To Date : </strong>\n      </div>\n      <div col col-7 >\n         <span ion-datepicker  [(value)]="toDate"  [max]="maxDate"  [min]="minDate" class="ScheduleDate">\n		     <span><ion-icon name="clipboard" icon-left ></ion-icon> {{toDate |  date:"dd/MM/yyyy"}}  </span>\n	      </span>\n      </div>\n\n    </div>\n\n\n\n\n    <button class="button button-green button-block " (click)="viewCashRemitHistory01Action(fromDate,toDate)" tabindex="2"> Submit\n    </button>\n\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-history01\cash-by-code-history01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_cash_by_code_service_cash_by_code_service__["a" /* CashByCodeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__ionic_native_date_picker__["a" /* DatePicker */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], CashByCodeHistory01Page);
    return CashByCodeHistory01Page;
}());

//# sourceMappingURL=cash-by-code-history01.js.map

/***/ })

});
//# sourceMappingURL=86.js.map