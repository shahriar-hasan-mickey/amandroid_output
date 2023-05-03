webpackJsonp([25],{

/***/ 480:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ResetPassword01PageModule", function() { return ResetPassword01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__reset_password01__ = __webpack_require__(583);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ResetPassword01PageModule = (function () {
    function ResetPassword01PageModule() {
    }
    ResetPassword01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password01__["a" /* ResetPassword01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__reset_password01__["a" /* ResetPassword01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password01__["a" /* ResetPassword01Page */]
            ]
        })
    ], ResetPassword01PageModule);
    return ResetPassword01PageModule;
}());

//# sourceMappingURL=reset-password01.module.js.map

/***/ }),

/***/ 583:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ResetPassword01Page; });
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








var ResetPassword01Page = (function () {
    function ResetPassword01Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, authenticationService, cryptoUtil, tokenService, gaProvider, autuProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.authenticationService = authenticationService;
        this.cryptoUtil = cryptoUtil;
        this.tokenService = tokenService;
        this.gaProvider = gaProvider;
        this.autuProvider = autuProvider;
        this.formVal = { userID: '', accountNo: '', chKey: '' };
        this.loadCaptchaImage = function () {
            var _this = this;
            this.autuProvider.getCaptcha()
                .then(function (data) {
                _this.onCaptchaFetchComplete(data);
            });
        };
        this.loadAnotherCaptchaImage = function () {
            var _this = this;
            this.resetPassword01Error = "";
            this.autuProvider.getCaptcha()
                .then(function (data) {
                _this.onCaptchaFetchComplete(data);
            });
        };
        this.onCaptchaFetchComplete = function (data) {
            // console.log(data);
            if (data.status == 0) {
                this.resetPassword01Error = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.captchaImg.captchaId != null) {
                this.captchaID = data.captchaImg.captchaId;
                // console.log("Captcha id " + data.captchaImg.captchaId);
                this.imageData = "data:image/jpeg;base64," + data.captchaImg.data;
            }
            else if (data.captchaImg.captchaId = null) {
                this.resetPassword01Error = "Captcha generation error.";
                return;
            }
            else {
                this.resetPassword01Error = "System Error, Please Contact with Administrator.";
            }
        };
        this.ResetPassword01Action = function () {
            var _this = this;
            this.resetPassword01Error = "";
            // console.log(this.formVal);
            var flag = true;
            if (this.formVal.userID == "" || typeof (this.formVal.userID) == "undefined") {
                this.resetPassword01Error = "Please Enter User ID";
                flag = false;
                return;
            }
            if (this.formVal.accountNo == "" || typeof (this.formVal.accountNo) == "undefined") {
                this.resetPassword01Error = "Please Enter Account No.";
                flag = false;
                return;
            }
            if (this.formVal.chKey == "" || typeof (this.formVal.chKey) == "undefined") {
                this.resetPassword01Error = "Please Enter Challenge Key.";
                flag = false;
                return;
            }
            var encCaptchaID = this.cryptoUtil.getEncryptVal(this.captchaID);
            // console.log("enc id"+encCaptchaID);
            if (flag) {
                var encUser = this.cryptoUtil.getEncryptVal(this.formVal.userID);
                var encAccountNo = this.cryptoUtil.getEncryptVal(this.formVal.accountNo);
                var encChKey = this.cryptoUtil.getEncryptVal(this.formVal.chKey);
                this.autuProvider.initResetProfilePwdRequest(encUser, encAccountNo, encCaptchaID, encChKey)
                    .then(function (data) {
                    _this.initiateResetProfilePassword(data);
                });
            }
        };
        this.initiateResetProfilePassword = function (data) {
            // console.log(data);
            this.resetPassword01Error = "";
            if (data.status == 0) {
                this.resetPassword01Error = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.resetPwdResponse.status == 100) {
                this.formVal = { userID: '', accountNo: '', chKey: '' };
                this.navCtrl.push('ResetPassword02Page', { 'initToken': data.resetPwdResponse.initToken, 'passPolicy': data.resetPwdResponse.passwordPolicy });
            }
            else if (data.resetPwdResponse.status == 999) {
                this.resetPassword01Error = data.resetPwdResponse.note;
                this.formVal = { userID: '', accountNo: '', chKey: '' };
                this.loadCaptchaImage();
                return;
            }
            else {
                this.resetPassword01Error = "System Error, Please Contact with Administrator.";
            }
        };
        this.loadCaptchaImage();
    }
    ResetPassword01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ResetPassword01Page');
    };
    ResetPassword01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-reset-password01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password01\reset-password01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Reset Password</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n  <form (submit)="ResetPassword01Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red"\n         *ngIf="resetPassword01Error">{{resetPassword01Error}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Required Information </b></div>\n\n      <div class="row item">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>User ID :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter User ID" type="text" name="userID" [(ngModel)]="formVal.userID" maxlength="40" class="textField">\n        </div>\n      </div>\n\n      <div class="row item">\n        <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Account No :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter Account No" type="tel" name="accountNo" [(ngModel)]="formVal.accountNo" maxlength="17" class="textField">\n        </div>\n      </div>\n\n      <div class="row item">\n        <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b></b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <ion-card >\n            <ion-card-content style="padding:0px">\n              <img src="{{imageData}}" name="chImage"/>\n            </ion-card-content>\n          </ion-card>\n\n          <a class="btnTextLeftUnderline" icon-only no-lines style="width: 100%;text-align: left" (click)="loadAnotherCaptchaImage()">Another Challenge Image?\n          </a>\n        </div>\n      </div>\n\n      <div class="row item">\n        <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Challenge key :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter Challenge Key" type="text" name="chKey" [(ngModel)]="formVal.chKey" maxlength="5" class="textField">\n        </div>\n      </div>\n\n\n      <button class="button button-green button-block" type="submit">submit\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password01\reset-password01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_4__providers_authentication_authentication__["a" /* AuthenticationProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_authentication_authentication__["a" /* AuthenticationProvider */]])
    ], ResetPassword01Page);
    return ResetPassword01Page;
}());

//# sourceMappingURL=reset-password01.js.map

/***/ })

});
//# sourceMappingURL=25.js.map