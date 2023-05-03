webpackJsonp([19],{

/***/ 484:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UserLogin01PageModule", function() { return UserLogin01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__user_login01__ = __webpack_require__(587);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var UserLogin01PageModule = (function () {
    function UserLogin01PageModule() {
    }
    UserLogin01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__user_login01__["a" /* UserLogin01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__user_login01__["a" /* UserLogin01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__user_login01__["a" /* UserLogin01Page */]
            ]
        })
    ], UserLogin01PageModule);
    return UserLogin01PageModule;
}());

//# sourceMappingURL=user-login01.module.js.map

/***/ }),

/***/ 587:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserLogin01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_error_message_error_message__ = __webpack_require__(264);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_auth_service_auth_service__ = __webpack_require__(259);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__providers_menu_service_menu_service__ = __webpack_require__(265);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__ionic_native_in_app_browser__ = __webpack_require__(271);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__ionic_native_diagnostic__ = __webpack_require__(68);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__providers_location_location__ = __webpack_require__(253);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__providers_alert_alert__ = __webpack_require__(251);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__ionic_native_network__ = __webpack_require__(69);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15__ng_idle_core__ = __webpack_require__(53);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16__providers_remittance_remittance__ = __webpack_require__(263);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17__providers_authentication_authentication__ = __webpack_require__(252);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


















