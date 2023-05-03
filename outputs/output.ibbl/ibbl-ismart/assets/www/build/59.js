webpackJsonp([59],{

/***/ 443:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTransferOtherBankHistory03PageModule", function() { return FundTransferOtherBankHistory03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history03__ = __webpack_require__(546);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTransferOtherBankHistory03PageModule = (function () {
    function FundTransferOtherBankHistory03PageModule() {
    }
    FundTransferOtherBankHistory03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history03__["a" /* FundTransferOtherBankHistory03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history03__["a" /* FundTransferOtherBankHistory03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_history03__["a" /* FundTransferOtherBankHistory03Page */]
            ]
        })
    ], FundTransferOtherBankHistory03PageModule);
    return FundTransferOtherBankHistory03PageModule;
}());

//# sourceMappingURL=fund-transfer-other-bank-history03.module.js.map

/***/ }),

/***/ 546:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTransferOtherBankHistory03Page; });
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


var FundTransferOtherBankHistory03Page = (function () {
    function FundTransferOtherBankHistory03Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.iTransferDetails = JSON.parse(navParams.get("iTransferDetails"));
        this.transferType = navParams.get("transferType");
    }
    FundTransferOtherBankHistory03Page.prototype.ionViewDidLoad = function () {
    };
    FundTransferOtherBankHistory03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transfer-other-bank-history03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-history03\fund-transfer-other-bank-history03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank Details</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n    <b>Transfer Information</b></div>\n\n    <!--new change according to the requirement-->\n  <ion-list>\n    <div class="preview-box" *ngFor="let transferInfo of iTransferDetails">\n      <label class="row item" *ngFor="let labelValue of transferInfo">\n        <span class="col col-6 item-text-wrap item-divider regular-font" style="text-align: right;"><b>{{labelValue.label}}&nbsp; :</b></span>\n        <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{labelValue.value}}</span>\n      </label>\n    </div>\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-history03\fund-transfer-other-bank-history03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], FundTransferOtherBankHistory03Page);
    return FundTransferOtherBankHistory03Page;
}());

//# sourceMappingURL=fund-transfer-other-bank-history03.js.map

/***/ })

});
//# sourceMappingURL=59.js.map