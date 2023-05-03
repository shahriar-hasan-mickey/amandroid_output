webpackJsonp([23],{

/***/ 478:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ResetPassword03PageModule", function() { return ResetPassword03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__reset_password03__ = __webpack_require__(581);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ResetPassword03PageModule = (function () {
    function ResetPassword03PageModule() {
    }
    ResetPassword03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password03__["a" /* ResetPassword03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__reset_password03__["a" /* ResetPassword03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password03__["a" /* ResetPassword03Page */]
            ]
        })
    ], ResetPassword03PageModule);
    return ResetPassword03PageModule;
}());

//# sourceMappingURL=reset-password03.module.js.map

/***/ }),

/***/ 581:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ResetPassword03Page; });
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
 * Generated class for the ResetPassword03Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var ResetPassword03Page = (function () {
    function ResetPassword03Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.goToLoginPage = function () {
            this.navCtrl.setRoot('UserLogin01Page');
            this.navCtrl.popToRoot();
        };
    }
    ResetPassword03Page.prototype.ionViewDidLoad = function () {
        console.log('ionViewDidLoad ResetPassword03Page');
    };
    ResetPassword03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-reset-password03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password03\reset-password03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Reset Password</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap"\n         style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Reset User Password Completed successfully.</b></div>\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-center>\n          <button class="btnTextLeftUnderline" icon-only no-lines style="width: 100%;text-align: center" (click)="goToLoginPage()">Click here to login\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n  <ion-content class="row row-center col col-center background">\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password03\reset-password03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */], __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], ResetPassword03Page);
    return ResetPassword03Page;
}());

//# sourceMappingURL=reset-password03.js.map

/***/ })

});
//# sourceMappingURL=23.js.map