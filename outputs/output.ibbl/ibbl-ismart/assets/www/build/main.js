webpackJsonp([103],{

/***/ 127:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MaskTokenProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


/*
  Generated class for the MaskTokenProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var MaskTokenProvider = (function () {
    function MaskTokenProvider(http) {
        this.http = http;
        this.getMaskVal = function (plainText) {
            var length = plainText.length;
            var maskValue = plainText.substring(length - 4, length) + plainText.substr(0, length - 4);
            //$log.info("Value Before Masking : "+plainText);
            //$log.info("Value After Masking : "+maskValue);
            return maskValue;
        };
        this.getUnMaskVal = function (maskValue) {
            var length = maskValue.length;
            var plainText = maskValue.substring(4, length) + maskValue.substr(0, 4);
            //$log.info("Value Before UnMasking : "+maskValue);
            //$log.info("Value After UnMasking : "+plainText);
            return plainText;
        };
        this.getDeviceID = function () {
            var date = new Date();
            var uuid = Math.floor(Math.random() * 900000000000) + 100000000000;
            var millSec = date.getMilliseconds();
            //Date format was 'yyyyMMddHHmmss'
            var today = date.getFullYear().toString() + (date.getMonth() + 1).toString() +
                date.getDate().toString() + date.getHours().toString() + date.getMinutes().toString() +
                date.getMinutes().toString();
            return uuid.toString() + today + millSec;
        };
        // console.log('Hello MaskTokenProvider Provider');
    }
    MaskTokenProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */]])
    ], MaskTokenProvider);
    return MaskTokenProvider;
}());

//# sourceMappingURL=mask-token.js.map

/***/ }),

/***/ 13:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ConfigProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ionic_native_diagnostic__ = __webpack_require__(68);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var ConfigProvider = (function () {
    function ConfigProvider(http, diagnostic) {
        this.http = http;
        this.diagnostic = diagnostic;
        this.iSmartVersion = "4.4.5";
        this.gpsCheckEnabled = true;
        this.internetCheckEnabled = true;
        this.mapZoomingMultiple = 15;
        this.mapZoomingSingle = 15;
        this.noOfLocationNearestMe = 10;
        this.googleAnalyticTrackViewID = "UA-76324512-1";
        this.sessionExpireTimeInSecond = 300;
        this.receiverTypeCard = "CRD";
        this.receiverTypeAccount = "ACC";
        this.transferTypeNPSB = "IBFT";
        this.getIBankWSUrl = function () {
            return 'https://ibankws.islamibankbd.com/';
            // return 'https://10.190.43.90:8998/iBankWS/';
        };
        this.getProfileCurrentStatusBaseUrl = function () {
            return 'https://ibankws.islamibankbd.com/ibblLocation/services/';
            // return 'https://10.190.43.90:8998/iSmartMWare/services/';
        };
        this.getLocationBaseUrl = function () {
            return 'https://ibankws.islamibankbd.com/ibblLocation/services/';
            // return 'https://10.190.43.90:8998/ibblLocation/services/';
        };
        this.getResetPasswordBaseUrl = function () {
            return 'https://ibankws.islamibankbd.com/ibblLocation/services/';
            // return 'https://10.190.43.90:8998/ibblLocation/services/';
        };
        this.getRegistrationURL = function () {
            return 'https://ibblportal.islamibankbd.com/instrucRegistration.do';
        };
        this.getRemittanceBaseUrl = function () {
            return 'https://ibankws.islamibankbd.com/ibblLocation/services/';
            // return 'https://10.190.43.90:8998/iSmartMWare/services/';
        };
        this.getLoadingSpinner = function () {
            return 'bubbles';
        };
    }
    ConfigProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */], __WEBPACK_IMPORTED_MODULE_2__ionic_native_diagnostic__["a" /* Diagnostic */]])
    ], ConfigProvider);
    return ConfigProvider;
}());

//# sourceMappingURL=config.js.map

/***/ }),

/***/ 137:
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncatched exception popping up in devtools
	return Promise.resolve().then(function() {
		throw new Error("Cannot find module '" + req + "'.");
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = 137;

/***/ }),

/***/ 180:
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"../pages/account-statement01/account-statement01.module": [
		402,
		102
	],
	"../pages/account-statement02/account-statement02.module": [
		401,
		101
	],
	"../pages/account-statement03/account-statement03.module": [
		403,
		100
	],
	"../pages/add-credit-account-other-bank01/add-credit-account-other-bank01.module": [
		405,
		99
	],
	"../pages/add-credit-account-other-bank02/add-credit-account-other-bank02.module": [
		404,
		98
	],
	"../pages/add-credit-account-other-bank03/add-credit-account-other-bank03.module": [
		406,
		97
	],
	"../pages/add-credit-account01/add-credit-account01.module": [
		408,
		96
	],
	"../pages/add-credit-account02/add-credit-account02.module": [
		409,
		95
	],
	"../pages/add-credit-account03/add-credit-account03.module": [
		407,
		94
	],
	"../pages/add-to-favorite01/add-to-favorite01.module": [
		411,
		93
	],
	"../pages/add-to-favorite02/add-to-favorite02.module": [
		410,
		92
	],
	"../pages/balance-enquiry01/balance-enquiry01.module": [
		412,
		91
	],
	"../pages/balance-enquiry02/balance-enquiry02.module": [
		415,
		90
	],
	"../pages/cash-by-code-add-beneficiary01/cash-by-code-add-beneficiary01.module": [
		414,
		89
	],
	"../pages/cash-by-code-add-beneficiary02/cash-by-code-add-beneficiary02.module": [
		413,
		88
	],
	"../pages/cash-by-code-beneficiary-selection/cash-by-code-beneficiary-selection.module": [
		417,
		87
	],
	"../pages/cash-by-code-history01/cash-by-code-history01.module": [
		416,
		86
	],
	"../pages/cash-by-code-history02/cash-by-code-history02.module": [
		420,
		85
	],
	"../pages/cash-by-code-manage-beneficiary01/cash-by-code-manage-beneficiary01.module": [
		418,
		84
	],
	"../pages/cash-by-code-withdraw01/cash-by-code-withdraw01.module": [
		419,
		83
	],
	"../pages/cash-by-code-withdraw02/cash-by-code-withdraw02.module": [
		421,
		82
	],
	"../pages/cash-by-code01/cash-by-code01.module": [
		422,
		81
	],
	"../pages/cash-by-code02/cash-by-code02.module": [
		432,
		80
	],
	"../pages/cash-by-code03/cash-by-code03.module": [
		423,
		79
	],
	"../pages/cash-by-code04/cash-by-code04.module": [
		424,
		78
	],
	"../pages/change-password01/change-password01.module": [
		425,
		77
	],
	"../pages/change-password02/change-password02.module": [
		426,
		76
	],
	"../pages/change-pin01/change-pin01.module": [
		428,
		75
	],
	"../pages/change-pin02/change-pin02.module": [
		427,
		74
	],
	"../pages/cheque-book-req-history01/cheque-book-req-history01.module": [
		430,
		73
	],
	"../pages/cheque-book-req-history02/cheque-book-req-history02.module": [
		429,
		72
	],
	"../pages/child-menu/child-menu.module": [
		433,
		71
	],
	"../pages/contact-list/contact-list.module": [
		434,
		70
	],
	"../pages/contact-us/contact-us.module": [
		431,
		69
	],
	"../pages/delete-credit-account-other-bank01/delete-credit-account-other-bank01.module": [
		435,
		68
	],
	"../pages/expire/expire.module": [
		437,
		67
	],
	"../pages/fund-transer-other-bank01/fund-transer-other-bank01.module": [
		438,
		66
	],
	"../pages/fund-transer-other-bank02/fund-transer-other-bank02.module": [
		436,
		65
	],
	"../pages/fund-transer-other-bank03/fund-transer-other-bank03.module": [
		440,
		64
	],
	"../pages/fund-transer-other-bank04/fund-transer-other-bank04.module": [
		441,
		63
	],
	"../pages/fund-transer-other-bank05/fund-transer-other-bank05.module": [
		439,
		62
	],
	"../pages/fund-transfer-other-bank-history01/fund-transfer-other-bank-history01.module": [
		442,
		61
	],
	"../pages/fund-transfer-other-bank-history02/fund-transfer-other-bank-history02.module": [
		444,
		60
	],
	"../pages/fund-transfer-other-bank-history03/fund-transfer-other-bank-history03.module": [
		443,
		59
	],
	"../pages/fund-transfer-other-bank-rec-list/fund-transfer-other-bank-rec-list.module": [
		445,
		58
	],
	"../pages/i-recharge-history01/i-recharge-history01.module": [
		446,
		57
	],
	"../pages/i-recharge-history02/i-recharge-history02.module": [
		450,
		56
	],
	"../pages/i-recharge01/i-recharge01.module": [
		447,
		55
	],
	"../pages/i-recharge02/i-recharge02.module": [
		449,
		54
	],
	"../pages/i-recharge03/i-recharge03.module": [
		448,
		53
	],
	"../pages/i-recharge04/i-recharge04.module": [
		451,
		52
	],
	"../pages/i-transfer-dest-account/i-transfer-dest-account.module": [
		454,
		51
	],
	"../pages/i-transfer-history01/i-transfer-history01.module": [
		452,
		50
	],
	"../pages/i-transfer-history02/i-transfer-history02.module": [
		453,
		49
	],
	"../pages/i-transfer01/i-transfer01.module": [
		457,
		48
	],
	"../pages/i-transfer02/i-transfer02.module": [
		455,
		47
	],
	"../pages/i-transfer03/i-transfer03.module": [
		456,
		46
	],
	"../pages/i-transfer04/i-transfer04.module": [
		458,
		45
	],
	"../pages/i-transfer05/i-transfer05.module": [
		459,
		44
	],
	"../pages/issue-cheque-book01/issue-cheque-book01.module": [
		460,
		43
	],
	"../pages/issue-cheque-book02/issue-cheque-book02.module": [
		462,
		42
	],
	"../pages/issue-cheque-book03/issue-cheque-book03.module": [
		461,
		41
	],
	"../pages/issue-cheque-book04/issue-cheque-book04.module": [
		463,
		40
	],
	"../pages/location-inner01/location-inner01.module": [
		464,
		39
	],
	"../pages/location-inner02/location-inner02.module": [
		466,
		38
	],
	"../pages/location-inner03/location-inner03.module": [
		465,
		37
	],
	"../pages/location-inner04/location-inner04.module": [
		467,
		36
	],
	"../pages/location-outer01/location-outer01.module": [
		470,
		35
	],
	"../pages/location-outer02/location-outer02.module": [
		468,
		34
	],
	"../pages/location-outer03/location-outer03.module": [
		469,
		33
	],
	"../pages/manage-credit-account01/manage-credit-account01.module": [
		473,
		32
	],
	"../pages/manage-credit-account02/manage-credit-account02.module": [
		471,
		31
	],
	"../pages/manage-ob-credit-account01/manage-ob-credit-account01.module": [
		472,
		30
	],
	"../pages/password-expire/password-expire.module": [
		474,
		29
	],
	"../pages/remittance-info01/remittance-info01.module": [
		475,
		28
	],
	"../pages/remittance-info02/remittance-info02.module": [
		476,
		27
	],
	"../pages/remittance-info03/remittance-info03.module": [
		477,
		26
	],
	"../pages/reset-password01/reset-password01.module": [
		480,
		25
	],
	"../pages/reset-password02/reset-password02.module": [
		479,
		24
	],
	"../pages/reset-password03/reset-password03.module": [
		478,
		23
	],
	"../pages/settings/settings.module": [
		482,
		22
	],
	"../pages/tx-error/tx-error.module": [
		481,
		21
	],
	"../pages/tx-summary01/tx-summary01.module": [
		483,
		20
	],
	"../pages/user-login01/user-login01.module": [
		484,
		19
	],
	"../pages/user-login02/user-login02.module": [
		485,
		18
	],
	"../pages/user-login03/user-login03.module": [
		486,
		17
	],
	"../pages/utility-bill-payment-history01/utility-bill-payment-history01.module": [
		488,
		16
	],
	"../pages/utility-bill-payment-history02/utility-bill-payment-history02.module": [
		487,
		15
	],
	"../pages/utilitybillcompanyselection01/utilitybillcompanyselection01.module": [
		489,
		14
	],
	"../pages/utilitybilloperationselection/utilitybilloperationselection.module": [
		490,
		13
	],
	"../pages/utilitybillpay01/utilitybillpay01.module": [
		491,
		12
	],
	"../pages/utilitybillpay02/utilitybillpay02.module": [
		492,
		11
	],
	"../pages/utilitybillpay03/utilitybillpay03.module": [
		493,
		10
	],
	"../pages/utilitybillpay04/utilitybillpay04.module": [
		494,
		9
	],
	"../pages/view-account-information01/view-account-information01.module": [
		496,
		8
	],
	"../pages/view-account-information02/view-account-information02.module": [
		497,
		7
	],
	"../pages/welcome/welcome.module": [
		495,
		6
	],
	"../pages/wimax-recharge-history01/wimax-recharge-history01.module": [
		498,
		5
	],
	"../pages/wimax-recharge-history02/wimax-recharge-history02.module": [
		499,
		4
	],
	"../pages/wimax-recharge01/wimax-recharge01.module": [
		500,
		3
	],
	"../pages/wimax-recharge02/wimax-recharge02.module": [
		501,
		2
	],
	"../pages/wimax-recharge03/wimax-recharge03.module": [
		502,
		1
	],
	"../pages/wimax-recharge04/wimax-recharge04.module": [
		503,
		0
	]
};
function webpackAsyncContext(req) {
	var ids = map[req];
	if(!ids)
		return Promise.reject(new Error("Cannot find module '" + req + "'."));
	return __webpack_require__.e(ids[1]).then(function() {
		return __webpack_require__(ids[0]);
	});
};
webpackAsyncContext.keys = function webpackAsyncContextKeys() {
	return Object.keys(map);
};
webpackAsyncContext.id = 180;
module.exports = webpackAsyncContext;

