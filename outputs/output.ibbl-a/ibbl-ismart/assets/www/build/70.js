webpackJsonp([70],{

/***/ 434:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ContactListPageModule", function() { return ContactListPageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__contact_list__ = __webpack_require__(537);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var ContactListPageModule = (function () {
    function ContactListPageModule() {
    }
    ContactListPageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__contact_list__["a" /* ContactListPage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__contact_list__["a" /* ContactListPage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__contact_list__["a" /* ContactListPage */]
            ]
        })
    ], ContactListPageModule);
    return ContactListPageModule;
}());

//# sourceMappingURL=contact-list.module.js.map

/***/ }),

/***/ 537:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ContactListPage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ionic_native_contacts__ = __webpack_require__(270);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_alert_alert__ = __webpack_require__(251);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var ContactListPage = (function () {
    function ContactListPage(navCtrl, navParams, contact, loadingCtrl, alertProvider) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.contact = contact;
        this.loadingCtrl = loadingCtrl;
        this.alertProvider = alertProvider;
        this.bdContactLength = 11;
        this.loadContactList = function () {
            var _this = this;
            // let fields: ContactFieldType[] = ['displayName', 'phoneNumbers', 'name', 'emails'];
            var fields = ['displayName', 'phoneNumbers'];
            var options = new __WEBPACK_IMPORTED_MODULE_2__ionic_native_contacts__["a" /* ContactFindOptions */]();
            options.multiple = true;
            options.hasPhoneNumber = true;
            options.filter = "";
            this.loadingElem = this.loadingCtrl.create({
                spinner: 'bubbles',
                content: 'Getting contact list please wait...'
            });
            this.loadingElem.present();
            this.contact.find(fields, options)
                .then(function (data) {
                _this.contactsFound = data;
                _this.loadingElem.dismiss();
            });
        };
        this.accountNo = this.navParams.get("accountNo");
        this.loadContactList();
    }
    ContactListPage.prototype.findContact = function (ev) {
        var _this = this;
        // let fields: ContactFieldType[] = ['displayName', 'phoneNumbers', 'name', 'emails'];
        var fields = ['displayName', 'phoneNumbers'];
        var options = new __WEBPACK_IMPORTED_MODULE_2__ionic_native_contacts__["a" /* ContactFindOptions */]();
        options.multiple = true;
        options.hasPhoneNumber = true;
        options.filter = ev.target.value;
        this.contact.find(fields, options).then(function (contact) {
            _this.contactsFound = contact;
        });
        if (this.contactsFound.length == 0) {
            this.contactsFound.push({
                displayName: 'No Contacts found'
            });
        }
    };
    ContactListPage.prototype.openIt = function (item) {
        this.contactSelect = item.value;
        this.contactSelect = this.contactSelect.split(' ').join('');
        this.contactSelect = this.contactSelect.split('-').join('');
        var length = this.contactSelect.length;
        if (length < this.bdContactLength) {
            var alertHead = "Alert !";
            var message = "Invalid Mobile number. Please select valid one.";
            this.alertProvider.showAlert(alertHead, message, 20000);
            return;
        }
        if (length > this.bdContactLength) {
            var extraDigit = length - this.bdContactLength;
            this.contactSelect = this.contactSelect.substr(extraDigit, this.bdContactLength);
        }
        this.navCtrl.pop({ animate: false });
        this.navCtrl.pop({ animate: false });
        this.navCtrl.push('IRecharge02Page', { 'accountNo': this.accountNo, 'mobileNo': this.contactSelect });
    };
    ContactListPage.prototype.ionViewDidLoad = function () {
        console.log('ionViewDidLoad ContactListPage');
    };
    ContactListPage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-contact-list',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\contact-list\contact-list.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center="">Contact List</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content class="background container">\n  <ion-grid>\n    <ion-row>\n      <ion-col>\n        <ion-searchbar (ionInput)="findContact($event)" placeholder="Search contact">\n          <button ion-button color="light" (click)="findContact($event)" icon-only>\n            <ion-icon name="add"></ion-icon>\n          </button>\n        </ion-searchbar>\n\n      </ion-col>\n    </ion-row>\n    <ion-row>\n      <ion-col>\n        <ion-scroll style="width:100%;height:100vh" scrollY="true">\n          <ion-list scroll="true">\n            <ion-item *ngFor="let item of contactsFound">\n              <button ion-item no-lines *ngFor="let subItem of item.phoneNumbers" (click)="openIt(subItem)">\n                {{item.displayName}} <br> {{subItem.value}}\n              </button>\n            </ion-item>\n          </ion-list>\n          </ion-scroll>\n      </ion-col>\n    </ion-row>\n\n  </ion-grid>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\contact-list\contact-list.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__ionic_native_contacts__["b" /* Contacts */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["h" /* LoadingController */],
            __WEBPACK_IMPORTED_MODULE_3__providers_alert_alert__["a" /* AlertProvider */]])
    ], ContactListPage);
    return ContactListPage;
}());

//# sourceMappingURL=contact-list.js.map

/***/ })

});
//# sourceMappingURL=70.js.map