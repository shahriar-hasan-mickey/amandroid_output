webpackJsonp([26],{

/***/ 477:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RemittanceInfo03PageModule", function() { return RemittanceInfo03PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__remittance_info03__ = __webpack_require__(580);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var RemittanceInfo03PageModule = (function () {
    function RemittanceInfo03PageModule() {
    }
    RemittanceInfo03PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info03__["a" /* RemittanceInfo03Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__remittance_info03__["a" /* RemittanceInfo03Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info03__["a" /* RemittanceInfo03Page */]
            ]
        })
    ], RemittanceInfo03PageModule);
    return RemittanceInfo03PageModule;
}());

//# sourceMappingURL=remittance-info03.module.js.map

/***/ }),

/***/ 580:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RemittanceInfo03Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
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
 * Generated class for the RemittanceInfo03Page page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */
var RemittanceInfo03Page = (function () {
    function RemittanceInfo03Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.selectedExchangeHouse = this.navParams.get("selectedExchangeHouse");
        if (this.selectedExchangeHouse == "") {
            this.selectedExchangeHouse = "n/a";
        }
        this.remitSearchResult = this.navParams.get("remitSearchResult");
        // console.log(this.remitSearchResult);
        if (this.remitSearchResult.agentResponseInfo.status == "REJECT") {
            this.rejectReason = this.remitSearchResult.agentResponseInfo.rejectReason;
            this.status = "";
        }
        if (this.remitSearchResult.agentResponseInfo.status == "SUCCESS") {
            this.rejectReason = "";
            this.status = this.remitSearchResult.agentResponseInfo.remittanceInfoList[0].status;
        }
    }
    RemittanceInfo03Page.prototype.ionViewDidLoad = function () {
    };
    RemittanceInfo03Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-remittance-info03',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info03\remittance-info03.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Search Remittance information</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content>\n\n    <ion-list>\n      <div class="item item-divider  regular-font" style="background: rgba(157, 174, 119, 0.47);color: #202020"><b>Search Result</b></div>\n\n      <!--<div class="row item regular-font">-->\n\n        <!--<div col col-6 class="item-text-wrap item-divider regular-font" style="text-align: right;">-->\n          <!--<strong>Exchange House : </strong>-->\n        <!--</div>-->\n        <!--<div col col-6 class="item-text-wrap regular-font">-->\n          <!--{{selectedExchangeHouse}}-->\n        <!--</div>-->\n      <!--</div>-->\n\n      <div class="row item regular-font" *ngIf="status">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Status : </strong>\n        </div>\n        <div col col-7>\n          {{status}}\n        </div>\n      </div>\n\n\n      <div class="row item regular-font" *ngIf="rejectReason">\n\n        <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n          <strong>Status : </strong>\n        </div>\n        <div col col-7 class="item-text-wrap regular-font">\n          {{rejectReason}}\n        </div>\n      </div>\n\n    </ion-list>\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info03\remittance-info03.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], RemittanceInfo03Page);
    return RemittanceInfo03Page;
}());

//# sourceMappingURL=remittance-info03.js.map

/***/ })

});
//# sourceMappingURL=26.js.map