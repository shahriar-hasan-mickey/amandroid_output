webpackJsonp([7],{

/***/ 497:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ViewAccountInformation02PageModule", function() { return ViewAccountInformation02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__view_account_information02__ = __webpack_require__(600);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ViewAccountInformation02PageModule = (function () {
    function ViewAccountInformation02PageModule() {
    }
    ViewAccountInformation02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__view_account_information02__["a" /* ViewAccountInformation02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__view_account_information02__["a" /* ViewAccountInformation02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__view_account_information02__["a" /* ViewAccountInformation02Page */]
            ]
        })
    ], ViewAccountInformation02PageModule);
    return ViewAccountInformation02PageModule;
}());

//# sourceMappingURL=view-account-information02.module.js.map

/***/ }),

/***/ 600:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ViewAccountInformation02Page; });
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


var ViewAccountInformation02Page = (function () {
    function ViewAccountInformation02Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.accountInfo = [];
        this.accountDetails = JSON.parse(this.navParams.get("accountDetails"));
        for (var key in this.accountDetails) {
            if (this.accountDetails[key] != null) {
                this.accountInfo.push({
                    key: key,
                    value: this.accountDetails[key]
                });
            }
        }
    }
    ViewAccountInformation02Page.prototype.ionViewDidLoad = function () {
    };
    ViewAccountInformation02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-view-account-information02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\view-account-information02\view-account-information02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Account Information</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n    <ion-list >\n      <label class="row item" *ngFor="let item of accountInfo">\n        <span class="col col-6 item-text-wrap item-divider regular-font" style="text-align: right;"><b>{{item.key}} :</b></span>\n        <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{item.value}}</span>\n      </label>\n    </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\view-account-information02\view-account-information02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], ViewAccountInformation02Page);
    return ViewAccountInformation02Page;
}());

//# sourceMappingURL=view-account-information02.js.map

/***/ })

});
//# sourceMappingURL=7.js.map