/***/ }),

/***/ 242:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export ConnectionStatusEnum */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return NetworkProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ionic_native_network__ = __webpack_require__(69);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var ConnectionStatusEnum;
(function (ConnectionStatusEnum) {
    ConnectionStatusEnum[ConnectionStatusEnum["Online"] = 0] = "Online";
    ConnectionStatusEnum[ConnectionStatusEnum["Offline"] = 1] = "Offline";
})(ConnectionStatusEnum || (ConnectionStatusEnum = {}));
var NetworkProvider = (function () {
    function NetworkProvider(alertCtrl, network, eventCtrl) {
        // console.log('Hello NetworkProvider.');
        this.alertCtrl = alertCtrl;
        this.network = network;
        this.eventCtrl = eventCtrl;
        this.previousStatus = ConnectionStatusEnum.Online;
    }
    NetworkProvider.prototype.initializeNetworkEvents = function () {
        var _this = this;
        this.network.onDisconnect().subscribe(function () {
            if (_this.previousStatus === ConnectionStatusEnum.Online) {
                _this.eventCtrl.publish('network:offline');
            }
            _this.previousStatus = ConnectionStatusEnum.Offline;
        });
        this.network.onConnect().subscribe(function () {
            if (_this.previousStatus === ConnectionStatusEnum.Offline) {
                _this.eventCtrl.publish('network:online');
            }
            _this.previousStatus = ConnectionStatusEnum.Online;
        });
    };
    NetworkProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_2__ionic_native_network__["a" /* Network */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["c" /* Events */]])
    ], NetworkProvider);
    return NetworkProvider;
}());

//# sourceMappingURL=network.js.map

/***/ }),

/***/ 245:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return TokenServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_add_operator_timeout__ = __webpack_require__(62);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_add_operator_timeout___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_rxjs_add_operator_timeout__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};







/*
  Generated class for the TokenServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var TokenServiceProvider = (function () {
    function TokenServiceProvider(httpClient, configLoader, localStorage, loadingCtrl, maskTokenUtil) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.localStorage = localStorage;
        this.loadingCtrl = loadingCtrl;
        this.maskTokenUtil = maskTokenUtil;
        this.tokenUrl = "";
        this.paramValue = "";
    }
    TokenServiceProvider.prototype.getRefreshToken = function (userId, PassWd) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var loading;
            return __generator(this, function (_a) {
                PassWd = encodeURIComponent(PassWd);
                this.tokenUrl = this.configLoader.getIBankWSUrl() + "oauth/token?";
                this.paramValue = "client_id=ibankws-trusted-client&grant_type=password&username=" + userId + "&password=" + PassWd;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(_this.tokenUrl + _this.paramValue).timeout(20000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            _this.errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(_this.errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////////////////////GET NEW REFRESH TOKEN///////////////////////////////////////////
    TokenServiceProvider.prototype.getNewToken = function (refreshToken) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var newTokenGenUrl, newParamValue, loading;
            return __generator(this, function (_a) {
                newTokenGenUrl = this.configLoader.getIBankWSUrl() + "oauth/token?";
                newParamValue = "client_id=ibankws-trusted-client&grant_type=refresh_token&refresh_token=" + refreshToken;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(newTokenGenUrl + newParamValue).timeout(20000).subscribe(function (data) {
                            // alert(JSON.stringify(data));
                            resolve(data);
                            //Setting new Value in storage
                            _this.updateDatabaseValue(data);
                            loading.dismiss();
                        }, function (err) {
                            _this.errorResponse = {
                                message: err.statusText,
                                status: 0 //Status 0 means token generation error. then it will forward to Session expire page
                            };
                            resolve(_this.errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    TokenServiceProvider.prototype.updateDatabaseValue = function (data) {
        var dbVal = this.localStorage.retrieveFromStorage('appData');
        dbVal.token = this.maskTokenUtil.getMaskVal(data.value);
        dbVal.refreshToken = this.maskTokenUtil.getMaskVal(data.refreshToken.value);
        this.localStorage.insertIntoStorage('appData', dbVal);
    };
    TokenServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_4__local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_5_ionic_angular__["h" /* LoadingController */],
            __WEBPACK_IMPORTED_MODULE_3__mask_token_mask_token__["a" /* MaskTokenProvider */]])
    ], TokenServiceProvider);
    return TokenServiceProvider;
}());

//# sourceMappingURL=token-service.js.map

/***/ }),

/***/ 246:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return GoogleAnalyticsProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ionic_native_flurry_analytics__ = __webpack_require__(192);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__crypto_param_util_crypto_param_util__ = __webpack_require__(52);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var GoogleAnalyticsProvider = (function () {
    function GoogleAnalyticsProvider(http, config, flurryAnalytics, storage, cryptoUtil) {
        this.http = http;
        this.config = config;
        this.flurryAnalytics = flurryAnalytics;
        this.storage = storage;
        this.cryptoUtil = cryptoUtil;
        // startTrackerWithId = function (viewName) {
        //   this.ga.startTrackerWithId('UA-76324512-1', 30)
        //     .then(() => {
        //
        //       this.ga.setAppVersion(this.config.iSmartVersion);
        //       this.ga.trackView(viewName)
        //         .then(() => {
        //           // console.log('Success');
        //         })
        //         .catch((e) => {
        //           // console.log("Faild" + e)
        //         });
        //
        //       this.ga.debugMode();
        //       this.ga.setAllowIDFACollection(true);
        //     })
        //     .catch(e => console.log('Error starting GoogleAnalytics', e));
        // };
        this.startTrackerWithId = function (viewName) {
            var fa = this.flurryAnalytics.create(this.options);
            fa.logEvent(viewName)
                .then(function () { return console.log('Logged an event!'); })
                .catch(function (e) { return console.log('Error logging the event', e); });
        };
        var appData = this.storage.retrieveFromStorage("appData");
        var userID = this.cryptoUtil.getDecryptVal(appData.userId);
        this.options = {
            appKey: 'V46D8CW4RWXSRDC5BBCJ',
            reportSessionsOnClose: true,
            version: this.config.iSmartVersion,
            enableLogging: true,
            userId: userID
        };
    }
    GoogleAnalyticsProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3__ionic_native_flurry_analytics__["a" /* FlurryAnalytics */],
            __WEBPACK_IMPORTED_MODULE_4__local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_5__crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */]])
    ], GoogleAnalyticsProvider);
    return GoogleAnalyticsProvider;
}());

//# sourceMappingURL=google-analytics.js.map

/***/ }),

