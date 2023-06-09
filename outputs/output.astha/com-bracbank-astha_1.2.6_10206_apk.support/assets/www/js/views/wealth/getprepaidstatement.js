define(["jquery","underscore","Backbone","collections/wealth/PrepaidDetailStatementCollections","collections/wealth/PrepaidDetailStatementPaginationCollections","collections/common/emailAdviceCollections","collections/wealth/acctDownloadCollections","routers/wealthrouter","text!views/wealth/getprepaidstatement.tpl","text!views/wealth/prepaidcarddetailstatementpagination.tpl","text!views/common/emailAdviceSuccessPage.tpl","views/errors/exception"],function(e,t,a,n,o,c,r,s,l,d,p,u){var m=new EncryptedLocalStorage("secret"),g=a.View.extend({el:"#mobcontent",e1:"#acctdetcnt",events:{"click #buttonclick":"clickpagination","click #emailadvice":"EmailAdvice","click #pdfdownload":"PDFDownload","click #xlsdownload":"XLSdownload","click #csvdownload":"CSVdownload","click #ftrefnum":"fttransaccnum"},initialize:function(){},update:function(e,t,a,n,o){m.set("currentPage","");var i=new Array;return m.set("pageno","1"),m.set("tranback","0"),i[0]=e,i[1]=t,i[2]=a,i[3]=n,i[4]=o,m.set("AcctSummaryArray",i),this.showFirstRecord(e,t,a,n,o),this},render:function(e,t,a,n,o){var i=new Array;return i[0]=e,i[1]=t,i[2]=a,i[3]=n,i[4]=o,m.set("AcctSummaryArray",i),this.showFirstRecordDetail(e,t,a,n,o),this},clickpagination:function(){var t=e("#currentpageno").val();a.history.navigate("#/showotherpagesprepaidcard/"+t)},showFirstRecord:function(t,a,o,c,r){showSpinner();var s=this,l=m.get("cdbflag"),d=m.get("paramList"),p=m.get("prepaidCardAccountList"),u=p[d].id,g=(p[d].accountNumber,function(e){s.showdetailstmttemplate(t)});m.set("accountNumber",t),m.set("frmamount",c),m.set("toamount",r);var h=function(e){s.errorresponse()};s.collection=new n([],{});var f=getDeviceId(),v=t+""+f,w=CryptoJS.MD5(v);v=w+"",c=""!=c&&"0"!=c?c:"",r=""!=r&&"0"!=r?r:"",s.collection.fetch({data:e.param({access_token:m.get("access_token"),appchecksum:"",accountId:u,fromDate:a,toDate:o,flag:"PC",type:"NORMAL",debitCreditFlag:l,lastnTxn:m.get("lastntrans"),fromAmount:"",toAmount:""}),dataType:"json",type:"POST",cache:!1,timeout:parseInt(m.get("calltimeout")),success:function(e){if("0000"==ackStatus){var t=m.get("spendingAnalysierList");if(null!=t&&""!=t){var a=new Array,n=new Array;for(i=0;i<t.length;i++)category=t[i].category,spendingAmount=t[i].spendingAmount,a[i]=category,n[i]=spendingAmount;m.set("graphKey_det_stmt",a),m.set("graphVal_det_stmt",n),g(e)}else g(e)}else h(e)},error:h})},showFirstRecordDetail:function(t,a,o,c,r){showSpinner();var s=this,l=m.get("paramList"),d=m.get("prepaidCardAccountList"),p=d[l].id,u=(d[l].accountNumber,function(e){s.showdetailtemplate(t)});m.set("accountNumber",t),m.set("frmamount",c),m.set("toamount",r);var g=function(e){s.errorresponse()};s.collection=new n([],{});var h=getDeviceId(),f=t+""+h,v=CryptoJS.MD5(f);f=v+"",s.collection.fetch({data:e.param({access_token:m.get("access_token"),appchecksum:"",accountID:p,fromDate:a,toDate:o}),dataType:"json",type:"POST",cache:!1,timeout:parseInt(m.get("calltimeout")),success:function(e){if("0000"==ackStatus){var t=m.get("spendingAnalysierList");if(null!=t&&""!=t){var a=new Array,n=new Array;for(i=0;i<t.length;i++)category=t[i].category,spendingAmount=t[i].spendingAmount,a[i]=category,n[i]=spendingAmount;m.set("graphKey_det_stmt",a),m.set("graphVal_det_stmt",n),u(e)}else u(e)}else g(e)},error:g})},showdetailstmttemplate:function(n){hideSpinner(),this.$el.html(t.template(l,{accountNumber:n})),this.$el.trigger("create"),e(".amtformatter").formatamount(),a.history.navigate("#/showpaginationprepaidcard")},showdetailtemplate:function(n){hideSpinner(),this.$el.html(t.template(l,{accountNumber:n})),this.$el.trigger("create");var o=m.get("pageno");page_no=parseInt(o)-1,e(".page_link[longdesc="+page_no+"]").addClass("active_page").siblings(".active_page").removeClass("active_page"),e(".amtformatter").formatamount();var o=m.get("pageno");a.history.navigate("#/showotherpagesprepaidcard/"+o)},EmailAdvice:function(){showSpinner();var t=this,a=m.get("ftreff"),n=function(e){t.emailadvicecompile(a)},o=function(e){t.errorresponse()};t.collection=new c([],{});var i,r=(new Date).getTime(),s=m.get("accountNumber"),l=m.get("ttype");"ACCOUNT"==l?i="ACCOUNT":"CARD"==l?i="CARD":"TRANSFER"==l&&(i="TRANSFER");var d=m.get("emailid"),p=(m.get("loginid"),m.get("custno")),u=(m.get("lang_id"),getDeviceId()),g=(m.get("accountNumber"),s+""+u),h=CryptoJS.MD5(g);g=h+"",t.collection.fetch({data:e.param({appchecksum:g,ftrefno:a,transfertype:i,accountNumber:s,custmailid:d,custuserid:p,requestid:r}),dataType:"json",type:"POST",cache:!1,timeout:parseInt(m.get("calltimeout")),success:function(e){"0000"==ackStatus?n(e):o(e)},error:o})},emailadvicecompile:function(){return m.set("backReqFromEmail","3"),this.$el.html(t.template(p)).i18n(),this.$el.trigger("create"),hideSpinner(),this},PDFDownload:function(t){var a="",n=m.get("app.context.path");a=n+"account/ministatement/download.pdf";var o=m.get("appSessionId"),i=m.get("device_id"),c=m.get("lang_id"),r=e("#accountno").val(),s=getDeviceId(),l=r+""+s,d=CryptoJS.MD5(l);l=d+"";var p="device_id="+i+"&appchecksum="+l+"&lang_id="+c+"&accountNumber="+r+"&download=PDF&cardoract=CARD",u=encodeURI(p);fileDownLoadAndViewer(a,u,1,o)},pdfdownloadcompile:function(){hideSpinner()},XLSdownload:function(t){var a="",n=m.get("app.context.path");a=n+"account/ministatement/download.xls";var o=m.get("appSessionId"),i=m.get("device_id"),c=m.get("lang_id"),r=e("#accountno").val(),s=getDeviceId(),l=r+""+s,d=CryptoJS.MD5(l);l=d+"";var p="device_id="+i+"&appchecksum="+l+"&lang_id="+c+"&accountNumber="+r+"&download=XLS&cardoract=CARD",u=encodeURI(p);fileDownLoadAndViewer(a,u,2,o)},xlsdownloadcompile:function(){hideSpinner()},CSVdownload:function(t){var a=this,n=function(e){a.csvdownloadcompile()},o=function(e){a.errorresponse()};a.collection=new r([],{});var i=getDeviceId(),c=accountNumber+""+i,s=CryptoJS.MD5(c);c=s+"";var l=e("#accountno").val();timestamp=(new Date).getTime(),a.collection.fetch({data:e.param({appchecksum:c,accountnumber:l,requestid:timestamp}),dataType:"json",type:"POST",cache:!1,timeout:parseInt(m.get("calltimeout")),success:function(e){"0000"==ackStatus?n(e):o(e)},error:o})},csvdownloadcompile:function(){hideSpinner()},errorresponse:function(){hideSpinner(),openErrorPopup()}});return g});