webpackJsonp([82],{

/***/ 421:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeWithdraw02PageModule", function() { return CashByCodeWithdraw02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw02__ = __webpack_require__(524);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeWithdraw02PageModule = (function () {
    function CashByCodeWithdraw02PageModule() {
    }
    CashByCodeWithdraw02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw02__["a" /* CashByCodeWithdraw02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw02__["a" /* CashByCodeWithdraw02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_withdraw02__["a" /* CashByCodeWithdraw02Page */]
            ]
        })
    ], CashByCodeWithdraw02PageModule);
    return CashByCodeWithdraw02PageModule;
}());

//# sourceMappingURL=cash-by-code-withdraw02.module.js.map

/***/ }),

/***/ 524:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeWithdraw02Page; });
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


var CashByCodeWithdraw02Page = (function () {
    function CashByCodeWithdraw02Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.images = [{ "title": "Select cardless transaction", "url": "https://ibblportal.islamibankbd.com/images/info.data/iCashRemit/cash_remit_1.jpg" },
            { "title": "Select cash by code", "url": "https://ibblportal.islamibankbd.com/images/info.data/iCashRemit/cash_remit_2.jpg" },
            { "title": "Enter transaction ID", "url": "https://ibblportal.islamibankbd.com/images/info.data/iCashRemit/cash_remit_3.jpg" },
            { "title": "Enter PIN 1 & PIN 2", "url": "https://ibblportal.islamibankbd.com/images/info.data/iCashRemit/cash_remit_4.jpg" }];
    }
    CashByCodeWithdraw02Page.prototype.ionViewDidLoad = function () {
    };
    CashByCodeWithdraw02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-withdraw02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-withdraw02\cash-by-code-withdraw02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Withdraw cash by code</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <ion-slides pager="true"  zoom="true" class="regular-font">\n    <ion-slide *ngFor="let image of images">\n      <h4 text-left style="padding-left: 10px">{{image.title}}</h4>\n      <div class="swiper-zoom-container" >\n        <img [src]="image.url">\n      </div>\n    </ion-slide>\n  </ion-slides>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-withdraw02\cash-by-code-withdraw02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */], __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], CashByCodeWithdraw02Page);
    return CashByCodeWithdraw02Page;
}());

//# sourceMappingURL=cash-by-code-withdraw02.js.map

/***/ })

});
//# sourceMappingURL=82.js.map