/***/ 247:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ITransferServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the ITransferServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var ITransferServiceProvider = (function () {
    function ITransferServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello ITransferServiceProvider Provider');
    }
    //FUNCTION FOR GET SOURCE  DESTINATION AND PURPOSE LIST
    ITransferServiceProvider.prototype.fetchDestAndPurposeList = function (token, userId, appId, srAccountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchDestAndPurposeListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchDestAndPurposeListServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/getDestAccList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&sourceAccount=" + srAccountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchDestAndPurposeListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GET SOURCE  DESTINATION AND PURPOSE LIST
    ITransferServiceProvider.prototype.fetchCreditAccountList = function (token, userId, appId, srAccountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchCreditAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchCreditAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/getCreditAccountList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&sourceAccount=" + srAccountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchCreditAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR INIT FUND TRANSFER
    ITransferServiceProvider.prototype.initFundTransfer = function (token, userId, appId, sourceAccount, destAccount, amount, note, purpose) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var initFundTransferServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                initFundTransferServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/initFundTransfer?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId +
                    "&sourceAccount=" + sourceAccount + "&destAccount=" + destAccount + "&amount=" + amount + "&note=" + note + "&purpose=" + purpose;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(initFundTransferServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE OTP FOR FUND TRANSFER
    ITransferServiceProvider.prototype.genOtpForFundTransfer = function (token, userId, appId, transferId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var genOtpForFundTransferServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                genOtpForFundTransferServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/localTransfer2FactorAuth?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferId=" + transferId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(genOtpForFundTransferServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE OTP FOR FUND TRANSFER
    ITransferServiceProvider.prototype.confirmFundTransfer = function (token, userId, appId, transferId, tpin, otp) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var confirmFundTransferServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                confirmFundTransferServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/confirmLocalFundTransfer?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferId=" + transferId + "&tpin=" + tpin + "&otp=" + otp;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(confirmFundTransferServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE iTRANSFER HISTORY
    ITransferServiceProvider.prototype.iTransferHistory = function (token, userId, appId, fromDate, toDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var iTransferHistoryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                iTransferHistoryServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/getLocalTransferRecords?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + fromDate + "&endDate=" + toDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(iTransferHistoryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR ADD CREDIT ACCOUNT
    ITransferServiceProvider.prototype.addCreditAccount = function (token, userId, appId, crAccount, is2Factor) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var addCreditAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                addCreditAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/addCreditAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&crAccount=" + crAccount + "&is2Factor=" + is2Factor;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(addCreditAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR CONFIRM ADD CREDIT ACCOUNT
    ITransferServiceProvider.prototype.addCreditAccountConfirm = function (token, userId, appId, crAccount, otp) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var addCreditAccountConfirmServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                addCreditAccountConfirmServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/confirmAddCreditAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&crAccount=" + crAccount + "&verificationCode=" + otp;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(addCreditAccountConfirmServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR DELETE CREDIT ACCOUNT
    ITransferServiceProvider.prototype.deleteCreditAccount = function (token, userId, appId, crAccount) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var deleteCreditAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                deleteCreditAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/localFundTransfer/removeCreditAccountSubscription?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&creditAccountNo=" + crAccount;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(deleteCreditAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ITransferServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], ITransferServiceProvider);
    return ITransferServiceProvider;
}());

//# sourceMappingURL=i-transfer-service.js.map

/***/ }),

/***/ 248:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FundTransferOtherBankProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the FundTransferOtherBankProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var FundTransferOtherBankProvider = (function () {
    function FundTransferOtherBankProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        console.log('Hello FundTransferOtherBankProvider Provider');
    }
    //FUNCTION FOR GET Fund Transfer Type
    FundTransferOtherBankProvider.prototype.fetchTransferTypeList = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchTransferTypeListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchTransferTypeListServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/getAppFtObServices?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchTransferTypeListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GET Destination Account List
    FundTransferOtherBankProvider.prototype.fetchDestinationAccountList = function (token, userId, appId, sourceAccount, destType, transferService) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchDestinationAccountListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchDestinationAccountListServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/getDestAccList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&sourceAccount=" + sourceAccount + "&destType=" + destType + "&transferService=" + transferService;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchDestinationAccountListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Init fund transfer request
    FundTransferOtherBankProvider.prototype.initOtherBankTransfer = function (token, userId, appId, destType, transferService, sourceAccount, amount, note, purpose, rcvBenficiaryId, exDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var initOtherBankTransferServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                initOtherBankTransferServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/initObFundTransfer?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&destType=" + destType + "&transferService=" + transferService
                    + "&sourceAccount=" + sourceAccount + "&amount=" + amount + "&note=" + note + "&purpose=" + purpose + "&rcvBenficiaryId=" + rcvBenficiaryId + "&executionDate=" + exDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(initOtherBankTransferServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Confirm fund transfer request
    FundTransferOtherBankProvider.prototype.confirmOtherBankTransfer = function (token, userId, appId, transferId, tpin, otp) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var confirmOtherBankTransferServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                confirmOtherBankTransferServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/confirmObFundTransfer?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferId=" + transferId + "&tpin=" + tpin + "&otp=" + otp;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(confirmOtherBankTransferServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Get fund transfer History
    FundTransferOtherBankProvider.prototype.getObFundTransferRecords = function (token, userId, appId, startDate, endDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var funTransferOtherBankServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                funTransferOtherBankServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/getObFundTransferRecords?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + startDate + "&endDate=" + endDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(funTransferOtherBankServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Get fund transfer Record Details
    //previous url getObFundTransferDetail
    FundTransferOtherBankProvider.prototype.getObFundTransferDetail = function (token, userId, appId, appTransId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var getObFundTransferDetailServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                getObFundTransferDetailServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/getObFundTransferDetailWithLabel?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&appTransId=" + appTransId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(getObFundTransferDetailServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Get fund transfer Other Bank Beneficiary List
    FundTransferOtherBankProvider.prototype.getObFtBeneficiaryAccountList = function (token, userId, appId, transferService, destType) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var ObFtBeneficiaryAccountListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                ObFtBeneficiaryAccountListServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/getObFtBeneficiaryAccountList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferService=" + transferService + "&destType=" + destType;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(ObFtBeneficiaryAccountListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Remove Other bank Transfer Beneficiary Account
    FundTransferOtherBankProvider.prototype.removeObFtBeneficiaryAccount = function (token, userId, appId, beneficiaryId, transferService, destType) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var removeObFtBeneficiaryAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                removeObFtBeneficiaryAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/removeObFtBeneficiaryAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&beneficiaryId=" + beneficiaryId + "&transferService=" + transferService + "&destType=" + destType;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(removeObFtBeneficiaryAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR fetch bank list
    FundTransferOtherBankProvider.prototype.fetchBankList = function (token, userId, appId, transferService, destType) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchBankListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchBankListServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/fetchBankList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferService=" + transferService + "&destType=" + destType;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchBankListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Init add Beneficiary Account
    FundTransferOtherBankProvider.prototype.initAddObFtBeneficiaryAccount = function (token, userId, appId, transferService, destType, rcvRoute, rcvAccount, rcvName, is2Factor) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var initAddObFtBeneficiaryAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                initAddObFtBeneficiaryAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/initAddObFtBeneficiaryAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferService=" + transferService + "&destType=" + destType +
                    "&rcvRoute=" + rcvRoute + "&rcvAccount=" + rcvAccount + "&rcvName=" + rcvName + "&is2Factor=" + is2Factor;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(initAddObFtBeneficiaryAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR Confirm add Beneficiary Account
    FundTransferOtherBankProvider.prototype.confirmAddObFtBeneficiaryAccount = function (token, userId, appId, transferService, destType, rcvRoute, rcvAccount, rcvName, verificationCode) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var confirmAddObFtBeneficiaryAccountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                confirmAddObFtBeneficiaryAccountServiceURL = this.configLoader.getIBankWSUrl() + "services/obFundTransfer/confirmAddObFtBeneficiaryAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferService=" + transferService + "&destType=" + destType +
                    "&rcvRoute=" + rcvRoute + "&rcvAccount=" + rcvAccount + "&rcvName=" + rcvName + "&verificationCode=" + verificationCode;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(confirmAddObFtBeneficiaryAccountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    FundTransferOtherBankProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], FundTransferOtherBankProvider);
    return FundTransferOtherBankProvider;
}());

//# sourceMappingURL=fund-transfer-other-bank.js.map

/***/ }),

/***/ 251:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AlertProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



/*
  Generated class for the AlertProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var AlertProvider = (function () {
    function AlertProvider(http, alertCtrl) {
        this.http = http;
        this.alertCtrl = alertCtrl;
        this.showAlert = function (alertHead, message, timeOut) {
            var radioAlert = this.alertCtrl.create();
            radioAlert.setTitle(alertHead);
            radioAlert.setCssClass("alertLogCss");
            radioAlert.setMessage("<center>" + message + "</center>");
            radioAlert.addButton({
                text: 'OK',
                handler: function (data) {
                }
            });
            radioAlert.present();
            setTimeout(function () {
                radioAlert.dismiss();
            }, timeOut);
        };
        // console.log('Hello AlertProvider Provider');
    }
    AlertProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["a" /* AlertController */]])
    ], AlertProvider);
    return AlertProvider;
}());

//# sourceMappingURL=alert.js.map

/***/ }),

/***/ 252:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthenticationProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout__ = __webpack_require__(62);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};





var AuthenticationProvider = (function () {
    function AuthenticationProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
    }
    AuthenticationProvider.prototype.changePassWd = function (token, userId, appId, passWd) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var passWdServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                passWdServiceURL = this.configLoader.getIBankWSUrl() + "services/iCellAppAuth/updatePasswordExpiry?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&newPasswd=" + passWd;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(passWdServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthenticationProvider.prototype.modifyOldPassWd = function (token, userId, appId, oldPassWd, newPassWd) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var passWdModifyServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                passWdModifyServiceURL = this.configLoader.getIBankWSUrl() + "services/iCellAppAuth/changePassword?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&oldpasswd=" + oldPassWd + "&newPasswd=" + newPassWd;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(passWdModifyServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthenticationProvider.prototype.initChangePin = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var initChangePinServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                initChangePinServiceURL = this.configLoader.getIBankWSUrl() + "services/iCellAppAuth/initChangeTpin?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(initChangePinServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthenticationProvider.prototype.changeTpin = function (token, userId, appId, authCode, oldTpin, newTpin) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var changeTpinServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                changeTpinServiceURL = this.configLoader.getIBankWSUrl() + "services/iCellAppAuth/changeTpin?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&authCode=" + authCode + "&oldTpin=" + oldTpin + "&newTpin=" + newTpin;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(changeTpinServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////FUNCTION FOR GET CAPTCHA IMAGE
    AuthenticationProvider.prototype.getCaptcha = function () {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, captchaUrl, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                headers = headers.append("Content-Type", "application/x-www-form-urlencoded");
                captchaUrl = this.configLoader.getResetPasswordBaseUrl() + "getCaptcha?";
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(captchaUrl, { headers: headers }).timeout(30000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////Init reset password
    AuthenticationProvider.prototype.initResetProfilePwdRequest = function (userId, accountNo, captchaId, captchaValue) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, paramValue, resetUrl, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                headers = headers.append("Content-Type", "application/x-www-form-urlencoded");
                paramValue = "userId=" + userId + "&accountNo=" + accountNo + "&captchaId=" + captchaId + "&captchaValue=" + captchaValue;
                resetUrl = this.configLoader.getResetPasswordBaseUrl() + "initResetProfilePwdRequest?";
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(resetUrl + paramValue, { headers: headers }).timeout(30000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////Confirm reset password
    AuthenticationProvider.prototype.confirmResetProfilePwdRequest = function (resetCode, pwd, initToken) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, paramValue, resetUrl, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                headers = headers.append("Content-Type", "application/x-www-form-urlencoded");
                paramValue = "resetCode=" + resetCode + "&pwd=" + pwd + "&initToken=" + initToken;
                resetUrl = this.configLoader.getResetPasswordBaseUrl() + "confirmResetProfilePwdRequest?";
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(resetUrl + paramValue, { headers: headers }).timeout(30000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////Init reset password
    AuthenticationProvider.prototype.checkProfileCurrentStatus = function (userId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, paramValue, profileUrl, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                headers = headers.append("Content-Type", "application/x-www-form-urlencoded");
                paramValue = "userId=" + userId;
                profileUrl = this.configLoader.getProfileCurrentStatusBaseUrl() + "initSignIn?";
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(profileUrl + paramValue, { headers: headers }).timeout(20000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthenticationProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_3__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["h" /* LoadingController */]])
    ], AuthenticationProvider);
    return AuthenticationProvider;
}());

//# sourceMappingURL=authentication.js.map

/***/ }),

/***/ 253:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocationProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout__ = __webpack_require__(62);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_rxjs_add_operator_timeout__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};





/*
  Generated class for the LocationProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var LocationProvider = (function () {
    function LocationProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        this.getLocationDescription = function (loc) {
            if (loc == 1) {
                return "Branch";
            }
            else if (loc == 2) {
                return "ATM";
            }
            else if (loc == 3) {
                return "Agent";
            }
            else {
                return "";
            }
        };
        // console.log('Hello LocationProvider Provider');
    }
    ////////////FUNCTION FOR FETCHING FAVORITE LIST
    LocationProvider.prototype.getActiveLocationByType = function (locationType) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, locationURL, paramValue, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                headers = headers.append("Content-Type", "application/x-www-form-urlencoded");
                locationURL = this.configLoader.getLocationBaseUrl() + "getActiveLocationByType?";
                paramValue = "locationType=" + locationType;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(locationURL + paramValue, { headers: headers }).timeout(35000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    LocationProvider.prototype.getDistanceFromLatLonInKm = function (lat1, lon1, lat2, lon2) {
        var R = 6371;
        var dLat = this.deg2rad(lat2 - lat1);
        var dLon = this.deg2rad(lon2 - lon1);
        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
            Math.cos(this.deg2rad(lat1)) * Math.cos(this.deg2rad(lat2)) *
                Math.sin(dLon / 2) * Math.sin(dLon / 2);
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        var d = R * c; // Distance in km
        return Number(d).toFixed(3);
        // return d;
    };
    LocationProvider.prototype.deg2rad = function (deg) {
        return deg * (Math.PI / 180);
    };
    LocationProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_3__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["h" /* LoadingController */]])
    ], LocationProvider);
    return LocationProvider;
}());

//# sourceMappingURL=location.js.map

/***/ }),

/***/ 254:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AccountServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the AccountServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var AccountServiceProvider = (function () {
    function AccountServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello AccountServiceProvider Provider');
    }
    AccountServiceProvider.prototype.getAccountInformation = function (token, userId, appId, accountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var accountServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                accountServiceURL = this.configLoader.getIBankWSUrl() + "services/accServices/accountInfo?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&accountNo=" + accountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(accountServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AccountServiceProvider.prototype.getAccBalanceInformation = function (token, userId, appId, accountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var accountBalanceServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                accountBalanceServiceURL = this.configLoader.getIBankWSUrl() + "services/accServices/balanceEnquiry?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&accountNo=" + accountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(accountBalanceServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AccountServiceProvider.prototype.getAccountStatement = function (token, userId, appId, accountNo, fromDate, toDate, docType) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var accountStmntServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                accountStmntServiceURL = this.configLoader.getIBankWSUrl() + "services/accServices/accountStatement?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&accountNo=" + accountNo + "&fromDate=" + fromDate + "&toDate=" + toDate + "&docType=" + docType;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(accountStmntServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AccountServiceProvider.prototype.getTxSummary = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var txSummaryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                txSummaryServiceURL = this.configLoader.getIBankWSUrl() + "services/accServices/accountTransSummary?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(txSummaryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AccountServiceProvider.prototype.getTxSummaryWithoutLoading = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var txSummaryServiceURL, paramValue;
            return __generator(this, function (_a) {
                txSummaryServiceURL = this.configLoader.getIBankWSUrl() + "services/accServices/accountTransSummary?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                return [2 /*return*/, new Promise(function (resolve) {
                        _this.httpClient.get(txSummaryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                        });
                    })];
            });
        });
    };
    AccountServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], AccountServiceProvider);
    return AccountServiceProvider;
}());

