webpackJsonp([29],{

/***/ 474:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "PasswordExpirePageModule", function() { return PasswordExpirePageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__password_expire__ = __webpack_require__(577);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var PasswordExpirePageModule = (function () {
    function PasswordExpirePageModule() {
    }
    PasswordExpirePageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__password_expire__["a" /* PasswordExpirePage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__password_expire__["a" /* PasswordExpirePage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__password_expire__["a" /* PasswordExpirePage */]
            ]
        })
    ], PasswordExpirePageModule);
    return PasswordExpirePageModule;
}());

//# sourceMappingURL=password-expire.module.js.map

/***/ }),

/***/ 577:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return PasswordExpirePage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_authentication_authentication__ = __webpack_require__(252);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var PasswordExpirePage = (function () {
    function PasswordExpirePage(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, authenticationService, cryptoUtil, tokenService, gaProvider, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.authenticationService = authenticationService;
        this.cryptoUtil = cryptoUtil;
        this.tokenService = tokenService;
        this.gaProvider = gaProvider;
        this.config = config;
        this.changePassError = "";
        this.pass = "";
        this.confirmPass = "";
        this.ChangeExpirePassWdAction = function (passWd, confirmPassWd) {
            var _this = this;
            this.changePassError = "";
            this.pass = passWd;
            this.confirmPass = confirmPassWd;
            var flag = true;
            if (passWd == "" || typeof (passWd) == "undefined") {
                this.changePassError = "<li>Please Enter New Password.";
                flag = false;
                return;
            }
            if (confirmPassWd == "" || typeof (confirmPassWd) == "undefined") {
                this.changePassError = "<li>Please Enter Confirm Password.";
                flag = false;
                return;
            }
            if (!(passWd == confirmPassWd)) {
                this.changePassError = "<li>Password and Confirm Password Mismatch.";
                flag = false;
                this.passWd = "";
                this.confirmPassWd = "";
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
                var encNewPass = this.cryptoUtil.getEncryptVal(this.pass);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authenticationService.changePassWd(unMaskToken, appData.userId, appData.appId, encNewPass)
                    .then(function (data) {
                    _this.onExpirePassChangeComplete(data);
                });
            }
        };
        this.onExpirePassChangeComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.setRoot('WelcomePage', {});
            }
            else if (data.statusCode == 0) {
                this.changePassError = data.note;
                this.passWd = "";
                this.confirmPassWd = "";
            }
            else {
                this.changePassError = "System Error Contact with Administrator.";
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
        this.version = this.config.iSmartVersion;
        this.passPolicy = this.storage.retrieveFromStorage("passPolicy");
    }
    PasswordExpirePage.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad PasswordExpirePage');
        this.gaProvider.startTrackerWithId("Password Expire");
    };
    PasswordExpirePage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-password-expire',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\password-expire\password-expire.html"*/'<div class="row  index-background" style="height: 25%">\n  <div class="col">\n\n    <div class="row cam-img ">\n      <div col col-5 style="text-align: right">\n        <img src="assets/imgs/logo.gif" style="max-width: 65px;height:60px;width:60px"/>\n      </div>\n      <div col col-7 style="text-align: left; ">\n        <h1 class="moduleNameNew" style="color: #276213;margin-bottom: 0px">\n          IBBL iBanking\n        </h1>\n\n        <div class="versionStyle">\n          Version {{version}}\n        </div>\n\n      </div>\n    </div>\n  </div>\n</div>\n\n\n  <div class="col col-center">\n    <form (submit)="ChangeExpirePassWdAction(passWd,confirmPassWd)">\n\n    <div [innerHTML]="changePassError" class="item item-divider item-text-wrap  regular-font" *ngIf="changePassError" style="color:red;background: transparent;border: none">\n    </div>\n\n    <div style="padding-left: 12px;background: transparent; border: none;text-align: center" (click)="showPasswordPolicy()"\n         class="item item-divider item-text-wrap  regular-font">\n      <span class="button-clear" style="color:green;text-decoration: underline">Password Policy</span>\n    </div>\n\n    <div style="color: blue;padding-left: 15px;background: transparent;border: none"\n         class="item item-divider item-text-wrap  regular-font">\n      <b>Your iBanking Password has Expired !</b>\n    </div>\n\n    <div class=" login-box" style="margin-top: 0px">\n\n      <label class=" item-input">\n        <ion-icon name="lock"></ion-icon>\n        <input type="password" name="newPass" placeholder="New Password" [(ngModel)]="passWd" maxlength="40">\n      </label>\n      <label class=" item-input">\n        <ion-icon name="lock"></ion-icon>\n        <input type="password" name="confirmPass" placeholder="Confirm Password" [(ngModel)]="confirmPassWd" maxlength="40">\n      </label>\n\n    </div>\n    <button class="button-block button-green" type="submit">Change Password\n    </button>\n\n    </form>\n  </div>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\password-expire\password-expire.html"*/,
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
            __WEBPACK_IMPORTED_MODULE_8__providers_config_config__["a" /* ConfigProvider */]])
    ], PasswordExpirePage);
    return PasswordExpirePage;
}());

//# sourceMappingURL=password-expire.js.map

/***/ })

});
//# sourceMappingURL=29.js.map