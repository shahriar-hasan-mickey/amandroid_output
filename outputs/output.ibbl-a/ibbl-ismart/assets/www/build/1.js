webpackJsonp([1],{

/***/ 502:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "WimaxRecharge03PageModule", function() { return WimaxRecharge03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__wimax_recharge03__ = __webpack_require__(605);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var WimaxRecharge03PageModule = (function () {
    function WimaxRecharge03PageModule() {
    }
    WimaxRecharge03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge03__["a" /* WimaxRecharge03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__wimax_recharge03__["a" /* WimaxRecharge03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__wimax_recharge03__["a" /* WimaxRecharge03Page */]
            ]
        })
    ], WimaxRecharge03PageModule);
    return WimaxRecharge03PageModule;
}());

//# sourceMappingURL=wimax-recharge03.module.js.map

/***/ }),

/***/ 605:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WimaxRecharge03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_wimax_service_wimax_service__ = __webpack_require__(260);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var WimaxRecharge03Page = (function () {
    function WimaxRecharge03Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, wimaxService) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.wimaxService = wimaxService;
        this.wimaxRechargeError03 = "";
        this.min = 0;
        this.max = 5;
        this.totalAmount = 0;
        this.rdAmount = true;
        this.amountDisabled = true;
        this.amountStyle = "";
        this.pinCode = "";
        this.wUser = "";
        this.rAmount = "";
        this.rType = 0;
        this.totAmount = 0;
        this.initPage = function () {
            if (this.provider.toLowerCase() == 'qubee' && this.packageType == "postpaid") {
                this.rdAmount = false;
                this.amountDisabled = false;
                this.amountStyle = "";
                this.rType = 1;
            }
            else {
                this.rdAmount = true;
                this.amountDisabled = true;
                this.amountStyle = "border: 0px solid #505050;";
                this.rType = 0;
            }
        };
        this.IncrementVal = function (listItem) {
            if (listItem.quantity < this.max) {
                listItem.quantity = listItem.quantity + 1;
                this.totalAmount = this.totalAmount + parseInt(listItem.cardValue);
            }
            else {
            }
        };
        this.DecrementVal = function (listItem) {
            if (listItem.quantity > this.min) {
                listItem.quantity = listItem.quantity - 1;
                this.totalAmount = this.totalAmount - parseInt(listItem.cardValue);
            }
            else {
            }
        };
        this.WimaxRecharge03Action = function (totalAmount, wimaxUser, tpin) {
            var _this = this;
            this.wimaxRechargeError03 = "";
            var validateTpinExp = new RegExp("[0-9]{4}$");
            var flag = true;
            if (totalAmount == "" || typeof (totalAmount) == "undefined") {
                this.wimaxRechargeError03 = "Recharge Amount can not be blank.";
                flag = false;
                return;
            }
            if (wimaxUser == "" || typeof (wimaxUser) == "undefined") {
                this.wimaxRechargeError03 = "Service Account ID can not be blank.";
                flag = false;
                return;
            }
            if (tpin == "" || typeof (tpin) == "undefined") {
                this.wimaxRechargeError03 = "TPIN can not be blank.";
                flag = false;
                return;
            }
            if (!validateTpinExp.test(tpin)) {
                this.wimaxRechargeError03 = "Invalid TPIN.";
                flag = false;
                return;
            }
            if (totalAmount > 9999) {
                this.wimaxRechargeError03 = "Minimum recharge amount 9999 taka.";
                flag = false;
                return;
            }
            if (flag) {
                this.pinCode = tpin;
                this.wUser = wimaxUser;
                this.totAmount = totalAmount;
                if (this.rType == 1) {
                    this.rAmount = totalAmount;
                }
                else {
                    var firstLoop_1 = 0;
                    Object.keys(this.cardDetails).forEach(function (key) {
                        var value = _this.cardDetails[key];
                        if (value.quantity > 0) {
                            if (firstLoop_1 == 0) {
                                _this.rAmount = value.cardValue + "@" + value.quantity;
                            }
                            else {
                                _this.rAmount = _this.rAmount + "#" + value.cardValue + "@" + value.quantity;
                            }
                            firstLoop_1++;
                        }
                    });
                }
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
                var sProvider = this.provider.toLowerCase();
                var encProvider = this.cryptoUtil.getEncryptVal(sProvider);
                var encPackage = this.cryptoUtil.getEncryptVal(this.packageType);
                var encTPin = this.cryptoUtil.getEncryptVal(this.pinCode);
                var encWimaxUser = this.cryptoUtil.getEncryptVal(this.wUser);
                var encAccNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encOrder = this.cryptoUtil.getEncryptVal(this.rAmount);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.wimaxService.makeWimaxRecharge(unMaskToken, appData.userId, appData.appId, encProvider, encPackage, encTPin, encWimaxUser, encOrder, encAccNo, encAccNo)
                    .then(function (data) {
                    _this.onWimaxRechargeComplete(data);
                });
            }
        };
        this.onWimaxRechargeComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('WimaxRecharge04Page', {
                    'refID': data.object.wimaxPayRefId,
                    'amount': this.totAmount
                });
            }
            else if (data.statusCode == 0) {
                this.wimaxRechargeError03 = data.note;
            }
            else {
                this.wimaxRechargeError03 = "System Error Contact with Administrator.";
            }
        };
        this.accountNo = this.navParams.get("accountNo");
        this.provider = this.navParams.get("provider");
        this.packageType = this.navParams.get("packageType");
        this.cardDetails = JSON.parse(this.navParams.get("cardDetails"));
        this.initPage();
    }
    WimaxRecharge03Page.prototype.ionViewDidLoad = function () {
    };
    WimaxRecharge03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-wimax-recharge03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge03\wimax-recharge03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Wimax Recharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n  <form (submit)="WimaxRecharge03Action(totalAmount,wimaxUser,tpin)">\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="wimaxRechargeError03">\n    {{wimaxRechargeError03}}\n  </div>\n  <ion-list>\n    <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Recharge\n      Information</b></div>\n\n    <label class="row item">\n      <span class="col col-6 item-text-wrap item-divider regular-font"\n            style="text-align: right;"><b>Account No :</b></span>\n      <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{accountNo}}</span>\n    </label>\n\n    <label class="row item">\n      <span class="col col-6 item-text-wrap item-divider regular-font"\n            style="text-align: right;"><b>Service Provider :</b></span>\n      <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{provider}}</span>\n    </label>\n\n    <label class="row item">\n      <span class="col col-6 item-text-wrap item-divider regular-font"\n            style="text-align: right;"><b>Package :</b></span>\n      <span class="col col-6 item-text-wrap regular-font " style="text-align: left">{{packageType}}</span>\n    </label>\n\n  </ion-list>\n\n  <div class="preview-box" style="margin:10px 10px 10px 10px" *ngIf="cardDetails.length > 0">\n    <div class="row" style="background-color: white;" >\n      <!--<div class="col col-15 text-center regular-font"></div>-->\n      <div class="col col-33 text-center regular-font" style="background-color:rgba(157, 174, 119, 0.47)"><b>Card\n        Value</b></div>\n      <div class="col col-33 text-right regular-font" style="background: rgba(157, 174, 119, 0.47)"><b>Quantity</b>\n      </div>\n      <div class="col col-34 text-right regular-font" style="background: rgba(157, 174, 119, 0.47)"><b>Amount</b>\n      </div>\n      <!--<div class="col col-10 text-right regular-fontl"></div>-->\n    </div>\n\n    <div class="row item" *ngFor="let listItem of cardDetails">\n      <!--<div class="col col-15 text-center regular-font"></div>-->\n      <div class="col col-33 text-center regular-font">\n\n        <span>{{listItem.cardValue}}</span>\n        <span *ngIf="listItem.quantity !=0">X</span>\n        <span *ngIf="listItem.quantity !=0">{{listItem.quantity}}</span>\n      </div>\n\n\n      <div class="col col-33 text-right  regular-font">\n\n           <span (click)="DecrementVal(listItem)">\n                 <ion-icon name="ios-remove-circle-outline" style="font-size: 28px"></ion-icon>\n              </span>\n        <span style="margin-left: 7px"></span>\n        <span (click)="IncrementVal(listItem)">\n            <ion-icon name="ios-add-circle-outline" style="font-size: 28px"></ion-icon>\n          </span>\n      </div>\n\n      <div class="col col-34 text-right regular-font">{{listItem.cardValue * listItem.quantity}}</div>\n    </div>\n\n  </div>\n  <ion-list>\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col col-6 text-right class="item-divider">\n          <strong>Recharge Amount : </strong>\n        </ion-col>\n        <ion-col>\n          <input type="tel" [(ngModel)]="totalAmount" style="{{amountStyle}}" [disabled]="amountDisabled"\n                 [readonly]="rdAmount" name="totAmount" maxlength="7" class="textField">\n        </ion-col>\n      </ion-row>\n    </div>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col col-6 text-right class="item-divider">\n          <strong>Service Account ID : </strong>\n        </ion-col>\n        <ion-col>\n          <input type="text" name="serviceAccID" placeholder="Service Account ID" [(ngModel)]="wimaxUser" maxlength="50" class="textField">\n        </ion-col>\n      </ion-row>\n    </div>\n\n\n    <div class="row item regular-font">\n      <ion-row>\n        <ion-col col-6 text-right class="item-divider">\n          <strong>TPIN : </strong>\n        </ion-col>\n        <ion-col>\n          <input type="tel" style="-webkit-text-security:disc" placeholder="Enter TPIN" [(ngModel)]="tpin" maxlength="4"\n                 class="textField" name="tpin">\n        </ion-col>\n      </ion-row>\n    </div>\n\n\n    <button class="button-green button-block " type="submit"  tabindex="2"> Submit\n    </button>\n\n    <br>\n    <br>\n\n  </ion-list>\n  </form>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\wimax-recharge03\wimax-recharge03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_wimax_service_wimax_service__["a" /* WimaxServiceProvider */]])
    ], WimaxRecharge03Page);
    return WimaxRecharge03Page;
}());

//# sourceMappingURL=wimax-recharge03.js.map

/***/ })

});
//# sourceMappingURL=1.js.map