define(["underscore","Backbone","models/login/forgotPasswordOTPModel"],function(e,o,t){var n=new EncryptedLocalStorage("secret"),r=o.Collection.extend({model:t,initialize:function(e,o){},url:function(){var e="";n.set("errordesc","");var o=n.get("app.respone.mode"),t=n.get("app.context.path"),r=n.get("app.static.context.path"),s=n.get("app.local.context.path");return"server-dynamic-response"==o?e=t+"prelogin/generatesofttoken":"server-static-response"==o?e=r+"forgotpasssofttoken.json":"local-static-response"==o&&(e=s+"forgotpassword.json"),e}});return r});