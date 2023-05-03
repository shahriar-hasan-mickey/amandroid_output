webpackJsonp([71],{

/***/ 433:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ChildMenuPageModule", function() { return ChildMenuPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__child_menu__ = __webpack_require__(536);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ChildMenuPageModule = (function () {
    function ChildMenuPageModule() {
    }
    ChildMenuPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__child_menu__["a" /* childMenu */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__child_menu__["a" /* childMenu */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__child_menu__["a" /* childMenu */]
            ]
        })
    ], ChildMenuPageModule);
    return ChildMenuPageModule;
}());

//# sourceMappingURL=child-menu.module.js.map

/***/ }),

/***/ 536:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return childMenu; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var childMenu = (function () {
    function childMenu(navCtrl, navParams, config, storage) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.config = config;
        this.storage = storage;
        this.childDetails = [];
        this.checkMenuVersionRequirement = function (menuVersion) {
            this.currAppVersion = this.appVersion.replace(/[.]/g, "");
            menuVersion = menuVersion.replace(/[.]/g, "");
            return menuVersion <= this.currAppVersion;
        };
        this.childPageSelectorAction = function (menuItem) {
            var valueAfterRemHash = (menuItem.menuLink.replace("#", ""));
            var valueAfterReplaceSlash = (valueAfterRemHash.replace("iCellular/", ""));
            // this.navCtrl.setRoot('WelcomePage');
            this.navCtrl.push(valueAfterReplaceSlash);
        };
        this.getBorderStyle = function (index) {
            if (index % 2 == 0) {
                this.borderStyle = "1px solid #e7e7e7";
            }
            else {
                this.borderStyle = "";
            }
            return this.borderStyle;
        };
        this.menuText = JSON.parse(this.storage.retrieveFromStorage("menuText"));
        this.childDetails = JSON.parse(this.storage.retrieveFromStorage("childDetails"));
        this.appVersion = this.config.iSmartVersion;
    }
    childMenu.prototype.ionViewDidLoad = function () {
        console.log('ionViewDidLoad ChildMenuPage');
    };
    childMenu = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-child-menu',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\child-menu\child-menu.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>{{menuText}}</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n\n  <ion-grid>\n    <ion-row style="padding: 0; height: 35%" class="slide-box-style">\n      <ion-col col-4 style="align-items: center;vertical-align: middle;border: none; height: 50%"\n               (click)="childPageSelectorAction(item)" *ngFor="let item of childDetails;let i = index">\n\n        <button class="button button-icon" style="width: 100%;height: 100%;;line-height: 20px">\n          <img style="height:50%;width: 45%;display: block;margin: auto" src="{{item.imageUrl}}"/>\n          <label style="font-size: 12px;width: 100%" class="item-text-wrap"> {{item.menuTxt}}</label>\n        </button>\n      </ion-col>\n    </ion-row>\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\child-menu\child-menu.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */]])
    ], childMenu);
    return childMenu;
}());

//# sourceMappingURL=child-menu.js.map

/***/ })

});
//# sourceMappingURL=71.js.map