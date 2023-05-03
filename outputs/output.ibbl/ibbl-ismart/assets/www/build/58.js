webpackJsonp([58],{

/***/ 445:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTransferOtherBankRecListPageModule", function() { return FundTransferOtherBankRecListPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_rec_list__ = __webpack_require__(548);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTransferOtherBankRecListPageModule = (function () {
    function FundTransferOtherBankRecListPageModule() {
    }
    FundTransferOtherBankRecListPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_rec_list__["a" /* FundTransferOtherBankRecListPage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_rec_list__["a" /* FundTransferOtherBankRecListPage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transfer_other_bank_rec_list__["a" /* FundTransferOtherBankRecListPage */]
            ]
        })
    ], FundTransferOtherBankRecListPageModule);
    return FundTransferOtherBankRecListPageModule;
}());

//# sourceMappingURL=fund-transfer-other-bank-rec-list.module.js.map

/***/ }),

/***/ 548:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTransferOtherBankRecListPage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var FundTransferOtherBankRecListPage = (function () {
    function FundTransferOtherBankRecListPage(navCtrl, navParams, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.config = config;
        this.filterData = [];
        this.setFilteredItems = function () {
            var _this = this;
            this.filterData = this.destAccList.filter(function (dest) {
                return ((dest.beneficiaryName.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1) ||
                    (dest.beneficiaryAccount.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1));
            });
        };
        this.selectDestAccount = function (destAccount) {
            this.navCtrl.pop({ animate: false });
            this.navCtrl.push('FundTranserOtherBank03Page', {
                'accountNo': this.accountNo,
                'srcAccDetails': JSON.stringify(this.srcAccDetails),
                'purposeList': JSON.stringify(this.purposeList),
                'destAccList': JSON.stringify(this.destAccList),
                'selectedDest': JSON.stringify(destAccount),
                'fundTransferType': this.fundTransferType,
                'receiverType': this.receiverType
            });
        };
        this.accountNo = this.navParams.get("accountNo");
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.srcAccDetails = JSON.parse(this.navParams.get("srcAccDetails"));
        this.purposeList = JSON.parse(this.navParams.get("purposeList"));
        this.destAccList = JSON.parse(this.navParams.get("destAccList"));
        this.filterData = this.destAccList;
        this.routeShow = this.fundTransferType != config.transferTypeNPSB;
    }
    FundTransferOtherBankRecListPage.prototype.ionViewDidLoad = function () {
    };
    FundTransferOtherBankRecListPage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transfer-other-bank-rec-list',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-rec-list\fund-transfer-other-bank-rec-list.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Receiver account list</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <ion-grid>\n    <ion-row>\n      <ion-col>\n        <ion-searchbar\n          [(ngModel)]="searchTerm" animated="true" placeholder="Search Destination Account"\n          [showCancelButton]="shouldShowCancel" float="true"\n          (ionInput)="setFilteredItems()"\n          (ionCancel)="onCancel($event)" class="regular-font">\n        </ion-searchbar>\n\n      </ion-col>\n    </ion-row>\n    <ion-row>\n      <ion-col>\n        <ion-scroll style="width:100%;height:100vh" scrollY="true">\n          <ion-list scroll="true">\n            <ion-item *ngFor="let dest of filterData; let i=index " (click)="selectDestAccount(dest)">\n\n              <div class="item-text-wrap regular-font"><span><b>Beneficiary Name : </b></span><span\n                class=" regular-font">{{dest.beneficiaryName}}</span>\n              </div>\n              <div class="item-text-wrap regular-font"><span><b>Destination A/C : </b></span><span\n                class="regular-font">{{dest.beneficiaryAccount}}</span>\n              </div>\n\n              <div class="item-text-wrap regular-font"><span><b>Bank Name : </b></span><span\n                class="regular-font">{{dest.bankName}}</span>\n              </div>\n\n              <div *ngIf="routeShow" class="item-text-wrap regular-font"><span><b>Branch Name : </b></span><span\n                class="regular-font">{{dest.branchName}}</span>\n              </div>\n\n              <div *ngIf="routeShow" class="item-text-wrap regular-font"><span><b>Routing No : </b></span><span\n                class="regular-font">{{dest.beneficiaryRoute}}</span>\n              </div>\n            </ion-item>\n          </ion-list>\n        </ion-scroll>\n\n      </ion-col>\n    </ion-row>\n\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transfer-other-bank-rec-list\fund-transfer-other-bank-rec-list.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */]])
    ], FundTransferOtherBankRecListPage);
    return FundTransferOtherBankRecListPage;
}());

//# sourceMappingURL=fund-transfer-other-bank-rec-list.js.map

/***/ })

});
//# sourceMappingURL=58.js.map