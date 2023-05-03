webpackJsonp([41],{

/***/ 461:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "IssueChequeBook03PageModule", function() { return IssueChequeBook03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book03__ = __webpack_require__(564);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var IssueChequeBook03PageModule = (function () {
    function IssueChequeBook03PageModule() {
    }
    IssueChequeBook03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book03__["a" /* IssueChequeBook03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__issue_cheque_book03__["a" /* IssueChequeBook03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__issue_cheque_book03__["a" /* IssueChequeBook03Page */]
            ]
        })
    ], IssueChequeBook03PageModule);
    return IssueChequeBook03PageModule;
}());

//# sourceMappingURL=issue-cheque-book03.module.js.map

/***/ }),

/***/ 564:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return IssueChequeBook03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_cheque_book_service_cheque_book_service__ = __webpack_require__(258);
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







var IssueChequeBook03Page = (function () {
    function IssueChequeBook03Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, chqBookService, tokenService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.chqBookService = chqBookService;
        this.tokenService = tokenService;
        this.formVal = { tpin: "", otp: "" };
        this.otp = "";
        this.issueChequeBook03Action = function () {
            var _this = this;
            this.issueChequeBookError03 = "";
            var flag = true;
            this.otp = this.formVal.otp;
            var validateOtpExp = new RegExp("[0-9]{6}$");
            if (this.leafCount == "" || typeof (this.leafCount) == "undefined") {
                this.issueChequeBookError03 = "Please select no of leaf.";
                flag = false;
                return;
            }
            if (this.otp == "" || typeof (this.otp) == "undefined") {
                this.issueChequeBookError03 = "Please Enter OTP.";
                flag = false;
                return;
            }
            if (!validateOtpExp.test(this.otp)) {
                this.issueChequeBookError03 = "Invalid OTP.";
                flag = false;
                this.formVal = { otp: "" };
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
                var encOTP = this.cryptoUtil.getEncryptVal(this.otp);
                console.log(this.otp);
                console.log(this.leafCount);
                var encLeaf = this.cryptoUtil.getEncryptVal(this.leafCount.toString());
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.chqBookService.issueChqBook(unMaskToken, appData.userId, appData.appId, encSrcAccNo, encLeaf, encOTP)
                    .then(function (data) {
                    _this.onIssueChequeBookComplete(data);
                });
            }
        };
        this.onIssueChequeBookComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('IssueChequeBook04Page', {
                    'accountNo': this.accountNo,
                    'leafCount': this.leafCount
                });
            }
            else if (data.statusCode == 0) {
                this.issueChequeBookError03 = data.note;
            }
            else {
                this.issueChequeBookError03 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.leafCount = JSON.parse(this.navParams.get("leafCount"));
    }
    IssueChequeBook03Page.prototype.ionViewDidLoad = function () {
    };
    IssueChequeBook03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-issue-cheque-book03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\issue-cheque-book03\issue-cheque-book03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Issue Cheque Book</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="issueChequeBook03Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="issueChequeBookError03">\n      {{issueChequeBookError03}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Confirm Cheque Book Requisition</b></div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Account No\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n         {{accountNo}}\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>No of Leaf\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n         {{leafCount}}\n             </span>\n        </label>\n\n        <label class="row item">\n          <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>OTP\n            : </b></span>\n          <span class="col item-text-wrap regular-font" style="text-align: left">\n          <input type="tel" name="otp" placeholder="Enter OTP" [(ngModel)]="formVal.otp" maxlength="6"\n                 class="textField">\n             </span>\n        </label>\n      </div>\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\issue-cheque-book03\issue-cheque-book03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_5__providers_cheque_book_service_cheque_book_service__["a" /* ChequeBookServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */]])
    ], IssueChequeBook03Page);
    return IssueChequeBook03Page;
}());

//# sourceMappingURL=issue-cheque-book03.js.map

/***/ })

});
//# sourceMappingURL=41.js.map