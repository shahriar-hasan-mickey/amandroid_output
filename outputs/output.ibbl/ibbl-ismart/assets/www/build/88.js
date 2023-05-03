webpackJsonp([88],{

/***/ 413:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeAddBeneficiary02PageModule", function() { return CashByCodeAddBeneficiary02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary02__ = __webpack_require__(516);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeAddBeneficiary02PageModule = (function () {
    function CashByCodeAddBeneficiary02PageModule() {
    }
    CashByCodeAddBeneficiary02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary02__["a" /* CashByCodeAddBeneficiary02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary02__["a" /* CashByCodeAddBeneficiary02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_add_beneficiary02__["a" /* CashByCodeAddBeneficiary02Page */]
            ]
        })
    ], CashByCodeAddBeneficiary02PageModule);
    return CashByCodeAddBeneficiary02PageModule;
}());

//# sourceMappingURL=cash-by-code-add-beneficiary02.module.js.map

/***/ }),

/***/ 516:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeAddBeneficiary02Page; });
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


var CashByCodeAddBeneficiary02Page = (function () {
    function CashByCodeAddBeneficiary02Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.anotherICashRemit = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('CashByCode01Page');
        };
        var subscription = this.navParams.get("subscriptionDetails");
        this.subscriptionDetails = JSON.parse(subscription);
    }
    CashByCodeAddBeneficiary02Page.prototype.ionViewDidLoad = function () {
    };
    CashByCodeAddBeneficiary02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-add-beneficiary02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-add-beneficiary02\cash-by-code-add-beneficiary02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Add iCashRemit Beneficiary</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <ion-list>\n\n    <div class="item item-divider  regular-font item-text-wrap" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Beneficiary added successfully with following details.</b></div>\n\n\n    <label class="row item">\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Mobile No : </b></span>\n      <span class="col col-60 item-text-wrap regular-font " style="text-align: left">{{subscriptionDetails.subscriptionValue}}</span>\n    </label>\n\n    <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary Name\n          : </b></span>\n      <span class="col col-40 item-text-wrap regular-font " style="text-align: left">{{subscriptionDetails.subscriptionDesc}}</span>\n    </label>\n\n    <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Beneficiary NID\n          : </b></span>\n      <span class="col col-40 item-text-wrap regular-font " style="text-align: left">{{subscriptionDetails.additionalInfo}}</span>\n    </label>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines style="width: 100%" (click)="goToWelcome()">Home\n          </button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%"\n                  (click)="anotherICashRemit()">iCashRemit\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-add-beneficiary02\cash-by-code-add-beneficiary02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], CashByCodeAddBeneficiary02Page);
    return CashByCodeAddBeneficiary02Page;
}());

//# sourceMappingURL=cash-by-code-add-beneficiary02.js.map

/***/ })

});
//# sourceMappingURL=88.js.map