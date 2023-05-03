webpackJsonp([83],{

/***/ 419:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeWithdraw01PageModule", function() { return CashByCodeWithdraw01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw01__ = __webpack_require__(522);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeWithdraw01PageModule = (function () {
    function CashByCodeWithdraw01PageModule() {
    }
    CashByCodeWithdraw01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw01__["a" /* CashByCodeWithdraw01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw01__["a" /* CashByCodeWithdraw01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw01__["a" /* CashByCodeWithdraw01Page */]
            ]
        })
    ], CashByCodeWithdraw01PageModule);
    return CashByCodeWithdraw01PageModule;
}());

//# sourceMappingURL=cash-by-code-withdraw01.module.js.map

/***/ }),

/***/ 522:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeWithdraw01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var CashByCodeWithdraw01Page = (function () {
    function CashByCodeWithdraw01Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.goToCashByCodeWithdraw01Page = function () {
            this.navCtrl.push('CashByCodeWithdraw02Page');
        };
    }
    CashByCodeWithdraw01Page.prototype.ionViewDidLoad = function () {
    };
    CashByCodeWithdraw01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-withdraw01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-withdraw01\cash-by-code-withdraw01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Withdraw cash by code</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <div class="row  index-background">\n    <div class="col">\n\n      <br>\n\n      <div class="regular-font"\n           style="min-height:30px;color:#479571;background: transparent;border: none;text-align: left;padding-left: 30px">\n        To withdraw cash from ATM by code, you need three things\n      </div>\n\n      <div style="padding-left: 40px;padding-top: 10px">\n        <li>Transaction ID</li>\n        <br/>\n        <li>PIN 1</li>\n        <br/>\n        <li>PIN 2</li>\n      </div>\n\n      <br>\n\n      <div class="regular-font"\n           style="min-height:30px;color:#479571;background: transparent;border: none;text-align: left;padding-left: 30px">\n        Steps to withdraw cash from ATM\n      </div>\n\n      <div style="padding-left: 40px">\n\n        <li>Step 1 : Use IBBL iSmart to generate <strong>transaction ID</strong> and <strong>PIN 1</strong>. <strong>PIN 2</strong> will be sent to beneficiary mobile no.</li>\n        <br/>\n        <li>Step 2 : Go to nearest IBBL ATM booth and follow the transaction flow below </li>\n\n      </div>\n\n      <br/>\n      <div style="padding-left: 40px" class="regular-font"><strong>Note : </strong><span style="color: blue">Account will be debited when the fund withdraws from ATM.</span></div>\n    </div>\n  </div>\n\n  <div class="row item regular-font" style="border: none">\n    <ion-row >\n      <ion-col>\n        <button class="btnTextRightUnderline" icon-only no-lines  style="width: 100%;text-align: center" (click)="goToCashByCodeWithdraw01Page()" >Transaction flow</button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-withdraw01\cash-by-code-withdraw01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], CashByCodeWithdraw01Page);
    return CashByCodeWithdraw01Page;
}());

//# sourceMappingURL=cash-by-code-withdraw01.js.map

/***/ })

});
//# sourceMappingURL=83.js.map