var UserLogin01Page = (function () {
    function UserLogin01Page(navCtrl, navParams, cryptoUtil, storage, maskToken, tokenService, menuService, messageProvider, authService, remittanceService, config, menu, iab, locationService, diagnostic, alertProvider, network, idle, authProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.storage = storage;
        this.maskToken = maskToken;
        this.tokenService = tokenService;
        this.menuService = menuService;
        this.messageProvider = messageProvider;
        this.authService = authService;
        this.remittanceService = remittanceService;
        this.config = config;
        this.menu = menu;
        this.iab = iab;
        this.locationService = locationService;
        this.diagnostic = diagnostic;
        this.alertProvider = alertProvider;
        this.network = network;
        this.idle = idle;
        this.authProvider = authProvider;
        this.tokenResponse = {};
        this.account = { userID: '', passWD: '', isChecked: false };
        this.init = function () {
            this.menu.enable(false);
            var remInfo = this.storage.retrieveFromStorage("remInfo");
            if (remInfo == null) {
                var remInfo_1 = {
                    status: 0
                };
                this.storage.insertIntoStorage("remInfo", remInfo_1);
                this.account.isChecked = false;
                this.account.userID = "";
            }
            else {
                if (remInfo.status == 1) {
                    var appData = this.storage.retrieveFromStorage("appData");
                    this.account.isChecked = true;
                    this.account.userID = this.cryptoUtil.getDecryptVal(appData.userId);
                }
                else {
                    this.account.isChecked = false;
                    this.account.userID = "";
                }
            }
        };
        this.onProfileLockCheckComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.loginError01 = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.signInResponse.status != null) {
                var retStatus = data.signInResponse.status;
                if (retStatus == 100) {
                    this.tokenService.getRefreshToken(this.loginUserId, this.account.passWD)
                        .then(function (data) {
                        _this.tokenResponse = data;
                        _this.onTokenGenComplete(_this.tokenResponse);
                        // console.log(this.tokenResponse);
                    });
                }
                else if (retStatus == 999) {
                    this.loginError01 = data.signInResponse.note;
                }
            }
            else {
                this.loginError01 = "System Error, Please Contact with Administrator.";
            }
        };
        this.onTokenGenComplete = function (data) {
            var _this = this;
            if (data.tokenType == "bearer") {
                this.appData = this.storage.retrieveFromStorage('appData');
                if (this.appData == null) {
                    var date = new Date();
                    var uuid01 = Math.floor(Math.random() * 900000000000) + 100000000000;
                    var uuid02 = Math.floor(Math.random() * 900000000000) + 100000000000;
                    var millSec = date.getMilliseconds();
                    //Date format was 'yyyyMMddHHmmss'
                    var today = date.getFullYear().toString() + (date.getMonth() + 1).toString() +
                        date.getDate().toString() + date.getHours().toString() + date.getMinutes().toString() +
                        date.getMinutes().toString();
                    var applicationId = uuid01.toString() + uuid02.toString() + "-" + today + millSec;
                    var encAppId = this.cryptoUtil.getEncryptVal(applicationId);
                    //Generate appId and Update Status
                    var savedData = {
                        status: 801,
                        appId: encAppId
                    };
                    this.storage.insertIntoStorage('appData', savedData);
                }
                var dbVal = this.storage.retrieveFromStorage('appData');
                dbVal.token = this.maskToken.getMaskVal(data.value);
                dbVal.refreshToken = this.maskToken.getMaskVal(data.refreshToken.value);
                dbVal.userId = this.cryptoUtil.getEncryptVal(this.loginUserId);
                this.storage.insertIntoStorage('appData', dbVal);
                //SETTING UP USER ID IS SAVED OR NOT
                if (this.account.isChecked) {
                    var remInfo = {
                        status: 1
                    };
                    this.storage.insertIntoStorage("remInfo", remInfo);
                }
                else {
                    var noRemInfo = {
                        status: 0
                    };
                    this.storage.insertIntoStorage("remInfo", noRemInfo);
                }
                this.idle.watch();
                //REQUEST FOR OTP GENERATION TO SERVER
                if (dbVal.status == 801) {
                    // console.log("STATUS : 801");
                    this.authService.generateOTP(dbVal.userId, dbVal.appId, data.value)
                        .then(function (data) {
                        var otpResponse = data;
                        // console.log(otpResponse);
                        _this.onOTPGenComplete(otpResponse);
                    });
                }
                //REQUEST FOR ACTIVATION CHECKING TO SERVER
                if (dbVal.status == 802) {
                    var param = { 'userId': this.loginUserId, 'appId': dbVal.appId, 'token': dbVal.token };
                    this.navCtrl.push('UserLogin03Page', { "param": param });
                }
                // User Already Verified
                //REQUEST FOR GENERATE MANU AND PRIVILEGE TO SERVER
                if (dbVal.status == 800) {
                    var appVersion = this.config.iSmartVersion;
                    var encAppVersion = this.cryptoUtil.getEncryptVal(appVersion);
                    this.menuService.generateMenu(dbVal.userId, dbVal.appId, data.value, encAppVersion)
                        .then(function (data) {
                        _this.onMenuGenComplete(data);
                    });
                }
            }
            else {
                this.loginError01 = this.messageProvider.getErrorMessage(data.status);
                this.account.passWD = "";
            }
        };
        this.onOTPGenComplete = function (data) {
            //$log.info("OTP Generation Complete Function " + JSON.stringify(data));
            //IF OTP GENERATION IS SUCCESSFUL
            if (data.enrollStatus == 1) {
                var dbVal = this.storage.retrieveFromStorage('appData');
                var param = {
                    'userId': this.loginUserId,
                    'appId': dbVal.appId,
                    'token': dbVal.token
                };
                // alert("param value in 01 :"+JSON.stringify(param));
                this.navCtrl.push('UserLogin02Page', { "param": param });
            }
            else if (data.enrollStatus == 0) {
                this.loginError01 = data.note;
                this.account.passWD = "";
            }
            else {
                this.loginError01 = "Internal Error. Please Contact your administrator.";
                this.account.passWD = "";
            }
        };
        this.onMenuGenComplete = function (data) {
            //IF MENU GENERATION IS SUCCESSFUL
            if (data.loginStatus == 1 || data.loginStatus == 2) {
                var menus = data.privMenus;
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
                if (data.loginStatus == 1) {
                    this.navCtrl.setRoot('WelcomePage', {});
                }
                if (data.loginStatus == 2) {
                    this.navCtrl.push('PasswordExpirePage', {});
                }
            }
            else if (data.loginStatus == 0) {
                this.loginError01 = "UserID or Password or Device info or all are incorrect.";
                this.account.passWD = "";
            }
            else {
                this.loginError01 = this.messageProvider.getErrorMessage(data.status);
                this.account.passWD = "";
            }
        };
        this.goToLocationByType = function (locType) {
            var _this = this;
            this.loginError01 = "";
            if (this.network.type == "none") {
                var alertHead = "Alert !";
                var message = "<center>Internet Disconnected. Please connect it first.</center>";
                this.alertProvider.showAlert(alertHead, message, 10000);
                return;
            }
            this.type = this.locationService.getLocationDescription(locType);
            var encLocType = this.cryptoUtil.getEncryptVal(locType);
            if (this.gpsEnableCheck) {
                this.diagnostic.isLocationEnabled()
                    .then(function (state) {
                    if (state == true) {
                        _this.locationService.getActiveLocationByType(encLocType)
                            .then(function (data) {
                            _this.locationFetchComplete(data);
                        });
                    }
                    else {
                        var alertHead = "Alert !";
                        var message = "<center>Device location access  disabled. Please enable it and try again.</center>";
                        _this.alertProvider.showAlert(alertHead, message, 10000);
                    }
                }).catch(function (e) { return console.error(e); });
            }
            else {
                this.locationService.getActiveLocationByType(encLocType)
                    .then(function (data) {
                    _this.locationFetchComplete(data);
                });
            }
        };
        this.locationFetchComplete = function (data) {
            if (data.status == 0) {
                this.loginError01 = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.statusCode == 1) {
                this.navCtrl.push('LocationOuter01Page', { 'type': this.type, 'locationDetails': JSON.stringify(data.object) });
            }
            else if (data.statusCode == 0) {
                this.loginError01 = data.note;
                return;
            }
            else {
                this.loginError01 = "System Error, Please Contact with Administrator.";
            }
        };
        this.goToRegistration = function () {
            if (this.network.type == "none") {
                var alertHead = "Alert !";
                var message = "<center>Internet Disconnected. Please connect it first.</center>";
                this.alertProvider.showAlert(alertHead, message, 10000);
                return;
            }
            this.iab.create(this.config.getRegistrationURL(), '_blank', {
                location: 'no',
                footer: 'yes',
                clearsessioncache: 'yes',
                clearcache: 'yes'
            });
        };
        this.goToRemittancePage = function () {
            var _this = this;
            if (this.network.type == "none") {
                var alertHead = "Alert !";
                var message = "<center>Internet Disconnected. Please connect it first.</center>";
                this.alertProvider.showAlert(alertHead, message, 10000);
                return;
            }
            var deviceID = this.maskToken.getDeviceID();
            // console.log(deviceID);
            var encDeviceID = this.cryptoUtil.getEncryptVal(deviceID);
            var providedHash = this.cryptoUtil.getSha256EncryptedValue(deviceID + this.cryptoUtil.salt);
            this.remittanceService.getExchangeHouseList(encDeviceID, providedHash)
                .then(function (data) {
                _this.exHouseFetchComplete(data);
            });
        };
        this.exHouseFetchComplete = function (data) {
            // console.log("data :" + JSON.stringify(data));
            this.loginError01 = "";
            if (data.status == 0) {
                this.loginError01 = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.statusCode == 1) {
                // console.log(data.object);
                this.navCtrl.push('RemittanceInfo02Page', { 'exchangeHouseList': JSON.parse(data.object), 'navType': "1" });
            }
            else if (data.statusCode == 0) {
                if (data.object == null) {
                    this.loginError01 = "System error. Contact with administrator.(Fail to load data)";
                }
                else {
                    this.loginError01 = data.note;
                }
                return;
            }
            else {
                this.loginError01 = "System Error, Please Contact with Administrator.";
            }
        };
        this.GenerateCaptchaAction = function () {
            this.loginError01 = "";
            if (this.network.type == "none") {
                var alertHead = "Alert !";
                var message = "<center>Internet Disconnected. Please connect it first.</center>";
                this.alertProvider.showAlert(alertHead, message, 10000);
                return;
            }
            this.navCtrl.push('ResetPassword01Page', {});
        };
        this.version = this.config.iSmartVersion;
        this.passwordShown = false;
        this.eyeIcon = "eye";
        this.gpsEnableCheck = this.config.gpsCheckEnabled;
        this.init();
    }
    UserLogin01Page.prototype.togglePassword = function (input) {
        input.type = input.type == 'password' ? 'text' : 'password';
        if (this.passwordShown) {
            this.passwordShown = false;
            this.eyeIcon = "eye";
        }
        else {
            this.passwordShown = true;
            this.eyeIcon = "eye-off";
        }
    };
    ;
    UserLogin01Page.prototype.userLogin01Action = function () {
        var _this = this;
        if (this.network.type == "none") {
            var alertHead = "Alert !";
            var message = "<center>Internet Disconnected. Please connect it first.</center>";
            this.alertProvider.showAlert(alertHead, message, 10000);
            return;
        }
        this.loginError01 = "";
        var emailExp = new RegExp("^[A-Za-z0-9\\._%'\\-\\*]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,4}$");
        var flag = true;
        if (this.account.userID == "" || typeof (this.account.userID) == "undefined") {
            this.loginError01 = "UserID can not be blank.";
            flag = false;
            this.account.passWD = "";
            return;
        }
        if (!emailExp.test(this.account.userID.trim())) {
            this.loginError01 = "UserID is incorrect.";
            flag = false;
            this.account.passWD = "";
            return;
        }
        if (this.account.userID.length > 100) {
            this.loginError01 = "UserID invalid, UserID maximum length exceed.";
            flag = false;
            this.account.passWD = "";
            return;
        }
        if (this.account.passWD == "" || typeof (this.account.passWD) == "undefined") {
            this.loginError01 = "Password can not be blank.";
            flag = false;
            return;
        }
        if (this.account.passWD.length > 50) {
            this.loginError01 = "Password invalid, Password maximum length exceed.";
            flag = false;
            this.account.passWD = "";
            return;
        }
        if (flag) {
            this.loginUserId = this.account.userID.trim().toLowerCase();
            // this.tokenService.getRefreshToken(this.loginUserId, this.account.passWD)
            //   .then(data => {
            //     this.tokenResponse = data;
            //     this.onTokenGenComplete(this.tokenResponse);
            //     // console.log(this.tokenResponse);
            //   });
            var encProfileUserID = this.cryptoUtil.getEncryptVal(this.loginUserId);
            this.authProvider.checkProfileCurrentStatus(encProfileUserID).then(function (data) {
                _this.onProfileLockCheckComplete(data);
            });
        }
    };
    UserLogin01Page.prototype.ionViewDidLoad = function () {
    };
    UserLogin01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-user-login01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login01\user-login01.html"*/'<!--<head>-->\n<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">-->\n  <!--$(document).ready(function(){-->\n    <!--$("#iconEye").click(function(){-->\n    <!--$(\'#password\').attr(\'type\', \'text\');-->\n  <!--});-->\n  <!--});-->\n<!--</script>-->\n<!--</head>-->\n\n<div class="row  index-background" style="height: 25%">\n  <div class="col">\n\n    <div class="row cam-img ">\n      <div col col-5 style="text-align: right">\n        <img src="assets/imgs/logo.gif" style="\n    max-width: 65px;height:60px;width:60px"/>\n      </div>\n      <div col col-7 style="text-align: left; ">\n        <h1 class="moduleNameNew" style="color: #276213;margin-bottom: 0px">\n          IBBL iBanking\n        </h1>\n        <div class="versionStyle">\n          Version {{version}}\n        </div>\n      </div>\n    </div>\n  </div>\n</div>\n\n<form (submit)="userLogin01Action()">\n  <div class="row" style="height: 50%">\n    <div class="col">\n      <div class="item item-divider item-text-wrap  regular-font"\n           style="color:red;background: transparent;border: none">\n        {{loginError01}}\n      </div>\n\n\n      <div class=" login-box regular-font">\n        <label class="item-input">\n          <ion-icon name="person"></ion-icon>\n          <ion-input type="text" name="UserID" placeholder="User ID" [(ngModel)]="account.userID"\n                     required="true"  maxlength="100" autocomplete="off"></ion-input>\n        </label>\n\n        <label class="item-input">\n          <ion-icon name="lock"></ion-icon>\n          <!--[ngStyle]="{\'-webkit-text-security\': inputStyle}"-->\n          <ion-input clearOnEdit="false" type="password" #input  name="password" placeholder="Password"\n                     autocomplete="off" spellcheck="false" autocorrect="off" autocapitalize="off" [(ngModel)]="account.passWD" maxlength="50"></ion-input>\n          <ion-icon [name]="eyeIcon"  id="iconEye" (click)="togglePassword(input)"  item-end style="font-size: 23px;margin-left: -15px"></ion-icon>\n        </label>\n\n        <ion-item class="regular-font" no-lines item style="margin-top: 5px">\n          <ion-toggle color="ibblCustom" [(ngModel)]="account.isChecked" name="isChecked"></ion-toggle>\n          <ion-label class="regular-font" style="padding-left: 20px">Remember User ID?</ion-label>\n        </ion-item>\n\n      </div>\n      <button class="button-block login-button" type="submit">Login</button>\n\n    </div>\n\n  </div>\n</form>\n\n<ion-list>\n  <ion-item class="regular-font" no-lines item>\n    <!--<ion-label class="regular-font" style="padding-left: 20px; text-align: right;color: blue">Forgot Password?</ion-label>-->\n    <button class="btnTextLeftUnderline" icon-left icon-only no-lines style="width: 100%;padding-left: 28px"\n            (click)="GenerateCaptchaAction()">Forgot Password?\n    </button>\n  </ion-item>\n</ion-list>\n\n\n<ion-footer>\n  <!--<ion-toolbar >-->\n  <ion-row style="background-color: white">\n    <ion-col class="col-3" (click)="goToLocationByType(\'2\')">\n      <ion-icon name="md-pin" style="color: #006e00;font-size: 35px"></ion-icon>\n      <p class="regular-font">ATM</p></ion-col>\n\n    <ion-col class="col-3" (click)="goToLocationByType(\'1\')">\n      <ion-icon name="md-pin" style="color: #006e00;font-size: 35px"></ion-icon>\n      <p class="regular-font">Branch</p></ion-col>\n\n    <ion-col class="col-3" (click)="goToRemittancePage()">\n      <img src="assets/imgs/appImage/Remit.png" style="max-width: 65px;height:26px;width:32px;margin-top: 6px"/>\n      <p class="regular-font">Remittance</p></ion-col>\n\n    <ion-col class="col-3" (click)="goToRegistration()">\n      <img src="assets/imgs/appImage/reg.png" style="max-width: 65px;height:26px;width:32px;margin-top: 6px"/>\n      <p class="regular-font">Sign up</p></ion-col>\n\n  </ion-row>\n  <!--</ion-toolbar>-->\n\n</ion-footer>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login01\user-login01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_9__providers_menu_service_menu_service__["a" /* MenuServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_error_message_error_message__["a" /* ErrorMessageProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_auth_service_auth_service__["a" /* AuthServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_16__providers_remittance_remittance__["a" /* RemittanceProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["i" /* MenuController */],
            __WEBPACK_IMPORTED_MODULE_10__ionic_native_in_app_browser__["a" /* InAppBrowser */],
            __WEBPACK_IMPORTED_MODULE_12__providers_location_location__["a" /* LocationProvider */],
            __WEBPACK_IMPORTED_MODULE_11__ionic_native_diagnostic__["a" /* Diagnostic */],
            __WEBPACK_IMPORTED_MODULE_13__providers_alert_alert__["a" /* AlertProvider */],
            __WEBPACK_IMPORTED_MODULE_14__ionic_native_network__["a" /* Network */],
            __WEBPACK_IMPORTED_MODULE_15__ng_idle_core__["b" /* Idle */],
            __WEBPACK_IMPORTED_MODULE_17__providers_authentication_authentication__["a" /* AuthenticationProvider */]])
    ], UserLogin01Page);
    return UserLogin01Page;
}());

//# sourceMappingURL=user-login01.js.map

/***/ })

});
//# sourceMappingURL=19.js.map