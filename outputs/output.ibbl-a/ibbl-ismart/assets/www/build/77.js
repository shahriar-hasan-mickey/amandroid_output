webpackJsonp([77],{

/***/ 425:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ChangePassword01PageModule", function() { return ChangePassword01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__change_password01__ = __webpack_require__(528);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ChangePassword01PageModule = (function () {
    function ChangePassword01PageModule() {
    }
    ChangePassword01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__change_password01__["a" /* ChangePassword01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__change_password01__["a" /* ChangePassword01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__change_password01__["a" /* ChangePassword01Page */]
            ]
        })
    ], ChangePassword01PageModule);
    return ChangePassword01PageModule;
}());

//# sourceMappingURL=change-password01.module.js.map

/***/ }),

/***/ 528:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ChangePassword01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_authentication_authentication__ = __webpack_require__(252);
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








var ChangePassword01Page = (function () {
    function ChangePassword01Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, authenticationService, cryptoUtil, tokenService, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.authenticationService = authenticationService;
        this.cryptoUtil = cryptoUtil;
        this.tokenService = tokenService;
        this.gaProvider = gaProvider;
        this.modifyOldPassError = "";
        this.passWd = { oldPassWd: "", newPassWd: "", confirmPassWd: "" };
        this.oldPass = "";
        this.newPass = "";
        this.confirmPass = "";
        this.ChangePassword01Action = function () {
            var _this = this;
            this.modifyOldPassError = "";
            this.oldPass = this.passWd.oldPassWd;
            this.newPass = this.passWd.newPassWd;
            this.confirmPass = this.passWd.confirmPassWd;
            var flag = true;
            if (this.oldPass == "" || typeof (this.oldPass) == "undefined") {
                this.modifyOldPassError = "<li>Please Enter Old Password.";
                flag = false;
                return;
            }
            if (this.newPass == "" || typeof (this.newPass) == "undefined") {
                this.modifyOldPassError = "<li>Please Enter New Password.";
                flag = false;
                return;
            }
            if (this.confirmPass == "" || typeof (this.confirmPass) == "undefined") {
                this.modifyOldPassError = "<li>Please Enter Confirm Password.";
                flag = false;
                return;
            }
            if (!(this.newPass == this.confirmPass)) {
                this.modifyOldPassError = "<li>Password and Confirm Password Mismatch.";
                flag = false;
                this.passWd = { oldPassWd: "", newPassWd: "", confirmPassWd: "" };
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
                var encOldPass = this.cryptoUtil.getEncryptVal(this.oldPass);
                var encNewPass = this.cryptoUtil.getEncryptVal(this.newPass);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authenticationService.modifyOldPassWd(unMaskToken, appData.userId, appData.appId, encOldPass, encNewPass)
                    .then(function (data) {
                    _this.onChangePasswordComplete(data);
                });
            }
        };
        this.onChangePasswordComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ChangePassword02Page', {});
            }
            else if (data.statusCode == 0) {
                this.modifyOldPassError = data.note;
                this.passWd = { oldPassWd: "", newPassWd: "", confirmPassWd: "" };
            }
            else {
                this.modifyOldPassError = "System Error Contact with Administrator.";
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
        this.passPolicy = this.storage.retrieveFromStorage("passPolicy");
    }
    ChangePassword01Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ChangePassword01Page');
        this.gaProvider.startTrackerWithId("Change Password");
    };
    ChangePassword01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-change-password01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-password01\change-password01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Change Password</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n<form (submit)="ChangePassword01Action()">\n  <div class="row  index-background">\n    <div class="col">\n\n      <br>\n\n      <div [innerHTML]="modifyOldPassError" class="regular-font" *ngIf="modifyOldPassError"\n           style="min-height:30px;color:red;background: transparent;border: none;text-align: left;padding-left: 15px;padding-right: 30px">\n      </div>\n\n\n      <div style="padding-left: 12px;background: transparent; border: none;text-align: center"\n           class="item item-divider item-text-wrap  regular-font" (click)="showPasswordPolicy()">\n\n        <span class="button-clear" style="color:green;text-decoration: underline">Password Policy</span>\n\n      </div>\n\n\n\n        <div class=" login-box" style="margin-top: 0px">\n\n          <label class="item-input">\n            <ion-icon name="lock"></ion-icon>\n            <input type="password" placeholder="Old Password" name="oldPass" [(ngModel)]="passWd.oldPassWd" maxlength="40">\n          </label>\n\n          <label class="item-input">\n            <ion-icon name="lock"></ion-icon>\n            <input type="password" placeholder="New Password" name="newPass" [(ngModel)]="passWd.newPassWd" maxlength="40">\n          </label>\n          <label class="item-input">\n            <ion-icon name="lock"></ion-icon>\n            <input type="password" placeholder="Confirm Password" name="confirmPass" [(ngModel)]="passWd.confirmPassWd" maxlength="40">\n          </label>\n          <label class="item-input"></label>\n        </div>\n\n      <button class="button-block button-green"  type="submit" > Change Password\n        </button>\n    </div>\n  </div>\n</form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\change-password01\change-password01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_5__providers_authentication_authentication__["a" /* AuthenticationProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], ChangePassword01Page);
    return ChangePassword01Page;
}());

//# sourceMappingURL=change-password01.js.map

/***/ })

});
//# sourceMappingURL=77.js.map