webpackJsonp([72],{

/***/ 429:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ChequeBookReqHistory02PageModule", function() { return ChequeBookReqHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cheque_book_req_history02__ = __webpack_require__(532);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ChequeBookReqHistory02PageModule = (function () {
    function ChequeBookReqHistory02PageModule() {
    }
    ChequeBookReqHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cheque_book_req_history02__["a" /* ChequeBookReqHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cheque_book_req_history02__["a" /* ChequeBookReqHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cheque_book_req_history02__["a" /* ChequeBookReqHistory02Page */]
            ]
        })
    ], ChequeBookReqHistory02PageModule);
    return ChequeBookReqHistory02PageModule;
}());

//# sourceMappingURL=cheque-book-req-history02.module.js.map

/***/ }),

/***/ 532:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ChequeBookReqHistory02Page; });
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


var ChequeBookReqHistory02Page = (function () {
    function ChequeBookReqHistory02Page(navCtrl, alertCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.reqHistoryDetails = JSON.parse(navParams.get("reqHistoryDetails"));
    }
    ChequeBookReqHistory02Page.prototype.ionViewDidLoad = function () {
    };
    ChequeBookReqHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cheque-book-req-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cheque-book-req-history02\cheque-book-req-history02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Cheque Requisition History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="reqHistoryDetails.length<=0">\n      No Requisition history found in this date range.\n    </div>\n\n\n    <div class="row item" style="background: rgba(157, 174, 119, 0.47);color: #222222;padding-top: 7px;padding-bottom: 7px"\n         *ngIf="reqHistoryDetails.length>=1">\n      <div class="col-25 text-center regular-font" ><b>Issue Date</b></div>\n      <div class="col-50 text-center regular-font" ><b>Account No</b></div>\n      <div class="col-25 text-right regular-font"><b>No of Leaf</b></div>\n    </div>\n\n    <div class="row item" style="padding-top: 10px;padding-bottom: 10px" *ngFor="let listItem of reqHistoryDetails">\n\n      <div class="col-25  text-center  regular-font">{{listItem.issueDate|date : \'dd/MM/yy\'}}</div>\n      <div class="col-50 text-center regular-font" >{{listItem.accNo}}</div>\n      <div class="col-25 text-right  regular-font" >{{listItem.leafCount}}</div>\n    </div>\n\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cheque-book-req-history02\cheque-book-req-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], ChequeBookReqHistory02Page);
    return ChequeBookReqHistory02Page;
}());

//# sourceMappingURL=cheque-book-req-history02.js.map

/***/ })

});
//# sourceMappingURL=72.js.map