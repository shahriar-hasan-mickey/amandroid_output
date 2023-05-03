webpackJsonp([49],{

/***/ 453:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ITransferHistory02PageModule", function() { return ITransferHistory02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_transfer_history02__ = __webpack_require__(556);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ITransferHistory02PageModule = (function () {
    function ITransferHistory02PageModule() {
    }
    ITransferHistory02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer_history02__["a" /* ITransferHistory02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_transfer_history02__["a" /* ITransferHistory02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer_history02__["a" /* ITransferHistory02Page */]
            ]
        })
    ], ITransferHistory02PageModule);
    return ITransferHistory02PageModule;
}());

//# sourceMappingURL=i-transfer-history02.module.js.map

/***/ }),

/***/ 556:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransferHistory02Page; });
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


var ITransferHistory02Page = (function () {
    function ITransferHistory02Page(alertCtrl, navParams) {
        this.alertCtrl = alertCtrl;
        this.navParams = navParams;
        this.showTransferDetails = function (listItem) {
            var alertData = { "Transfer ID": listItem.transferID,
                "Transaction Date": new Date(listItem.transactionDateTime).toLocaleString(),
                "Source Account": listItem.srcAccount,
                "Destination Account": listItem.destAccount,
                "Account Title": listItem.destAccountTitle,
                "Amount": listItem.transferAmount,
                "Charge": listItem.transferCharge,
                "Vat": listItem.vatOnTransferCharge,
                "Purpose": listItem.purpose,
                "Note": listItem.note
            };
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('iTransfer Details');
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
        this.iTransferDetails = JSON.parse(navParams.get("iTransferDetails"));
    }
    ITransferHistory02Page.prototype.ionViewDidLoad = function () {
    };
    ITransferHistory02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-transfer-history02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer-history02\i-transfer-history02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iTransfer History</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n  <ion-list>\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="iTransferDetails.length<=0">\n      No iTransfer Found in this date range.\n    </div>\n\n\n    <ion-item *ngFor="let listItem of iTransferDetails" (click)="showTransferDetails(listItem)">\n\n      <div class="row" >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Date :</b></label>\n        <label class="col item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left">{{listItem.transactionDateTime|date : \'dd/MM/yyyy\'}}</label>\n      </div>\n\n      <div class="row " >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Source :</b></label>\n        <label class="col  item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left; text-decoration: underline; color: blue"> {{listItem.srcAccount}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-40  item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Destination :</b></label>\n        <label class="col item-text-wrap regular-font "  style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.destAccount}}</label>\n      </div>\n\n      <div class="row" >\n        <label class="col col-40 item-text-wrap  regular-font"  style="padding-top: 0px;margin: 0px"><b>Amount :</b></label>\n        <label class="col item-text-wrap regular-font " style="padding-top: 0px;margin: 0px;text-align: left"> {{listItem.transferAmount|currency : "BDT" : 2}}</label>\n      </div>\n\n    </ion-item>\n\n\n  </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer-history02\i-transfer-history02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], ITransferHistory02Page);
    return ITransferHistory02Page;
}());

//# sourceMappingURL=i-transfer-history02.js.map

/***/ })

});
//# sourceMappingURL=49.js.map