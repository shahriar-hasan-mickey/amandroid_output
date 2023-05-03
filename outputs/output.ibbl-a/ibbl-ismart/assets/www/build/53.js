webpackJsonp([53],{

/***/ 448:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "IRecharge03PageModule", function() { return IRecharge03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_recharge03__ = __webpack_require__(551);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var IRecharge03PageModule = (function () {
    function IRecharge03PageModule() {
    }
    IRecharge03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge03__["a" /* IRecharge03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_recharge03__["a" /* IRecharge03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge03__["a" /* IRecharge03Page */]
            ]
        })
    ], IRecharge03PageModule);
    return IRecharge03PageModule;
}());

//# sourceMappingURL=i-recharge03.module.js.map

/***/ }),

/***/ 551:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return IRecharge03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_recharge_service_recharge_service__ = __webpack_require__(257);
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







var IRecharge03Page = (function () {
    function IRecharge03Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, rechargeService, alertCtrl) {
        var _this = this;
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.rechargeService = rechargeService;
        this.alertCtrl = alertCtrl;
        this.rechargeError03 = "";
        this.distinctOperators = [];
        this.CheckDuplicate = function (operators, val) {
            var count = 0;
            Object.keys(operators).forEach(function (key) {
                var value = operators[key];
                if (value.intValue == val.intValue) {
                    count++;
                }
            });
            return count;
        };
        this.FindIntValue = function (operators, val) {
            var _this = this;
            Object.keys(operators).forEach(function (key) {
                var value = operators[key];
                if (value.ID.toString() == val.toString()) {
                    _this.mnpOperator = value.intValue;
                    return;
                }
            });
        };
        this.RechargeMobile03Action = function (tpin, mnp, oneTimePass) {
            var _this = this;
            this.rechargeError03 = "";
            var validateTpinExp = new RegExp("[0-9]{4}$");
            this.otp = oneTimePass;
            this.selectedMNP = mnp;
            var flag = true;
            if (tpin == "" || typeof (tpin) == "undefined") {
                this.rechargeError03 = "TPIN can not be blank.";
                flag = false;
                return;
            }
            if (!validateTpinExp.test(tpin)) {
                this.rechargeError03 = "Invalid TPIN.";
                flag = false;
                return;
            }
            if (this.twoFactor) {
                if (this.otp == "" || typeof (this.otp) == "undefined") {
                    this.rechargeError03 = "Please Enter OTP.";
                    flag = false;
                    return;
                }
                var validateOtpExp = new RegExp("[0-9]{6}$");
                if (!validateOtpExp.test(this.otp)) {
                    this.rechargeError03 = "Invalid OTP.";
                    flag = false;
                    this.otp = "";
                    return;
                }
            }
            this.rTpin = tpin;
            this.encRechargeOp = this.cryptoUtil.getEncryptVal(mnp.toString());
            var tgAmount = this.triggerAmounts[mnp.toString()];
            var found = false;
            if (flag) {
                if (tgAmount == null) {
                    found = false;
                }
                else {
                    var index = tgAmount.indexOf(this.amount);
                    found = index >= 0;
                }
                if (found) {
                    this.showTriggerPopup();
                }
                else {
                    var appData = this.storage.retrieveFromStorage("appData");
                    var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                    this.tokenService.getNewToken(unMaskRefToken)
                        .then(function (data) {
                        _this.onNewTokenGenComplete(data);
                    });
                }
            }
        };
        this.onNewTokenGenComplete = function (data) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var encAccNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encMobileNo = this.cryptoUtil.getEncryptVal(this.mobileNo);
                var encPackage = this.cryptoUtil.getEncryptVal(this.packageType);
                var encAmount = this.cryptoUtil.getEncryptVal(this.amount);
                var encTPin = this.cryptoUtil.getEncryptVal(this.rTpin);
                var encOTP = this.cryptoUtil.getEncryptVal(this.otp);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.rechargeService.makeMobileRecharge(unMaskToken, appData.userId, appData.appId, encAccNo, encMobileNo, encPackage, encAmount, encTPin, encOTP, this.encRechargeOp)
                    .then(function (data) {
                    _this.onMobileRechargeComplete(data);
                });
            }
        };
        this.onMobileRechargeComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('IRecharge04Page', {
                    'mobileNo': this.mobileNo,
                    'amount': this.amount,
                    'package': this.packageType,
                    'shortTitle': this.shortTitle
                });
            }
            else if (data.statusCode == 0) {
                this.rechargeError03 = data.note;
            }
            else {
                this.rechargeError03 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = navParams.get('accountNo');
        this.mobileNo = navParams.get('mobileNo');
        this.packageType = navParams.get('packageType');
        this.triggerAmounts = JSON.parse(navParams.get('triggerAmounts'));
        this.twoFactor = JSON.parse(navParams.get('twoFactor'));
        this.amount = navParams.get('amount');
        this.shortTitle = navParams.get('shortTitle');
        this.rechargeOperators = this.storage.retrieveFromStorage("rechargeOperator");
        this.otp = "";
        // console.log(this.twoFactor);
        this.FindIntValue(this.rechargeOperators, this.mobileNo.substring(0, 3));
        var i = 0;
        Object.keys(this.rechargeOperators).forEach(function (key) {
            var value = _this.rechargeOperators[key];
            if (i == 0) {
                _this.distinctOperators.push(value);
            }
            else {
                var count = _this.CheckDuplicate(_this.distinctOperators, value);
                if (count == 0) {
                    _this.distinctOperators.push(value);
                }
            }
            i++;
        });
        // console.log(this.distinctOperators);
    }
    IRecharge03Page.prototype.showTriggerPopup = function () {
        var _this = this;
        var nmpName = "";
        if (this.selectedMNP == 1) {
            nmpName = "Grameen Phone";
        }
        if (this.selectedMNP == 2) {
            nmpName = "Banglalink";
        }
        if (this.selectedMNP == 3) {
            nmpName = "Robi";
        }
        if (this.selectedMNP == 5) {
            nmpName = "Teletalk";
        }
        if (this.selectedMNP == 6) {
            nmpName = "Airtel";
        }
        var confirmAlert = this.alertCtrl.create({
            title: "Recharge Confirmation !",
            message: "<center>This Recharge amount will activate " + nmpName + " special bundle pack. " +
                " Visit " + nmpName + " website for detail.</br> <b>Do you want to continue ?</b></center>",
            cssClass: "alertLogCss",
            enableBackdropDismiss: false,
            buttons: [
                {
                    text: 'No',
                    handler: function () {
                    }
                },
                {
                    text: 'Yes',
                    handler: function () {
                        var appData = _this.storage.retrieveFromStorage("appData");
                        var unMaskRefToken = _this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
                        _this.tokenService.getNewToken(unMaskRefToken)
                            .then(function (data) {
                            _this.onNewTokenGenComplete(data);
                        });
                    }
                }
            ]
        });
        confirmAlert.present();
        setTimeout(function () {
            confirmAlert.dismiss();
        }, 15000);
    };
    IRecharge03Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad IRecharge03Page');
    };
    IRecharge03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-recharge03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge03\i-recharge03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iRecharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <form (submit)="RechargeMobile03Action(tpin,mnpOperator,otp)">\n\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="rechargeError03">\n      {{rechargeError03}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><strong>Recharge\n        Information</strong></div>\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Account No : </strong>\n          </div>\n          <div col col-7>\n            {{accountNo}}\n          </div>\n\n      </div>\n\n\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Mobile No : </strong>\n          </div>\n          <div col col-7>\n            {{mobileNo}}\n          </div>\n\n      </div>\n\n\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Package : </strong>\n          </div>\n          <div col col-7>\n            {{packageType}}\n          </div>\n\n      </div>\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>Amount : </strong>\n          </div>\n          <div col col-7>\n            {{amount}}\n          </div>\n\n      </div>\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>MNP Operator : </strong>\n          </div>\n          <div col col-7>\n            <select [(ngModel)]="mnpOperator" name="mnpOperator" class="textFieldCustom" style="width: 100%;" id="selectMobileNo" tabindex="2">\n              <option *ngFor="let operator of distinctOperators" value="{{operator.intValue}}">{{operator.Title}}</option>\n            </select>\n          </div>\n\n      </div>\n\n\n      <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>TPIN : </strong>\n          </div>\n          <div col col-7>\n            <input type="tel" name="tpin" style="-webkit-text-security:disc" placeholder="Enter TPIN" [(ngModel)]="tpin" tabindex="1" maxlength="4" class="textField">\n          </div>\n\n      </div>\n\n      <div class="row item regular-font" *ngIf="twoFactor">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>OTP : </strong>\n        </div>\n        <div col col-7>\n          <input type="tel" name="otp" placeholder="Enter OTP" [(ngModel)]="otp" tabindex="2" maxlength="6" class="textField">\n        </div>\n      </div>\n\n      <button class="button-green button-block " type="submit" tabindex="2"> Submit\n      </button>\n\n    </ion-list>\n</form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge03\i-recharge03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_recharge_service_recharge_service__["a" /* RechargeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */]])
    ], IRecharge03Page);
    return IRecharge03Page;
}());

//# sourceMappingURL=i-recharge03.js.map

/***/ })

});
//# sourceMappingURL=53.js.map