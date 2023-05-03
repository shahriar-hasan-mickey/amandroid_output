webpackJsonp([14],{

/***/ 489:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Utilitybillcompanyselection01PageModule", function() { return Utilitybillcompanyselection01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utilitybillcompanyselection01__ = __webpack_require__(592);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var Utilitybillcompanyselection01PageModule = (function () {
    function Utilitybillcompanyselection01PageModule() {
    }
    Utilitybillcompanyselection01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillcompanyselection01__["a" /* Utilitybillcompanyselection01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utilitybillcompanyselection01__["a" /* Utilitybillcompanyselection01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillcompanyselection01__["a" /* Utilitybillcompanyselection01Page */]
            ]
        })
    ], Utilitybillcompanyselection01PageModule);
    return Utilitybillcompanyselection01PageModule;
}());

//# sourceMappingURL=utilitybillcompanyselection01.module.js.map

/***/ }),

/***/ 592:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Utilitybillcompanyselection01Page; });
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








var Utilitybillcompanyselection01Page = (function () {
    function Utilitybillcompanyselection01Page(navCtrl, navParams, storage, maskTokenUtil, tokenService, cryptoUtil, billPayService, alertProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.billPayService = billPayService;
        this.alertProvider = alertProvider;
        this.filterData = [];
        this.intUtilityBillCompanyList = function () {
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
                this.billPayService.getUtilityBillCompanyList(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onGetUtilityCompanyListComplete(data);
                });
            }
        };
        this.onGetUtilityCompanyListComplete = function (data) {
            this.utilityBillCompanySelectionError01 = "";
            if (data.statusCode == 1) {
                this.companyList = data.object;
                this.filterData = this.companyList;
            }
            else if (data.statusCode == 0) {
                this.utilityBillCompanySelectionError01 = data.note;
                return;
            }
            else {
                this.utilityBillCompanySelectionError01 = "System Error Contact with Administrator.";
                return;
            }
        };
        this.setFilteredItems = function () {
            var _this = this;
            this.filterData = this.companyList.filter(function (comp) {
                return ((comp.companyName.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1));
            });
        };
        this.companySelectionAction = function (item) {
            this.utilityBillCompanySelectionError01 = "";
            this.navCtrl.push('Utilitybillpay01Page', {
                'operationType': '3',
                'menuTitle': 'Utility Bill Pay',
                'companyDetails': JSON.stringify(item),
                'debitAccDetails': JSON.stringify(this.debitAccDetails)
            });
        };
        this.debitAccDetails = JSON.parse(this.navParams.get("debitAccDetails"));
        // console.log(this.debitAccDetails);
        this.intUtilityBillCompanyList();
    }
    Utilitybillcompanyselection01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad Utilitybillcompanyselection01Page');
    };
    Utilitybillcompanyselection01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utilitybillcompanyselection01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillcompanyselection01\utilitybillcompanyselection01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Utility Bill Pay</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n\n  <div class="item item-divider item-text-wrap regular-font" style="color: red"\n       *ngIf="utilityBillCompanySelectionError01">\n    {{utilityBillCompanySelectionError01}}\n  </div>\n\n  <ion-grid>\n    <ion-row>\n      <ion-col>\n\n        <ion-searchbar\n          [(ngModel)]="searchTerm" animated="true" placeholder="Search Company"\n          [showCancelButton]="shouldShowCancel"\n          (ionInput)="setFilteredItems()" float="true"\n          (ionCancel)="onCancel($event)">\n        </ion-searchbar>\n\n      </ion-col>\n    </ion-row>\n\n    <ion-scroll style="width:100%;height:100vh" scrollY="true">\n      <ion-list scroll="true">\n\n        <ion-row style="border-bottom:1px solid #e7e7e7;padding-top: 15px;height: 90px"\n                 class="ion-justify-content-center"\n                 *ngFor="let item of filterData" (click)="companySelectionAction(item)">\n          <ion-col col-2>\n            <img src="assets/imgs/ubp/{{item.imgURL}}" height="60" width="60"/>\n          </ion-col>\n          <ion-col col-10 style="padding-top: 15px">\n            <label class="regular-font"> {{item.companyName.split(\'-\')[1]}}</label>\n          </ion-col>\n        </ion-row>\n      </ion-list>\n    </ion-scroll>\n\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillcompanyselection01\utilitybillcompanyselection01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__["a" /* UtilitybillpayProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__["a" /* AlertProvider */]])
    ], Utilitybillcompanyselection01Page);
    return Utilitybillcompanyselection01Page;
}());

//# sourceMappingURL=utilitybillcompanyselection01.js.map

/***/ })

});
//# sourceMappingURL=14.js.map