//# sourceMappingURL=account-service.js.map

/***/ }),

/***/ 255:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CashByCodeServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__config_config__ = __webpack_require__(13);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




var CashByCodeServiceProvider = (function () {
    function CashByCodeServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
    }
    //FUNCTION INIT CASH BY CODE SERVICE
    CashByCodeServiceProvider.prototype.initCashRemittance = function (token, userId, appId, sourceAccount, beneficiaryType, destAccount, beneficiaryName, nid, amount) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var initCashRemittanceServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                initCashRemittanceServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/initCashRemittance?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&sourceAccount=" + sourceAccount + "&beneficiaryType=" + beneficiaryType + "&destAccount=" + destAccount + "&beneficiaryName=" + beneficiaryName + "&nid=" + nid + "&amount=" + amount;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(initCashRemittanceServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION CONFIRM CASH BY CODE SERVICE
    CashByCodeServiceProvider.prototype.confirmCashRemittance = function (token, userId, appId, transferId, tpin, otp) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var confirmCashRemittanceServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                confirmCashRemittanceServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/confirmCashRemittance?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&transferId=" + transferId + "&tpin=" + tpin + "&otp=" + otp;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(confirmCashRemittanceServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FETCH CASH BY CODE HISTORY
    CashByCodeServiceProvider.prototype.getLocalTransferRecords = function (token, userId, appId, startDate, endDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var getLocalTransferRecordsServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                getLocalTransferRecordsServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/getLocalTransferRecords?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + startDate + "&endDate=" + endDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(getLocalTransferRecordsServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    CashByCodeServiceProvider.prototype.fetchCashByCodeBeneficiary = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchCashByCodeBeneficiaryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchCashByCodeBeneficiaryServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/getBeneficiaryList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchCashByCodeBeneficiaryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    CashByCodeServiceProvider.prototype.addCashByCodeBeneficiary = function (token, userId, appId, beneficiaryPhoneNo, beneficiaryName, nid) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var addCashByCodeBeneficiaryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                addCashByCodeBeneficiaryServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/addCreditAccount?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&beneficiaryPhoneNo=" + beneficiaryPhoneNo + "&beneficiaryName=" + beneficiaryName + "&nid=" + nid;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(addCashByCodeBeneficiaryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    CashByCodeServiceProvider.prototype.removeCashByCodeBeneficiary = function (token, userId, appId, beneficiaryPhoneNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var removeCashByCodeBeneficiaryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                removeCashByCodeBeneficiaryServiceURL = this.configLoader.getIBankWSUrl() + "services/cashRemittance/removeBeneficiary?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&beneficiaryPhoneNo=" + beneficiaryPhoneNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(removeCashByCodeBeneficiaryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    CashByCodeServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_3__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["h" /* LoadingController */]])
    ], CashByCodeServiceProvider);
    return CashByCodeServiceProvider;
}());

//# sourceMappingURL=cash-by-code-service.js.map

/***/ }),

/***/ 256:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UtilitybillpayProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the UtilitybillpayProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var UtilitybillpayProvider = (function () {
    function UtilitybillpayProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
    }
    UtilitybillpayProvider.prototype.getUtilityBillCompanyList = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var companyListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                companyListServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/getUtilityCompany?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(companyListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.getCompanyAssociationLabels = function (token, userId, appId, companyCode, regType, companyCategory) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var associationLabelServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                associationLabelServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/getCompanyAssociationLabels?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&companyCode=" + companyCode + "&regType=" + regType + "&companyCategory=" + companyCategory;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(associationLabelServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.makeCompanyAssociation = function (token, userId, appId, companyCode, regType, companyCategory, dynamicParams) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var associationLabelServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                associationLabelServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/utilityCompanyAssociation?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&companyCode=" + companyCode + "&regType=" + regType + "&companyCategory=" + companyCategory;
                paramValue = paramValue + dynamicParams;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(associationLabelServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.getRegisteredAccList = function (token, userId, appId, companyCode) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var regAccListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                regAccListServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/getUtilityBillPayAccInfos?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&companyCode=" + companyCode;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(regAccListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.getUtilityBillPayLabels = function (token, userId, appId, companyCode, debitAcc, companyCategory, isNewReg, billingAcc) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var utilityBillPayLabelsServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                utilityBillPayLabelsServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/getUtilityBillPayLabels?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&companyCode=" + companyCode + "&debitAcc=" + debitAcc + "&companyCategory=" + companyCategory + "&isNewReg=" + isNewReg + "&billingAcc=" + billingAcc;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(utilityBillPayLabelsServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.enqueueUtilityBill = function (token, userId, appId, companyCode, debitAcc, dynamicParams, isNewReg, tpin) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var enqueueUtilityBillPayServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                enqueueUtilityBillPayServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/enqueueUtilityBillPay?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&companyCode=" + companyCode + "&debitAcc=" + debitAcc + "&data=" + dynamicParams + "&isNewReg=" + isNewReg + "&tpin=" + tpin;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(enqueueUtilityBillPayServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider.prototype.PayUtilityBill = function (token, userId, appId, utilityServiceId, tpin, otp, isNewReg, companyData) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var PayUtilityBillServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                PayUtilityBillServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/utilityBillPay?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&utilityServiceId=" + utilityServiceId + "&tpin=" + tpin + "&otp=" + otp + "&isNewReg=" + isNewReg + "&companyBillData=" + companyData;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(PayUtilityBillServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE iRECHARGE HISTORY
    UtilitybillpayProvider.prototype.utilityBillPaymentHistory = function (token, userId, appId, fromDate, toDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var iRechargeHistoryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                iRechargeHistoryServiceURL = this.configLoader.getIBankWSUrl() + "services/utilityBillPayServices/getUtilityBillPayHistory?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + fromDate + "&endDate=" + toDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(iRechargeHistoryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE iRECHARGE HISTORY
    UtilitybillpayProvider.prototype.fetchCaptcha = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var iRechargeHistoryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                iRechargeHistoryServiceURL = this.configLoader.getIBankWSUrl() + "services/captchaGenerator/generateCaptcha?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(iRechargeHistoryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    UtilitybillpayProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], UtilitybillpayProvider);
    return UtilitybillpayProvider;
}());

//# sourceMappingURL=utilitybillpay.js.map

/***/ }),

/***/ 257:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RechargeServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




var RechargeServiceProvider = (function () {
    function RechargeServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello RechargeServiceProvider Provider');
    }
    //FUNCTION FOR VALIDATE TRIGGER AMOUNT
    RechargeServiceProvider.prototype.validateRechargeRequest = function (token, userId, appId, amount) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var validateRechargeRequestServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                validateRechargeRequestServiceURL = this.configLoader.getIBankWSUrl() + "services/rechargeServices/validateRechargeRequest?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&amount=" + amount;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(validateRechargeRequestServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR MOBILE RECHARGE
    RechargeServiceProvider.prototype.makeMobileRecharge = function (token, userId, appId, accountNo, mobileNo, packageType, amount, tPin, otp, rechargeOP) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var rechargeServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                rechargeServiceURL = this.configLoader.getIBankWSUrl() + "services/rechargeServices/requestRecharge?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&drAccount=" + accountNo + "&recipient=" + mobileNo + "&packageType=" + packageType + "&amount=" + amount + "&tpin=" + tPin + "&otp=" + otp + "&operatorId=" + rechargeOP;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        // console.log(rechargeServiceURL + paramValue);
                        _this.httpClient.get(rechargeServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////FUNCTION FOR FETCHING FAVORITE LIST
    RechargeServiceProvider.prototype.fetchFavoriteList = function (token, userId, appId) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var favoriteListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                favoriteListServiceURL = this.configLoader.getIBankWSUrl() + "services/rechargeServices/getFavourites?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(favoriteListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR ADD TO FAVORITE LIST
    RechargeServiceProvider.prototype.addToFavoriteList = function (token, userId, appId, mobileNo, packageType, name) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var favoriteListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                favoriteListServiceURL = this.configLoader.getIBankWSUrl() + "services/rechargeServices/addFavourite?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&cellNo=" + mobileNo + "&recipient=" + mobileNo + "&packageType=" + packageType + "&tag=" + name;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(favoriteListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR GENERATE iRECHARGE HISTORY
    RechargeServiceProvider.prototype.iRechargeHistory = function (token, userId, appId, fromDate, toDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var iRechargeHistoryServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                iRechargeHistoryServiceURL = this.configLoader.getIBankWSUrl() + "services/rechargeServices/getRechargeHistory?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + fromDate + "&endDate=" + toDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(iRechargeHistoryServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    RechargeServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], RechargeServiceProvider);
    return RechargeServiceProvider;
}());

//# sourceMappingURL=recharge-service.js.map

/***/ }),

/***/ 258:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ChequeBookServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the ChequeBookServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var ChequeBookServiceProvider = (function () {
    function ChequeBookServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
    }
    //FUNCTION FOR GET CHEQUE BOOL LEAF LIST
    ChequeBookServiceProvider.prototype.fetchChqBookLeafList = function (token, userId, appId, srAccountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var fetchChqBookLeafListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                fetchChqBookLeafListServiceURL = this.configLoader.getIBankWSUrl() + "services/chequeBookRequisition/getChqBookLeafList?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&selectedAccount=" + srAccountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(fetchChqBookLeafListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR VALIDATE TIPN
    ChequeBookServiceProvider.prototype.verifyTpinForChqBookRequisition = function (token, userId, appId, accNo, tpin) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var verifyTpinForChqBookRequisitionServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                verifyTpinForChqBookRequisitionServiceURL = this.configLoader.getIBankWSUrl() + "services/chequeBookRequisition/verifyTpinForChqBookRequisition?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&accNo=" + accNo + "&tpin=" + tpin;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(verifyTpinForChqBookRequisitionServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR ISSUE CHEQUE BOOK
    ChequeBookServiceProvider.prototype.issueChqBook = function (token, userId, appId, accNo, leafNo, otp) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var issueChqBookListServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                issueChqBookListServiceURL = this.configLoader.getIBankWSUrl() + "services/chequeBookRequisition/issueChqBookRequisition?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&accNo=" + accNo + "&leafNo=" + leafNo + "&otp=" + otp;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(issueChqBookListServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    //FUNCTION FOR FETCH CHEQUE BOOK REQ HISTORY
    ChequeBookServiceProvider.prototype.chqBookReqHist = function (token, userId, appId, fromDate, toDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var chqBookReqHistServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                chqBookReqHistServiceURL = this.configLoader.getIBankWSUrl() + "services/chequeBookRequisition/chqBookReqHist?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&fromDate=" + fromDate + "&toDate=" + toDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(chqBookReqHistServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ChequeBookServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], ChequeBookServiceProvider);
    return ChequeBookServiceProvider;
}());

//# sourceMappingURL=cheque-book-service.js.map

/***/ }),

/***/ 259:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the AuthServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var AuthServiceProvider = (function () {
    function AuthServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello AuthServiceProvider Provider');
    }
    AuthServiceProvider.prototype.generateOTP = function (userId, appId, token) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var otpGenURL, paramValue, loading;
            return __generator(this, function (_a) {
                otpGenURL = this.configLoader.getIBankWSUrl() + "services/appEnroll/initAppEnroll?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(otpGenURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthServiceProvider.prototype.validateOTP = function (userId, appId, token, otp, model, manufacturer) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var validateOTPUrl, paramValue, loading;
            return __generator(this, function (_a) {
                validateOTPUrl = this.configLoader.getIBankWSUrl() + "services/appEnroll/enqueueAppEnroll?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&otp=" + otp + "&model=" + model + "&manufacturer=" + manufacturer;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(validateOTPUrl + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthServiceProvider.prototype.validateActivation = function (userId, appId, token, activationCode) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var validateActURL, paramValue, loading;
            return __generator(this, function (_a) {
                validateActURL = this.configLoader.getIBankWSUrl() + "services/appEnroll/checkAppEnroll?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&activationCode=" + activationCode;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(validateActURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthServiceProvider.prototype.resendEmail = function (userId, appId, token) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var resendEmailURL, paramValue, loading;
            return __generator(this, function (_a) {
                resendEmailURL = this.configLoader.getIBankWSUrl() + "services/appEnroll/resendActivation?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(resendEmailURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    AuthServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], AuthServiceProvider);
    return AuthServiceProvider;
}());

//# sourceMappingURL=auth-service.js.map

/***/ }),

/***/ 260:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WimaxServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the WimaxServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var WimaxServiceProvider = (function () {
    function WimaxServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello WimaxServiceProvider Provider');
    }
    WimaxServiceProvider.prototype.makeWimaxRecharge = function (token, userId, appId, provider, packageType, tPin, wimaxUser, orderDetails, accountNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var makeWimaxRechargeServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                makeWimaxRechargeServiceURL = this.configLoader.getIBankWSUrl() + "services/wimaxPayServices/confirmWimaxPay?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&wimaxProvider=" + provider + "&wimaxPackageType=" + packageType + "&tpin=" + tPin + "&wimaxAccNo=" + wimaxUser + "&order=" + orderDetails + "&drAccount=" + accountNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(makeWimaxRechargeServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    WimaxServiceProvider.prototype.fetchOrderDetails = function (token, userId, appId, provider, packageType, accNo) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var orderDetailsServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                orderDetailsServiceURL = this.configLoader.getIBankWSUrl() + "services/wimaxPayServices/initWimaxPayRequest?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&wimaxProvider=" + provider + "&wimaxPackageType=" + packageType + "&drAccount=" + accNo;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(orderDetailsServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    WimaxServiceProvider.prototype.wimaxRechargeHistory = function (token, userId, appId, fromDate, toDate) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var WimaxRechargeHistServiceURL, paramValue, loading;
            return __generator(this, function (_a) {
                WimaxRechargeHistServiceURL = this.configLoader.getIBankWSUrl() + "services/wimaxPayServices/getWimaxRechargeHistory?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&startDate=" + fromDate + "&endDate=" + toDate;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(WimaxRechargeHistServiceURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    WimaxServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], WimaxServiceProvider);
    return WimaxServiceProvider;
}());

//# sourceMappingURL=wimax-service.js.map

/***/ }),

/***/ 263:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RemittanceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_add_operator_timeout__ = __webpack_require__(62);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_add_operator_timeout___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_rxjs_add_operator_timeout__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};






var RemittanceProvider = (function () {
    function RemittanceProvider(httpClient, configLoader, loadingCtrl, cryptoParam) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        this.cryptoParam = cryptoParam;
    }
    ////////////FUNCTION FOR FETCHING EXCHANGE HOUSE LIST
    RemittanceProvider.prototype.getExchangeHouseList = function (deviceID, providedHash) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, remittanceURL, paramValue, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                remittanceURL = this.configLoader.getRemittanceBaseUrl() + "IBankingExHouseListAction?";
                paramValue = "deviceID=" + deviceID + "&providedHash=" + providedHash;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(remittanceURL + paramValue, { headers: headers }).timeout(30000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    ////////////FUNCTION FOR FETCHING EXCHANGE HOUSE LIST
    RemittanceProvider.prototype.searchInfoByPinNumber = function (deviceID, exchangeHouse, pinNumber, hash) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var headers, remittanceURL, paramValue, loading;
            return __generator(this, function (_a) {
                headers = new __WEBPACK_IMPORTED_MODULE_0__angular_common_http__["c" /* HttpHeaders */]();
                headers = headers.append("Authorization", "Basic " + btoa("10c@t10nS3rv1c3:10c@t10nS3rv1c3P@$$"));
                remittanceURL = this.configLoader.getRemittanceBaseUrl() + "IBankingSearchFTTAction?";
                paramValue = "deviceID=" + deviceID + "&pinNumber=" + pinNumber + "&exchangeHouse=" + exchangeHouse + "&providedHash=" + hash;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner()
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(remittanceURL + paramValue, { headers: headers }).timeout(30000).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status,
                                statusCode: 404
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    RemittanceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */],
            __WEBPACK_IMPORTED_MODULE_4__crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */]])
    ], RemittanceProvider);
    return RemittanceProvider;
}());

//# sourceMappingURL=remittance.js.map

/***/ }),

/***/ 264:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ErrorMessageProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


/*
  Generated class for the ErrorMessageProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var ErrorMessageProvider = (function () {
    function ErrorMessageProvider(http) {
        this.http = http;
        this.getErrorMessage = function (errorCode) {
            if (errorCode == -1) {
                this.commonErrorMessage = "Can not Fetch Data from Server, Check your internet Connection.";
            }
            else if (errorCode == 400) {
                this.commonErrorMessage = "UserID or Password or Device info or all are incorrect.";
            }
            else if (errorCode == 500) {
                this.commonErrorMessage = "UserID or Password or Device info or all are incorrect.";
            }
            else if (errorCode == 0) {
                this.commonErrorMessage = "Service Unavailable, Please Try again later.";
                // this.commonErrorMessage = "UserID or Password or Device info or all are incorrect."
            }
            else if (errorCode == 999) {
                this.commonErrorMessage = "Service Unavailable, Please Try again later.";
            }
            else {
                this.commonErrorMessage = "Service Unavailable, Please Try again later.";
            }
            return this.commonErrorMessage;
        };
    }
    ErrorMessageProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */]])
    ], ErrorMessageProvider);
    return ErrorMessageProvider;
}());

