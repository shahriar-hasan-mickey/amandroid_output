webpackJsonp([90],{

/***/ 415:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "BalanceEnquiry02PageModule", function() { return BalanceEnquiry02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__balance_enquiry02__ = __webpack_require__(518);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var BalanceEnquiry02PageModule = (function () {
    function BalanceEnquiry02PageModule() {
    }
    BalanceEnquiry02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__balance_enquiry02__["a" /* BalanceEnquiry02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__balance_enquiry02__["a" /* BalanceEnquiry02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__balance_enquiry02__["a" /* BalanceEnquiry02Page */]
            ]
        })
    ], BalanceEnquiry02PageModule);
    return BalanceEnquiry02PageModule;
}());

//# sourceMappingURL=balance-enquiry02.module.js.map

/***/ }),

/***/ 518:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BalanceEnquiry02Page; });
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


/**
 * Generated class for the BalanceEnquiry02Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var BalanceEnquiry02Page = (function () {
    function BalanceEnquiry02Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.balanceInfo = [];
        this.balanceDetails = JSON.parse(this.navParams.get("balanceDetails"));
        for (var key in this.balanceDetails) {
            if (this.balanceDetails[key] != null) {
                this.balanceInfo.push({
                    key: key,
                    value: this.balanceDetails[key]
                });
            }
        }
    }
    BalanceEnquiry02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad BalanceEnquiry02Page');
    };
    BalanceEnquiry02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-balance-enquiry02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\balance-enquiry02\balance-enquiry02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Balance Enquiry</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <ion-list >\n    <label class="row item" *ngFor="let item of balanceInfo">\n      <span class="col col-6 item-text-wrap item-divider regular-font" style="text-align: right;"><b>{{item.key}} :</b></span>\n      <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{item.value}}</span>\n    </label>\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\balance-enquiry02\balance-enquiry02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], BalanceEnquiry02Page);
    return BalanceEnquiry02Page;
}());

//# sourceMappingURL=balance-enquiry02.js.map

/***/ })

});
//# sourceMappingURL=90.js.map