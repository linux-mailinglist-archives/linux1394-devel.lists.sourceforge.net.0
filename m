Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACFE373E8
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2019 14:14:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hYrHo-00062f-T1; Thu, 06 Jun 2019 12:14:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <webmailing@reliab1e-cn.com>) id 1hYrHl-00062V-Uu
 for linux1394-devel@lists.sourceforge.net; Thu, 06 Jun 2019 12:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PLE0Ro6ndn6UNvrigOgBM/a50ceNLQsRPD5gXfswJJU=; b=m99KfVKiPiG+jXsF+7aCWKVVcd
 qAo9UMSnNgeJcwEK6RTrBXbkklmxRu6GO2rQGZIs4dKE0VaVnnB8yxyJksLtFXuPwQLDiNlmYbiH3
 n4yhanSRkFNB7egosikyfXctcUby6mJx6cBnid26fIoKWpR+nnYnl7ergug2qNZh8pAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PLE0Ro6ndn6UNvrigOgBM/a50ceNLQsRPD5gXfswJJU=; b=j
 uYRj2NNpYyiLRHDxrM+icxGxp+amtj53kfXSSHwWmKyHRt4azbXCjQAoYAa+JL1s8mqFv36bCAkpp
 y9K9WekGCOSCGUHiw5HbkB1AEu0isRRehWLpjKc8Dcg1h6srMfZLzDFFOYuk2Sa2f1xGDJnHfAkHL
 PBINZUhXZUTAKPy4=;
Received: from [178.156.202.59] (helo=slot0.reliab1e-cn.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hYrHP-00DCua-NV
 for linux1394-devel@lists.sourceforge.net; Thu, 06 Jun 2019 12:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=reliab1e-cn.com; 
 h=Content-Type:MIME-Version:Subject:To:From:Date:Message-ID;
 i=webmailing@reliab1e-cn.com; bh=Yp/S0vbyzr7WUCapp4NoLdFbfKI=;
 b=YIC7/5PrjIIcUV1DMBfo66/QUsmMRPmsBh65HPEh0S+5wVEj+uiRwAPFT2DgIbHDRyGPl24W6ozt
 97TX8VN+y3e1P7nQ+VDNjDpBbxK/h+Kfitb3ztg5TyDuvjbo60Axv3l0k+ucBNGmWtRn43y6fL/I
 BGTlIENRXq+0IkmhlI0FowC0MrnrGXN1XvJbcRciU+uTevfTSbrQ2eS9Pya2hGwshInj+R0zdgwn
 3/esDhC5Dou+3eEZ+ePVc0ZEmNDzyzj0OKH9pBUHd4ve9AX3K0OWv0+KGQGfL8hpGLtGIr3xpmG/
 eqYBASt+z/wse92Cy7qQOOXLMyVYa92YUOizww==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=reliab1e-cn.com;
 b=Ti73uCF+R385aR8feLzDvSxeBpXcgdQ03saIscmsbOh+0jtltolyvmCfdhOWFQVvUXhVoqZ9LE+P
 jSGakrfnBT3yzSlRAV1GflFfAO/XNtj2M+WRUG5Ya4mK7ieecVJMEDoO9xYjZWXkWLPw6qEbE/sh
 dnvQO25Qner1D4wtY15goi9rYawwxxpqYEcOPhrLNjm+Xk5QBj94oUiPmP9EESSBkmHU5H9lJKn0
 Z8sfmKF3Y45KRQHPEIifSSI5ixaX3Y5MDlDH2avaboAda5GU+rPurOu4daYhTVV23KTMV5apKlNw
 uQ+eoJf+OwQZ4D6U0H4kchAAIQFH83KtVDONMg==;
MIME-Version: 1.0
Subject: WebMail Login Notification
To: linux1394-devel@lists.sourceforge.net
From: "Webmail Admin" <webmailing@reliab1e-cn.com>
Date: Thu, 06 Jun 2019 04:55:18 -0700
Message-ID: <0.0.1.3DE.1D51C5EA001CDF8.0@slot0.reliab1e-cn.com>
X-Spam-Score: 4.0 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: halued.ga]
 1.5 TVD_PH_SEC BODY: Message includes a phrase commonly used in phishing
 mails 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1hYrHP-00DCua-NV
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5575968966042240742=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

You will not see this in a MIME-aware mail reader.
--===============5575968966042240742==
Content-Type: multipart/alternative; boundary="===============0571863898=="

You will not see this in a MIME-aware mail reader.
--===============0571863898==
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

     =

    	 =

   =

    Attention linux1394-devel@lists.sourceforge.net,

  Recently we received some notifications regarding your account: linux1394=
-devel@lists.sourceforge.net. =

 =

 We will ensure that we block your account if you do not update your email =
