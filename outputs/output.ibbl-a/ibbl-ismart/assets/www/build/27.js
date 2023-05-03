webpackJsonp([27],{

/***/ 476:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RemittanceInfo02PageModule", function() { return RemittanceInfo02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__remittance_info02__ = __webpack_require__(579);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var RemittanceInfo02PageModule = (function () {
    function RemittanceInfo02PageModule() {
    }
    RemittanceInfo02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info02__["a" /* RemittanceInfo02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__remittance_info02__["a" /* RemittanceInfo02Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info02__["a" /* RemittanceInfo02Page */]
            ]
        })
    ], RemittanceInfo02PageModule);
    return RemittanceInfo02PageModule;
}());

//# sourceMappingURL=remittance-info02.module.js.map

/***/ }),

/***/ 579:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RemittanceInfo02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_remittance_remittance__ = __webpack_require__(263);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var RemittanceInfo02Page = (function () {
    function RemittanceInfo02Page(navCtrl, navParams, remittanceService, cryptoUtil, maskToken) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.remittanceService = remittanceService;
        this.cryptoUtil = cryptoUtil;
        this.maskToken = maskToken;
        //RemittanceInfo01Page is for showing list of exchange house
        this.selectExchangeHouse = function () {
            this.navCtrl.push('RemittanceInfo01Page', { 'pinNo': this.pinNo, 'exchangeHouseList': JSON.stringify(this.exchangeHouseList) });
        };
        this.ShowRemittanceInformation = function (token) {
            var _this = this;
            this.remittanceInfoError02 = "";
            this.pinNo = token;
            var flag = true;
            if (this.pinNo == "" || typeof (this.pinNo) == "undefined") {
                this.remittanceInfoError02 = "PIN number is required.";
                flag = false;
                return;
            }
            if (flag) {
                var deviceID = this.maskToken.getDeviceID();
                var encDeviceID = this.cryptoUtil.getEncryptVal(deviceID);
                var providedHash = this.cryptoUtil.getSha256EncryptedValue(deviceID + this.exchangeHouseID + this.pinNo.trim() + this.cryptoUtil.salt);
                var encPin = this.cryptoUtil.getEncryptVal(this.pinNo.trim());
                var encExHouse = this.cryptoUtil.getEncryptVal(this.exchangeHouseID);
                this.remittanceService.searchInfoByPinNumber(encDeviceID, encExHouse, encPin, providedHash)
                    .then(function (data) {
                    _this.remittanceInfoFetchComplete(data);
                });
            }
        };
        this.remittanceInfoFetchComplete = function (data) {
            this.remittanceInfoError02 = "";
            if (data.status == 0) {
                this.remittanceInfoError02 = "Service unreachable, please try again later.";
            }
            else if (data.statusCode == 404) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else if (data.statusCode == 1) {
                this.pinNo = "";
                this.navCtrl.push('RemittanceInfo03Page', {
                    'remitSearchResult': JSON.parse(data.object),
                    'selectedExchangeHouse': this.exchangeHouse
                });
                this.exchangeHouseID = "";
                this.exchangeHouse = "";
            }
            else if (data.statusCode == 0) {
                this.remittanceInfoError02 = data.note;
                return;
            }
            else {
                this.remittanceInfoError02 = "System Error, Please Contact with Administrator.";
            }
        };
        this.navType = this.navParams.get("navType");
        if (this.navType == "1") {
            var list = this.navParams.get("exchangeHouseList");
            // console.log( this.exchangeHouseList);
            // this.exchangeHouseList = JSON.parse(this.exchangeHouseList);
            this.exchangeHouseList = list.agentResponseInfo.exHouseList;
            // console.log(this.exchangeHouseList);
            this.exchangeHouse = "";
            this.exchangeHouseID = "";
            this.pinNo = "";
        }
        if (this.navType == "2") {
            var selExHouse = this.navParams.get("selectedExchangeHouse");
            this.selectedExchangeHouse = JSON.parse(selExHouse);
            var list = this.navParams.get("exchangeHouseList");
            this.exchangeHouseList = JSON.parse(list);
            this.pinNo = this.navParams.get("pinNo");
            this.exchangeHouse = this.selectedExchangeHouse.Title;
            this.exchangeHouseID = this.selectedExchangeHouse.ID;
        }
    }
    RemittanceInfo02Page.prototype.ionViewDidLoad = function () {
    };
    RemittanceInfo02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-remittance-info02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info02\remittance-info02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Search Remittance information</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content>\n  <form (submit)="ShowRemittanceInformation(pinNo)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="remittanceInfoError02">\n      {{remittanceInfoError02}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Search\n        Information</b></div>\n\n      <div class="row item regular-font">\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>PIN Number : </strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter PIN No" name="pinNumber" type="text" [(ngModel)]="pinNo" maxlength="50"\n                 class="textField"\n                 tabindex="1">\n        </div>\n      </div>\n\n      <div class="row item">\n    <span col col-5 class="item-text-wrap item-divider regular-font " style="text-align: right;"><b>Exchange House\n    :</b></span>\n        <span class="col item-text-wrap regular-font" (click)="selectExchangeHouse()">\n    <ion-icon name="md-checkbox-outline" style="\n    margin-top: -0px;padding-left: 5px;font-size: 28px">\n    </ion-icon>\n\n    {{exchangeHouse}}\n    </span>\n      </div>\n\n      <button class="button button-green button-block" type="submit" tabindex="1">Search\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info02\remittance-info02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_remittance_remittance__["a" /* RemittanceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */]])
    ], RemittanceInfo02Page);
    return RemittanceInfo02Page;
}());

//# sourceMappingURL=remittance-info02.js.map

/***/ })

});
//# sourceMappingURL=27.js.map