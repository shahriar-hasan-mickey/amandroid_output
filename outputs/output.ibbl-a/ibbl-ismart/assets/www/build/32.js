webpackJsonp([32],{

/***/ 473:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ManageCreditAccount01PageModule", function() { return ManageCreditAccount01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__manage_credit_account01__ = __webpack_require__(576);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ManageCreditAccount01PageModule = (function () {
    function ManageCreditAccount01PageModule() {
    }
    ManageCreditAccount01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__manage_credit_account01__["a" /* ManageCreditAccount01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__manage_credit_account01__["a" /* ManageCreditAccount01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__manage_credit_account01__["a" /* ManageCreditAccount01Page */]
            ]
        })
    ], ManageCreditAccount01PageModule);
    return ManageCreditAccount01PageModule;
}());

//# sourceMappingURL=manage-credit-account01.module.js.map

/***/ }),

/***/ 576:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ManageCreditAccount01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var ManageCreditAccount01Page = (function () {
    function ManageCreditAccount01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, iTransferService, alertCtrl, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.iTransferService = iTransferService;
        this.alertCtrl = alertCtrl;
        this.gaProvider = gaProvider;
        this.manageCreditAccError = "";
        this.accountNo = "";
        this.listSize = 0;
        this.initCreditAccount = function () {
            var _this = this;
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenComplete(data);
            });
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.fetchCreditAccountList(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onFetchCreditAccountListComplete(data);
                });
            }
        };
        this.onFetchCreditAccountListComplete = function (data) {
            if (data.statusCode == 1) {
                this.creditAccDetails = data.object;
                this.destAccList = this.creditAccDetails.beans;
                this.maxSubscriptions = this.creditAccDetails.maxSubscriptions;
                this.listSize = this.destAccList.length;
            }
            else if (data.statusCode == 0) {
                this.manageCreditAccError = data.note;
            }
            else {
                this.manageCreditAccError = "System Error Contact with Administrator.";
            }
        };
        this.goToAddCreditAccountAction = function () {
            var currentSubs = this.destAccList.length;
            var maxSubs = this.maxSubscriptions;
            if (currentSubs >= maxSubs) {
                this.manageCreditAccError = "You have no more subscription left.";
            }
            else {
                this.navCtrl.push('AddCreditAccount01Page');
            }
        };
        this.deleteCreditAccount = function (listItem) {
            var _this = this;
            this.accountNo = listItem.subscriptionValue;
            this.manageCreditAccError = "";
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Confirm Delete');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>Are you sure you want to delete Account - <strong>" + listItem.subscriptionValue) + '</strong></center>';
            radioAlert.addButton('Cancel');
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                    var appData = _this.storage.retrieveFromStorage("appData");
                    var unMaskRefToken = _this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                    _this.tokenService.getNewToken(unMaskRefToken)
                        .then(function (data) {
                        _this.onNewTokenGenCompleteForDelete(data);
                    });
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 30000);
        };
        this.onNewTokenGenCompleteForDelete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.push('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encSrcAccNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                this.iTransferService.deleteCreditAccount(unMaskToken, appData.userId, appData.appId, encSrcAccNo)
                    .then(function (data) {
                    _this.onDeleteCreditAccountListComplete(data);
                });
            }
        };
        this.onDeleteCreditAccountListComplete = function (data) {
            var _this = this;
            if (data.statusCode == 1) {
                var radioAlert_1 = this.alertCtrl.create();
                radioAlert_1.setTitle('Success');
                radioAlert_1.setCssClass("alertLogCss");
                radioAlert_1.setMessage("<center>Credit Account successfully Deleted.</center>");
                radioAlert_1.addButton({
                    text: 'OK',
                    handler: function (data) {
                        _this.initCreditAccount();
                    }
                });
                radioAlert_1.present();
                setTimeout(function () {
                    radioAlert_1.dismiss();
                }, 20000);
            }
            else if (data.statusCode == 0) {
                this.manageCreditAccError = data.note;
            }
            else {
                this.manageCreditAccError = "System Error Contact with Administrator.";
            }
        };
        this.initCreditAccount();
    }
    ManageCreditAccount01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ManageCreditAccount01Page');
        this.gaProvider.startTrackerWithId("Manage Credit Account");
    };
    ManageCreditAccount01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-manage-credit-account01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\manage-credit-account01\manage-credit-account01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Manage Credit Account</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background container">\n\n    <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n         *ngIf="manageCreditAccError">{{manageCreditAccError}}\n    </div>\n\n\n  <div class="row item regular-font">\n    <ion-row>\n      <ion-col text-left>\n        <button class="btnTextLeftUnderline regular-font" icon-left icon-only no-lines style="width: 100%" (click)="goToAddCreditAccountAction()" >Add new\n        </button>\n      </ion-col>\n    </ion-row>\n  </div>\n\n    <div class="list" *ngIf="listSize>=1">\n      <div class="row" style="background: rgba(157, 174, 119, 0.47);color: #222222">\n        <div class="col-75 text-left regular-font" style="padding-left: 18px"><b>Credit Account</b></div>\n        <div class="col-25 text-right regular-font" style="padding-right: 17px"><b></b></div>\n      </div>\n\n\n      <ion-list>\n        <ion-item *ngFor="let listItem of destAccList" >\n\n          <div class="row">\n\n            <div class="col-75 item-text-wrap regular-font">\n              <span><b>Account No :&nbsp;</b></span><span> {{listItem.subscriptionValue}}</span><br>\n              <span><b>Title : &nbsp;</b></span><span>{{listItem.subscriptionDesc}}</span><br>\n            </div>\n\n            <div class="col-25 item-text-wrap regular-font text-right" style="\n                margin-top: 0px" (click)="deleteCreditAccount(listItem)">\n              <span style="text-decoration: underline; color: blue" class="regular-font"><b>Delete</b></span><br>\n            </div>\n\n          </div>\n        </ion-item>\n      </ion-list>\n\n    </div>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\manage-credit-account01\manage-credit-account01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], ManageCreditAccount01Page);
    return ManageCreditAccount01Page;
}());

//# sourceMappingURL=manage-credit-account01.js.map

/***/ })

});
//# sourceMappingURL=32.js.map