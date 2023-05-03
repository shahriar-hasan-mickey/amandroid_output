webpackJsonp([64],{

/***/ 440:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FundTranserOtherBank03PageModule", function() { return FundTranserOtherBank03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank03__ = __webpack_require__(543);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__ = __webpack_require__(250);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var FundTranserOtherBank03PageModule = (function () {
    function FundTranserOtherBank03PageModule() {
    }
    FundTranserOtherBank03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank03__["a" /* FundTranserOtherBank03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank03__["a" /* FundTranserOtherBank03Page */]),
                __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__["a" /* DatePickerModule */]
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__fund_transer_other_bank03__["a" /* FundTranserOtherBank03Page */]
            ]
        })
    ], FundTranserOtherBank03PageModule);
    return FundTranserOtherBank03PageModule;
}());

//# sourceMappingURL=fund-transer-other-bank03.module.js.map

/***/ }),

/***/ 543:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTranserOtherBank03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








var FundTranserOtherBank03Page = (function () {
    function FundTranserOtherBank03Page(navCtrl, navParams, cryptoUtil, maskTokenUtil, storage, ftOtherBankService, tokenService, alertCtrl, config) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.cryptoUtil = cryptoUtil;
        this.maskTokenUtil = maskTokenUtil;
        this.storage = storage;
        this.ftOtherBankService = ftOtherBankService;
        this.tokenService = tokenService;
        this.alertCtrl = alertCtrl;
        this.config = config;
        this.formVal = { amount: "", note: "" };
        this.showPurposePopupList = function () {
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
                        _this.otherBankTransferError03 = "";
                    }
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, 60000);
        };
        this.otherBankTransfer03Action = function () {
            var _this = this;
            this.otherBankTransferError03 = "";
            var validateAmountExp = new RegExp("[0-9]{1,6}$");
            var flag = true;
            this.amount = this.formVal.amount;
            this.note = this.formVal.note;
            if (this.purposeID == "" || typeof (this.purposeID) == "undefined") {
                this.otherBankTransferError03 = "Please Select fund transfer purpose.";
                flag = false;
                return;
            }
            if (this.amount == "" || typeof (this.amount) == "undefined") {
                this.otherBankTransferError03 = "Transfer amount can not be blank.";
                flag = false;
                return;
            }
            if (this.note == "" || typeof (this.note) == "undefined") {
                this.otherBankTransferError03 = "Note is required for transfer.";
                flag = false;
                return;
            }
            if (!validateAmountExp.test(this.amount)) {
                this.otherBankTransferError03 = "Invalid Transfer amount.";
                flag = false;
                this.formVal = { amount: "" };
                return;
            }
            if (this.amount > this.srcAccDetails.availableBalance) {
                this.otherBankTransferError03 = "Transfer amount is greater than available balance.";
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
                var eDay = (this.executionDate.getDate() < 10 ? '0' : '') + this.executionDate.getDate();
                var eMonth = this.executionDate.getMonth() + 1;
                eMonth = (eMonth < 10 ? '' : '') + eMonth;
                var eDt = eDay.toString() + "/" + eMonth.toString() + "/" + this.executionDate.getFullYear().toString();
                var appData = this.storage.retrieveFromStorage("appData");
                var encRecType = this.cryptoUtil.getEncryptVal(this.receiverType);
                var encTransferType = this.cryptoUtil.getEncryptVal(this.fundTransferType);
                var encSrcAccount = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encAmount = this.cryptoUtil.getEncryptVal(this.amount);
                var encNote = this.cryptoUtil.getEncryptVal(this.note);
                var encPurpose = this.cryptoUtil.getEncryptVal(this.purposeID);
                var encExDate = this.cryptoUtil.getEncryptVal(eDt);
                var encReceiverId = this.cryptoUtil.getEncryptVal(this.selectedDest.beneficiaryId);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.ftOtherBankService.initOtherBankTransfer(unMaskToken, appData.userId, appData.appId, encRecType, encTransferType, encSrcAccount, encAmount, encNote, encPurpose, encReceiverId, encExDate)
                    .then(function (data) {
                    _this.intOtherBankFuntransferComplete(data);
                });
            }
        };
        this.intOtherBankFuntransferComplete = function (data) {
            this.selectedDest = JSON.parse(this.navParams.get("selectedDest"));
            if (data.statusCode == 1) {
                this.navCtrl.push('FundTranserOtherBank04Page', {
                    'accountNo': this.accountNo,
                    'amount': this.amount,
                    'srcAccDetails': JSON.stringify(this.srcAccDetails),
                    'selectedDest': JSON.stringify(this.selectedDest),
                    'fundTransferType': this.fundTransferType,
                    'receiverType': this.receiverType,
                    'initObTxDetails': JSON.stringify(data.object)
                });
            }
            else if (data.statusCode == 0) {
                this.otherBankTransferError03 = data.note;
            }
            else {
                this.otherBankTransferError03 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.fundTransferType = this.navParams.get("fundTransferType");
        this.receiverType = this.navParams.get("receiverType");
        this.srcAccDetails = JSON.parse(this.navParams.get("srcAccDetails"));
        this.purposeList = JSON.parse(this.navParams.get("purposeList"));
        this.selectedDest = JSON.parse(this.navParams.get("selectedDest"));
        this.routeShow = this.fundTransferType != config.transferTypeNPSB;
        console.log(this.fundTransferType);
        this.executionDate = new Date();
        this.minDate = new Date();
        this.maxDate = new Date();
        this.maxDate.setFullYear(this.maxDate.getFullYear() + 1);
        this.maxDate.toISOString();
    }
    FundTranserOtherBank03Page.prototype.ionViewDidLoad = function () {
    };
    FundTranserOtherBank03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-fund-transer-other-bank03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank03\fund-transer-other-bank03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>iTransfer - Other Bank</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="row row-center col col-center background">\n  <form (submit)="otherBankTransfer03Action()">\n    <div class="item item-divider item-text-wrap  regular-font" style="color: red" *ngIf="otherBankTransferError03">\n      {{otherBankTransferError03}}\n    </div>\n\n\n    <ion-list>\n\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide Transfer information</b></div>\n\n      <div class="preview-box01">\n\n        <label class="row item">\n            <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Source Account\n              :</b></span>\n          <span class="col item-text-wrap regular-font">{{accountNo}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Title :</b></span>\n          <span class="col item-text-wrap regular-font">{{srcAccDetails.accountTitle}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Balance :</b></span>\n          <span class="col item-text-wrap regular-font">{{srcAccDetails.availableBalance| currency : "BDT" : 2}}</span>\n        </label>\n      </div>\n\n      <div class="preview-box01">\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Beneficiary Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryName}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Destination A/C :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryAccount}}</span>\n        </label>\n\n        <label class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Bank Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.bankName}}</span>\n        </label>\n\n        <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Branch Name :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.branchName}}</span>\n        </label>\n\n        <label *ngIf="routeShow" class="row item">\n        <span class="col col-40 item-text-wrap item-divider regular-font "\n              style="text-align: right;"><b>Routing No :</b></span>\n          <span class="col item-text-wrap regular-font">{{selectedDest.beneficiaryRoute}}</span>\n        </label>\n      </div>\n\n      <div class="row item">\n              <span class="col col-40 item-text-wrap item-divider regular-font " style="text-align: right;"><b>Purpose\n                :</b></span>\n        <span class="col item-text-wrap regular-font" (click)="showPurposePopupList()">\n                 <ion-icon name="ios-arrow-dropdown-outline" style="\n                 margin-top: -0px;padding-left: 5px;font-size: 28px">\n                 </ion-icon>\n                {{purposeTitle}}\n              </span>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="fundTransferType==\'EFT\'">\n\n        <div col col-6 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Execution Date : </strong>\n        </div>\n        <div col col-6>\n         <span ion-datepicker [(value)]="executionDate" [max]="maxDate" [min]="minDate" clear class="ScheduleDate">\n		    <span> <ion-icon name="clipboard" icon-left></ion-icon> {{executionDate | date:"dd/MM/yyyy"}} </span>\n	      </span>\n        </div>\n\n      </div>\n\n\n      <div class="row item regular-font">\n        <div col col-6 text-right class="item-text-wrap item-divider regular-font">\n          <strong>Amount : </strong>\n        </div>\n        <div col col-6>\n          <input placeholder="Enter Amount" type="tel" name="amount" [(ngModel)]="formVal.amount" maxlength="6"\n                 class="textField">\n        </div>\n      </div>\n\n\n      <div class="row item regular-font">\n        <div col col-6 text-right class="item-text-wrap item-divider regular-font">\n          <strong>Note : </strong>\n        </div>\n        <div col col-6>\n          <input placeholder="Enter Note" type="text" name="note" [(ngModel)]="formVal.note" maxlength="30"\n                 class="textField">\n        </div>\n      </div>\n\n\n      <button class="button button-green button-block" type="submit"> Submit\n      </button>\n    </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\fund-transer-other-bank03\fund-transer-other-bank03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */]])
    ], FundTranserOtherBank03Page);
    return FundTranserOtherBank03Page;
}());

//# sourceMappingURL=fund-transer-other-bank03.js.map

/***/ })

});
//# sourceMappingURL=64.js.map