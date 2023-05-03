webpackJsonp([92],{

/***/ 410:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddToFavorite02PageModule", function() { return AddToFavorite02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_to_favorite02__ = __webpack_require__(513);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddToFavorite02PageModule = (function () {
    function AddToFavorite02PageModule() {
    }
    AddToFavorite02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_to_favorite02__["a" /* AddToFavorite02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_to_favorite02__["a" /* AddToFavorite02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_to_favorite02__["a" /* AddToFavorite02Page */]
            ]
        })
    ], AddToFavorite02PageModule);
    return AddToFavorite02PageModule;
}());

//# sourceMappingURL=add-to-favorite02.module.js.map

/***/ }),

/***/ 513:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddToFavorite02Page; });
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


var AddToFavorite02Page = (function () {
    function AddToFavorite02Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.goToWelCome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
    }
    AddToFavorite02Page.prototype.ionViewDidLoad = function () {
    };
    AddToFavorite02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-to-favorite02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-to-favorite02\add-to-favorite02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iRecharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <ion-list>\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Add to Favorite List</b></div>\n\n    <div class="row item regular-font item-text-wrap " >\n      <ion-row>\n        <ion-col >\n          <strong>Mobile No Successfully added to favorite list.</strong>\n        </ion-col>\n      </ion-row>\n    </div>\n\n    <div class="row item regular-font">\n    <ion-row>\n      <ion-col col-5>\n      </ion-col>\n      <ion-col text-left col-7>\n        <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%" (click)="goToWelCome()" >Home\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-to-favorite02\add-to-favorite02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], AddToFavorite02Page);
    return AddToFavorite02Page;
}());

//# sourceMappingURL=add-to-favorite02.js.map

/***/ })

});
//# sourceMappingURL=92.js.map