//# sourceMappingURL=error-message.js.map

/***/ }),

/***/ 265:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MenuServiceProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_ionic_angular__ = __webpack_require__(9);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};




/*
  Generated class for the MenuServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var MenuServiceProvider = (function () {
    function MenuServiceProvider(httpClient, configLoader, loadingCtrl) {
        this.httpClient = httpClient;
        this.configLoader = configLoader;
        this.loadingCtrl = loadingCtrl;
        // console.log('Hello MenuServiceProvider Provider');
    }
    MenuServiceProvider.prototype.generateMenu = function (userId, appId, token, appVersion) {
        return __awaiter(this, void 0, void 0, function () {
            var _this = this;
            var menuGenURL, paramValue, loading;
            return __generator(this, function (_a) {
                menuGenURL = this.configLoader.getIBankWSUrl() + "services/iCellAppAuth/buildUserSession?";
                paramValue = "access_token=" + token + "&userId=" + userId + "&appId=" + appId + "&appVersion=" + appVersion;
                loading = this.loadingCtrl.create({
                    content: 'Please wait...',
                    spinner: this.configLoader.getLoadingSpinner(),
                    cssClass: 'my-class'
                });
                return [2 /*return*/, new Promise(function (resolve) {
                        loading.present();
                        _this.httpClient.get(menuGenURL + paramValue).subscribe(function (data) {
                            resolve(data);
                            loading.dismiss();
                        }, function (err) {
                            var errorResponse = {
                                message: err.statusText,
                                status: err.status
                            };
                            resolve(errorResponse);
                            loading.dismiss();
                        });
                    })];
            });
        });
    };
    MenuServiceProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */],
            __WEBPACK_IMPORTED_MODULE_2__config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3_ionic_angular__["h" /* LoadingController */]])
    ], MenuServiceProvider);
    return MenuServiceProvider;
}());

//# sourceMappingURL=menu-service.js.map

/***/ }),

/***/ 273:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser_dynamic__ = __webpack_require__(274);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__app_module__ = __webpack_require__(294);


// import {enableProdMode} from "@angular/core";
// enableProdMode();
Object(__WEBPACK_IMPORTED_MODULE_0__angular_platform_browser_dynamic__["a" /* platformBrowserDynamic */])().bootstrapModule(__WEBPACK_IMPORTED_MODULE_1__app_module__["a" /* AppModule */]);
//# sourceMappingURL=main.js.map

/***/ }),

/***/ 294:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__ = __webpack_require__(34);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ionic_storage__ = __webpack_require__(184);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__app_component__ = __webpack_require__(392);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__ionic_native_status_bar__ = __webpack_require__(241);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__ionic_native_device__ = __webpack_require__(272);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__ionic_native_app_version__ = __webpack_require__(396);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__providers_mask_token_mask_token__ = __webpack_require__(127);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__angular_forms__ = __webpack_require__(21);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__providers_token_service_token_service__ = __webpack_require__(245);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15__providers_error_message_error_message__ = __webpack_require__(264);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16__providers_auth_service_auth_service__ = __webpack_require__(259);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17__providers_menu_service_menu_service__ = __webpack_require__(265);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18__providers_recharge_service_recharge_service__ = __webpack_require__(257);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19_ion_datepicker__ = __webpack_require__(250);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20__ionic_native_date_picker__ = __webpack_require__(249);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21__providers_account_service_account_service__ = __webpack_require__(254);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_22__providers_wimax_service_wimax_service__ = __webpack_require__(260);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_23__providers_i_transfer_service_i_transfer_service__ = __webpack_require__(247);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_24__providers_authentication_authentication__ = __webpack_require__(252);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_25__ionic_native_diagnostic__ = __webpack_require__(68);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_26__providers_location_location__ = __webpack_require__(253);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_27__providers_alert_alert__ = __webpack_require__(251);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_28__ionic_native_google_maps__ = __webpack_require__(262);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_29__ionic_native_geolocation__ = __webpack_require__(261);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_30__ionic_native_in_app_browser__ = __webpack_require__(271);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_31__providers_network_network__ = __webpack_require__(242);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_32__ionic_native_network__ = __webpack_require__(69);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_33__ng_idle_core__ = __webpack_require__(53);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_34__ng_idle_keepalive__ = __webpack_require__(397);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_35__angular_http__ = __webpack_require__(399);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_36__ionic_native_google_analytics__ = __webpack_require__(400);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_37__providers_google_analytics_google_analytics__ = __webpack_require__(246);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_38__providers_fund_transfer_other_bank_fund_transfer_other_bank__ = __webpack_require__(248);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_39__ionic_native_contacts__ = __webpack_require__(270);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_40__providers_cheque_book_service_cheque_book_service__ = __webpack_require__(258);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_41__ionic_native_splash_screen__ = __webpack_require__(243);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_42__providers_remittance_remittance__ = __webpack_require__(263);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_43__providers_utilitybillpay_utilitybillpay__ = __webpack_require__(256);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_44__ionic_native_flurry_analytics__ = __webpack_require__(192);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_45__ionic_native_document_viewer__ = __webpack_require__(266);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_46__ionic_native_file__ = __webpack_require__(267);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_47__ionic_native_file_opener___ = __webpack_require__(269);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_48__ionic_native_file_transfer__ = __webpack_require__(268);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_49__providers_cash_by_code_service_cash_by_code_service__ = __webpack_require__(255);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};


















































