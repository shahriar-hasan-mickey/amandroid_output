webpackJsonp([95],{

/***/ 409:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddCreditAccount02PageModule", function() { return AddCreditAccount02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_credit_account02__ = __webpack_require__(512);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddCreditAccount02PageModule = (function () {
    function AddCreditAccount02PageModule() {
    }
    AddCreditAccount02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account02__["a" /* AddCreditAccount02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_credit_account02__["a" /* AddCreditAccount02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_credit_account02__["a" /* AddCreditAccount02Page */]
            ]
        })
    ], AddCreditAccount02PageModule);
    return AddCreditAccount02PageModule;
}());

//# sourceMappingURL=add-credit-account02.module.js.map

/***/ }),

/***/ 512:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddCreditAccount02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var AddCreditAccount02Page = (function () {
    function AddCreditAccount02Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.addCreditAccount02Error = "";
        this.AddNewCreditAccount02Action = function () {
            var _this = this;
            this.addCreditAccount02Error = "";
            var flag = true;
            if (flag) {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                this.tokenService.getNewToken(unMaskRefToken)
                    .then(function (data) {
                    _this.onNewTokenGenComplete(data);
                });
            }
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var oneTimeKey = "";
                var appData = this.storage.retrieveFromStorage("appData");
                var encAccountNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encOtp = this.cryptoUtil.getEncryptVal(oneTimeKey);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.addCreditAccountConfirm(unMaskToken, appData.userId, appData.appId, encAccountNo, encOtp)
                    .then(function (data) {
                    _this.onConfirmAddCreditAccComplete(data);
                });
            }
        };
        this.onConfirmAddCreditAccComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('AddCreditAccount03Page', {});
            }
            else if (data.statusCode == 0) {
                this.addCreditAccount02Error = data.note;
            }
            else {
                this.addCreditAccount02Error = "System Error Contact with Administrator.";
            }
        };
        this.accDetails = JSON.parse(this.navParams.get("accDetails"));
        this.accountNo = this.accDetails.subscriptionValue;
        this.title = this.accDetails.subscriptionDesc;
    }
    AddCreditAccount02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad AddCreditAccount02Page');
    };
    AddCreditAccount02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-credit-account02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account02\add-credit-account02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Manage Credit Account</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n<form (submit)="AddNewCreditAccount02Action()">\n  <div class="item item-divider item-text-wrap regular-font" style="color: red"\n       *ngIf="addCreditAccount02Error">{{addCreditAccount02Error}}\n  </div>\n\n  <ion-list>\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n      <b>Add new Account </b></div>\n\n    <div class="row item">\n              <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Account\n                No :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{accountNo}}</div>\n    </div>\n\n    <div class="row item">\n              <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Title\n                :</b></div>\n      <div col col-7  class="item-text-wrap regular-font"> {{title}}</div>\n    </div>\n\n    <!--<div class="row item">-->\n      <!--<div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP :</b></div>-->\n      <!--<div col col-7  class="item-text-wrap regular-font">-->\n        <!--<input placeholder="Enter OTP" type="tel" name="otp" [(ngModel)]="formVal.otp" maxlength="6" class="textField">-->\n        <!--</div>-->\n    <!--</div>-->\n\n\n    <button class="button button-green button-block" type="submit">Add\n    </button>\n\n  </ion-list>\n</form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-credit-account02\add-credit-account02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */]])
    ], AddCreditAccount02Page);
    return AddCreditAccount02Page;
}());

//# sourceMappingURL=add-credit-account02.js.map

/***/ })

});
//# sourceMappingURL=95.js.map