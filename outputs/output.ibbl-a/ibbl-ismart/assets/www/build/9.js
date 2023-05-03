webpackJsonp([9],{

/***/ 494:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Utilitybillpay04PageModule", function() { return Utilitybillpay04PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utilitybillpay04__ = __webpack_require__(597);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var Utilitybillpay04PageModule = (function () {
    function Utilitybillpay04PageModule() {
    }
    Utilitybillpay04PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay04__["a" /* Utilitybillpay04Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utilitybillpay04__["a" /* Utilitybillpay04Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay04__["a" /* Utilitybillpay04Page */]
            ]
        })
    ], Utilitybillpay04PageModule);
    return Utilitybillpay04PageModule;
}());

//# sourceMappingURL=utilitybillpay04.module.js.map

/***/ }),

/***/ 597:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Utilitybillpay04Page; });
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
 * Generated class for the Utilitybillpay04Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var Utilitybillpay04Page = (function () {
    function Utilitybillpay04Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.goToWelcome = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.popToRoot();
        };
        this.payUtilityBill = function () {
            this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push('UtilitybilloperationselectionPage');
        };
        this.menuTitle = this.navParams.get("menuTitle");
        this.selectedCategory = this.navParams.get("selectedCategory");
        this.categoryDesc = this.navParams.get("categoryDesc");
        var companyDetail = this.navParams.get("companyDetails");
        this.companyDetails = JSON.parse(companyDetail);
        this.billingAccount = this.navParams.get("billingAccount");
        this.totAmount = this.navParams.get("totAmount");
        this.utilityId = this.navParams.get("utilityId");
    }
    Utilitybillpay04Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad Utilitybillpay04Page');
    };
    Utilitybillpay04Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utilitybillpay04',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay04\utilitybillpay04.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{menuTitle}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="row row-center col col-center background">\n  <ion-list>\n    <div class="item item-divider  regular-font item-text-wrap"\n         style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>{{menuTitle}} completed successfully</b></div>\n\n\n    <div class="preview-box01">\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Company Name :</b></span>\n        <span class="col item-text-wrap regular-font">{{companyDetails.companyName.split(\'-\')[1]}}</span>\n      </label>\n\n\n      <label *ngIf="selectedCategory" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Customer Category :</b></span>\n        <span class="col item-text-wrap regular-font">{{categoryDesc}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Payment Ref. ID :</b></span>\n        <span class="col item-text-wrap regular-font">{{utilityId}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Account No :</b></span>\n        <span class="col item-text-wrap regular-font">{{billingAccount}}</span>\n      </label>\n\n      <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Total Amount :</b></span>\n        <span class="col item-text-wrap regular-font">{{totAmount|currency : "BDT" : 2}}</span>\n      </label>\n\n    </div>\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col text-right>\n          <button class="btnTextRightUnderline" icon-only no-lines style="width: 100%" (click)="goToWelcome()">Home\n          </button>\n\n        </ion-col>\n        <ion-col text-left>\n          <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%"\n                  (click)="payUtilityBill()">Pay Utility Bill\n          </button>\n        </ion-col>\n      </ion-row>\n    </div>\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay04\utilitybillpay04.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], Utilitybillpay04Page);
    return Utilitybillpay04Page;
}());

//# sourceMappingURL=utilitybillpay04.js.map

/***/ })

});
//# sourceMappingURL=9.js.map