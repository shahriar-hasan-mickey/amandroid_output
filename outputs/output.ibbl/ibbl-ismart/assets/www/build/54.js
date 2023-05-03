webpackJsonp([54],{

/***/ 449:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "IRecharge02PageModule", function() { return IRecharge02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_recharge02__ = __webpack_require__(552);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var IRecharge02PageModule = (function () {
    function IRecharge02PageModule() {
    }
    IRecharge02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge02__["a" /* IRecharge02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_recharge02__["a" /* IRecharge02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_recharge02__["a" /* IRecharge02Page */]
            ]
        })
    ], IRecharge02PageModule);
    return IRecharge02PageModule;
}());

//# sourceMappingURL=i-recharge02.module.js.map

/***/ }),

/***/ 552:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return IRecharge02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_recharge_service_recharge_service__ = __webpack_require__(257);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var IRecharge02Page = (function () {
    function IRecharge02Page(navCtrl, navParams, maskTokenUtil, storage, alertCtrl, rechargeService, tokenService, cryptoUtil) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.rechargeService = rechargeService;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.showVar = true;
        this.RechargeMobile02Action = function (opPrefix, mobileNo, packageType, amount) {
            var _this = this;
            this.rechargeError02 = "";
            var validateMobileExp = new RegExp("[0-9]{8}$");
            var validateAmountExp = new RegExp("[0-9]{1,3}$");
            var flag = true;
            this.amount = amount;
            if (this.showVar) {
                if (opPrefix == "" || typeof (opPrefix) == "undefined") {
                    this.rechargeError02 = "Please Select Operator";
                    flag = false;
                    return;
                }
                if (mobileNo == "" || typeof (mobileNo) == "undefined") {
                    this.rechargeError02 = "Mobile Number can not be blank.";
                    flag = false;
                    return;
                }
                if (!validateMobileExp.test(this.mobileNo)) {
                    this.rechargeError02 = "Invalid Mobile No.";
                    flag = false;
                    return;
                }
                if (packageType == "" || typeof (packageType) == "undefined") {
                    this.rechargeError02 = "Please Select Package";
                    flag = false;
                    return;
                }
            }
            if (amount == "" || typeof (amount) == "undefined") {
                this.rechargeError02 = "Recharge amount can not be blank.";
                flag = false;
                return;
            }
            if (!validateAmountExp.test(amount)) {
                this.rechargeError02 = "Invalid Recharge amount.";
                flag = false;
                return;
            }
            if (this.showVar) {
                this.rechargeMobileNo = opPrefix + mobileNo;
                this.rechargePackage = packageType;
            }
            else {
                this.rechargeMobileNo = this.fullMobileNo;
                this.rechargePackage = this.fullPack;
            }
            if (this.rechargePackage == "prepaid") {
                if (amount < 10) {
                    this.rechargeError02 = "Minimum recharge amount 10 taka for prepaid.";
                    flag = false;
                    return;
                }
            }
            if (this.rechargePackage == "postpaid") {
                if (amount < 50) {
                    this.rechargeError02 = "Minimum recharge amount 50 taka for Postpaid.";
                    flag = false;
                    return;
                }
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
                var encAmount = this.cryptoUtil.getEncryptVal(this.amount);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.rechargeService.validateRechargeRequest(unMaskToken, appData.userId, appData.appId, encAmount)
                    .then(function (data) {
                    _this.onValidateTriggerAmountComplete(data);
                });
            }
        };
        this.onValidateTriggerAmountComplete = function (data) {
            // console.log(data);
            if (data.statusCode == 1) {
                this.navCtrl.push('IRecharge03Page', {
                    'accountNo': this.accountNo,
                    'mobileNo': this.rechargeMobileNo,
                    'packageType': this.rechargePackage,
                    'amount': this.amount,
                    'shortTitle': this.shortTitle,
                    'triggerAmounts': JSON.stringify(data.object.triggerAmounts),
                    'twoFactor': JSON.stringify(data.object.twoFactor)
                    // 'twoFactor' :true
                });
            }
            else if (data.statusCode == 0) {
                this.rechargeError02 = data.note;
            }
            else {
                this.rechargeError02 = "System Error Contact with Administrator.";
            }
        };
        this.showFavoriteList = function () {
            var _this = this;
            this.rechargeError02 = "";
            var dbVal = this.storage.retrieveFromStorage("appData");
            var unMaskToken = this.maskTokenUtil.getUnMaskVal(dbVal.token);
            this.rechargeService.fetchFavoriteList(unMaskToken, dbVal.userId, dbVal.appId)
                .then(function (data) {
                // console.log(JSON.stringify(data));
                _this.onFetchFavoriteListComplete(data);
                // console.log(this.tokenResponse);
            });
        };
        this.onFetchFavoriteListComplete = function (data) {
            var _this = this;
            if (data.statusCode == 404) {
                this.navCtrl.push('ExpirePage');
            }
            else if (data.statusCode == 1) {
                this.data = data;
                var radioAlert_1 = this.alertCtrl.create();
                radioAlert_1.setTitle('Select Mobile No');
                radioAlert_1.setCssClass("alertLogCss");
                Object.keys(data.object).forEach(function (key) {
                    var value = data.object[key];
                    radioAlert_1.addInput({
                        type: 'radio',
                        label: value.phoneNo + ' - ' + value.shortTitle,
                        value: value,
                        checked: false
                    });
                });
                radioAlert_1.addButton('Cancel');
                radioAlert_1.addButton({
                    text: 'OK',
                    handler: function (data) {
                        if (typeof (data) == "undefined") {
                        }
                        else {
                            _this.fullMobileNo = data.phoneNo;
                            _this.fullPack = data.packageType;
                            _this.showVar = false;
                            _this.shortTitle = data.shortTitle;
                        }
                    }
                });
                radioAlert_1.present();
                setTimeout(function () {
                    radioAlert_1.dismiss();
                }, 40000);
            }
            else if (data.statusCode == 0) {
                this.rechargeError02 = data.note;
                return;
            }
            else {
                this.rechargeError02 = "System Error, Please Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.rechargeOperators = this.storage.retrieveFromStorage("rechargeOperator");
        this.selectedContact = this.navParams.get("mobileNo");
        if (this.selectedContact == "" || typeof (this.selectedContact) == "undefined") {
        }
        else {
            this.opPrefix = this.selectedContact.substr(0, 3);
            this.mobileNo = this.selectedContact.substr(3, 8);
        }
    }
    IRecharge02Page.prototype.gotToContactListPage = function () {
        this.navCtrl.push('ContactListPage', { 'accountNo': this.accountNo });
    };
    ;
    IRecharge02Page.prototype.ionViewDidLoad = function () {
    };
    IRecharge02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-recharge02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge02\i-recharge02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iRecharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <form (submit)="RechargeMobile02Action(opPrefix,mobileNo,packageType,amount)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="rechargeError02">\n      {{rechargeError02}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide recharge information</b></div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Account No :</strong>\n        </div>\n        <div col col-7>\n          {{accountNo}}\n        </div>\n      </div>\n\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Favorite List :</strong>\n        </div>\n        <div class="regular-font" col col-7>\n          <button class="btnTextLeft" icon-left icon-only style="width: 100%" type="button"\n                  (click)="showFavoriteList()">\n            <ion-icon name="contacts" style="padding-top: 3px"></ion-icon>\n          </button>\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>From Contacts :</strong>\n        </div>\n\n        <div class="regular-font" col col-7>\n          <button class="btnTextLeft" icon-left icon-only style="width: 100%" type="button"\n                  (click)="gotToContactListPage()">\n            <ion-icon name="contact" style="padding-top: 3px"></ion-icon>\n          </button>\n        </div>\n\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="showVar">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Mobile No :</strong>\n        </div>\n        <div col-3>\n          <select [(ngModel)]="opPrefix" name="opPrefix" class="textFieldCustom" style="width: 100%;"\n                  id="selectMobileNo" tabindex="2">\n            <option *ngFor="let operator of rechargeOperators" value="{{operator.ID}}">{{operator.ID}}</option>\n          </select>\n        </div>\n        <div col-4>\n          <input [(ngModel)]="mobileNo" name="mobileNo" placeholder="Mobile No" type="tel" maxlength="8"\n                 class="textFieldCustom"\n                 style="width: 100%" tabindex="3">\n        </div>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="!showVar">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Mobile No:</strong>\n        </div>\n        <div col col-7>\n          {{fullMobileNo}}\n        </div>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="showVar">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Package :</strong>\n        </div>\n        <div col col-7>\n          <select [(ngModel)]="packageType" name="packageType" class="textFieldCustom regular-font" style="width: 100%;"\n                  tabindex="4">\n            <option value="prepaid">prepaid</option>\n            <option value="postpaid">postpaid</option>\n          </select>\n\n        </div>\n      </div>\n\n      <div class="row item regular-font" *ngIf="!showVar">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Package :</strong>\n        </div>\n        <div col col-7>\n          {{fullPack}}\n        </div>\n      </div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Amount :</strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Amount" type="tel" [(ngModel)]="amount" maxlength="3" class="textField"\n                 tabindex="5" name="amount">\n        </div>\n      </div>\n\n      <button class="button button-green button-block"\n              type="submit"> Submit\n      </button>\n\n\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-recharge02\i-recharge02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_3__providers_recharge_service_recharge_service__["a" /* RechargeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */]])
    ], IRecharge02Page);
    return IRecharge02Page;
}());

//# sourceMappingURL=i-recharge02.js.map

/***/ })

});
//# sourceMappingURL=54.js.map