var AppModule = (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["J" /* NgModule */])({
            declarations: [
                __WEBPACK_IMPORTED_MODULE_4__app_component__["a" /* MyApp */]
            ],
            imports: [
                __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__["a" /* BrowserModule */],
                __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["f" /* IonicModule */].forRoot(__WEBPACK_IMPORTED_MODULE_4__app_component__["a" /* MyApp */], {
                    backButtonText: '',
                    backButtonIcon: 'ios-arrow-back',
                    modalEnter: 'modal-slide-in',
                    modalLeave: 'modal-slide-out',
                    pageTransition: 'ios-transition',
                }, {
                    links: [
                        { loadChildren: '../pages/account-statement02/account-statement02.module#AccountStatement02PageModule', name: 'AccountStatement02Page', segment: 'account-statement02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/account-statement01/account-statement01.module#AccountStatement01PageModule', name: 'viewAccStatement01', segment: 'account-statement01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/account-statement03/account-statement03.module#AccountStatement03PageModule', name: 'AccountStatement03Page', segment: 'account-statement03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account-other-bank02/add-credit-account-other-bank02.module#AddCreditAccountOtherBank02PageModule', name: 'AddCreditAccountOtherBank02Page', segment: 'add-credit-account-other-bank02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account-other-bank01/add-credit-account-other-bank01.module#AddCreditAccountOtherBank01PageModule', name: 'AddCreditAccountOtherBank01Page', segment: 'add-credit-account-other-bank01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account-other-bank03/add-credit-account-other-bank03.module#AddCreditAccountOtherBank03PageModule', name: 'AddCreditAccountOtherBank03Page', segment: 'add-credit-account-other-bank03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account03/add-credit-account03.module#AddCreditAccount03PageModule', name: 'AddCreditAccount03Page', segment: 'add-credit-account03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account01/add-credit-account01.module#AddCreditAccount01PageModule', name: 'AddCreditAccount01Page', segment: 'add-credit-account01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-credit-account02/add-credit-account02.module#AddCreditAccount02PageModule', name: 'AddCreditAccount02Page', segment: 'add-credit-account02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-to-favorite02/add-to-favorite02.module#AddToFavorite02PageModule', name: 'AddToFavorite02Page', segment: 'add-to-favorite02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/add-to-favorite01/add-to-favorite01.module#AddToFavorite01PageModule', name: 'AddToFavorite01Page', segment: 'add-to-favorite01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/balance-enquiry01/balance-enquiry01.module#BalanceEnquiry01PageModule', name: 'viewBalanceInfo01', segment: 'balance-enquiry01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-add-beneficiary02/cash-by-code-add-beneficiary02.module#CashByCodeAddBeneficiary02PageModule', name: 'CashByCodeAddBeneficiary02Page', segment: 'cash-by-code-add-beneficiary02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-add-beneficiary01/cash-by-code-add-beneficiary01.module#CashByCodeAddBeneficiary01PageModule', name: 'CashByCodeAddBeneficiary01Page', segment: 'cash-by-code-add-beneficiary01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/balance-enquiry02/balance-enquiry02.module#BalanceEnquiry02PageModule', name: 'BalanceEnquiry02Page', segment: 'balance-enquiry02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-history01/cash-by-code-history01.module#CashByCodeHistory01PageModule', name: 'CashByCodeHistory01Page', segment: 'cash-by-code-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-beneficiary-selection/cash-by-code-beneficiary-selection.module#CashByCodeBeneficiarySelectionPageModule', name: 'CashByCodeBeneficiarySelectionPage', segment: 'cash-by-code-beneficiary-selection', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-manage-beneficiary01/cash-by-code-manage-beneficiary01.module#CashByCodeManageBeneficiary01PageModule', name: 'CashByCodeManageBeneficiary01Page', segment: 'cash-by-code-manage-beneficiary01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-withdraw01/cash-by-code-withdraw01.module#CashByCodeWithdraw01PageModule', name: 'CashByCodeWithdraw01Page', segment: 'cash-by-code-withdraw01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-history02/cash-by-code-history02.module#CashByCodeHistory02PageModule', name: 'CashByCodeHistory02Page', segment: 'cash-by-code-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code-withdraw02/cash-by-code-withdraw02.module#CashByCodeWithdraw02PageModule', name: 'CashByCodeWithdraw02Page', segment: 'cash-by-code-withdraw02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code01/cash-by-code01.module#CashByCode01PageModule', name: 'CashByCode01Page', segment: 'cash-by-code01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code03/cash-by-code03.module#CashByCode03PageModule', name: 'CashByCode03Page', segment: 'cash-by-code03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code04/cash-by-code04.module#CashByCode04PageModule', name: 'CashByCode04Page', segment: 'cash-by-code04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/change-password01/change-password01.module#ChangePassword01PageModule', name: 'ChangePassword01Page', segment: 'change-password01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/change-password02/change-password02.module#ChangePassword02PageModule', name: 'ChangePassword02Page', segment: 'change-password02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/change-pin02/change-pin02.module#ChangePin02PageModule', name: 'ChangePin02Page', segment: 'change-pin02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/change-pin01/change-pin01.module#ChangePin01PageModule', name: 'ChangePin01Page', segment: 'change-pin01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cheque-book-req-history02/cheque-book-req-history02.module#ChequeBookReqHistory02PageModule', name: 'ChequeBookReqHistory02Page', segment: 'cheque-book-req-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cheque-book-req-history01/cheque-book-req-history01.module#ChequeBookReqHistory01PageModule', name: 'ChequeBookReqHistory01Page', segment: 'cheque-book-req-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/contact-us/contact-us.module#ContactUsPageModule', name: 'ContactUsPage', segment: 'contact-us', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/cash-by-code02/cash-by-code02.module#CashByCode02PageModule', name: 'CashByCode02Page', segment: 'cash-by-code02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/child-menu/child-menu.module#ChildMenuPageModule', name: 'childMenu', segment: 'child-menu', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/contact-list/contact-list.module#ContactListPageModule', name: 'ContactListPage', segment: 'contact-list', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/delete-credit-account-other-bank01/delete-credit-account-other-bank01.module#DeleteCreditAccountOtherBank01PageModule', name: 'DeleteCreditAccountOtherBank01Page', segment: 'delete-credit-account-other-bank01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transer-other-bank02/fund-transer-other-bank02.module#FundTranserOtherBank02PageModule', name: 'FundTranserOtherBank02Page', segment: 'fund-transer-other-bank02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/expire/expire.module#ExpirePageModule', name: 'ExpirePage', segment: 'expire', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transer-other-bank01/fund-transer-other-bank01.module#FundTranserOtherBank01PageModule', name: 'fundTransferOtherBank01', segment: 'fund-transer-other-bank01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transer-other-bank05/fund-transer-other-bank05.module#FundTranserOtherBank05PageModule', name: 'FundTranserOtherBank05Page', segment: 'fund-transer-other-bank05', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transer-other-bank03/fund-transer-other-bank03.module#FundTranserOtherBank03PageModule', name: 'FundTranserOtherBank03Page', segment: 'fund-transer-other-bank03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transer-other-bank04/fund-transer-other-bank04.module#FundTranserOtherBank04PageModule', name: 'FundTranserOtherBank04Page', segment: 'fund-transer-other-bank04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transfer-other-bank-history01/fund-transfer-other-bank-history01.module#FundTransferOtherBankHistory01PageModule', name: 'FundTransferOtherBankHistory01Page', segment: 'fund-transfer-other-bank-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transfer-other-bank-history03/fund-transfer-other-bank-history03.module#FundTransferOtherBankHistory03PageModule', name: 'FundTransferOtherBankHistory03Page', segment: 'fund-transfer-other-bank-history03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transfer-other-bank-history02/fund-transfer-other-bank-history02.module#FundTransferOtherBankHistory02PageModule', name: 'FundTransferOtherBankHistory02Page', segment: 'fund-transfer-other-bank-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/fund-transfer-other-bank-rec-list/fund-transfer-other-bank-rec-list.module#FundTransferOtherBankRecListPageModule', name: 'FundTransferOtherBankRecListPage', segment: 'fund-transfer-other-bank-rec-list', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge-history01/i-recharge-history01.module#IRechargeHistory01PageModule', name: 'IRechargeHistory01Page', segment: 'i-recharge-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge01/i-recharge01.module#IRecharge01PageModule', name: 'rechargeMobile01', segment: 'i-recharge01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge03/i-recharge03.module#IRecharge03PageModule', name: 'IRecharge03Page', segment: 'i-recharge03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge02/i-recharge02.module#IRecharge02PageModule', name: 'IRecharge02Page', segment: 'i-recharge02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge-history02/i-recharge-history02.module#IRechargeHistory02PageModule', name: 'IRechargeHistory02Page', segment: 'i-recharge-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-recharge04/i-recharge04.module#IRecharge04PageModule', name: 'IRecharge04Page', segment: 'i-recharge04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer-history01/i-transfer-history01.module#ITransferHistory01PageModule', name: 'ITransferHistory01Page', segment: 'i-transfer-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer-history02/i-transfer-history02.module#ITransferHistory02PageModule', name: 'ITransferHistory02Page', segment: 'i-transfer-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer-dest-account/i-transfer-dest-account.module#ITransferDestAccountPageModule', name: 'ITransferDestAccountPage', segment: 'i-transfer-dest-account', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer02/i-transfer02.module#ITransfer02PageModule', name: 'ITransfer02Page', segment: 'i-transfer02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer03/i-transfer03.module#ITransfer03PageModule', name: 'ITransfer03Page', segment: 'i-transfer03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer01/i-transfer01.module#ITransfer01PageModule', name: 'iTransfer01', segment: 'i-transfer01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer04/i-transfer04.module#ITransfer04PageModule', name: 'ITransfer04Page', segment: 'i-transfer04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/i-transfer05/i-transfer05.module#ITransfer05PageModule', name: 'ITransfer05Page', segment: 'i-transfer05', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/issue-cheque-book01/issue-cheque-book01.module#IssueChequeBook01PageModule', name: 'issueChequeBook01', segment: 'issue-cheque-book01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/issue-cheque-book03/issue-cheque-book03.module#IssueChequeBook03PageModule', name: 'IssueChequeBook03Page', segment: 'issue-cheque-book03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/issue-cheque-book02/issue-cheque-book02.module#IssueChequeBook02PageModule', name: 'IssueChequeBook02Page', segment: 'issue-cheque-book02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/issue-cheque-book04/issue-cheque-book04.module#IssueChequeBook04PageModule', name: 'IssueChequeBook04Page', segment: 'issue-cheque-book04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-inner01/location-inner01.module#LocationInner01PageModule', name: 'LocationInner01Page', segment: 'location-inner01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-inner03/location-inner03.module#LocationInner03PageModule', name: 'LocationInner03Page', segment: 'location-inner03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-inner02/location-inner02.module#LocationInner02PageModule', name: 'LocationInner02Page', segment: 'location-inner02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-inner04/location-inner04.module#LocationInner04PageModule', name: 'LocationInner04Page', segment: 'location-inner04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-outer02/location-outer02.module#LocationOuter02PageModule', name: 'LocationOuter02Page', segment: 'location-outer02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-outer03/location-outer03.module#LocationOuter03PageModule', name: 'LocationOuter03Page', segment: 'location-outer03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/location-outer01/location-outer01.module#LocationOuter01PageModule', name: 'LocationOuter01Page', segment: 'location-outer01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/manage-credit-account02/manage-credit-account02.module#ManageCreditAccount02PageModule', name: 'ManageCreditAccount02Page', segment: 'manage-credit-account02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/manage-ob-credit-account01/manage-ob-credit-account01.module#ManageObCreditAccount01PageModule', name: 'ManageObCreditAccount01Page', segment: 'manage-ob-credit-account01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/manage-credit-account01/manage-credit-account01.module#ManageCreditAccount01PageModule', name: 'ManageCreditAccount01Page', segment: 'manage-credit-account01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/password-expire/password-expire.module#PasswordExpirePageModule', name: 'PasswordExpirePage', segment: 'password-expire', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/remittance-info01/remittance-info01.module#RemittanceInfo01PageModule', name: 'RemittanceInfo01Page', segment: 'remittance-info01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/remittance-info02/remittance-info02.module#RemittanceInfo02PageModule', name: 'RemittanceInfo02Page', segment: 'remittance-info02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/remittance-info03/remittance-info03.module#RemittanceInfo03PageModule', name: 'RemittanceInfo03Page', segment: 'remittance-info03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/reset-password03/reset-password03.module#ResetPassword03PageModule', name: 'ResetPassword03Page', segment: 'reset-password03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/reset-password02/reset-password02.module#ResetPassword02PageModule', name: 'ResetPassword02Page', segment: 'reset-password02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/reset-password01/reset-password01.module#ResetPassword01PageModule', name: 'ResetPassword01Page', segment: 'reset-password01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/tx-error/tx-error.module#TxErrorPageModule', name: 'TxErrorPage', segment: 'tx-error', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/settings/settings.module#SettingsPageModule', name: 'SettingsPage', segment: 'settings', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/tx-summary01/tx-summary01.module#TxSummary01PageModule', name: 'txSummary', segment: 'tx-summary01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/user-login01/user-login01.module#UserLogin01PageModule', name: 'UserLogin01Page', segment: 'user-login01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/user-login02/user-login02.module#UserLogin02PageModule', name: 'UserLogin02Page', segment: 'user-login02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/user-login03/user-login03.module#UserLogin03PageModule', name: 'UserLogin03Page', segment: 'user-login03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utility-bill-payment-history02/utility-bill-payment-history02.module#UtilityBillPaymentHistory02PageModule', name: 'UtilityBillPaymentHistory02Page', segment: 'utility-bill-payment-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utility-bill-payment-history01/utility-bill-payment-history01.module#UtilityBillPaymentHistory01PageModule', name: 'UtilityBillPaymentHistory01Page', segment: 'utility-bill-payment-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybillcompanyselection01/utilitybillcompanyselection01.module#Utilitybillcompanyselection01PageModule', name: 'Utilitybillcompanyselection01Page', segment: 'utilitybillcompanyselection01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybilloperationselection/utilitybilloperationselection.module#UtilitybilloperationselectionPageModule', name: 'UtilitybilloperationselectionPage', segment: 'utilitybilloperationselection', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybillpay01/utilitybillpay01.module#Utilitybillpay01PageModule', name: 'Utilitybillpay01Page', segment: 'utilitybillpay01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybillpay02/utilitybillpay02.module#Utilitybillpay02PageModule', name: 'Utilitybillpay02Page', segment: 'utilitybillpay02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybillpay03/utilitybillpay03.module#Utilitybillpay03PageModule', name: 'Utilitybillpay03Page', segment: 'utilitybillpay03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/utilitybillpay04/utilitybillpay04.module#Utilitybillpay04PageModule', name: 'Utilitybillpay04Page', segment: 'utilitybillpay04', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/welcome/welcome.module#WelcomePageModule', name: 'WelcomePage', segment: 'welcome', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/view-account-information01/view-account-information01.module#ViewAccountInformation01PageModule', name: 'viewAccInfo01', segment: 'view-account-information01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/view-account-information02/view-account-information02.module#ViewAccountInformation02PageModule', name: 'ViewAccountInformation02Page', segment: 'view-account-information02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge-history01/wimax-recharge-history01.module#WimaxRechargeHistory01PageModule', name: 'WimaxRechargeHistory01Page', segment: 'wimax-recharge-history01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge-history02/wimax-recharge-history02.module#WimaxRechargeHistory02PageModule', name: 'WimaxRechargeHistory02Page', segment: 'wimax-recharge-history02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge01/wimax-recharge01.module#WimaxRecharge01PageModule', name: 'wimaxRecharge01', segment: 'wimax-recharge01', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge02/wimax-recharge02.module#WimaxRecharge02PageModule', name: 'WimaxRecharge02Page', segment: 'wimax-recharge02', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge03/wimax-recharge03.module#WimaxRecharge03PageModule', name: 'WimaxRecharge03Page', segment: 'wimax-recharge03', priority: 'low', defaultHistory: [] },
                        { loadChildren: '../pages/wimax-recharge04/wimax-recharge04.module#WimaxRecharge04PageModule', name: 'WimaxRecharge04Page', segment: 'wimax-recharge04', priority: 'low', defaultHistory: [] }
                    ]
                }),
                __WEBPACK_IMPORTED_MODULE_3__ionic_storage__["a" /* IonicStorageModule */].forRoot(),
                __WEBPACK_IMPORTED_MODULE_9__angular_common_http__["b" /* HttpClientModule */],
                __WEBPACK_IMPORTED_MODULE_13__angular_forms__["a" /* FormsModule */],
                __WEBPACK_IMPORTED_MODULE_13__angular_forms__["d" /* ReactiveFormsModule */],
                __WEBPACK_IMPORTED_MODULE_19_ion_datepicker__["a" /* DatePickerModule */],
                __WEBPACK_IMPORTED_MODULE_34__ng_idle_keepalive__["a" /* NgIdleKeepaliveModule */].forRoot(),
                __WEBPACK_IMPORTED_MODULE_35__angular_http__["a" /* HttpModule */],
            ],
            bootstrap: [__WEBPACK_IMPORTED_MODULE_2_ionic_angular__["d" /* IonicApp */]],
            entryComponents: [
                __WEBPACK_IMPORTED_MODULE_4__app_component__["a" /* MyApp */]
            ],
            providers: [
                __WEBPACK_IMPORTED_MODULE_5__ionic_native_status_bar__["a" /* StatusBar */],
                __WEBPACK_IMPORTED_MODULE_41__ionic_native_splash_screen__["a" /* SplashScreen */],
                __WEBPACK_IMPORTED_MODULE_6__ionic_native_device__["a" /* Device */],
                __WEBPACK_IMPORTED_MODULE_7__ionic_native_app_version__["a" /* AppVersion */],
                __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["a" /* AlertController */],
                __WEBPACK_IMPORTED_MODULE_25__ionic_native_diagnostic__["a" /* Diagnostic */],
                __WEBPACK_IMPORTED_MODULE_28__ionic_native_google_maps__["a" /* GoogleMaps */],
                __WEBPACK_IMPORTED_MODULE_36__ionic_native_google_analytics__["a" /* GoogleAnalytics */],
                __WEBPACK_IMPORTED_MODULE_44__ionic_native_flurry_analytics__["a" /* FlurryAnalytics */],
                __WEBPACK_IMPORTED_MODULE_29__ionic_native_geolocation__["a" /* Geolocation */],
                __WEBPACK_IMPORTED_MODULE_8__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
                { provide: __WEBPACK_IMPORTED_MODULE_1__angular_core__["v" /* ErrorHandler */], useClass: __WEBPACK_IMPORTED_MODULE_2_ionic_angular__["e" /* IonicErrorHandler */] },
                __WEBPACK_IMPORTED_MODULE_10__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
                __WEBPACK_IMPORTED_MODULE_11__providers_config_config__["a" /* ConfigProvider */],
                __WEBPACK_IMPORTED_MODULE_12__providers_mask_token_mask_token__["a" /* MaskTokenProvider */],
                __WEBPACK_IMPORTED_MODULE_14__providers_token_service_token_service__["a" /* TokenServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_15__providers_error_message_error_message__["a" /* ErrorMessageProvider */],
                __WEBPACK_IMPORTED_MODULE_16__providers_auth_service_auth_service__["a" /* AuthServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_17__providers_menu_service_menu_service__["a" /* MenuServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_18__providers_recharge_service_recharge_service__["a" /* RechargeServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_20__ionic_native_date_picker__["a" /* DatePicker */],
                __WEBPACK_IMPORTED_MODULE_21__providers_account_service_account_service__["a" /* AccountServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_22__providers_wimax_service_wimax_service__["a" /* WimaxServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_23__providers_i_transfer_service_i_transfer_service__["a" /* ITransferServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_24__providers_authentication_authentication__["a" /* AuthenticationProvider */],
                __WEBPACK_IMPORTED_MODULE_26__providers_location_location__["a" /* LocationProvider */],
                __WEBPACK_IMPORTED_MODULE_27__providers_alert_alert__["a" /* AlertProvider */],
                __WEBPACK_IMPORTED_MODULE_30__ionic_native_in_app_browser__["a" /* InAppBrowser */],
                __WEBPACK_IMPORTED_MODULE_32__ionic_native_network__["a" /* Network */],
                __WEBPACK_IMPORTED_MODULE_31__providers_network_network__["a" /* NetworkProvider */],
                __WEBPACK_IMPORTED_MODULE_33__ng_idle_core__["b" /* Idle */],
                __WEBPACK_IMPORTED_MODULE_37__providers_google_analytics_google_analytics__["a" /* GoogleAnalyticsProvider */],
                __WEBPACK_IMPORTED_MODULE_38__providers_fund_transfer_other_bank_fund_transfer_other_bank__["a" /* FundTransferOtherBankProvider */],
                __WEBPACK_IMPORTED_MODULE_39__ionic_native_contacts__["b" /* Contacts */],
                __WEBPACK_IMPORTED_MODULE_40__providers_cheque_book_service_cheque_book_service__["a" /* ChequeBookServiceProvider */],
                __WEBPACK_IMPORTED_MODULE_42__providers_remittance_remittance__["a" /* RemittanceProvider */],
                __WEBPACK_IMPORTED_MODULE_43__providers_utilitybillpay_utilitybillpay__["a" /* UtilitybillpayProvider */],
                __WEBPACK_IMPORTED_MODULE_46__ionic_native_file__["a" /* File */],
                __WEBPACK_IMPORTED_MODULE_47__ionic_native_file_opener___["a" /* FileOpener */],
                __WEBPACK_IMPORTED_MODULE_48__ionic_native_file_transfer__["a" /* FileTransfer */],
                __WEBPACK_IMPORTED_MODULE_45__ionic_native_document_viewer__["a" /* DocumentViewer */],
                __WEBPACK_IMPORTED_MODULE_49__providers_cash_by_code_service_cash_by_code_service__["a" /* CashByCodeServiceProvider */]
            ]
        })
    ], AppModule);
    return AppModule;
}());

