webpackJsonp([30],{

/***/ 472:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ManageObCreditAccount01PageModule", function() { return ManageObCreditAccount01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__manage_ob_credit_account01__ = __webpack_require__(575);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ManageObCreditAccount01PageModule = (function () {
    function ManageObCreditAccount01PageModule() {
    }
    ManageObCreditAccount01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__manage_ob_credit_account01__["a" /* ManageObCreditAccount01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__manage_ob_credit_account01__["a" /* ManageObCreditAccount01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__manage_ob_credit_account01__["a" /* ManageObCreditAccount01Page */]
            ]
        })
    ], ManageObCreditAccount01PageModule);
    return ManageObCreditAccount01PageModule;
}());

//# sourceMappingURL=manage-ob-credit-account01.module.js.map

/***/ }),

/***/ 575:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ManageObCreditAccount01Page; });
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



var ManageObCreditAccount01Page = (function () {
    function ManageObCreditAccount01Page(navCtrl, navParams, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.config = config;
        this.receiverTypes = [];
        this.ManageCreditAccountOB01Action = function () {
            this.manageCreditAccountOBError01 = "";
            var flag = true;
            if (this.fundTransferType == "" || typeof (this.fundTransferType) == "undefined") {
                this.manageCreditAccountOBError01 = "Please Select transfer type.";
                flag = false;
                return;
            }
            if (this.receiverType == "" || typeof (this.receiverType) == "undefined") {
                this.manageCreditAccountOBError01 = "Please Select Receiver type.";
                flag = false;
                return;
            }
            if (flag) {
                if (this.operationType == 1) {
                    this.navCtrl.push('AddCreditAccountOtherBank01Page', {
                        'fundTransferType': this.fundTransferType,
                        'receiverType': this.receiverType
                    });
                }
                if (this.operationType == 2) {
                    this.navCtrl.push('DeleteCreditAccountOtherBank01Page', {
                        'fundTransferType': this.fundTransferType,
                        'receiverType': this.receiverType
                    });
                }
            }
        };
        this.operationType = navParams.get("operationType");
        this.header = navParams.get("header");
        this.transferTypes = JSON.parse(navParams.get("transferTypes"));
        this.ftOBDestType = JSON.parse(navParams.get("ftOBDestType"));
    }
    ManageObCreditAccount01Page.prototype.onSelectChange = function (selectedValue) {
        this.receiverTypes = [];
        this.receiverTypes = this.ftOBDestType[selectedValue];
    };
    ManageObCreditAccount01Page.prototype.ionViewDidLoad = function () {
    };
    ManageObCreditAccount01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-manage-ob-credit-account01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\manage-ob-credit-account01\manage-ob-credit-account01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{header}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="ManageCreditAccountOB01Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="manageCreditAccountOBError01">\n      {{manageCreditAccountOBError01}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Beneficiary information</b></div>\n\n      <div class="row item regular-font" >\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Fund Transfer Type :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="fundTransferType" name="fundTransferType" class="textFieldCustom"\n                  style="width: 100%"  (change)="onSelectChange(fundTransferType)">\n            <option *ngFor="let tType of transferTypes" value="{{tType.value}}">{{tType.label}}</option>\n          </select>\n        </div>\n\n      </div>\n\n      <div class="row item regular-font" >\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <b>Receiver Type :</b>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="receiverType" name="paymentType" class="textFieldCustom" style="width: 100%">\n            <option *ngFor="let rType of receiverTypes" value="{{rType.value}}">{{rType.label}}</option>\n          </select>\n        </div>\n\n      </div>\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\manage-ob-credit-account01\manage-ob-credit-account01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */]])
    ], ManageObCreditAccount01Page);
    return ManageObCreditAccount01Page;
}());

//# sourceMappingURL=manage-ob-credit-account01.js.map

/***/ })

});
//# sourceMappingURL=30.js.map