webpackJsonp([11],{

/***/ 492:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Utilitybillpay02PageModule", function() { return Utilitybillpay02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utilitybillpay02__ = __webpack_require__(595);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__ = __webpack_require__(250);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var Utilitybillpay02PageModule = (function () {
    function Utilitybillpay02PageModule() {
    }
    Utilitybillpay02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay02__["a" /* Utilitybillpay02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__utilitybillpay02__["a" /* Utilitybillpay02Page */]),
                __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__["a" /* DatePickerModule */]
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__utilitybillpay02__["a" /* Utilitybillpay02Page */]
            ]
        })
    ], Utilitybillpay02PageModule);
    return Utilitybillpay02PageModule;
}());

//# sourceMappingURL=utilitybillpay02.module.js.map

/***/ }),

/***/ 595:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Utilitybillpay02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__ = __webpack_require__(256);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__ = __webpack_require__(251);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__ionic_native_date_picker__ = __webpack_require__(249);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var Utilitybillpay02Page = (function () {
    function Utilitybillpay02Page(navCtrl, navParams, storage, maskTokenUtil, tokenService, cryptoUtil, billPayService, alertProvider, datePicker) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.billPayService = billPayService;
        this.alertProvider = alertProvider;
        this.datePicker = datePicker;
        this.data = {};
        this.setBillingAccountInFirstModel = function () {
            for (var i = 0; i < this.labelValueList.length; i++) {
                if (i == 0) {
                    this.labelValueList[i].model = this.billingAccount;
                }
                else {
                    this.labelValueList[i].model = "";
                }
            }
            // console.log(this.labelValueList);
        };
        this.EnqueueUtilityBillAction = function (pin) {
            var _this = this;
            for (var i = 0; i < this.labelValueList.length; i++) {
                if (this.labelValueList[i].value == "billMonth") {
                    if (this.billYear == "" || typeof (this.billYear) == "undefined") {
                        this.utilityBillPayError02 = "Please select billing year.";
                        return;
                    }
                    if (this.billMonth == "" || typeof (this.billMonth) == "undefined") {
                        this.utilityBillPayError02 = "Please select billing month.";
                        return;
                    }
                    this.labelValueList[i].model = this.billYear + this.billMonth;
                }
            }
            this.data = {};
            for (var i = 0; i < this.labelValueList.length; i++) {
                var val = this.labelValueList[i].model;
                if (val == "") {
                    this.utilityBillPayError02 = this.labelValueList[i].label + " is required.";
                    return;
                }
                this.data[this.labelValueList[i].value] = this.labelValueList[i].model;
            }
            var validateTpinExp = new RegExp("[0-9]{4}$");
            if (pin == "" || typeof (pin) == "undefined") {
                this.utilityBillPayError02 = "TPIN can not be blank.";
                this.tpin = "";
                return;
            }
            if (!validateTpinExp.test(pin)) {
                this.utilityBillPayError02 = "Invalid TPIN format.";
                this.tpin = "";
                return;
            }
            this.tpin = pin;
            // console.log(this.data);
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
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                var encCompanyCode = this.cryptoUtil.getEncryptVal(this.companyDetails.companyCode);
                var encDebitAcc = this.cryptoUtil.getEncryptVal(this.debitAccDetails.accountNo);
                var dynamicParam = this.cryptoUtil.getEncryptVal(JSON.stringify(this.data));
                var encIsNewReg = this.cryptoUtil.getEncryptVal(this.isNewReg);
                var encTPIN = this.cryptoUtil.getEncryptVal(this.tpin);
                this.billPayService.enqueueUtilityBill(unMaskToken, appData.userId, appData.appId, encCompanyCode, encDebitAcc, dynamicParam, encIsNewReg, encTPIN)
                    .then(function (data) {
                    _this.EnqueueUtilityBillComplete(data);
                });
            }
        };
        this.EnqueueUtilityBillComplete = function (data) {
            // console.log(data);
            if (data.statusCode == 1) {
                this.navCtrl.push('Utilitybillpay03Page', {
                    'debitAccDetails': JSON.stringify(data.object.accInfoBean),
                    'menuTitle': this.menuTitle,
                    'selectedCategory': this.selectedCategory,
                    'categoryDesc': this.categoryDesc,
                    'companyDetails': JSON.stringify(this.companyDetails),
                    'billingAccount': this.billingAccount,
                    'billNo': data.object.billNo,
                    'amount': data.object.amount,
                    'charge': data.object.charge,
                    'totAmount': data.object.totAmount,
                    'utilityId': data.object.utilityId,
                    'isNewReg': this.isNewReg,
                    'compGenerateBill': data.object.compGenerateBill,
                    'preview': JSON.stringify(data.object.billInfoPreview),
                    'companyBillData': JSON.stringify(data.object.companyBillData)
                });
            }
            else if (data.statusCode == 0) {
                this.utilityBillPayError02 = data.note;
                this.tpin = "";
                return;
            }
            else {
                this.utilityBillPayError02 = "System Error Contact with Administrator.";
                this.tpin = "";
                return;
            }
        };
        this.utilityBillPayError02 = "";
        this.menuTitle = this.navParams.get("menuTitle");
        this.isNewReg = this.navParams.get("isNewReg");
        // console.log(this.isNewReg);
        this.billingAccount = this.navParams.get("billingAccount");
        var com = this.navParams.get("companyDetails");
        this.companyDetails = JSON.parse(com);
        var lbList = this.navParams.get("labelValueList");
        // console.log(lbList);
        this.labelValueList = JSON.parse(lbList)[this.companyDetails.companyCode];
        this.selectedCategory = this.navParams.get("selectedCategory");
        this.categoryDesc = this.navParams.get("categoryDesc");
        this.debitAccDetails = JSON.parse(this.navParams.get("debitAccDetails"));
        //working with date
        var curDate = new Date();
        this.billMonths = [{ "name": "January", value: "01" }, { "name": "February", value: "02" }, {
                "name": "March",
                value: "03"
            },
            { "name": "April", value: "04" }, { "name": "May", value: "05" }, { "name": "June", value: "06" },
            { "name": "July", value: "07" }, { "name": "August", value: "08" }, { "name": "September", value: "09" },
            { "name": "October", value: "10" }, { "name": "November", value: "11" }, { "name": "December", value: "12" }];
        this.billYears = [curDate.getFullYear().toString(), (curDate.getFullYear() - 1).toString(), (curDate.getFullYear() - 2).toString(), (curDate.getFullYear() - 3).toString()];
        this.setBillingAccountInFirstModel();
    }
    Utilitybillpay02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad Utilitybillpay02Page');
    };
    Utilitybillpay02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-utilitybillpay02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay02\utilitybillpay02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{menuTitle}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n  <form (submit)="EnqueueUtilityBillAction(tpin)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="utilityBillPayError02">\n      {{utilityBillPayError02}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020">\n        <b>Provide billing information</b></div>\n\n      <div class="preview-box01">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Debit Account :</b>\n          </div>\n          <div col col-7>\n            {{debitAccDetails.accountNo}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Account Title :</b>\n          </div>\n          <div col col-7 class="item-text-wrap">\n            {{debitAccDetails.accountTitle}}\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Available Balance :</b>\n          </div>\n          <div col col-7>\n            {{debitAccDetails.availableBalance| currency : "BDT" : 2}}\n          </div>\n        </div>\n      </div>\n\n      <div class="preview-box01">\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Company Name :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{companyDetails.companyName.split(\'-\')[1]}}\n          </div>\n        </div>\n\n\n        <div class="row item regular-font" *ngIf="categoryDesc">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>Bill Category :</b>\n          </div>\n          <div col col-7 class="item-text-wrap regular-font">\n            {{categoryDesc}}\n          </div>\n        </div>\n\n        <div class="row item regular-font" *ngFor="let item of labelValueList;let i = index">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <b>{{item.label}} :</b>\n          </div>\n\n          <div col-3 *ngIf="item.value==\'billMonth\'">\n            <select [(ngModel)]="billYear" name="billYear" class="textFieldCustom" style="width: 100%;"\n                    id="billYear">\n              <option *ngFor="let year of billYears" value="{{year}}">{{year}}</option>\n            </select>\n          </div>\n\n          <div col-4 *ngIf="item.value==\'billMonth\'">\n            <select [(ngModel)]="billMonth" name="billMonth" class="textFieldCustom" style="width: 100%;"\n                    id="selectMobileNo" tabindex="2">\n              <option *ngFor="let mn of billMonths" value="{{mn.value}}">{{mn.name}}</option>\n            </select>\n          </div>\n\n          <div col col-7 *ngIf="item.value != \'billMonth\'">\n            <input placeholder="Enter {{item.label}}" name="{{item.value}}" type="{{item.inputType}}"\n                   [(ngModel)]="item.model"\n                   [(readonly)]="item.readOnly" maxlength="{{item.maxLength}}" class="textField">\n          </div>\n        </div>\n\n        <div class="row item regular-font">\n          <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n            <strong>TPIN : </strong>\n          </div>\n          <div col col-7>\n            <input type="tel" name="tpin" style="-webkit-text-security:disc" placeholder="Enter TPIN" [(ngModel)]="tpin" autocomplete="false" maxlength="4" class="textField">\n          </div>\n        </div>\n      </div>\n\n      <button class="button-green button-block " type="submit" tabindex="2"> Submit\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\utilitybillpay02\utilitybillpay02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_utilitybillpay_utilitybillpay__["a" /* UtilitybillpayProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_alert_alert__["a" /* AlertProvider */],
            __WEBPACK_IMPORTED_MODULE_8__ionic_native_date_picker__["a" /* DatePicker */]])
    ], Utilitybillpay02Page);
    return Utilitybillpay02Page;
}());

//# sourceMappingURL=utilitybillpay02.js.map

/***/ })

});
//# sourceMappingURL=11.js.map