//# sourceMappingURL=app.module.js.map

/***/ }),

/***/ 392:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MyApp; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_ionic_angular__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ionic_native_status_bar__ = __webpack_require__(241);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__ = __webpack_require__(52);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__ = __webpack_require__(51);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__providers_config_config__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__providers_network_network__ = __webpack_require__(242);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__ionic_native_network__ = __webpack_require__(69);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__ionic_native_diagnostic__ = __webpack_require__(68);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__ng_idle_core__ = __webpack_require__(53);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_rxjs_observable_timer__ = __webpack_require__(393);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_rxjs_observable_timer___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_10_rxjs_observable_timer__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__ionic_native_splash_screen__ = __webpack_require__(243);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};












var MyApp = (function () {
    function MyApp(platform, statusBar, storage, config, cryptoUtil, alertCtrl, events, networkProvider, network, diagnostic, toastCtrl, idle, 
        // private googleAnalytics: GoogleAnalytics,
        splashScreen) {
        var _this = this;
        this.platform = platform;
        this.statusBar = statusBar;
        this.storage = storage;
        this.config = config;
        this.cryptoUtil = cryptoUtil;
        this.alertCtrl = alertCtrl;
        this.events = events;
        this.networkProvider = networkProvider;
        this.network = network;
        this.diagnostic = diagnostic;
        this.toastCtrl = toastCtrl;
        this.idle = idle;
        this.splashScreen = splashScreen;
        this.showSplash = true;
        this.rootPage = 'UserLogin01Page';
        this.checkMenuVersionReq = function (menuVersion) {
            var applicationVersion = this.appVersion.replace(/[.]/g, "");
            menuVersion = menuVersion.replace(/[.]/g, "");
            return (menuVersion <= applicationVersion);
        };
        this.pageSelectorAction = function (menuItem) {
            // this.nav.setRoot(page.component);
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
                this.nav.setRoot('WelcomePage', {});
                this.nav.push(valueAfterReplaceSlash, {});
            }
            else {
                this.nav.setRoot('WelcomePage', {});
                this.nav.push(valueAfterReplaceSlash, {});
            }
        };
        this.goToSetting = function () {
            this.nav.setRoot('WelcomePage');
            this.nav.push('SettingsPage', {});
        };
        this.goToContactUs = function () {
            this.nav.setRoot('WelcomePage');
            this.nav.push('ContactUsPage', {});
        };
        this.goToWelcomePage = function () {
            this.nav.setRoot('WelcomePage', {});
        };
        // CashByCodeAction = function () {
        //   this.nav.setRoot('WelcomePage');
        //   this.nav.push('CashByCode01Page', {});
        // };
        this.logout = function () {
            var dbVal = this.storage.retrieveFromStorage('appData');
            dbVal.refreshToken = "";
            dbVal.token = "";
            this.storage.insertIntoStorage('appData', dbVal);
            this.storage.removeFromIntoStorage('accounts');
            this.storage.removeFromIntoStorage('welcomeVal');
            this.storage.removeFromIntoStorage('passPolicy');
            this.nav.setRoot('UserLogin01Page');
            this.nav.popToRoot();
        };
        this.events.subscribe('mainMenu', function (data) {
            // console.log("Data: "+data);
            _this.privMenus = JSON.parse(data);
        });
        this.initializeApp();
        this.appVersion = this.config.iSmartVersion;
    }
    MyApp.prototype.initializeApp = function () {
        var _this = this;
        // this.rootPage = UserLogin01Page;
        this.platform.ready().then(function () {
            _this.statusBar.styleDefault();
            _this.splashScreen.hide();
            Object(__WEBPACK_IMPORTED_MODULE_10_rxjs_observable_timer__["timer"])(3000).subscribe(function () { return _this.showSplash = false; });
            _this.showedAlert = false;
            // this.googleAnalytics.startTrackerWithId("UA-76324512-1");
            // this.googleAnalytics.setAppVersion(this.config.iSmartVersion);
            // this.googleAnalytics.trackView("Google Analytics successfully initialized");
            //Google analytics
            // this.googleAnalytics.startTrackerWithId('UA-76324512-1', 30)
            //   .then(() => {
            //     console.log('Google analytics is ready now');
            //     this.googleAnalytics.setAppVersion("4.4.0");
            //     this.googleAnalytics.trackView('Login Page')
            //       .then(() => {
            //         console.log('Success');
            //       })
            //       .catch((e) => {
            //         console.log("Faild" + e)
            //       });
            //     this.googleAnalytics.debugMode();
            //     this.googleAnalytics.setAllowIDFACollection(true);
            //   })
            //   .catch(e => console.log('Error starting GoogleAnalytics', e));
            // Confirm exit
            _this.platform.registerBackButtonAction(function () {
                if (_this.nav.length() == 1) {
                    if (!_this.showedAlert) {
                        _this.confirmExitApp();
                    }
                    else {
                        _this.showedAlert = false;
                        _this.confirmAlert.dismiss();
                    }
                }
                _this.nav.pop();
            });
            // Network event when Offline
            _this.networkProvider.initializeNetworkEvents();
            _this.events.subscribe('network:offline', function () {
                // this.switchNetworkStatus();
                // alert('network:offline ==> '+this.network.type);
                var toast = _this.toastCtrl.create({
                    message: 'Your internet connection appears to be offline. Data integrity is not guaranteed.',
                    duration: 7000,
                    showCloseButton: true,
                    closeButtonText: 'OK',
                    dismissOnPageChange: true
                });
                toast.present();
            });
            if (_this.network.type == "none") {
                _this.switchNetworkStatus();
            }
            //idle.watch() start in user login 01 page
            _this.idle.setIdle(10);
            _this.idle.setTimeout(_this.config.sessionExpireTimeInSecond);
            _this.idle.setInterrupts(__WEBPACK_IMPORTED_MODULE_9__ng_idle_core__["a" /* DEFAULT_INTERRUPTSOURCES */]);
            _this.idle.onTimeout.subscribe(function () {
                _this.nav.setRoot('ExpirePage');
                _this.nav.popToRoot();
            });
        });
    };
    MyApp.prototype.hideSplashScreen = function () {
        var _this = this;
        if (this.splashScreen) {
            setTimeout(function () {
                _this.splashScreen.hide();
            }, 100);
        }
    };
    MyApp.prototype.confirmExitApp = function () {
        var _this = this;
        this.showedAlert = true;
        this.confirmAlert = this.alertCtrl.create({
            title: "Confirm Exit",
            message: "<center>Are you sure you want to exit ?</center>",
            cssClass: "alertLogCss",
            enableBackdropDismiss: false,
            buttons: [
                {
                    text: 'No',
                    handler: function () {
                        _this.showedAlert = false;
                        return;
                    }
                },
                {
                    text: 'Yes',
                    handler: function () {
                        _this.platform.exitApp();
                    }
                }
            ]
        });
        this.confirmAlert.present();
    };
    MyApp.prototype.switchNetworkStatus = function () {
        var _this = this;
        var switchAlert = this.alertCtrl.create({
            title: "Network Disconnected !",
            message: "<center>The internet is disconnected on your device.</center>",
            cssClass: "alertLogCss",
            enableBackdropDismiss: false,
            buttons: [
                {
                    text: 'Cancel',
                    handler: function () {
                        _this.platform.exitApp();
                    }
                },
                {
                    text: 'Settings',
                    handler: function () {
                        _this.diagnostic.switchToMobileDataSettings();
                    }
                }
            ]
        });
        switchAlert.present();
    };
    ;
    MyApp.prototype.openPage = function (page) {
        this.nav.setRoot(page.component);
    };
    ;
    __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["_9" /* ViewChild */])(__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["j" /* Nav */]),
        __metadata("design:type", __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["j" /* Nav */])
    ], MyApp.prototype, "nav", void 0);
    MyApp = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["n" /* Component */])({template:/*ion-inline-start:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\app\app.html"*/'<ion-menu [content]="content" persistent="true" id="side-menu">\n\n  <ion-header>\n    <ion-toolbar>\n      <ion-title>IBBL iBanking</ion-title>\n    </ion-toolbar>\n  </ion-header>\n\n  <ion-content>\n\n    <ion-list class="regular-font">\n\n      <button menuClose ion-item (click)="goToWelcomePage()">\n        <ion-icon name="md-home"></ion-icon> &nbsp;&nbsp;Home\n      </button>\n\n\n      <button menuClose ion-item *ngFor="let p of privMenus" (click)="pageSelectorAction(p)">\n        <ion-icon name="md-open" style="padding-left: 20px"></ion-icon> &nbsp;&nbsp;{{p.menuTxt}}\n      </button>\n\n      <!--<button menuClose ion-item (click)="CashByCodeAction()">-->\n        <!--<ion-icon name="md-lock"></ion-icon>&nbsp;&nbsp;iCashRemit-->\n      <!--</button>-->\n\n      <button menuClose ion-item (click)="goToSetting()">\n        <ion-icon name="md-settings"></ion-icon>&nbsp;&nbsp;Settings\n      </button>\n\n      <button menuClose ion-item (click)="goToContactUs()">\n        <ion-icon name="call"></ion-icon>&nbsp;&nbsp;Contact Us\n      </button>\n\n      <button menuClose ion-item (click)="logout()">\n        <ion-icon name="ios-log-out-outline"></ion-icon>&nbsp;&nbsp;Logout\n      </button>\n\n    </ion-list>\n\n    <div style="color: #388f1a;padding-left: 15px;font-weight: 300; margin-top: 15px">\n      <ion-icon name="ios-information-circle-outline" style="font-size: 18px"></ion-icon>\n      <span>&nbsp;&nbsp;App Version : {{appVersion}}</span>\n    </div>\n  </ion-content>\n\n</ion-menu>\n\n<!--This code is for splash screen-->\n<div *ngIf="showSplash" class="splash">\n  <div class="sk-cube-grid">\n    <div class="sk-cube sk-cube1"></div>\n    <div class="sk-cube sk-cube2"></div>\n    <div class="sk-cube sk-cube3"></div>\n    <div class="sk-cube sk-cube4"></div>\n    <div class="sk-cube sk-cube5"></div>\n    <div class="sk-cube sk-cube6"></div>\n    <div class="sk-cube sk-cube7"></div>\n    <div class="sk-cube sk-cube8"></div>\n    <div class="sk-cube sk-cube9"></div>\n  </div>\n</div>\n\n<!-- Disable swipe-to-go-back because it\'s poor UX to combine STGB with side menus -->\n<ion-nav [root]="rootPage" #content swipeBackEnabled="false" side="right"></ion-nav>\n\n'/*ion-inline-end:"e:\mobileDevelopment\Apps\ibbl_iSmart\src\app\app.html"*/
        }),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_1_ionic_angular__["m" /* Platform */],
            __WEBPACK_IMPORTED_MODULE_2__ionic_native_status_bar__["a" /* StatusBar */],
            __WEBPACK_IMPORTED_MODULE_4__providers_local_storage_local_storage__["a" /* LocalStorageProvider */],
            __WEBPACK_IMPORTED_MODULE_5__providers_config_config__["a" /* ConfigProvider */],
            __WEBPACK_IMPORTED_MODULE_3__providers_crypto_param_util_crypto_param_util__["a" /* CryptoParamUtilProvider */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["a" /* AlertController */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["c" /* Events */],
            __WEBPACK_IMPORTED_MODULE_6__providers_network_network__["a" /* NetworkProvider */],
            __WEBPACK_IMPORTED_MODULE_7__ionic_native_network__["a" /* Network */],
            __WEBPACK_IMPORTED_MODULE_8__ionic_native_diagnostic__["a" /* Diagnostic */],
            __WEBPACK_IMPORTED_MODULE_1_ionic_angular__["n" /* ToastController */],
            __WEBPACK_IMPORTED_MODULE_9__ng_idle_core__["b" /* Idle */],
            __WEBPACK_IMPORTED_MODULE_11__ionic_native_splash_screen__["a" /* SplashScreen */]])
    ], MyApp);
    return MyApp;
}());

