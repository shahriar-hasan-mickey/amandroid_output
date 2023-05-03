webpackJsonp([17],{

/***/ 486:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UserLogin03PageModule", function() { return UserLogin03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__user_login03__ = __webpack_require__(589);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var UserLogin03PageModule = (function () {
    function UserLogin03PageModule() {
    }
    UserLogin03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__user_login03__["a" /* UserLogin03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__user_login03__["a" /* UserLogin03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__user_login03__["a" /* UserLogin03Page */]
            ]
        })
    ], UserLogin03PageModule);
    return UserLogin03PageModule;
}());

//# sourceMappingURL=user-login03.module.js.map

/***/ }),

/***/ 589:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserLogin03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_auth_service_auth_service__ = __webpack_require__(259);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_menu_service_menu_service__ = __webpack_require__(265);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_error_message_error_message__ = __webpack_require__(264);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__providers_config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};










var UserLogin03Page = (function () {
    function UserLogin03Page(navCtrl, navParams, storage, maskTokenUtil, authService, tokenService, menuService, messageProvider, alertCtrl, config, cryptoUtil) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.authService = authService;
        this.tokenService = tokenService;
        this.menuService = menuService;
        this.messageProvider = messageProvider;
        this.alertCtrl = alertCtrl;
        this.config = config;
        this.cryptoUtil = cryptoUtil;
        this.account = { actCode: '' };
        this.goToMainMenuAction = function () {
            var _this = this;
            this.activationCode = this.account.actCode;
            //CALL REFRESH TOKEN SERVICE HERE
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
                var encActCode = this.cryptoUtil.getEncryptVal(this.activationCode);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authService.validateActivation(appData.userId, appData.appId, unMaskToken, encActCode)
                    .then(function (data) {
                    _this.onActValidateComplete(data);
                });
            }
        };
        this.onActValidateComplete = function (data) {
            //IF OTP VALIDATION IS SUCCESSFUL
            var _this = this;
            if (data.enrollStatus == 1) {
                var dbVal = this.storage.retrieveFromStorage("appData");
                dbVal.status = 800;
                var appVersion = this.config.iSmartVersion;
                this.storage.insertIntoStorage('appData', dbVal);
                var unMaskingToken = this.maskTokenUtil.getUnMaskVal(dbVal.token);
                var encAppVersion = this.cryptoUtil.getEncryptVal(appVersion);
                this.menuService.generateMenu(dbVal.userId, dbVal.appId, unMaskingToken, encAppVersion)
                    .then(function (data) {
                    _this.onMenuGenComplete(data);
                });
            }
            else if (data.enrollStatus == 0) {
                this.loginError03 = data.note;
                this.account = { actCode: "" };
            }
            else {
                this.loginError03 = "Something went wrong. Please try again Later.";
                this.account = { actCode: "" };
            }
        };
        this.onMenuGenComplete = function (data) {
            //IF MENU GENERATION IS SUCCESSFUL
            if (data.loginStatus == 1 || data.loginStatus == 2) {
                var menus = data.privMenus;
                // console.log(data);
                var accounts = data.accounts;
                var operators = data.rechargeOperators;
                var welcomeVal = {
                    fName: data.fName,
                    lName: data.lName,
                    welcomeText: data.welcomeText,
                    transactional: data.transactional,
                    currentAppVersion: data.currentAppVersion
                };
                var encWelcomeVal = this.cryptoUtil.getEncryptVal(JSON.stringify(welcomeVal));
                this.storage.insertIntoStorage('welcomeVal', encWelcomeVal);
                var encMenu = this.cryptoUtil.getEncryptVal(JSON.stringify(menus));
                var encAllAccounts = this.cryptoUtil.getEncryptVal(JSON.stringify(accounts));
                this.storage.insertIntoStorage('privMenus', encMenu);
                this.storage.insertIntoStorage('accounts', encAllAccounts);
                this.storage.insertIntoStorage('passPolicy', data.passPolicyText);
                this.storage.insertIntoStorage('rechargeOperator', operators);
                this.navCtrl.setRoot('WelcomePage', {});
            }
            else if (data.loginStatus == 0) {
                this.loginError03 = "UserID or Password or Device info or all are incorrect.";
                this.account = { actCode: "" };
            }
            else {
                this.loginError03 = this.messageProvider.getErrorMessage(data.status);
                this.account = { actCode: "" };
            }
        };
        ///////////////////Function for resending email/////////////////////////////
        this.resendMail = function () {
            var _this = this;
            this.loginError03 = "";
            var appData = this.storage.retrieveFromStorage("appData");
            // alert(appData);
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            // alert(unMaskRefToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenCompleteForEmail(data);
            });
        };
        this.onNewTokenGenCompleteForEmail = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authService.resendEmail(appData.userId, appData.appId, unMaskToken)
                    .then(function (data) {
                    _this.onResendEmailComplete(data);
                });
            }
        };
        this.onResendEmailComplete = function (data) {
            if (data.enrollStatus == 1) {
                var alert_1 = this.alertCtrl.create({
                    title: 'Device Activation',
                    message: '<center> Please Check your Email Address for Activation Code.</center>',
                    buttons: ['Ok'],
                    cssClass: "alertLogCss"
                });
                alert_1.present();
                setTimeout(function () {
                    alert_1.dismiss();
                }, 10000);
            }
            else if (data.enrollStatus == 0) {
                this.loginError03 = data.note;
                this.account = { actCode: "" };
            }
            else {
                this.loginError03 = this.messageProvider.getErrorMessage(data.status);
                this.account = { actCode: "" };
            }
        };
        this.param = navParams.get('param');
        this.version = this.config.iSmartVersion;
        this.userID = this.param.userId;
        this.account.actCode = "";
        var deviceID = this.param.appId;
        deviceID = this.cryptoUtil.getDecryptVal(deviceID);
        var len = deviceID.length;
        this.deviceAutoGenID = deviceID.substring(0, 5) + " ******* " + deviceID.substring(len - 5, len);
    }
    UserLogin03Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad UserLogin03Page');
    };
    UserLogin03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-user-login03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login03\user-login03.html"*/'\n<div class="row  index-background" style="height: 25%">\n  <div class="col">\n\n    <div class="row cam-img ">\n      <div col col-5 style="text-align: right">\n        <img src="assets/imgs/logo.gif" style="\n    max-width: 65px;height:60px;width:60px"/>\n      </div>\n      <div col col-7 style="text-align: left; ">\n        <h1 class="moduleNameNew" style="color: #276213;margin-bottom: 0px">\n          IBBL iBanking\n        </h1>\n        <div class="versionStyle">\n          Version {{version}}\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <form (submit)="goToMainMenuAction()">\n    <div class="col col-center">\n      <div class="item item-divider item-text-wrap  regular-font"\n           style="color:red;background: transparent;border: none">\n        {{loginError03}}\n      </div>\n      <div class="row">\n        <div class="col regular-font"><span style="color: blue">Check your mail for activation code.</span></div>\n      </div>\n      <!--<form class="list">-->\n\n      <ion-list>\n        <div class="row item">\n            <div col col-4  class="item-text-wrap item-divider regular-font "\n                  style="text-align: right;"><b>User ID :</b></div>\n          <div col col-8 class="item-text-wrap item-text-wrap" style="text-align: left;font-size: 16px">{{userID}}</div>\n        </div>\n\n        <div class="row item">\n           <div col col-4 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Device ID\n            : </b></div>\n          <div col col-8 class="item-text-wrap regular-font item-text-wrap"\n                style="text-align: left">{{deviceAutoGenID}}</div>\n        </div>\n\n\n        <div class="row item">\n              <div col col-4 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Activation\n                Code\n                :</b></div>\n          <div col col-8 class="item-text-wrap regular-font " style="text-align: left">\n        <input placeholder="Activation Code" name="actCode" type="tel" [(ngModel)]="account.actCode" maxlength="6" class="textField">\n        </div>\n        </div>\n\n\n        <div class="row item">\n          <button class="btnTextLeftUnderline" type="button"\n                  style="text-align: center;width: 100%; margin-top: 10px; margin-bottom: 10px"\n                  (click)="resendMail(account)">Resend Mail\n          </button>\n        </div>\n\n      </ion-list>\n      <button class="button-block button-green" type="submit">Activate Device</button>\n\n    </div>\n  </form>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login03\user-login03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_auth_service_auth_service__["a" /* AuthServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_menu_service_menu_service__["a" /* MenuServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_error_message_error_message__["a" /* ErrorMessageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_9__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */]])
    ], UserLogin03Page);
    return UserLogin03Page;
}());

//# sourceMappingURL=user-login03.js.map

/***/ })

});
//# sourceMappingURL=17.js.map