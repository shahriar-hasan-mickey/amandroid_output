webpackJsonp([85],{

/***/ 420:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CashByCodeHistory02PageModule", function() { return CashByCodeHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history02__ = __webpack_require__(523);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var CashByCodeHistory02PageModule = (function () {
    function CashByCodeHistory02PageModule() {
    }
    CashByCodeHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history02__["a" /* CashByCodeHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__cash_by_code_history02__["a" /* CashByCodeHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__cash_by_code_history02__["a" /* CashByCodeHistory02Page */]
            ],
        })
    ], CashByCodeHistory02PageModule);
    return CashByCodeHistory02PageModule;
}());

//# sourceMappingURL=cash-by-code-history02.module.js.map

/***/ }),

/***/ 523:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeHistory02Page; });
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


var CashByCodeHistory02Page = (function () {
    function CashByCodeHistory02Page(navCtrl, alertCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.showICashRemitDetails = function (listItem) {
            var status = "";
            if (listItem.status == 1) {
                status = "Success";
            }
            else if (listItem.status == 2) {
                status = "Requested";
            }
            else if (listItem.status == 3) {
                status = "Canceled";
            }
            else if (listItem.status == 9) {
                status = "Failed";
            }
            else {
                status = "n/a";
            }
            var alertData = {
                "Source Account ": listItem.srcAccount,
                "Beneficiary Mobile No ": listItem.destAccount,
                "Beneficiary Name ": listItem.destAccountTitle,
                "Transaction Date ": new Date(listItem.transactionDateTime).toLocaleString(),
                "Account ": listItem.transferAmount,
                "Transfer Charge ": listItem.transferCharge,
                "Vat On Charge ": listItem.vatOnTransferCharge,
                "Status ": status
            };
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('iCashRemit Details');
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
        this.iCashRemitDetails = JSON.parse(navParams.get("iCashRemitDetails"));
    }
    CashByCodeHistory02Page.prototype.ionViewDidLoad = function () {
    };
    CashByCodeHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-cash-by-code-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-history02\cash-by-code-history02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iCashRemit History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="iCashRemitDetails.length<=0">\n      No iCashRemit information found in this date range.\n    </div>\n\n\n    <div class="row " style="background: rgba(157, 174, 119, 0.47);color: #222222" *ngIf="iCashRemitDetails.length>=1">\n      <div class="col col-3 text-left regular-font"><b>Tx Date</b></div>\n      <div class="col col-5 text-right regular-font"><b>Beneficiary Mobile</b></div>\n      <div class="col col-4 text-right regular-font"><b>Amount</b></div>\n\n    </div>\n\n    <div class="row item" style="padding-top: 5px;padding-bottom: 5px"\n         (click)="showICashRemitDetails(listItem)" *ngFor="let listItem of iCashRemitDetails">\n\n      <div class="col col-3 text-left  regular-font">{{listItem.transactionDateTime|date : \'dd/MM/yy\'}}</div>\n      <div class="col col-5 text-center  regular-font" style="text-decoration: underline; color: blue">{{listItem.destAccount}}</div>\n      <div class="col col-4 text-right  regular-font">{{listItem.transferAmount|currency : "BDT" : 2}}</div>\n\n    </div>\n\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\cash-by-code-history02\cash-by-code-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], CashByCodeHistory02Page);
    return CashByCodeHistory02Page;
}());

//# sourceMappingURL=cash-by-code-history02.js.map

/***/ })

});
//# sourceMappingURL=85.js.map