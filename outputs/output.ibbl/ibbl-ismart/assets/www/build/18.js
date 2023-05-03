webpackJsonp([18],{

/***/ 485:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "UserLogin02PageModule", function() { return UserLogin02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__user_login02__ = __webpack_require__(588);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var UserLogin02PageModule = (function () {
    function UserLogin02PageModule() {
    }
    UserLogin02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__user_login02__["a" /* UserLogin02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__user_login02__["a" /* UserLogin02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__user_login02__["a" /* UserLogin02Page */]
            ]
        })
    ], UserLogin02PageModule);
    return UserLogin02PageModule;
}());

//# sourceMappingURL=user-login02.module.js.map

/***/ }),

/***/ 588:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserLogin02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__ionic_native_device__ = __webpack_require__(272);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_auth_service_auth_service__ = __webpack_require__(259);
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









var UserLogin02Page = (function () {
    function UserLogin02Page(navCtrl, navParams, storage, tokenService, ionDevice, authService, cryptoUtil, maskTokenUtil, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.tokenService = tokenService;
        this.ionDevice = ionDevice;
        this.authService = authService;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.config = config;
        this.oneTimePass = "";
        this.appId = "";
        this.userID = "";
        this.account = { OTP: '' };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var model = this.ionDevice.model;
                var encModel = this.cryptoUtil.getEncryptVal(model);
                var manufacturer = this.ionDevice.manufacturer;
                var encManufacturer = this.cryptoUtil.getEncryptVal(manufacturer);
                var encOTP = this.cryptoUtil.getEncryptVal(this.oneTimePass);
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.authService.validateOTP(appData.userId, this.appId, unMaskToken, encOTP, encModel, encManufacturer)
                    .then(function (data) {
                    _this.onOTPValidateComplete(data);
                });
            }
        };
        this.onOTPValidateComplete = function (data) {
            if (data.enrollStatus == 1) {
                //$log.info("Data base Value before status Update : " + JSON.stringify(dbVal));
                var dbVal = this.storage.retrieveFromStorage("appData");
                dbVal.status = 802;
                this.storage.insertIntoStorage('appData', dbVal);
                var param = {
                    'userId': this.userID,
                    'appId': this.appId
                };
                this.navCtrl.push('UserLogin03Page', { "param": param });
            }
            else if (data.enrollStatus == 0) {
                this.loginError02 = data.note;
                this.account = { OTP: "" };
            }
            else {
                this.loginError02 = "OTP Validation Failed. Contact with Administrator.";
                this.account = { OTP: "" };
            }
        };
        this.param = navParams.get("param");
        // alert("Value in 02" + this.param);
        this.userID = this.param.userId;
        this.account.OTP = "";
        this.appId = this.param.appId;
        this.version = config.iSmartVersion;
    }
    UserLogin02Page.prototype.userLogin02Action = function () {
        var _this = this;
        var otpExp = new RegExp("^[0-9]{6,10}");
        var flag = true;
        if (this.account.OTP == "" || typeof (this.account.OTP) == "undefined") {
            this.loginError02 = "Please Enter OTP.";
            flag = false;
            return;
        }
        if (!otpExp.test(this.account.OTP)) {
            this.loginError02 = "Invalid OTP!, Please Provide Correct OTP.";
            flag = false;
            this.account.OTP = "";
            return;
        }
        if (flag) {
            this.oneTimePass = this.account.OTP;
            //CALL REFRESH TOKEN SERVICE HERE
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenComplete(data);
            });
        }
    };
    UserLogin02Page.prototype.ionViewDidLoad = function () {
    };
    UserLogin02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-user-login02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login02\user-login02.html"*/'\n  <div class="row  index-background" style="height: 25%">\n    <div class="col">\n\n      <div class="row cam-img ">\n        <div col col-5 style="text-align: right">\n          <img src="assets/imgs/logo.gif" style="\n    max-width: 65px;height:60px;width:60px"/>\n        </div>\n        <div col col-7 style="text-align: left; ">\n          <h1 class="moduleNameNew" style="color: #276213;margin-bottom: 0px">\n            IBBL iBanking\n          </h1>\n          <div class="versionStyle">\n            Version {{version}}\n          </div>\n\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <form (submit)="userLogin02Action()">\n    <div class="col col-center">\n      <div class="item item-divider item-text-wrap  regular-font"\n           style="color:red;background: transparent;border: none">\n        {{loginError02}}\n      </div>\n      <div class="row">\n        <div class="col regular-font"><span style="color: blue">Check your Cell phone for One Time Key.</span></div>\n      </div>\n\n\n      <ion-list>\n        <div class="row item">\n          <div col col-4 class=" item-text-wrap item-divider regular-font " style="text-align: right;"><b>User ID\n            : </b></div>\n          <div col col-8 class="item-text-wrap" style="text-align: left;font-size: 16px">{{userID}}</div>\n        </div>\n        <div class="row item">\n            <div col col-4 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Status\n              : </b></div>\n          <div col col-8 class="item-text-wrap regular-font " style="text-align: left">OTP Not Verified.</div>\n        </div>\n\n        <div class="row item">\n          <div col col-4  class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP\n            :</b></div>\n          <div col col-8  class="item-text-wrap regular-font " style="text-align: left">\n              <input placeholder="One Time Password" type="tel" [(ngModel)]="account.OTP" maxlength="6"\n                     class="textField regular-font" name="otp">\n            </div>\n        </div>\n\n      </ion-list>\n      <button class="button-block button-green" type="submit">Next</button>\n\n\n    </div>\n  </form>\n\n\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\user-login02\user-login02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__ionic_native_device__["a" /* Device */],
            __WEBPACK_IMPORTED_MODULE_7__providers_auth_service_auth_service__["a" /* AuthServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_config_config__["a" /* ConfigProvider */]])
    ], UserLogin02Page);
    return UserLogin02Page;
}());

//# sourceMappingURL=user-login02.js.map

/***/ })

});
//# sourceMappingURL=18.js.map