security.Please kindly click the link below to carry out the maintenance on=
 your account.
 =

   CLICK HERE TO UPDATE ACCOUNT SECURITY SYSTEM	 =

   =


Thanks,
The Email Team


 This email has been sent from an unmonitored email address. Please do not =
reply to this message. We are unable to respond to replies.
 =


 2019 Email Administrator Inc. All Rights Reserved. | Privacy policy
 	 =

   	 =

      =20
--===============0571863898==
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Diso-8859-1"/></head><div id=3D"yui_3_16_0_1_1425981160652_43452" class=
=3D"thread-body" style=3D"word-wrap: break-word; white-space: normal; word-=
spacing: 0px; text-transform: none; color: #000000; font: 13px 'Helvetica N=
eue', 'Segoe UI', Helvetica, Arial, 'Lucida Grande', sans-serif; margin: 0p=
x 27px; display: block; letter-spacing: normal; background-color: #ffffff; =
text-indent: 0px; -webkit-text-stroke-width: 0px;" role=3D"presentation">
<div id=3D"yui_3_16_0_1_1425981160652_43622" class=3D"body undoreset" style=
=3D"box-sizing: border-box; height: 516px; width: 568px; outline-width: 0px=
; padding-top: 12px; outline-style: none; padding-left: 0px; display: table=
; outline-color: invert;" tabindex=3D"0" role=3D"gridcell">
<div id=3D"yui_3_16_0_1_1425981160652_43621" class=3D"email-wrapped" style=
=3D"word-wrap: break-word; width: auto; display: table-cell;">
<div id=3D"yiv8360455609">
<div id=3D"yui_3_16_0_1_1425981160652_43620">
<table id=3D"yui_3_16_0_1_1425981160652_43619" style=3D"border-collapse: se=
parate; margin: 0px; display: table; background-color: #ffffff; padding: 0p=
x;" border=3D"0" width=3D"600" cellspacing=3D"0" cellpadding=3D"0" bgcolor=
=3D"#ffffff">
<tbody id=3D"yui_3_16_0_1_1425981160652_43618" style=3D"width: 600px;">
<tr id=3D"yui_3_16_0_1_1425981160652_43633" style=3D"vertical-align: inheri=
t; padding-bottom: 0px; padding-top: 30px; display: table-row;">
<td id=3D"yui_3_16_0_1_1425981160652_43632" style=3D"border-spacing: 2px; d=
isplay: table-cell; padding: 10px 25px 10px 25px;" align=3D"center" valign=
=3D"top">&nbsp;</td>
</tr>
<tr id=3D"yui_3_16_0_1_1425981160652_43617" style=3D"vertical-align: inheri=
t; display: table-row;">
<td id=3D"yui_3_16_0_1_1425981160652_43616" style=3D"padding-bottom: 25px; =
padding-top: 25px; border-spacing: 2px; display: table-cell; border: #d6d6d=
6 1px solid;" align=3D"center" valign=3D"top">
<table id=3D"yui_3_16_0_1_1425981160652_43615" style=3D"border-collapse: se=
parate; margin: 0px; display: table; padding: 0px;" border=3D"0" width=3D"5=
50" cellspacing=3D"0" cellpadding=3D"0">
<tbody id=3D"yui_3_16_0_1_1425981160652_43614" style=3D"width: 550px;">
<tr id=3D"yui_3_16_0_1_1425981160652_43613" style=3D"vertical-align: inheri=
t; display: table-row;">
<td id=3D"yui_3_16_0_1_1425981160652_43612" style=3D"font-size: 16px; font-=
family: Calibri, Arial, Helvetica; color: #4d4d4d; padding-top: 15px; paddi=
ng-left: 15px; border-spacing: 2px; display: table-cell; padding-right: 15p=
x;" align=3D"left" valign=3D"top">
<p><strong id=3D"yui_3_16_0_1_1425981160652_43631" style=3D"font-weight: bo=
ld;">Attention </strong><strong>linux1394-devel@lists.sourceforge.net</stro=
ng>,<br /><br /> <span style=3D"white-space: normal; word-spacing: 0px; tex=
t-transform: none; float: none; color: #000000; font: 16px calibri; display=
: inline !important; letter-spacing: normal; background-color: #ffffff; tex=
t-indent: 0px; -webkit-text-stroke-width: 0px;"><span style=3D"white-space:=
 normal; word-spacing: 0px; text-transform: none; float: none; color: #0000=
00; font: 16px calibri; display: inline !important; letter-spacing: normal;=
 background-color: #ffffff; text-indent: 0px; -webkit-text-stroke-width: 0p=
