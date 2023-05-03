webpackJsonp([22],{

/***/ 482:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SettingsPageModule", function() { return SettingsPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__settings__ = __webpack_require__(585);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var SettingsPageModule = (function () {
    function SettingsPageModule() {
    }
    SettingsPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__settings__["a" /* SettingsPage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__settings__["a" /* SettingsPage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__settings__["a" /* SettingsPage */],
            ]
        })
    ], SettingsPageModule);
    return SettingsPageModule;
}());

//# sourceMappingURL=settings.module.js.map

/***/ }),

/***/ 585:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SettingsPage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_authentication_authentication__ = __webpack_require__(252);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var SettingsPage = (function () {
    function SettingsPage(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, gaProvider, authService, alertCtrl) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.gaProvider = gaProvider;
        this.authService = authService;
        this.alertCtrl = alertCtrl;
        this.settingsMenu = [];
        this.goToChangePasswordPage = function () {
            this.navCtrl.push('ChangePassword01Page');
        };
        this.goToChangeTPINPage = function () {
            var _this = this;
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Confirm Change');
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>Are you sure you want to change your TPIN</center>");
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
            }, 20000);
        };
        this.onNewTokenGenCompleteForDelete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.push('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authService.initChangePin(unMaskToken, appData.userId, appData.appId)
                    .then(function (data) {
                    _this.onInitChangePinComplete(data);
                });
            }
        };
        this.onInitChangePinComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ChangePin01Page');
            }
            else if (data.statusCode == 0) {
                this.settingsError = data.note;
            }
            else {
                this.settingsError = "System Error Contact with Administrator.";
            }
        };
        var dWelCome = this.storage.retrieveFromStorage('welcomeVal');
        if (dWelCome == null || dWelCome == "") {
        }
        else {
            dWelCome = cryptoUtil.getDecryptVal(dWelCome);
            dWelCome = JSON.parse(dWelCome);
            this.transactional = dWelCome.transactional;
        }
        this.changePasswordMenu = {
            "menuTxt": "Change Password",
            "menuLink": "#iCellular/ChangePassword01Page",
            "imageUrl": "assets/imgs/appImage/password.jpg"
        };
        if (this.transactional == 1) {
            this.changeTPINMenu = {
                "menuTxt": "Change TPIN",
                "menuLink": "#iCellular/ChangePin01Page",
                "imageUrl": "assets/imgs/appImage/pinChange.jpg"
            };
        }
    }
    SettingsPage.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Settings");
    };
    SettingsPage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-settings',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\settings\settings.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Settings</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap  regular-font" style="color:red;background-color: transparent"\n       *ngIf="settingsError">{{settingsError}}\n  </div>\n\n  <ion-grid >\n    <ion-row style="padding: 0;height: 15%" class="slide-box-style">\n      <ion-col col-6 style="align-items: center;vertical-align: middle;border: none;height: 90%"\n               (click)="goToChangePasswordPage()">\n\n        <button class="button button-icon" style="width: 100%;height: 100%;line-height: 15px;">\n          <img style="height:40%;width: 40%;display: block;margin: auto" src="{{changePasswordMenu.imageUrl}}"/>\n          <label style="font-size: 12px" class="item-text-wrap"> {{changePasswordMenu.menuTxt}}</label>\n        </button>\n      </ion-col>\n\n      <ion-col col-6 style="align-items: center;vertical-align: middle;border: none;height: 100%"\n               (click)="goToChangeTPINPage()" *ngIf="transactional==1">\n\n        <button class="button button-icon" style="width: 100%;height: 100%;line-height: 15px;">\n          <img style="height:40%;width: 40%;display: block;margin: auto" src="{{changeTPINMenu.imageUrl}}"/>\n          <label style="font-size: 12px" class="item-text-wrap"> {{changeTPINMenu.menuTxt}}</label>\n        </button>\n      </ion-col>\n\n    </ion-row>\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\settings\settings.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_authentication_authentication__["a" /* AuthenticationProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */]])
    ], SettingsPage);
    return SettingsPage;
}());

//# sourceMappingURL=settings.js.map

/***/ })

});
//# sourceMappingURL=22.js.map