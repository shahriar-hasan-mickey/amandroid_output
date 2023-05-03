webpackJsonp([100],{

/***/ 403:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AccountStatement03PageModule", function() { return AccountStatement03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__account_statement03__ = __webpack_require__(506);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AccountStatement03PageModule = (function () {
    function AccountStatement03PageModule() {
    }
    AccountStatement03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__account_statement03__["a" /* AccountStatement03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__account_statement03__["a" /* AccountStatement03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__account_statement03__["a" /* AccountStatement03Page */]
            ]
        })
    ], AccountStatement03PageModule);
    return AccountStatement03PageModule;
}());

//# sourceMappingURL=account-statement03.module.js.map

/***/ }),

/***/ 506:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AccountStatement03Page; });
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


var AccountStatement03Page = (function () {
    function AccountStatement03Page(navCtrl, alertCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.showStatementDetail = function (listItem) {
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Transaction Details');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage(this.generateMessage(listItem));
            radioAlert.addButton('Cancel');
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 30000);
        };
        this.generateMessage = function (itemValue) {
            var message = "";
            Object.keys(itemValue).forEach(function (key) {
                var value = itemValue[key];
                message = message +
                    '<ion-item style="margin-top: 16px"><b>' + key.replace("_", " ") + " : " + "</b>" + value + '<br></ion-item>';
            });
            return message;
        };
        this.stmntDetails = JSON.parse(navParams.get("stmntDetails"));
    }
    AccountStatement03Page.prototype.ionViewDidLoad = function () {
    };
    AccountStatement03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-account-statement03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\account-statement03\account-statement03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Account Statement</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n\n<ion-content class="row row-center col col-center background">\n\n  <ion-list>\n    <div class="item item-divider  regular-font"style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Basic Information</b></div>\n\n    <label class="row item" >\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;">Account No. : </span>\n      <span class="col item-text-wrap regular-font " style="text-align: left"><b>{{stmntDetails.Account_No}}</b></span>\n    </label>\n    <label class="row item" >\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;">Account Title : </span>\n      <span class="col item-text-wrap regular-font " style="text-align: left"><b>{{stmntDetails.Account_Title}}</b></span>\n    </label>\n    <label class="row item" >\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;">Start Date : </span>\n      <span class="col item-text-wrap regular-font " style="text-align: left"><b>{{stmntDetails.Start_Date}}</b></span>\n    </label>\n    <label class="row item" >\n      <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;">End Date : </span>\n      <span class="col item-text-wrap regular-font " style="text-align: left"><b>{{stmntDetails.End_Date}}</b></span>\n    </label>\n\n  </ion-list>\n\n  <!--<ion-list>-->\n\n  <div class="row " style="background: rgba(157, 174, 119, 0.47);color: #222222">\n    <div class="col text-left regular-font"><b>Tx Date</b></div>\n    <div class="col text-right regular-font"><b>Debit</b></div>\n    <div class="col text-right regular-font"><b>Credit</b></div>\n    <div class="col text-right regular-font"><b>Balance</b></div>\n\n  </div>\n  <!--</ion-list>-->\n\n  <!--<ion-list ng-repeat="listItem in stmntDetails.object.accTransList">-->\n  <div class="row item" *ngFor="let listItem of stmntDetails.accTransList"  (click)="showStatementDetail(listItem)">\n\n    <div class="col text-left table-cell regular-font" style="text-decoration: underline;color: blue">{{listItem.Trans_Date}}</div>\n    <div class="col text-right table-cell regular-font">{{listItem.Debit}}</div>\n    <div class="col text-right table-cell regular-font">{{listItem.Credit}}</div>\n    <div class="col text-right table-cell regular-font" >{{listItem.Balance}}</div>\n\n  </div>\n\n  <!--</ion-list>-->\n  <!--</ion-content>-->\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\account-statement03\account-statement03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], AccountStatement03Page);
    return AccountStatement03Page;
}());

//# sourceMappingURL=account-statement03.js.map

/***/ })

});
//# sourceMappingURL=100.js.map