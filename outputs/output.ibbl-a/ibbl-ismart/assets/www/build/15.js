webpackJsonp([15],{

/***/ 487:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UtilityBillPaymentHistory02PageModule", function() { return UtilityBillPaymentHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utility_bill_payment_history02__ = __webpack_require__(590);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var UtilityBillPaymentHistory02PageModule = (function () {
    function UtilityBillPaymentHistory02PageModule() {
    }
    UtilityBillPaymentHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utility_bill_payment_history02__["a" /* UtilityBillPaymentHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utility_bill_payment_history02__["a" /* UtilityBillPaymentHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utility_bill_payment_history02__["a" /* UtilityBillPaymentHistory02Page */]
            ]
        })
    ], UtilityBillPaymentHistory02PageModule);
    return UtilityBillPaymentHistory02PageModule;
}());

//# sourceMappingURL=utility-bill-payment-history02.module.js.map

/***/ }),

/***/ 590:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UtilityBillPaymentHistory02Page; });
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


var UtilityBillPaymentHistory02Page = (function () {
    function UtilityBillPaymentHistory02Page(navCtrl, alertCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.showBillPayHistoryDetails = function (listItem) {
            var status = "";
            if (listItem.status == 100) {
                status = "Success";
            }
            else if (listItem.status == 101) {
                status = "Not initialized";
            }
            else if (listItem.status == 102) {
                status = "Processing";
            }
            else if (listItem.status == 103) {
                status = "Processing";
            }
            else if (listItem.status == 104) {
                status = "Processing";
            }
            else if (listItem.status == 105) {
                status = "Processing";
            }
            else if (listItem.status == 107) {
                status = "Processing";
            }
            else if (listItem.status == 151) {
                status = "Processing";
            }
            else if (listItem.status == 152) {
                status = "Processing";
            }
            else if (listItem.status == 153) {
                status = "Processing";
            }
            else if (listItem.status == 999) {
                status = "Fail";
            }
            else if (listItem.status == 109) {
                status = "Fail";
            }
            else if (listItem.status == 110) {
                status = "Fail";
            }
            else {
                status = "n/a";
            }
            var alertData = {
                "Utility Service ID": listItem.utilServiceID,
                "Account No": listItem.serviceDetail.accountNo,
                "Bill No": listItem.serviceDetail.billNo,
                "Bill Amount": listItem.amount,
                "Charge Amount": listItem.chargeAmount,
                "Receive Date": new Date(listItem.receiveDate).toLocaleString(),
                "Process Date": new Date(listItem.processDate).toLocaleString(),
                "Debit Account": listItem.drAccount,
                "Mobile No.": listItem.serviceDetail.mobileNo,
                "Status": status
            };
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Bill payment details');
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
        this.billPayHistoryDetails = JSON.parse(navParams.get("billPayHistoryDetails"));
    }
    UtilityBillPaymentHistory02Page.prototype.ionViewDidLoad = function () {
    };
    UtilityBillPaymentHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utility-bill-payment-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utility-bill-payment-history02\utility-bill-payment-history02.html"*/'\n<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Utility Bill Payment History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="billPayHistoryDetails.length<=0">\n      No Bill payment history found in this date range.\n    </div>\n\n\n    <ion-item *ngFor="let listItem of billPayHistoryDetails" (click)="showBillPayHistoryDetails(listItem)">\n\n      <div class="row" >\n        <label class="col col-4 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Receive Date :</b></label>\n        <label class="col col-8 item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left">{{listItem.receiveDate|date : \'dd/MM/yyyy\'}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-4  item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Account No :</b></label>\n        <label class="col col-8 item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.serviceDetail.accountNo}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-4 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Bill No :</b></label>\n        <label class="col col-8 item-text-wrap regular-font " style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.serviceDetail.billNo}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-4 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Amount :</b></label>\n        <label class="col col-8 item-text-wrap regular-font " style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.amount|currency : "BDT" : 2}}</label>\n      </div>\n\n\n      <div class="row " >\n        <label class="col col-4 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Company Name :</b></label>\n        <label class="col col-8 item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left; text-decoration: underline; color: blue"> {{listItem.serviceDetail.utilityServiceName}}</label>\n      </div>\n\n    </ion-item>\n\n\n  </ion-list>\n</ion-content>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utility-bill-payment-history02\utility-bill-payment-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], UtilityBillPaymentHistory02Page);
    return UtilityBillPaymentHistory02Page;
}());

//# sourceMappingURL=utility-bill-payment-history02.js.map

/***/ })

});
//# sourceMappingURL=15.js.map