//# sourceMappingURL=app.component.js.map

/***/ }),

/***/ 51:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LocalStorageProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_add_observable_fromPromise__ = __webpack_require__(328);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_add_observable_fromPromise___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_add_observable_fromPromise__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ionic_storage__ = __webpack_require__(184);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




/*
  Generated class for the LocalStorageProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var LocalStorageProvider = (function () {
    function LocalStorageProvider(http, storage) {
        this.http = http;
        this.storage = storage;
        this.keyVal = "";
        // console.log('Hello LocalStorageProvider Provider');
    }
    LocalStorageProvider.prototype.insertIntoStorage = function (keyName, data) {
        try {
            window.localStorage.setItem("ngStorage-" + keyName, JSON.stringify(data));
        }
        catch (e) {
            console.log(e);
        }
    };
    LocalStorageProvider.prototype.removeFromIntoStorage = function (keyName) {
        try {
            window.localStorage.removeItem("ngStorage-" + keyName);
        }
        catch (e) {
            console.log(e);
        }
    };
    LocalStorageProvider.prototype.retrieveFromStorage = function (key) {
        try {
            return JSON.parse(window.localStorage.getItem("ngStorage-" + key));
        }
        catch (e) {
            console.log(e);
            return null;
        }
    };
    LocalStorageProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */], __WEBPACK_IMPORTED_MODULE_3__ionic_storage__["b" /* Storage */]])
    ], LocalStorageProvider);
    return LocalStorageProvider;
}());

//# sourceMappingURL=local-storage.js.map

/***/ }),

/***/ 52:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CryptoParamUtilProvider; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_common_http__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_crypto_js__ = __webpack_require__(339);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_crypto_js___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_crypto_js__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



/*
  Generated class for the CryptoParamUtilProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
var CryptoParamUtilProvider = (function () {
    function CryptoParamUtilProvider(http) {
        this.http = http;
        this.password = "1B@nk1ngS3cr3tK$";
        this.salt = "3FF2EC019C627B945225DEBAD71A01B6985FE84C95A70EB132882F88C0A59A55";
        this.iv = "12345678901234567890123456789012";
        this.key = __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.PBKDF2(this.password, __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.enc.Hex.parse(this.salt), { keySize: 128 / 32, iterations: 10 });
        this.getEncryptVal = function (plainText) {
            var encryptValue = __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.AES.encrypt(plainText, this.key, { iv: __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.enc.Hex.parse(this.iv) }).ciphertext.toString(__WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.enc.Base64);
            //$log.info("Value After Encrypt : "+encryptValue);
            encryptValue = encodeURIComponent(encryptValue);
            //$log.info("Value After Encode : "+encryptValue);
            return encryptValue;
        };
        this.getDecryptVal = function (encValue) {
            //$log.info("Encode value with URI"+encValue);
            var decodeUri = decodeURIComponent(encValue);
            //$log.info("Encode value without URI"+decodeUri);
            var decValue = __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.AES.decrypt(decodeUri, this.key, { iv: __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.enc.Hex.parse(this.iv) });
            //$log.info("Value After Decrypt : "+decValue);
            var uftVal = __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.enc.Utf8.stringify(decValue);
            //$log.info("Value After UFT : "+uftVal);
            return uftVal;
        };
        this.getSha256EncryptedValue = function (plainText) {
            return __WEBPACK_IMPORTED_MODULE_2_crypto_js___default.a.SHA256(plainText);
        };
        // console.log('Hello CryptoParamUtilProvider Provider');
    }
    CryptoParamUtilProvider = __decorate([
        Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["B" /* Injectable */])(),
        __metadata("design:paramtypes", [__WEBPACK_IMPORTED_MODULE_0__angular_common_http__["a" /* HttpClient */]])
    ], CryptoParamUtilProvider);
    return CryptoParamUtilProvider;
}());

//# sourceMappingURL=crypto-param-util.js.map

/***/ })

},[273]);
//# sourceMappingURL=main.js.map