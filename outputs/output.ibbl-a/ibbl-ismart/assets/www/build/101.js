webpackJsonp([101],{

/***/ 401:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AccountStatement02PageModule", function() { return AccountStatement02PageModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__account_statement02__ = __webpack_require__(504);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__ = __webpack_require__(250);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




var AccountStatement02PageModule = (function () {
    function AccountStatement02PageModule() {
    }
    AccountStatement02PageModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_2__account_statement02__["a" /* AccountStatement02Page */],
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["g" /* IonicPageModule */].forChild(__WEBPACK_IMPORTED_MODULE_2__account_statement02__["a" /* AccountStatement02Page */]),
                __WEBPACK_IMPORTED_MODULE_3_ion_datepicker__["a" /* DatePickerModule */]
            ],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_2__account_statement02__["a" /* AccountStatement02Page */]
            ]
        })
    ], AccountStatement02PageModule);
    return AccountStatement02PageModule;
}());

//# sourceMappingURL=account-statement02.module.js.map

/***/ }),

/***/ 504:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AccountStatement02Page; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__ionic_native_date_picker__ = __webpack_require__(249);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__providers_account_service_account_service__ = __webpack_require__(254);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__ionic_native_document_viewer__ = __webpack_require__(266);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__ionic_native_file__ = __webpack_require__(267);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__ionic_native_file_transfer__ = __webpack_require__(268);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__ionic_native_file_opener__ = __webpack_require__(269);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};












