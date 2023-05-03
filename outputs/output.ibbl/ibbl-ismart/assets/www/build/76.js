webpackJsonp([76],{

/***/ 426:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ChangePassword02PageModule", function() { return ChangePassword02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__change_password02__ = __webpack_require__(529);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ChangePassword02PageModule = (function () {
    function ChangePassword02PageModule() {
    }
    ChangePassword02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__change_password02__["a" /* ChangePassword02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__change_password02__["a" /* ChangePassword02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__change_password02__["a" /* ChangePassword02Page */]
            ]
        })
    ], ChangePassword02PageModule);
    return ChangePassword02PageModule;
}());

//# sourceMappingURL=change-password02.module.js.map

/***/ }),

/***/ 529:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ChangePassword02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var ChangePassword02Page = (function () {
    function ChangePassword02Page(navCtrl, navParams, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.gaProvider = gaProvider;
        this.goToWelCome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
    }
    ChangePassword02Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Change Password Successful");
    };
    ;
    ChangePassword02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-change-password02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-password02\change-password02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Change Password</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n    <br>\n    <label class="row item">\n      <span class="col item-text-wrap item-divider regular-font " style="text-align: center;">Password Changed Successfully.</span>\n    </label>\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col col-5>\n      </ion-col>\n      <ion-col text-left col-7>\n        <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="goToWelCome()" >Home\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-password02\change-password02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], ChangePassword02Page);
    return ChangePassword02Page;
}());

//# sourceMappingURL=change-password02.js.map

/***/ })

});
//# sourceMappingURL=76.js.map