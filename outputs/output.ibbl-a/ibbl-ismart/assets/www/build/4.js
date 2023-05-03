webpackJsonp([4],{

/***/ 499:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "WimaxRechargeHistory02PageModule", function() { return WimaxRechargeHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__wimax_recharge_history02__ = __webpack_require__(602);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var WimaxRechargeHistory02PageModule = (function () {
    function WimaxRechargeHistory02PageModule() {
    }
    WimaxRechargeHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge_history02__["a" /* WimaxRechargeHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__wimax_recharge_history02__["a" /* WimaxRechargeHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge_history02__["a" /* WimaxRechargeHistory02Page */]
            ]
        })
    ], WimaxRechargeHistory02PageModule);
    return WimaxRechargeHistory02PageModule;
}());

//# sourceMappingURL=wimax-recharge-history02.module.js.map

/***/ }),

/***/ 602:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WimaxRechargeHistory02Page; });
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


var WimaxRechargeHistory02Page = (function () {
    function WimaxRechargeHistory02Page(navCtrl, alertCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.showWimaxRechargeDetails = function (listItem) {
            var status = "";
            var pAccountNo = "";
            if (listItem.status == 1) {
                status = "Success";
            }
            else if (listItem.status == 2) {
                status = "Processed";
            }
            else if (listItem.status == 3) {
                status = "Failed";
            }
            else {
                status = "n/a";
            }
            if (listItem.serviceDetails[0] != null) {
                pAccountNo = listItem.serviceDetails[0].providerAccNo;
            }
            else {
                pAccountNo = "";
            }
            var alertData = {
                "Service ID": listItem.serviceID,
                "Transfer ID": listItem.transferID,
                "Recharge Date": new Date(listItem.rechargeDate).toLocaleString(),
                "Debit Account": listItem.drAccount,
                "Service User ID": pAccountNo,
                "Service Provider": listItem.wimaxProvider,
                "Package": listItem.recipientPackage,
                "Amount": listItem.amount,
                "Status": status
            };
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Wimax recharge Details');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage(this.generateMessage(alertData));
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
        this.wimaxHistDetails = JSON.parse(navParams.get("wimaxHistDetails"));
    }
    WimaxRechargeHistory02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad WimaxRechargeHistory02Page');
    };
    WimaxRechargeHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-wimax-recharge-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge-history02\wimax-recharge-history02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Wimax History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="wimaxHistDetails.length<=0">\n      No Wimax recharge information found between this date range.\n    </div>\n\n\n    <div class="row " style="background: rgba(157, 174, 119, 0.47);color: #222222" *ngIf="wimaxHistDetails.length>=1">\n      <div class="col text-left regular-font"><b>Tx Date</b></div>\n      <div class="col text-center regular-font"><b>Provider</b></div>\n      <div class="col text-right regular-font"><b>Package</b></div>\n      <div class="col text-right regular-font"><b>Amount</b></div>\n\n    </div>\n\n    <div class="row item" style="padding-top: 5px;padding-bottom: 5px"\n         (click)="showWimaxRechargeDetails(listItem)" *ngFor="let listItem of wimaxHistDetails">\n\n      <div class="col text-left  regular-font">{{listItem.rechargeDate|date : \'dd/MM/yy\'}}</div>\n      <div class="col text-right regular-font" style="text-decoration: underline; color: blue">\n        {{listItem.wimaxProvider}}</div>\n      <div class="col text-right  regular-font">{{listItem.recipientPackage}}</div>\n      <div class="col text-right  regular-font">{{listItem.amount|currency : "BDT" : 2}}</div>\n\n    </div>\n\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge-history02\wimax-recharge-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], WimaxRechargeHistory02Page);
    return WimaxRechargeHistory02Page;
}());

//# sourceMappingURL=wimax-recharge-history02.js.map

/***/ })

});
//# sourceMappingURL=4.js.map