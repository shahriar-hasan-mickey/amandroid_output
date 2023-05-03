webpackJsonp([2],{

/***/ 501:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "WimaxRecharge02PageModule", function() { return WimaxRecharge02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__wimax_recharge02__ = __webpack_require__(604);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var WimaxRecharge02PageModule = (function () {
    function WimaxRecharge02PageModule() {
    }
    WimaxRecharge02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge02__["a" /* WimaxRecharge02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__wimax_recharge02__["a" /* WimaxRecharge02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge02__["a" /* WimaxRecharge02Page */]
            ]
        })
    ], WimaxRecharge02PageModule);
    return WimaxRecharge02PageModule;
}());

//# sourceMappingURL=wimax-recharge02.module.js.map

/***/ }),

/***/ 604:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WimaxRecharge02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_wimax_service_wimax_service__ = __webpack_require__(260);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var WimaxRecharge02Page = (function () {
    function WimaxRecharge02Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, cryptoUtil, wimaxService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.cryptoUtil = cryptoUtil;
        this.wimaxService = wimaxService;
        this.tokenService = tokenService;
        this.WimaxRecharge02Action = function (provider, packageType) {
            var _this = this;
            this.wimaxRechargeError02 = "";
            var flag = true;
            if (provider == "" || typeof (provider) == "undefined") {
                this.wimaxRechargeError02 = "Please Select Service Provider";
                flag = false;
                return;
            }
            if (packageType == "" || typeof (packageType) == "undefined") {
                this.wimaxRechargeError02 = "Please Select Package.";
                flag = false;
                return;
            }
            if (flag) {
                this.orgProvider = provider;
                this.sProvider = provider.toLowerCase();
                this.pType = packageType;
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
                var appData = this.storage.retrieveFromStorage("appData");
                var encWimaxProvider = this.cryptoUtil.getEncryptVal(this.sProvider);
                var encPackage = this.cryptoUtil.getEncryptVal(this.pType);
                var encAccount = this.cryptoUtil.getEncryptVal(this.accountNo);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.wimaxService.fetchOrderDetails(unMaskToken, appData.userId, appData.appId, encWimaxProvider, encPackage, encAccount)
                    .then(function (data) {
                    _this.onOrderDetailFetchComplete(data);
                });
            }
        };
        this.onOrderDetailFetchComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('WimaxRecharge03Page', {
                    'accountNo': this.accountNo,
                    'provider': this.orgProvider,
                    'packageType': this.pType,
                    'cardDetails': JSON.stringify(data.object.cardValueList)
                });
            }
            else if (data.statusCode == 0) {
                this.wimaxRechargeError02 = data.note;
            }
            else {
                this.wimaxRechargeError02 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
    }
    WimaxRecharge02Page.prototype.ionViewDidLoad = function () {
    };
    WimaxRecharge02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-wimax-recharge02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge02\wimax-recharge02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Wimax Recharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="wimaxRechargeError02">\n      {{wimaxRechargeError02}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide recharge info</b></div>\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Account No :</b>\n          </div>\n          <div col col-7>\n            {{accountNo}}\n          </div>\n\n      </div>\n\n\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Service Provider :</b>\n          </div>\n          <div col col-7>\n            <select [(ngModel)]="provider" class="textFieldCustom" style="width: 100%">\n              <option value="Banglalion">Banglalion</option>\n              <option value="Qubee">Qubee</option>\n            </select>\n          </div>\n\n      </div>\n\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Package :</b>\n          </div>\n          <div col col-7>\n            <select [(ngModel)]="packageType" class="textFieldCustom" style="width: 100%">\n              <option value="prepaid">prepaid</option>\n              <option value="postpaid">postpaid</option>\n            </select>\n          </div>\n      </div>\n\n\n\n      <button class="button button-green button-block" color="success" fill="outline"\n              (click)="WimaxRecharge02Action(provider,packageType)"> Submit\n      </button>\n\n    </ion-list>\n\n  <!--</form>-->\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge02\wimax-recharge02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_wimax_service_wimax_service__["a" /* WimaxServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], WimaxRecharge02Page);
    return WimaxRecharge02Page;
}());

//# sourceMappingURL=wimax-recharge02.js.map

/***/ })

});
//# sourceMappingURL=2.js.map