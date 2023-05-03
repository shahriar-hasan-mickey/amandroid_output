webpackJsonp([65],{

/***/ 436:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTranserOtherBank02PageModule", function() { return FundTranserOtherBank02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank02__ = __webpack_require__(539);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var FundTranserOtherBank02PageModule = (function () {
    function FundTranserOtherBank02PageModule() {
    }
    FundTranserOtherBank02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank02__["a" /* FundTranserOtherBank02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank02__["a" /* FundTranserOtherBank02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank02__["a" /* FundTranserOtherBank02Page */]
            ]
        })
    ], FundTranserOtherBank02PageModule);
    return FundTranserOtherBank02PageModule;
}());

//# sourceMappingURL=fund-transer-other-bank02.module.js.map

/***/ }),

/***/ 539:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTranserOtherBank02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var FundTranserOtherBank02Page = (function () {
    function FundTranserOtherBank02Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, alertCtrl, iTransferService, tokenService, config, ftOtherBankService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.alertCtrl = alertCtrl;
        this.iTransferService = iTransferService;
        this.tokenService = tokenService;
        this.config = config;
        this.ftOtherBankService = ftOtherBankService;
        this.receiverTypes = [];
        this.iTransferOtherBank02Action = function () {
            var _this = this;
            this.otherBankTransferError02 = "";
            var flag = true;
            if (this.fundTransferType == "" || typeof (this.fundTransferType) == "undefined") {
                this.otherBankTransferError02 = "Please Select transfer type.";
                flag = false;
                return;
            }
            if (this.receiverType == "" || typeof (this.receiverType) == "undefined") {
                this.otherBankTransferError02 = "Please Select Receiver type.";
                flag = false;
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
                var encTransferType = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encRecType = this.cryptoUtil.getEncryptVal(this.receiverType);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.ftOtherBankService.fetchDestinationAccountList(unMaskToken, appData.userId, appData.appId, encSrcAccNo, encRecType, encTransferType)
                    .then(function (data) {
                    _this.destinationAccountFetchComplete(data);
                });
            }
        };
        this.destinationAccountFetchComplete = function (data) {
            if (data.statusCode == 1) {
                this.accountNo = this.navParams.get("accountNo");
                this.srcAccDetails = JSON.parse(this.navParams.get("accountDetails"));
                this.transferTypes = JSON.parse(this.navParams.get("transferTypes"));
                var destAccount = data.object.obFtBeneficiaries;
                if (destAccount == null) {
                    this.otherBankTransferError02 = "You have no beneficiary subscription for this type of transfer.";
                    return;
                }
                this.navCtrl.push('FundTransferOtherBankRecListPage', {
                    'accountNo': this.accountNo,
                    'srcAccDetails': JSON.stringify(data.object.accInfoBean),
                    'purposeList': JSON.stringify(data.object.ftPurposeList),
                    'destAccList': JSON.stringify(data.object.obFtBeneficiaries),
                    'fundTransferType': this.fundTransferType,
                    'receiverType': this.receiverType
                });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError02 = data.note;
            }
            else {
                this.otherBankTransferError02 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.srcAccDetails = JSON.parse(this.navParams.get("accountDetails"));
        this.transferTypes = JSON.parse(this.navParams.get("transferTypes"));
        this.ftOBDestType = JSON.parse(this.navParams.get("ftOBDestType"));
    }
    FundTranserOtherBank02Page.prototype.onSelectChange = function (selectedValue) {
        this.receiverTypes = [];
        this.receiverTypes = this.ftOBDestType[selectedValue];
    };
    FundTranserOtherBank02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad ITransfer02Page');
    };
    FundTranserOtherBank02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transer-other-bank02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank02\fund-transer-other-bank02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="iTransferOtherBank02Action()">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="otherBankTransferError02">\n      {{otherBankTransferError02}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Transfer information</b></div>\n\n      <div class="preview-box01">\n\n        <div class="row item regular-font" >\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Account No :</b>\n          </div>\n          <div col col-7>\n            {{accountNo}}\n          </div>\n        </div>\n\n        <div class="row item regular-font" >\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Account Title :</b>\n          </div>\n          <div col col-7 class="item-text-wrap">\n            {{srcAccDetails.accountTitle}}\n          </div>\n        </div>\n\n        <div class="row item regular-font" >\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Available Balance :</b>\n          </div>\n          <div col col-7>\n            {{srcAccDetails.availableBalance| currency : "BDT" : 2}}\n          </div>\n        </div>\n      </div>\n\n        <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Fund Transfer Type :</b>\n          </div>\n          <div col col-7>\n            <select [(ngModel)]="fundTransferType" name="fundTransferType" class="textFieldCustom"\n                    style="width: 100%"  (change)="onSelectChange(fundTransferType)">\n              <option *ngFor="let tType of transferTypes" value="{{tType.value}}">{{tType.label}}</option>\n            </select>\n          </div>\n\n        </div>\n\n        <div class="row item regular-font" >\n\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Receiver Type :</b>\n          </div>\n          <div col col-7>\n            <select [(ngModel)]="receiverType" name="paymentType" class="textFieldCustom" style="width: 100%">\n              <option *ngFor="let rType of receiverTypes" value="{{rType.value}}">{{rType.label}}</option>\n            </select>\n          </div>\n\n        </div>\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank02\fund-transer-other-bank02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_5__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_8__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */]])
    ], FundTranserOtherBank02Page);
    return FundTranserOtherBank02Page;
}());

//# sourceMappingURL=fund-transer-other-bank02.js.map

/***/ })

});
//# sourceMappingURL=65.js.map