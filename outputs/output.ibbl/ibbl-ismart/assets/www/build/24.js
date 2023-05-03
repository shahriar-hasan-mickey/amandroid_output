webpackJsonp([24],{

/***/ 479:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ResetPassword02PageModule", function() { return ResetPassword02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__reset_password02__ = __webpack_require__(582);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ResetPassword02PageModule = (function () {
    function ResetPassword02PageModule() {
    }
    ResetPassword02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password02__["a" /* ResetPassword02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__reset_password02__["a" /* ResetPassword02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__reset_password02__["a" /* ResetPassword02Page */]
            ]
        })
    ], ResetPassword02PageModule);
    return ResetPassword02PageModule;
}());

//# sourceMappingURL=reset-password02.module.js.map

/***/ }),

/***/ 582:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ResetPassword02Page; });
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
 * Generated class for the ResetPassword02Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var ResetPassword02Page = (function () {
    function ResetPassword02Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, authenticationService, cryptoUtil, tokenService, gaProvider, autuProvider) {
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
        this.formVal = { resetCode: '', newPassword: '', confirmNewPassword: '' };
        this.ResetPassword02Action = function () {
            var _this = this;
            this.resetPassword02Error = "";
            // console.log(this.formVal);
            var flag = true;
            if (this.formVal.resetCode == "" || typeof (this.formVal.resetCode) == "undefined") {
                this.resetPassword02Error = "Please Enter Password Reset Code";
                flag = false;
                return;
            }
            if (this.formVal.newPassword == "" || typeof (this.formVal.newPassword) == "undefined") {
                this.resetPassword02Error = "Please Enter New Password";
                flag = false;
                return;
            }
            if (this.formVal.confirmNewPassword == "" || typeof (this.formVal.confirmNewPassword) == "undefined") {
                this.resetPassword02Error = "Please Enter Confirm New Password";
                flag = false;
                return;
            }
            if (!(this.formVal.newPassword == this.formVal.confirmNewPassword)) {
                this.resetPassword02Error = "New Password and Confirm New Password Mismatch";
                flag = false;
                return;
            }
            if (flag) {
                var encResetCode = this.cryptoUtil.getEncryptVal(this.formVal.resetCode);
                var encNewPassword = this.cryptoUtil.getEncryptVal(this.formVal.newPassword);
                var encInitToken = this.cryptoUtil.getEncryptVal(this.initToken);
                this.autuProvider.confirmResetProfilePwdRequest(encResetCode, encNewPassword, encInitToken)
                    .then(function (data) {
                    _this.confirmResetProfilePassword(data);
                });
            }
        };
        this.confirmResetProfilePassword = function (data) {
            // console.log(data);
            this.resetPassword02Error = "";
            if (data.status == 0) {
                this.resetPassword02Error = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.resetPwdResponse.status == 100) {
                this.formVal = { resetCode: '', newPassword: '', confirmNewPassword: '' };
                this.navCtrl.push('ResetPassword03Page', {});
            }
            else if (data.resetPwdResponse.status == 999) {
                this.resetPassword02Error = data.resetPwdResponse.note;
                this.formVal = { resetCode: '', newPassword: '', confirmNewPassword: '' };
                return;
            }
            else {
                this.resetPassword02Error = "System Error, Please Contact with Administrator.";
            }
        };
        this.showPasswordPolicy = function () {
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Password Policy');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage(this.passPolicy);
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
        this.initToken = this.navParams.get("initToken");
        this.passPolicy = this.navParams.get("passPolicy");
    }
    ResetPassword02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ResetPassword01Page');
    };
    ResetPassword02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-reset-password02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password02\reset-password02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Reset Password</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background">\n  <form (submit)="ResetPassword02Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red"\n         *ngIf="resetPassword02Error">{{resetPassword02Error}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Confirm Reset Password </b></div>\n\n      <div style="padding-left: 12px;background: transparent; border: none;text-align: center"\n           class="item item-divider item-text-wrap  regular-font" (click)="showPasswordPolicy()">\n        <span class="button-clear" style="color:green;text-decoration: underline">Password Policy</span>\n      </div>\n\n      <div class="row item">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>*</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n         <label style="color: blue">Please check your iBanking profile phone for reset code.</label>\n        </div>\n      </div>\n\n      <div class="row item">\n        <div col col-5  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Reset Code :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter Reset Code" type="tel" name="userID" [(ngModel)]="formVal.resetCode" maxlength="6" class="textField">\n        </div>\n      </div>\n\n      <div class="row item">\n        <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>New Password :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter New Password" type="password" name="newPassword" [(ngModel)]="formVal.newPassword" maxlength="32" class="textField">\n        </div>\n      </div>\n\n\n      <div class="row item">\n        <div col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Confirm Password :</b></div>\n        <div col col-7  class="item-text-wrap regular-font">\n          <input placeholder="Enter Confirm Password" type="password" name="confirmNewPassword" [(ngModel)]="formVal.confirmNewPassword" maxlength="32" class="textField">\n        </div>\n      </div>\n\n\n      <button class="button button-green button-block" type="submit">Reset\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\reset-password02\reset-password02.html"*/,
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
    ], ResetPassword02Page);
    return ResetPassword02Page;
}());

//# sourceMappingURL=reset-password02.js.map

/***/ })

});
//# sourceMappingURL=24.js.map