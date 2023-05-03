webpackJsonp([75],{

/***/ 428:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ChangePin01PageModule", function() { return ChangePin01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__change_pin01__ = __webpack_require__(531);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ChangePin01PageModule = (function () {
    function ChangePin01PageModule() {
    }
    ChangePin01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__change_pin01__["a" /* ChangePin01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__change_pin01__["a" /* ChangePin01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__change_pin01__["a" /* ChangePin01Page */],
            ]
        })
    ], ChangePin01PageModule);
    return ChangePin01PageModule;
}());

//# sourceMappingURL=change-pin01.module.js.map

/***/ }),

/***/ 531:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ChangePin01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_authentication_authentication__ = __webpack_require__(252);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
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








/**
 * Generated class for the ChangePin01Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var ChangePin01Page = (function () {
    function ChangePin01Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, authenticationService, cryptoUtil, tokenService, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.authenticationService = authenticationService;
        this.cryptoUtil = cryptoUtil;
        this.tokenService = tokenService;
        this.gaProvider = gaProvider;
        this.changeTPIN01Error = "";
        this.formVal = { authCode: "", currentTPIN: "", newTPIN: "", confirmTPIN: "" };
        this.ChangeTPIN01Action = function () {
            var _this = this;
            this.changeTPIN01Error = "";
            this.authCode = this.formVal.authCode;
            this.currentTPIN = this.formVal.currentTPIN;
            this.newTPIN = this.formVal.newTPIN;
            this.confirmTPIN = this.formVal.confirmTPIN;
            var flag = true;
            if (this.authCode == "" || typeof (this.authCode) == "undefined") {
                this.changeTPIN01Error = "Auth Code is required.";
                flag = false;
                return;
            }
            if (this.currentTPIN == "" || typeof (this.currentTPIN) == "undefined") {
                this.changeTPIN01Error = "Current TPIN is required.";
                flag = false;
                return;
            }
            if (this.newTPIN == "" || typeof (this.newTPIN) == "undefined") {
                this.changeTPIN01Error = "New TPIN is required.";
                flag = false;
                return;
            }
            if (this.confirmTPIN == "" || typeof (this.confirmTPIN) == "undefined") {
                this.changeTPIN01Error = "Confirm TPIN is required.";
                flag = false;
                return;
            }
            if (!(this.newTPIN == this.confirmTPIN)) {
                this.changeTPIN01Error = "New TPIN and Confirm new TPIN Mismatch.";
                flag = false;
                this.formVal = { authCode: "", currentTPIN: "", newTPIN: "", confirmTPIN: "" };
                return;
            }
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
                var appData = this.storage.retrieveFromStorage("appData");
                var encAuthCode = this.cryptoUtil.getEncryptVal(this.authCode);
                var encCurrentPin = this.cryptoUtil.getEncryptVal(this.currentTPIN);
                var encNewPin = this.cryptoUtil.getEncryptVal(this.newTPIN);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authenticationService.changeTpin(unMaskToken, appData.userId, appData.appId, encAuthCode, encCurrentPin, encNewPin)
                    .then(function (data) {
                    _this.onChangeTPINComplete(data);
                });
            }
        };
        this.onChangeTPINComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ChangePin02Page', {});
            }
            else if (data.statusCode == 0) {
                this.changeTPIN01Error = data.note;
                this.formVal = { authCode: "", currentTPIN: "", newTPIN: "", confirmTPIN: "" };
            }
            else {
                this.changeTPIN01Error = "System Error Contact with Administrator.";
            }
        };
    }
    ChangePin01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Change TPIN");
    };
    ChangePin01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-change-pin01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-pin01\change-pin01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Change TPIN</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="ChangeTPIN01Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="changeTPIN01Error">\n      {{changeTPIN01Error}}\n    </div>\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Required information</b></div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Auth Code\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="authCode" placeholder="Enter Auth Code" [(ngModel)]="formVal.authCode" maxlength="6"\n                 class="textField">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Current TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="password" name="currentTPIN" placeholder="Enter Current TPIN" [(ngModel)]="formVal.currentTPIN" maxlength="4" class="textField">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>New TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="password" name="newTPIN" placeholder="Enter New TPIN" [(ngModel)]="formVal.newTPIN" maxlength="4" class="textField">\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Confirm TPIN\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="password" name="confirmTPIN" placeholder="Enter Confirm TPIN" [(ngModel)]="formVal.confirmTPIN" maxlength="4" class="textField">\n             </span>\n        </label>\n      </div>\n      <button class="button-block button-green" type="submit"> Change TPIN\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-pin01\change-pin01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_4__providers_authentication_authentication__["a" /* AuthenticationProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], ChangePin01Page);
    return ChangePin01Page;
}());

//# sourceMappingURL=change-pin01.js.map

/***/ })

});
//# sourceMappingURL=75.js.map