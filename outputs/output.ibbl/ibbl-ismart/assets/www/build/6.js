webpackJsonp([6],{

/***/ 495:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "WelcomePageModule", function() { return WelcomePageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__welcome__ = __webpack_require__(598);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};



var WelcomePageModule = (function () {
    function WelcomePageModule() {
    }
    WelcomePageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__welcome__["a" /* WelcomePage */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__welcome__["a" /* WelcomePage */]),
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__welcome__["a" /* WelcomePage */]
            ]
        })
    ], WelcomePageModule);
    return WelcomePageModule;
}());

//# sourceMappingURL=welcome.module.js.map

/***/ }),

/***/ 598:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WelcomePage; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_account_service_account_service__ = __webpack_require__(254);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var WelcomePage = (function () {
    function WelcomePage(navCtrl, navParams, storage, config, maskTokenUtil, tokenService, cryptoUtil, menu, accountService, events, gaProvider) {
        var _this = this;
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.storage = storage;
        this.config = config;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenService = tokenService;
        this.cryptoUtil = cryptoUtil;
        this.menu = menu;
        this.accountService = accountService;
        this.events = events;
        this.gaProvider = gaProvider;
        this.welcomeUser = "";
        this.welcomeMessage = "";
        this.updateMessage = "";
        this.menuForHomePage = [];
        this.accountServicesMenu = [];
        this.borderStyle = "";
        this.accountSummary = [];
        this.ShowHideChart = function () {
            if (this.isShowChart == true) {
                this.isShowChart = false;
                this.chartHeight = "none";
                this.plusMinusIcon = "md-arrow-dropdown-circle";
            }
            else {
                this.isShowChart = true;
                this.chartHeight = "block";
                this.plusMinusIcon = "md-arrow-dropup-circle";
            }
        };
        this.childPageSelectionAction = function (menuItem) {
            var valueAfterRemHash = (menuItem.menuLink.replace("#", ""));
            var valueAfterReplaceSlash = (valueAfterRemHash.replace("iCellular/", ""));
            this.navCtrl.push(valueAfterReplaceSlash);
        };
        this.initializeMenu = function () {
            var _this = this;
            var dbVal = this.storage.retrieveFromStorage('privMenus');
            var pMenu = this.cryptoUtil.getDecryptVal(dbVal);
            if (pMenu == "" || pMenu == null) {
                this.privMenus = [];
            }
            else {
                this.privMenus = JSON.parse(pMenu);
            }
            var parents = [];
            Object.keys(this.privMenus).forEach(function (key) {
                var value = _this.privMenus[key];
                if (value.parentId == 0) {
                    parents.push(value);
                }
            });
            this.privMenus = parents;
            return JSON.stringify(this.privMenus);
        };
        this.pageSelectorAction = function (menuItem) {
            var valueAfterRemHash = (menuItem.menuLink.replace("#", ""));
            var valueAfterReplaceSlash = (valueAfterRemHash.replace("iCellular/", ""));
            var allMenus;
            var dbVal = this.storage.retrieveFromStorage('privMenus');
            var pMenu = this.cryptoUtil.getDecryptVal(dbVal);
            if (pMenu == "") {
                allMenus = [];
            }
            else {
                allMenus = JSON.parse(pMenu);
            }
            var child = [];
            Object.keys(allMenus).forEach(function (key) {
                var value = allMenus[key];
                if (value.parentId == menuItem.menuId) {
                    child.push(value);
                }
            });
            this.storage.insertIntoStorage("childDetails", JSON.stringify(child));
            this.storage.insertIntoStorage("menuText", JSON.stringify(menuItem.menuTxt));
            if (child.length <= 0) {
                this.navCtrl.setRoot('WelcomePage', {});
                this.navCtrl.push(valueAfterReplaceSlash, {});
            }
            else {
                this.navCtrl.setRoot('WelcomePage', {});
                this.navCtrl.push(valueAfterReplaceSlash, {});
            }
        };
        this.getBorderStyle = function (index) {
            if (index % 2 == 0) {
                this.borderStyle = "";
            }
            else {
                this.borderStyle = "";
                // this.borderStyle = "1px solid #e7e7e7";
            }
            return this.borderStyle;
        };
        this.getRightBorderStyle = function (index) {
            if (index % 3 == 0) {
                this.borderStyle = "";
            }
            else {
                this.borderStyle = "1px solid #e7e7e7";
            }
            return this.borderStyle;
        };
        this.SwitchChart = function () {
            if (this.toggle) {
                this.chartType = "value";
                this.showChart(this.accountSummary, this.chartType);
            }
            else {
                this.chartType = "percentage";
                this.showChart(this.accountSummary, this.chartType);
            }
        };
        this.generateRow = function (data, accountData) {
            Object.keys(accountData).forEach(function (key) {
                var value = accountData[key];
                data.addRows([
                    [value.accNo, value.balance]
                ]);
            });
        };
        this.generateChartOption = function (graphType) {
            // Set chart options
            var options = {
                pieSliceText: graphType,
                'title': 'Account wise summary',
                titleTextStyle: {
                    fontName: 'Cabin',
                    fontSize: 13,
                    align: 'center'
                },
                fontSize: 9,
                legend: {
                    alignment: 'center', position: 'right', textStyle: {
                        fontName: 'Cabin',
                        fontSize: 9
                    }
                },
                chartArea: { left: '20', top: '25', width: '100%', height: '100%' },
                colors: ['#C608D1', '#007CC3', '#FDBB2F', '#00529B', '#F47A1F', '#8B00FF', '#7AC142', '#377B2B'],
                is3D: true
            };
            return options;
        };
        this.showChart = function (accountData, graphType) {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Slices');
            this.generateRow(data, accountData);
            var optionsVal = {};
            optionsVal = this.generateChartOption(graphType);
            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, optionsVal);
        };
        //Fetching tx summary with/without loading dialog based on loading type 1-> with loading, 2->without loading
        this.intAccountSummary = function (loadingType) {
            var _this = this;
            this.welcomeError = "";
            var appData = this.storage.retrieveFromStorage("appData");
            var unMaskRefToken = this.maskTokenUtil.getUnMaskVal(appData.refreshToken);
            this.tokenService.getNewToken(unMaskRefToken)
                .then(function (data) {
                _this.onNewTokenGenComplete(data, loadingType);
            });
        };
        this.onNewTokenGenComplete = function (data, loadingType) {
            var _this = this;
            if (data.status == 0) {
                this.navCtrl.setRoot('ExpirePage');
            }
            else {
                var appData = this.storage.retrieveFromStorage("appData");
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                //1 means with loading dialog, for refresh
                if (loadingType == 1) {
                    this.accountService.getTxSummary(unMaskToken, appData.userId, appData.appId)
                        .then(function (data) {
                        _this.onViewAccSummaryFetchComplete(data, loadingType);
                    });
                }
                else {
                    this.accountService.getTxSummaryWithoutLoading(unMaskToken, appData.userId, appData.appId)
                        .then(function (data) {
                        _this.onViewAccSummaryFetchComplete(data, loadingType);
                    });
                }
            }
        };
        this.onViewAccSummaryFetchComplete = function (data, loadingType) {
            if (data.statusCode == 1) {
                this.accountSummary = data.object.accSummaries;
                this.totalBalance = data.object.totalBalance;
                //1 means with loading dialog, for refresh
                if (loadingType == 1) {
                    this.showChart(this.accountSummary, this.chartType);
                }
                else {
                    this.chartType = "percentage";
                    this.showChart(this.accountSummary, this.chartType);
                }
            }
            else if (data.statusCode == 0) {
                this.welcomeError = data.note;
            }
            else {
                this.welcomeError = "System Error Contact with Administrator.";
            }
        };
        this.isShowChart = true;
        this.chartHeight = "block";
        this.plusMinusIcon = "md-arrow-dropup-circle";
        this.menu.enable(true);
        //it is disabled in session expire page
        // this.menu.swipeEnable(true);
        this.events.publish('mainMenu', this.initializeMenu());
        var welcomeVal = this.storage.retrieveFromStorage('welcomeVal');
        if (welcomeVal == null || welcomeVal == "") {
            console.log("Welcome text value is null.");
        }
        else {
            this.dWelCome = this.cryptoUtil.getDecryptVal(welcomeVal);
            this.dWelCome = JSON.parse(this.dWelCome);
            this.welcomeUser = this.dWelCome.fName + " " + this.dWelCome.lName;
            this.welcomeMessage = this.dWelCome.welcomeText;
            var appVersion = this.config.iSmartVersion;
            var play_version = this.dWelCome.currentAppVersion;
            appVersion = appVersion.replace(/[.]/g, "");
            play_version = play_version.replace(/[.]/g, "");
            if (play_version > appVersion) {
                this.updateMessage = "A new update with version " + this.dWelCome.currentAppVersion + " is available, Please update your App from Google Play Store";
            }
            else {
                this.updateMessage = "";
            }
        }
        var dbValForMenus = this.storage.retrieveFromStorage('privMenus');
        var newHomePageMenu = JSON.parse(this.cryptoUtil.getDecryptVal(dbValForMenus));
        Object.keys(newHomePageMenu).forEach(function (key) {
            var value = newHomePageMenu[key];
            if (value.parentId == 0) {
                _this.menuForHomePage.push(value);
            }
        });
        var settingPage = {
            "menuTxt": "Settings",
            "menuLink": "#iCellular/SettingsPage",
            "imageUrl": "assets/imgs/appImage/setting.jpg"
        };
        this.menuForHomePage.push(settingPage);
        //  Account Services Menu generate here
        Object.keys(newHomePageMenu).forEach(function (key) {
            var value = newHomePageMenu[key];
            if (value.parentId == 1) {
                _this.accountServicesMenu.push(value);
            }
        });
        //Fetching tx summary without  loading dialog, when page load
        this.intAccountSummary(2);
    }
    WelcomePage.prototype.ionViewDidLoad = function () {
        this.gaProvider.startTrackerWithId("IBBL iSmart Home.");
    };
    WelcomePage = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-welcome',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\welcome\welcome.html"*/'\n<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Welcome</ion-title>\n  </ion-navbar>\n</ion-header>\n\n<ion-content class="background">\n\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="welcomeError">\n    {{welcomeError}}\n  </div>\n\n  <div class="item item-divider item-text-wrap regular-font welcome-box-style" style="height: 5%" *ngIf="welcomeMessage"\n       [innerHTML]="welcomeMessage"></div>\n\n  <ion-grid style="height: 42%">\n    <ion-row style="padding: 0;height: 100%" class="slide-box-style">\n      <ion-col col-3 style="align-items: center;vertical-align: middle;height: 33%"\n               (click)="pageSelectorAction(item)" *ngFor="let item of menuForHomePage;let i = index">\n\n        <button class="button button-icon" style="width: 100%;height:100%;line-height: 15px;">\n          <img style="height:47%;width:47%;display: block;margin: auto" src="{{item.imageUrl}}"/>\n          <label style="font-size: 12px" class="item-text-wrap"> {{item.menuTxt}}</label>\n        </button>\n      </ion-col>\n    </ion-row>\n  </ion-grid>\n\n  <div class="slide-box-style" style="margin:5px">\n    <button type="button" class="collapsible" style="text-align: right;padding: 0px">\n      <ion-icon color="ibblCustom" name="md-refresh-circle" (click)="intAccountSummary(\'1\')"\n                style="padding-left: 5px;margin-right: 30px;font-size: 1.7em;" *ngIf="isShowChart"></ion-icon>\n\n      <span *ngIf="toggle && isShowChart">%</span><ion-toggle color="ibblCustom" (ionChange)="SwitchChart(\'1\')" [(ngModel)]="toggle" *ngIf="isShowChart"></ion-toggle><span *ngIf="!toggle &&isShowChart">$</span>\n\n      <ion-icon color="ibblCustom" name="{{plusMinusIcon}}" (click)="ShowHideChart()"\n                style="padding-left: 5px" style="margin-right: 10px;margin-left:20px;font-size: 1.7em;"></ion-icon>\n\n    </button>\n    <div id="chart_div" [ngStyle]="{\'display\': chartHeight}" style="margin:5px;height: 20%"></div>\n  </div>\n\n  <ion-row style="height: 20%">\n    <div clas s="regular-font" style="font-size: 13px;margin-bottom: 5px;padding-left: 25px"><strong>Account\n      Services</strong></div>\n\n    <ion-slides style="height: 130px;" pager="true"\n                initialSlide="0" zoom="true" class="slide-box-style"\n                slidesPerView="4" loop="true" spaceBetween="10">\n      <ion-slide *ngFor="let image of accountServicesMenu" (click)="childPageSelectionAction(image)">\n\n        <div class="swiper-zoom-container">\n          <img [src]="image.imageUrl" style="width: 50%;height: 50%;padding-bottom: 0px">\n        </div>\n        <h4 text-center style="font-size: 11px;" class="item-text-wrap">{{image.menuTxt}}</h4>\n      </ion-slide>\n    </ion-slides>\n  </ion-row>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\welcome\welcome.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_6__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_2__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["i" /* MenuController */],
            __WEBPACK_IMPORTED_MODULE_8__providers_account_service_account_service__["a" /* AccountServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["c" /* Events */],
            __WEBPACK_IMPORTED_MODULE_5__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */]])
    ], WelcomePage);
    return WelcomePage;
}());

//# sourceMappingURL=welcome.js.map

/***/ })

});
//# sourceMappingURL=6.js.map