var AccountStatement02Page = (function () {
    function AccountStatement02Page(navCtrl, navParams, tokenService, storage, maskTokenUtil, cryptoUtil, accountService, datePicker, viewer, fileOpener, transfer, file, toastCtrl) {
        this.navCtrl = navCtrl;
        this.navParams = navParams;
        this.tokenService = tokenService;
        this.storage = storage;
        this.maskTokenUtil = maskTokenUtil;
        this.cryptoUtil = cryptoUtil;
        this.accountService = accountService;
        this.datePicker = datePicker;
        this.viewer = viewer;
        this.fileOpener = fileOpener;
        this.transfer = transfer;
        this.file = file;
        this.toastCtrl = toastCtrl;
        this.viewStatement02Action = function (fromDate, toDate, downloadChecked) {
            var _this = this;
            this.downloadFlag = downloadChecked;
            var fDay = (fromDate.getDate() < 10 ? '0' : '') + fromDate.getDate();
            var tDay = (toDate.getDate() < 10 ? '0' : '') + toDate.getDate();
            var fMonth = fromDate.getMonth() + 1;
            fMonth = (fMonth < 10 ? '0' : '') + fMonth;
            var tMonth = toDate.getMonth() + 1;
            tMonth = (tMonth < 10 ? '0' : '') + tMonth;
            this.fdt = fDay.toString() + "/" + fMonth.toString() + "/" + fromDate.getFullYear().toString();
            this.tdt = tDay.toString() + "/" + tMonth.toString() + "/" + toDate.getFullYear().toString();
            var dateExp = new RegExp("(0?[1-9]|[12][0-9]|3[01])/(0?[1-9]|1[012])/((19|20|21)\\d\\d)");
            var flag = true;
            if (!dateExp.test(this.fdt)) {
                this.accStmntError02 = "Invalid From Date. Please Enter Valid Date.";
                flag = false;
                return;
            }
            if (!dateExp.test(this.tdt)) {
                this.accStmntError02 = "Invalid To Date. Please Enter Valid Date";
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
                var docType = null;
                if (this.downloadFlag) {
                    docType = "PDF";
                }
                var appData = this.storage.retrieveFromStorage("appData");
                var encFromDate = this.cryptoUtil.getEncryptVal(this.fdt);
                var encToDate = this.cryptoUtil.getEncryptVal(this.tdt);
                var encAccountNo = this.cryptoUtil.getEncryptVal(this.accountNo);
                var encDocType = this.cryptoUtil.getEncryptVal(docType);
                var unMaskToken = this.maskTokenUtil.getUnMaskVal(appData.token);
                this.accountService.getAccountStatement(unMaskToken, appData.userId, appData.appId, encAccountNo, encFromDate, encToDate, encDocType)
                    .then(function (data) {
                    _this.onAccountStatementFetchComplete(data);
                });
            }
        };
        this.onAccountStatementFetchComplete = function (data) {
            if (data.statusCode == 1) {
                if (this.downloadFlag) {
                    this.downloadFromBase64(data.object.data, data.object.stmtFilename); //working
                }
                else {
                    this.navCtrl.push('AccountStatement03Page', { 'stmntDetails': JSON.stringify(data.object) });
                }
            }
            else if (data.statusCode == 0) {
                this.accStmntError02 = data.note;
            }
            else {
                this.accStmntError02 = "System Error Contact with Administrator.";
            }
        };
        // viewPdfStatement = function () {
        // const fileTransfer: FileTransferObject = this.transfer.create();
        // const url = 'http://www.africau.edu/images/default/sample.pdf';
        // fileTransfer.download(url, this.file.dataDirectory + 'statement.pdf').then((entry) => {
        //   alert('download complete: ' + entry.toURL());
        // }, (error) => {
        //   // handle error
        // });
        // let downloadURL = 'http://www.africau.edu/images/default/sample.pdf';
        // let filePath = this.file.dataDirectory;
        // alert(filePath);
        // const transfer = this.transfer.create();
        // alert("transfer");
        // transfer.download(downloadURL, filePath+'statement.pdf').then(entry => {
        //   alert("In download");
        //   let url = entry.toURL();
        //   this.viewer.viewDocument(url, 'application/pdf',{});
        //   alert("complete");
        // });
        // this.downloadFile(encodeURI('https://www.africau.edu/images/default/sample.pdf'), 'Account Statement');//not working
        // this.downloadFile(encodeURI('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'), 'Account Statement');//working
        // this.downloadFile(encodeURI('https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf'), 'Account Statement');//working
        // this.downloadFile(encodeURI('https://www.pdfpdf.com/samples/Sample1.PDF'), 'Account Statement');//working
        // };
        // downloadFile = function (url: string, title: string) {
        //   const headers = {
        //     "Access-Control-Allow-Origin": "*",
        //     "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        //     "Access-Control-Allow-Headers": "X-PINGOTHER, Origin, X-Requested-With, Content-Type, Accept",
        //     "Access-Control-Max-Age": "300"
        //   };
        //
        //   let toast = this.toastCtrl.create({
        //     message: 'Your account statement is generating. Please wait until finish.',
        //     duration: 5000,
        //     showCloseButton: true,
        //     closeButtonText: 'OK',
        //     dismissOnPageChange: true
        //     //position : 'middle'
        //
        //   });
        //   toast.present();
        //
        //   this.fileTransfer = this.transfer.create();
        //   this.fileTransfer.download(url, this.file.dataDirectory + title + ".pdf", true, headers)
        //     .then(entry => {
        //       console.log("download complete: " + entry.toURL());
        //       this.fileOpener.open(entry.toURL(), "application/pdf")
        //         .then(() => console.log("File is opened"))
        //         .catch(e => console.log("Error opening file", e));
        //     });
        //
        // };
        this.downloadFromBase64 = function (data, title) {
            var _this = this;
            //Showing toast
            var toast = this.toastCtrl.create({
                message: 'Your account statement is generating. Please wait until finish.',
                duration: 5000,
                showCloseButton: true,
                closeButtonText: 'OK',
                dismissOnPageChange: true
                //position : 'middle'
            });
            toast.present();
            var downloadPDF = data;
            fetch('data:application/pdf;base64,' + downloadPDF, {
                method: "GET"
            }).then(function (res) { return res.blob(); }).then(function (blob) {
                _this.file.writeFile(_this.file.externalApplicationStorageDirectory, title + '.pdf', blob, { replace: true }).then(function (res) {
                    _this.fileOpener.open(res.toInternalURL(), 'application/pdf').then(function (res) {
                    }).catch(function (err) {
                        // console.log("open error")
                    });
                }).catch(function (err) {
                    // console.log("save error")
                });
            }).catch(function (err) {
                // console.log("error")
            });
        };
        this.accountNo = this.navParams.get("accountNo");
        this.isDownloadChecked = false;
        this.toDate = new Date();
        this.fromDate = new Date();
        this.fromDate.setTime(this.toDate.getTime() - 7 * 24 * 60 * 60 * 1000);
        this.fromDate.toISOString();
        this.maxDate = new Date();
        this.minDate = new Date();
        this.maxDateToDate = new Date();
        this.minDate.setFullYear(this.maxDate.getFullYear() - 10);
        this.minDate.toISOString();
        this.maxDateToDate.setTime(this.maxDate.getTime() + 30 * 24 * 60 * 60 * 1000);
        this.maxDateToDate.toISOString();
    }
    // createAndDownload=function (link: string, title: string) {
    //   let path = '';
    //   let dir_name = 'Download'; // directory to download - you can also create new directory
    //   let file_name = title+'.pdf'; //any file name you like
    //
    //   const fTransfer: FileTransferObject = this.transfer.create();
    //   let result = this.file.createDir(this.file.externalRootDirectory, dir_name, true);
    //   result.then((resp) => {
    //     path = resp.toURL();
    //     console.log(path);
    //     fTransfer.download(link, path + file_name).then((entry) => {
    //       console.log('download complete: ' + entry.toURL());
    //     }, (error) => {
    //       console.log(error)
    //     });
    //   }, (err) => {
    //     console.log('error on creating path : ' + err);
    //   });
    // };
    AccountStatement02Page.prototype.ionViewDidLoad = function () {
        // console.log('ionViewDidLoad AccountStatement02Page');
    };
    AccountStatement02Page = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({
            selector: 'page-account-statement02',template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\account-statement02\account-statement02.html"*/'<ion-header>\n  <ion-navbar>\n    <button ion-button menuToggle>\n      <ion-icon name="menu"></ion-icon>\n    </button>\n    <ion-title text-center>Account Statement</ion-title>\n  </ion-navbar>\n</ion-header>\n\n\n<ion-content>\n\n  <div class="item item-divider item-text-wrap regular-font" style="color: red" *ngIf="accStmntError02">\n    {{accStmntError02}}\n  </div>\n\n  <ion-list>\n\n    <div class="row item regular-font">\n\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>Account No : </strong>\n      </div>\n      <div col col-7>\n        {{accountNo}}\n      </div>\n\n    </div>\n\n\n    <div class="row item regular-font">\n\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>From Date : </strong>\n      </div>\n      <div col col-7>\n         <span ion-datepicker [(value)]="fromDate" [max]="maxDate" [min]="minDate" clear class="ScheduleDate">\n		    <span> <ion-icon name="clipboard" icon-left></ion-icon> {{fromDate | date:"dd/MM/yyyy"}} </span>\n	      </span>\n      </div>\n\n    </div>\n\n    <div class="row item regular-font">\n\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>To Date : </strong>\n      </div>\n      <div col col-7>\n         <span ion-datepicker [(value)]="toDate" [max]="maxDateToDate" [min]="minDate" class="ScheduleDate">\n		     <span><ion-icon name="clipboard" icon-left></ion-icon> {{toDate |  date:"dd/MM/yyyy"}}  </span>\n	      </span>\n      </div>\n    </div>\n\n    <!--<div class="row item regular-font">-->\n\n    <!--<div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">-->\n    <!--<ion-checkbox color="ibblCustom" [(ngModel)]="isDownloadChecked" name="isDownloadChecked"></ion-checkbox>-->\n    <!--</div>-->\n    <!--<div col col-7 style="text-align: left">-->\n    <!--<ion-label class="regular-font" style="padding-left: 20px">Download Statement</ion-label>-->\n    <!--</span>-->\n    <!--</div>-->\n    <!--</div>-->\n\n    <div class="row item regular-font">\n      <div col col-5 class="item-text-wrap item-divider regular-font" style="text-align: right;">\n        <strong>Download Statement ?</strong>\n      </div>\n\n      <div col col-7>\n        <ion-toggle col col-7 item-start [(ngModel)]="isDownloadChecked" style="text-align: left"\n                    name="isDownloadChecked" color="ibblCustom"></ion-toggle>\n      </div>\n    </div>\n\n\n    <button class="button button-green button-block " (click)="viewStatement02Action(fromDate,toDate,isDownloadChecked)"\n            tabindex="2">\n      Submit\n    </button>\n\n  </ion-list>\n\n</ion-content>\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\pages\account-statement02\account-statement02.html"*/,
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["k" /* NavController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["l" /* NavParams */],
            __WEBPACK_IMPORTED_MODULE_2__providers_token_service_token_service__["a" /* TokenServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_4__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_7__providers_account_service_account_service__["a" /* AccountServiceProvider */],
            __WEBPACK_IMPORTED_MODULE_6__ionic_native_date_picker__["a" /* DatePicker */],
            __WEBPACK_IMPORTED_MODULE_8__ionic_native_document_viewer__["a" /* DocumentViewer */],
            __WEBPACK_IMPORTED_MODULE_11__ionic_native_file_opener__["a" /* FileOpener */],
            __WEBPACK_IMPORTED_MODULE_10__ionic_native_file_transfer__["a" /* FileTransfer */],
            __WEBPACK_IMPORTED_MODULE_9__ionic_native_file__["a" /* File */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["n" /* ToastController */]])
    ], AccountStatement02Page);
    return AccountStatement02Page;
}());

//# sourceMappingURL=account-statement02.js.map

/***/ })

});
//# sourceMappingURL=101.js.map