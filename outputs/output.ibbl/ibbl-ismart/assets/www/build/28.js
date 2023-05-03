webpackJsonp([28],{

/***/ 475:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RemittanceInfo01PageModule", function() { return RemittanceInfo01PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__remittance_info01__ = __webpack_require__(578);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var RemittanceInfo01PageModule = (function () {
    function RemittanceInfo01PageModule() {
    }
    RemittanceInfo01PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info01__["a" /* RemittanceInfo01Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__remittance_info01__["a" /* RemittanceInfo01Page */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__remittance_info01__["a" /* RemittanceInfo01Page */]
            ]
        })
    ], RemittanceInfo01PageModule);
    return RemittanceInfo01PageModule;
}());

//# sourceMappingURL=remittance-info01.module.js.map

/***/ }),

/***/ 578:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RemittanceInfo01Page; });
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


var RemittanceInfo01Page = (function () {
    function RemittanceInfo01Page(navCtrl, navParams) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.filterData = [];
        this.setFilteredItems = function () {
            var _this = this;
            this.filterData = this.exchangeHouseList.filter(function (exHouse) {
                return ((exHouse.ID.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1) ||
                    (exHouse.Title.toLowerCase().indexOf(_this.searchTerm.toLowerCase()) > -1));
            });
        };
        this.clickSingleExHouse = function (selectedExchangeHouse) {
            this.navCtrl.popToRoot({ animate: false });
            this.navCtrl.push('RemittanceInfo02Page', {
                'selectedExchangeHouse': JSON.stringify(selectedExchangeHouse), 'navType': "2",
                'exchangeHouseList': JSON.stringify(this.exchangeHouseList),
                'pinNo': this.pinNo
            });
        };
        this.exchangeHouseList = this.navParams.get("exchangeHouseList");
        this.pinNo = this.navParams.get("pinNo");
        this.exchangeHouseList = JSON.parse(this.exchangeHouseList);
        this.filterData = this.exchangeHouseList;
    }
    RemittanceInfo01Page.prototype.ionViewDidLoad = function () {
    };
    RemittanceInfo01Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-remittance-info01',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info01\remittance-info01.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Exchange House List</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <ion-grid>\n    <ion-row>\n      <ion-col>\n      <ion-searchbar\n        [(ngModel)]="searchTerm" animated="true" placeholder="Search {{type}}"\n        [showCancelButton]="shouldShowCancel" float="true"\n        (ionInput)="setFilteredItems()"\n        (ionCancel)="onCancel($event)">\n      </ion-searchbar>\n\n      </ion-col>\n    </ion-row>\n    <ion-row>\n      <ion-col>\n        <ion-scroll style="width:100%;height:100vh" scrollY="true">\n          <ion-list scroll="true">\n\n            <ion-item *ngFor="let exHouse of filterData; let i=index " (click)="clickSingleExHouse(exHouse)">\n              <div class="item-text-wrap regular-font">\n                <span class="regular-font">{{exHouse.Title}}</span>\n              </div>\n            </ion-item>\n          </ion-list>\n        </ion-scroll>\n\n      </ion-col>\n    </ion-row>\n\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\remittance-info01\remittance-info01.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */]])
    ], RemittanceInfo01Page);
    return RemittanceInfo01Page;
}());

//# sourceMappingURL=remittance-info01.js.map

/***/ })

});
//# sourceMappingURL=28.js.map