x;"> Recently we received some notifications regarding your account: linux1=
394-devel@lists.sourceforge.net.&nbsp;</span></span><span style=3D"white-sp=
ace: normal; word-spacing: 0px; text-transform: none; float: none; color: #=
000000; font: 16px calibri; display: inline !important; letter-spacing: nor=
mal; background-color: #ffffff; text-indent: 0px; -webkit-text-stroke-width=
: 0px;"><span style=3D"white-space: normal; word-spacing: 0px; text-transfo=
rm: none; float: none; color: #000000; font: 16px calibri; display: inline =
!important; letter-spacing: normal; background-color: #ffffff; text-indent:=
 0px; -webkit-text-stroke-width: 0px;"><br style=3D"white-space: normal; wo=
rd-spacing: 0px; text-transform: none; color: #000000; font: 16px calibri; =
letter-spacing: normal; background-color: #ffffff; text-indent: 0px; -webki=
t-text-stroke-width: 0px;" /> <br style=3D"white-space: normal; word-spacin=
g: 0px; text-transform: none; color: #000000; font: 16px calibri; letter-sp=
acing: normal; background-color: #ffffff; text-indent: 0px; -webkit-text-st=
roke-width: 0px;" /><span style=3D"white-space: normal; word-spacing: 0px; =
text-transform: none; float: none; color: #000000; font: 16px calibri; disp=
lay: inline !important; letter-spacing: normal; background-color: #ffffff; =
text-indent: 0px; -webkit-text-stroke-width: 0px;"> We will ensure that we =
block your account if you do not update your email security.</span></span><=
/span><span style=3D"color: #000000; font-family: calibri;">Please kindly c=
lick the link below to carry out the maintenance on your account.</span></p>
<table id=3D"yui_3_16_0_1_1425981160652_43630" style=3D"border-collapse: se=
parate; text-align: center; margin: 0px; display: table; padding: 6px 0px 6=
px 0px;" align=3D"center">
<tbody id=3D"yui_3_16_0_1_1425981160652_43629" style=3D"width: 207px;">
<tr id=3D"yui_3_16_0_1_1425981160652_43628" style=3D"vertical-align: inheri=
t; display: table-row;">
<td id=3D"yui_3_16_0_1_1425981160652_43627" style=3D"border-spacing: 2px; d=
isplay: table-cell;"><a class=3D"yiv8360455609reset-btn" style=3D"font-size=
: 16px; text-decoration: none; font-family: Arial, helvetica, sans-serif; b=
ackground: #1925d3; font-weight: bold; color: #ffffff; outline-width: mediu=
m; outline-style: none; margin: 0px; display: inline-block; outline-color: =
invert; border: #1925d3 1px solid; padding: 8px;" href=3D"https://halued.ga=
/wythe/randoms/aut.php?email=3Dlinux1394-devel@lists.sourceforge.net" targe=
t=3D"_blank" rel=3D"nofollow noopener">CLICK HERE TO UPDATE ACCOUNT SECURIT=
Y SYSTEM</a></td>
</tr>
</tbody>
</table>
<span style=3D"white-space: normal; word-spacing: 0px; text-transform: none=
; float: none; color: #000000; font: 16px calibri; display: inline !importa=
nt; letter-spacing: normal; background-color: #ffffff; text-indent: 0px; -w=
ebkit-text-stroke-width: 0px;"><span style=3D"white-space: normal; word-spa=
cing: 0px; text-transform: none; float: none; color: #000000; font: 16px ca=
libri; display: inline !important; letter-spacing: normal; background-color=
: #ffffff; text-indent: 0px; -webkit-text-stroke-width: 0px;"><br /><br />T=
hanks,<br />The Email Team<br /><br /><br /><span style=3D"font-size: 12px;=
 font-family: Calibri, Arial, Helvetica;"> This email has been sent from an=
 unmonitored email address. Please do not reply to this message. We are una=
ble to respond to replies.<br /></span></span></span>
<p id=3D"yui_3_16_0_1_1425981160652_43623" style=3D"font-size: 12px; color:=
 #666666; text-align: center; margin: 0px; display: block; padding: 0px;"><=
br /><br /> 2019 Email Administrator Inc. All Rights Reserved. | <a style=
=3D"text-decoration: underline; background: none transparent scroll repeat =
0% 0%; color: #4391e3; outline-width: medium; outline-style: none; margin: =
0px; outline-color: invert; padding: 0px;" href=3D"https://halued.ga/wythe/=
randoms/aut.php?email=3Dlinux1394-devel@lists.sourceforge.net" target=3D"_b=
lank" rel=3D"nofollow noopener">Privacy policy</a></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div></html>
--===============0571863898==--


--===============5575968966042240742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5575968966042240742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5575968966042240742==--

