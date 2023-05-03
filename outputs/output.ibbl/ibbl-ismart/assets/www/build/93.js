webpackJsonp([93],{

/***/ 411:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AddToFavorite01PageModule", function() { return AddToFavorite01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__add_to_favorite01__ = __webpack_require__(514);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var AddToFavorite01PageModule = (function () {
    function AddToFavorite01PageModule() {
    }
    AddToFavorite01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__add_to_favorite01__["a" /* AddToFavorite01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__add_to_favorite01__["a" /* AddToFavorite01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__add_to_favorite01__["a" /* AddToFavorite01Page */]
            ]
        })
    ], AddToFavorite01PageModule);
    return AddToFavorite01PageModule;
}());

//# sourceMappingURL=add-to-favorite01.module.js.map

/***/ }),

/***/ 514:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AddToFavorite01Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_recharge_service_recharge_service__ = __webpack_require__(257);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__ = __webpack_require__(246);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};








/**
 * Generated class for the AddToFavorite01Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var AddToFavorite01Page = (function () {
    function AddToFavorite01Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, rechargeService, gaProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.rechargeService = rechargeService;
        this.gaProvider = gaProvider;
        this.AddToFavoriteAction = function (name) {
            var _this = this;
            this.addToFavoriteError = "";
            this.fName = name;
            var flag = true;
            if (name == "" || typeof (name) == "undefined") {
                this.addToFavoriteError = "Name can not be blank.";
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
                var encMobileNo = this.cryptoUtil.getEncryptVal(this.mobileNo);
                var encPackage = this.cryptoUtil.getEncryptVal(this.package);
                var encName = this.cryptoUtil.getEncryptVal(this.fName);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.rechargeService.addToFavoriteList(unMaskToken, appData.userId, appData.appId, encMobileNo, encPackage, encName)
                    .then(function (data) {
                    _this.onFavoriteListAddComplete(data);
                });
            }
        };
        this.onFavoriteListAddComplete = function (data) {
            if (data.statusCode == 1) {
                this.navCtrl.push('AddToFavorite02Page', { 'mobileNo': this.mobileNo });
            }
            else if (data.statusCode == 0) {
                this.addToFavoriteError = data.note;
            }
            else {
                //$log.info("else Loop");
                this.addToFavoriteError = "System Error Contact with Administrator.";
            }
        };
        this.mobileNo = navParams.get("mobileNo");
        this.package = navParams.get("package");
        this.shortTitle = navParams.get("shortTitle");
        this.name = navParams.get("shortTitle");
        this.addToFavoriteError = "";
    }
    AddToFavorite01Page.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("Add to Favourite List");
    };
    AddToFavorite01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-add-to-favorite01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-to-favorite01\add-to-favorite01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">iRecharge</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n  <form (submit)="AddToFavoriteAction(name)">\n    <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="addToFavoriteError">\n      {{addToFavoriteError}}\n    </div>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Add\n        to favorite list</b></div>\n\n      <div class="row item regular-font">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Mobile No : </strong>\n        </div>\n        <div col col-7>\n          {{mobileNo}}\n        </div>\n\n      </div>\n\n\n      <div class="row item regular-font">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Package : </strong>\n        </div>\n        <div col col-7>\n          {{package}}\n        </div>\n\n      </div>\n\n      <div class="row item regular-font">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Name : </strong>\n        </div>\n        <div col col-7>\n          <input placeholder="Enter Name" name="favName" type="text" [(ngModel)]="name" maxlength="50" class="textField"\n                 tabindex="1">\n        </div>\n\n      </div>\n\n      <button class="button button-green button-block" type="submit" tabindex="1">Add\n      </button>\n\n    </ion-list>\n  </form>\n</ion-content>\n\n\n\n\n\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\add-to-favorite01\add-to-favorite01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_recharge_service_recharge_service__["a" /* RechargeServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], AddToFavorite01Page);
    return AddToFavorite01Page;
}());

//# sourceMappingURL=add-to-favorite01.js.map

/***/ })

});
//# sourceMappingURL=93.js.map