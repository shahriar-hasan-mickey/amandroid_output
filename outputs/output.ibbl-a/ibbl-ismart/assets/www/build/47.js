webpackJsonp([47],{

/***/ 455:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ITransfer02PageModule", function() { return ITransfer02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__i_transfer02__ = __webpack_require__(558);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ITransfer02PageModule = (function () {
    function ITransfer02PageModule() {
    }
    ITransfer02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer02__["a" /* ITransfer02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__i_transfer02__["a" /* ITransfer02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__i_transfer02__["a" /* ITransfer02Page */]
            ]
        })
    ], ITransfer02PageModule);
    return ITransfer02PageModule;
}());

//# sourceMappingURL=i-transfer02.module.js.map

/***/ }),

/***/ 558:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransfer02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
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







var ITransfer02Page = (function () {
    function ITransfer02Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, iTransferService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.iTransferService = iTransferService;
        this.tokenService = tokenService;
        this.destAcc = "";
        this.purposeID = "";
        this.purposeTitle = "";
        this.destAccTitle = "";
        this.showVar = false;
        this.formVal = { amount: "", note: "" };
        this.amount = "";
        this.note = "";
        this.formInputValue = { purposeID: "", purposeTitle: "", amount: "", note: "" };
        this.iTransfer02Action = function () {
            var _this = this;
            this.iTransferError02 = "";
            var validateAmountExp = new RegExp("[0-9]{1,6}$");
            var flag = true;
            this.amount = this.formVal.amount;
            this.note = this.formVal.note;
            if (this.destAcc == "" || typeof (this.destAcc) == "undefined") {
                this.iTransferError02 = "Please Select Destination Account.";
                flag = false;
                return;
            }
            if (this.purposeID == "" || typeof (this.purposeID) == "undefined") {
                this.iTransferError02 = "Please Select Transfer Purpose.";
                flag = false;
                return;
            }
            if (this.amount == "" || typeof (this.amount) == "undefined") {
                this.iTransferError02 = "Transfer amount can not be blank.";
                flag = false;
                return;
            }
            if (!validateAmountExp.test(this.amount)) {
                this.iTransferError02 = "Invalid Transfer amount.";
                flag = false;
                this.formVal = { amount: "" };
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
                var encSrcAccNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encDestAccountNo = this.cryptoUtil.getEncryptVal(this.destAcc);
                var encAmount = this.cryptoUtil.getEncryptVal(this.amount);
                var encPurpose = this.cryptoUtil.getEncryptVal(this.purposeID);
                var encNote = this.cryptoUtil.getEncryptVal(this.note);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.iTransferService.initFundTransfer(unMaskToken, appData.userId, appData.appId, encSrcAccNo, encDestAccountNo, encAmount, encNote, encPurpose)
                    .then(function (data) {
                    _this.onInitFundTransferComplete(data);
                });
            }
        };
        this.onInitFundTransferComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('ITransfer03Page', {
                    'srcAccTitle': this.srcAccDetails.accountTitle,
                    'amount': this.amount,
                    'purpose': this.purposeTitle,
                    'initTransferResponse': JSON.stringify(data.object)
                });
            }
            else if (data.statusCode == 0) {
                this.iTransferError02 = data.note;
            }
            else {
                this.iTransferError02 = "System Error Contact with Administrator.";
            }
        };
        this.selectDestinationAccount = function () {
            if (this.destAccList == null) {
                this.iTransferError02 = "You have no destination account subscription. Please subscribe first.";
                return;
            }
            this.formInputValue = {
                purposeID: this.purposeID,
                purposeTitle: this.purposeTitle,
                amount: this.formVal.amount,
                note: this.formVal.note
            };
            this.navCtrl.push('ITransferDestAccountPage', {
                'accountNo': this.accountNo,
                'transferDetails01': JSON.stringify(this.transferDetails01),
                'formInputValue': JSON.stringify(this.formInputValue)
            });
        };
        this.showPurposePopup01 = function () {
            var _this = this;
            var data = this.purposeList;
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle('Select Purpose');
            radioAlert.setCssClass("alertLogCss");
            Object.keys(data).forEach(function (key) {
                var value = data[key];
                radioAlert.addInput({
                    type: 'radio',
                    label: value.Title,
                    value: value,
                    checked: false
                });
            });
            radioAlert.addButton('Cancel');
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                    if (typeof (data) == "undefined") {
                    }
                    else {
                        _this.purposeTitle = data.Title;
                        _this.purposeID = data.ID;
                        _this.iTransferError02 = "";
                    }
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 30000);
        };
        this.accountNo = this.navParams.get("accountNo");
        this.transferDetails01 = JSON.parse(this.navParams.get("transferDetails01"));
        this.purposeList = this.transferDetails01.ftPurposeList;
        this.destAccList = this.transferDetails01.destAccList;
        this.srcAccDetails = this.transferDetails01.accInfoBean;
        var sourcePage = JSON.parse(this.navParams.get("sourcePage"));
        if (sourcePage == "transfer") {
            this.destAcc = "";
            this.destAccTitle = "";
            this.purposeID = "";
            this.purposeTitle = "";
            this.formVal = { amount: "", note: "" };
            this.showVar = false;
        }
        else {
            this.selectedAccount = JSON.parse(this.navParams.get("selectedAccount"));
            this.formInputValue = JSON.parse(this.navParams.get("formInputValue"));
            this.destAcc = this.selectedAccount.subscriptionValue;
            this.destAccTitle = this.selectedAccount.subscriptionDesc;
            this.purposeID = this.formInputValue.purposeID;
            this.purposeTitle = this.formInputValue.purposeTitle;
            this.formVal = { amount: this.formInputValue.amount, note: this.formInputValue.note };
            this.showVar = true;
        }
    }
    ITransfer02Page.prototype.ionViewDidLoad = function () {
    };
    ITransfer02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-i-transfer02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer02\i-transfer02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="iTransfer02Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="iTransferError02">\n      {{iTransferError02}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Transfer information</b></div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Source Account\n              :</b></span>\n          <span class="col item-text-wrap regular-font">{{accountNo}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title :</b></span>\n          <span class="col item-text-wrap regular-font">{{srcAccDetails.accountTitle}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Balance :</b></span>\n          <span class="col item-text-wrap regular-font">{{srcAccDetails.availableBalance| currency : "BDT" : 2}}</span>\n        </label>\n      </div>\n\n\n      <div class="row item">\n    <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Destination A/C\n    :</b></span>\n        <span class="col item-text-wrap regular-font" (click)="selectDestinationAccount()">\n    <ion-icon name="ios-arrow-dropdown-outline" style="\n    margin-top: -0px;padding-left: 5px;font-size: 28px">\n    </ion-icon>\n\n    {{destAcc}}\n    </span>\n      </div>\n\n\n      <label class="row item" *ngIf="showVar">\n              <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Title\n                :</b></span>\n        <span class="col item-text-wrap regular-font"> {{destAccTitle}}</span>\n      </label>\n\n      <div class="row item">\n              <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Purpose\n                :</b></span>\n        <span class="col item-text-wrap regular-font" (click)="showPurposePopup01()">\n                 <ion-icon name="ios-arrow-dropdown-outline" style="\n                 margin-top: -0px;padding-left: 5px;font-size: 28px">\n                 </ion-icon>\n                {{purposeTitle}}\n              </span>\n      </div>\n\n      <div class="row item regular-font">\n\n        <div col col-6 text-right class="item-text-wrap item-divider regular-font">\n          <strong>Amount : </strong>\n        </div>\n        <div col col-6>\n          <input placeholder="Enter Amount" type="tel" name="amount" [(ngModel)]="formVal.amount" maxlength="6" class="textField">\n        </div>\n\n      </div>\n\n\n      <div class="row item regular-font">\n\n        <div col col-6 text-right class="item-text-wrap item-divider regular-font">\n          <strong>Note : </strong>\n        </div>\n        <div col col-6>\n          <input placeholder="Enter Note" type="text" name="note" [(ngModel)]="formVal.note" maxlength="30" class="textField">\n        </div>\n\n      </div>\n\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\i-transfer02\i-transfer02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_6__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_4__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], ITransfer02Page);
    return ITransfer02Page;
}());

//# sourceMappingURL=i-transfer02.js.map

/***/ })

});
//# sourceMappingURL=47.js.map