Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95677477A38
	for <lists+linux1394-devel@lfdr.de>; Thu, 16 Dec 2021 18:15:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mxuLL-0007Hq-11; Thu, 16 Dec 2021 17:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-59-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mxuLJ-0007Hk-TI
 for linux1394-devel@lists.sourceforge.net; Thu, 16 Dec 2021 17:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Pr7fLTiaUgYiRLYCKkyQSnGdVlWBAq58YG/0RMUi9s=; b=Y8Jec1QFVgZQaRQyqcal1mWwlO
 TPYJOZmTuF1DJiP8VO5JJ3N3eSozgga+38XVOpTjoPf6fYfLAbuLbVtodKxsT9AXs4B3N4OONkIpU
 8dEWEzmCL+A2kUE1ZdK3P3EuVtpvAJonn/YaQIs7ZK0SUcgqAxcQP1wDVi6AKx3dNip0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=/Pr7fLTiaUgYiRLYCKkyQSnGdVlWBAq58YG/0RMUi9s=; b=FiwAjFux5zdf
 IKUETh/MF+yobyLSSqJSq9E4RkO1DFWJizDvF6/z6eoX72ajZA/rP0bB1EoutfWJx7qNFUuIuy+Kh
 n2cP2gWrNZzfpyzR/0wd/bkWHI0dtKt0c3gMSDZa6zAXu/zCNlPqQ4AIJt7OYQZAxq/c+4VIzw9rQ
 Zvp3w=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxuLH-000APD-3W
 for linux1394-devel@lists.sourceforge.net; Thu, 16 Dec 2021 17:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=/Pr7fLTiaUgYiRLYCKkyQSnGdVlWBAq58YG/0RMUi9s=;
 b=b7HUtTdY6zNr3ARsUq6juxRS8fZ+Y1Xss0tFTWo6aDjltuBrGZW8kVF2cgT8YftE3J3xlREKm9gs
 xMSRtXh0lZ45HnMJMKHSi3zxUUXiWtot/XAcgg8u8t3hfUwgYIw1Q1JGzGlMPmNEJFaBQSB7EiQ6
 gts7baTdGrNehvHVZJw=
Received: by s15.avl4.acemsrvd.com id hndq0c2q2744 for
 <linux1394-devel@lists.sourceforge.net>;
 Thu, 16 Dec 2021 17:14:46 +0000 (envelope-from
 <bounce-2287853-59-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA's EIDL and Cash Grant Program Ending December 31
Date: Thu, 16 Dec 2021 11:07:18 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM1OSAsIG05MSAsIHM1NA
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-59
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211216171446.27723.902647308.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Deadline to Apply is Imminent - Two Weeks Left!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ 
    [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mxuLH-000APD-3W
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
Content-Type: multipart/mixed; boundary="===============3495654828438567256=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3495654828438567256==
Content-Type: multipart/alternative;
 boundary="_=_swift-87300038361bb72462be213.29101473_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-87300038361bb72462be213.29101473_=_
Content-Type: text/plain; charset=utf-8

Deadline to Apply is Imminent - Two Weeks Left! 
 ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌

 

The Small Business Administration has moved the deadline for all EIDL
applications to December 31st 2021 Apply before the deadline!

What is the EIDL? 

* Up to $2,000,000

* No payments for the first 24 months

* 3.75% fixed interest rate over 30 years! 

* Short for Economic Injury Disaster Loan

* Part of the CARES act passed in March of 2020 

* All US business owners can apply

* Based off of 2019 business tax returns

* Minimum FICO of 550

APPLY NOW  

If you have any questions please do not hesitate to call.  We pride
ourselves on always being available to our clients.

Sincerely,

Samuel Brugman | Funding Manager

Motor City Funding
3000 Town Center

Southfield, MI 48076

O: (315) 257-1195

CONTACT US 
_________________

Sent to linux1394-devel@lists.sourceforge.net

Unsubscribe:
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=59&amp;m=91&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-87300038361bb72462be213.29101473_=_
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>=0A<head><meta http-equiv=3D"Content-Type" content=3D"=
text/html; charset=3Dutf-8"><meta http-equiv=3D"Content-Language" content=
=3D"en-us"><meta name=3D"format-detection" content=3D"telephone=3Dno"><meta=
 name=3D"format-detection" content=3D"date=3Dno"><meta name=3D"format-detec=
tion" content=3D"address=3Dno"><meta name=3D"format-detection" content=3D"e=
mail=3Dno"><meta name=3D"viewport" content=3D"width=3Ddevice-width, minimal=
-ui, initial-scale=3D1.0, maximum-scale=3D1.0, user-scalable=3D0;"><meta ht=
tp-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge"><style data-ac-keep=3D"t=
rue"> .ExternalClass { width: 100%; background: inherit; background-color: =
inherit; } .ExternalClass, .ExternalClass p, .ExternalClass span, .External=
Class font, .ExternalClass td, .ExternalClass div { line-height: 100%; } .E=
xternalClass p, .ExternalClass ul, .ExternalClass ol { Margin: 0; } .undore=
set div p, .undoreset p { margin-bottom: 20px; } div[class^=3D"aolmail_divb=
ody"] { overflow: auto; } [owa] #ac-footer { padding: 20px 0px !important; =
background:=0Ainherit; background-color: inherit; } a[x-apple-data-detector=
s] { color: inherit !important; text-decoration: none !important; font-size=
: inherit !important; font-family: inherit !important; font-weight: inherit=
 !important; line-height: inherit !important; } @-ms-viewport { width: devi=
ce-width; } </style><style data-ac-keep=3D"true">=0A@media only screen and =
(max-width: 600px) { /*----------------------------------------------------=
---------------------*\ Abandoned Cart widget \*---------------------------=
---------------------------------------------*/ .td_abandoned-cart img {dis=
play: block;padding-right: 0 !important;padding-bottom: 0 !important;width:=
 100% !important;max-width: 100% !important;height: auto !important;} body =
{ padding: 0!important; font-size:1em!important; } * { -webkit-box-sizing: =
border-box; -moz-box-sizing: border-box; box-sizing: border-box; } *[class]=
.divbody {-webkit-text-size-adjust:none !important; width:auto !important;}=
 *[class].td_picture img {width:auto !important;} *[class].td_text { line-h=
eight: 110%; } *[class].td_button { width: auto; } /* Collapse all block el=
ements */ :not(.body) table { display: block!important; float:none!importan=
t; border-collapse:collapse !important; width:100% !important; min-width:10=
0% !important; clear:both!important; } :not(.body) thead,=0A:not(.body) tbo=
dy, :not(.body) tr { display:block!important; float:none!important; width:1=
00% !important; } :not(.body) th, :not(.body) td, :not(.body) p { display:b=
lock!important; float:none!important; width:100% !important; clear:both!imp=
ortant; } /* Remove browser default styling for elements */ ul, ol { margin=
-left: 20px; margin-bottom: 10px; margin-top: 10px; -webkit-margin-before: =
0; -webkit-margin-after: 0; -webkit-padding-start: 0; } /* Set default heig=
ht for spacer once collapse */ *[class].spacer { height: auto!important; } =
a[href^=3Ddate]{ color:inherit !important; text-decoration:none !important;=
} a[href^=3Dtelephone]{ color:inherit !important; text-decoration:none !imp=
ortant;} a[href^=3Daddress]{ color:inherit !important; text-decoration:none=
 !important;} a[href^=3Demail]{ color:inherit !important; text-decoration:n=
one !important;} /* Default table cell height */ td[height=3D"14"]{height:1=
4px!important;font-size:14px!important;line-height:14px!important;}=0A/*---=
----------------------------------------------------------------------*\ Pr=
oduct Widget \*------------------------------------------------------------=
-------------*/ .td_product > div { float: none !important; width: 100% !im=
portant; margin-bottom: 20px !important; } .td_product > div img { width: 7=
5% !important; } /* Default social icons */ *[class].ac-social-icon-16 {wid=
th:16px !important; height:16px !important;} *[class].ac-social-icon-24 {wi=
dth:24px !important; height:24px !important;} *[class].ac-social-icon-28 {w=
idth:28px !important; height:28px !important;} *[class].__ac_social_icons {=
 margin-right: 0px !important; } }=0A</style><style data-ac-keep=3D"true"> =
@media only screen and (max-width: 320px) { #layout-row1305 { max-height: 0=
px!important; font-size: 0px!important; display: none!important; visibility=
: hidden!important; } #layout-row1306 img { width: 100% !important; height:=
 auto !important; max-width: 320px !important; } #layout-row1307 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row1309 img { width: 100% !important; height: auto !important; max=
-width: 320px !important; } #layout-row1317 img { width: 100% !important; h=
eight: auto !important; max-width: 320px !important; } table, tbody, td, .d=
ivbody { display: table !important; width: 100% !important; max-width: 100%=
 !important; } .td_rss .rss-item img.iphone_large_image { width: auto !impo=
rtant; } u + .body { display: table !important; width: 100vw !important; mi=
n-width: 100vw !important; } u + .body table { display: table !important; w=
idth: 100% !important; min-width: 100%=0A!important; } u + .body td { displ=
ay: block !important; width: 100% !important; min-width: 100% !important; }=
 u + .body img { display: inline-block !important; margin: auto !important;=
 width: auto !important; vertical-align: bottom !important; } u + .body cen=
ter { display: block !important; margin: auto !important; width: 100% !impo=
rtant; min-width: 100% !important; text-align: center !important; } u + .bo=
dy table._ac_social_table, u + .body table._ac_social_table td, u + .body t=
able._ac_social_table div, u + .body table._ac_social_table a { display: in=
line-block !important; margin: auto !important; width: auto !important; min=
-width: auto !important; text-align: center !important; } u + .body table._=
ac_social_table img { display: inline-block !important; margin: auto !impor=
tant; width: 32px !important; min-width: 32px !important; max-width: 32px !=
important; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row1=
305 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row1306 img { width: 100% =
!important; height: auto !important; max-width: 375px !important; } #layout=
-row1307 img { width: 100% !important; height: auto !important; max-width: =
375px !important; } #layout-row1309 img { width: 100% !important; height: a=
uto !important; max-width: 375px !important; } #layout-row1317 img { width:=
 100% !important; height: auto !important; max-width: 375px !important; } t=
able, tbody, td, .divbody { display: table !important; width: 100% !importa=
nt; max-width: 100% !important; } .td_rss .rss-item img.iphone_large_image =
{ width: auto !important; } u + .body { display: table !important; width: 1=
00vw !important; min-width: 100vw !important; } u + .body table { display: =
table !important; width: 100% !important; min-width: 100% !important; } u +=
 .body td { display:=0Ablock !important; width: 100% !important; min-width:=
 100% !important; } u + .body img { display: inline-block !important; margi=
n: auto !important; width: auto !important; vertical-align: bottom !importa=
nt; } u + .body center { display: block !important; margin: auto !important=
; width: 100% !important; min-width: 100% !important; text-align: center !i=
mportant; } u + .body table._ac_social_table, u + .body table._ac_social_ta=
ble td, u + .body table._ac_social_table div, u + .body table._ac_social_ta=
ble a { display: inline-block !important; margin: auto !important; width: a=
uto !important; min-width: auto !important; text-align: center !important; =
} u + .body table._ac_social_table img { display: inline-block !important; =
margin: auto !important; width: 32px !important; min-width: 32px !important=
; max-width: 32px !important; }=0A}=0A@media only screen and (max-width: 41=
4px) { #layout-row1305 { max-height: 0px!important; font-size: 0px!importan=
t; display: none!important; visibility: hidden!important; } #layout-row1306=
 img { width: 100% !important; height: auto !important; max-width: 414px !i=
mportant; } #layout-row1307 img { width: 100% !important; height: auto !imp=
ortant; max-width: 380px !important; } #layout-row1309 img { width: 100% !i=
mportant; height: auto !important; max-width: 414px !important; } #layout-r=
ow1317 img { width: 100% !important; height: auto !important; max-width: 41=
4px !important; } table, tbody, td, .divbody { display: table !important; w=
idth: 100% !important; max-width: 100% !important; } .td_rss .rss-item img.=
iphone_large_image { width: auto !important; } u + .body { display: table !=
important; width: 100vw !important; min-width: 100vw !important; } u + .bod=
y table { display: table !important; width: 100% !important; min-width: 100=
% !important; } u + .body td { display:=0Ablock !important; width: 100% !im=
portant; min-width: 100% !important; } u + .body img { display: inline-bloc=
k !important; margin: auto !important; width: auto !important; vertical-ali=
gn: bottom !important; } u + .body center { display: block !important; marg=
in: auto !important; width: 100% !important; min-width: 100% !important; te=
xt-align: center !important; } u + .body table._ac_social_table, u + .body =
table._ac_social_table td, u + .body table._ac_social_table div, u + .body =
table._ac_social_table a { display: inline-block !important; margin: auto !=
important; width: auto !important; min-width: auto !important; text-align: =
center !important; } u + .body table._ac_social_table img { display: inline=
-block !important; margin: auto !important; width: 32px !important; min-wid=
th: 32px !important; max-width: 32px !important; }=0A}=0A@media only screen=
 and (max-width: 667px) { #layout-row1305 { max-height: 0px!important; font=
-size: 0px!important; display: none!important; visibility: hidden!important=
; } #layout-row1306 img { width: 100% !important; height: auto !important; =
max-width: 667px !important; } #layout-row1307 img { width: 100% !important=
; height: auto !important; max-width: 380px !important; } #layout-row1309 i=
mg { width: 100% !important; height: auto !important; max-width: 667px !imp=
ortant; } #layout-row1317 img { width: 100% !important; height: auto !impor=
tant; max-width: 667px !important; } table, tbody, td, .divbody { display: =
table !important; width: 100% !important; max-width: 100% !important; } .td=
_rss .rss-item img.iphone_large_image { width: auto !important; } u + .body=
 { display: table !important; width: 100vw !important; min-width: 100vw !im=
portant; } u + .body table { display: table !important; width: 100% !import=
ant; min-width: 100% !important; } u + .body td { display:=0Ablock !importa=
nt; width: 100% !important; min-width: 100% !important; } u + .body img { d=
isplay: inline-block !important; margin: auto !important; width: auto !impo=
rtant; vertical-align: bottom !important; } u + .body center { display: blo=
ck !important; margin: auto !important; width: 100% !important; min-width: =
100% !important; text-align: center !important; } u + .body table._ac_socia=
l_table, u + .body table._ac_social_table td, u + .body table._ac_social_ta=
ble div, u + .body table._ac_social_table a { display: inline-block !import=
ant; margin: auto !important; width: auto !important; min-width: auto !impo=
rtant; text-align: center !important; } u + .body table._ac_social_table im=
g { display: inline-block !important; margin: auto !important; width: 32px =
!important; min-width: 32px !important; max-width: 32px !important; }=0A} <=
/style><!--[if !mso]><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <=
![endif]--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowP=
NG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</=
xml>=0A<![endif]--></head><body id=3D"ac-designer" class=3D"body" style=3D"=
font-family: Arial; line-height: 1.1; margin: 0px; background-color: #FFFFF=
F; width: 100%; text-align: center;">=09=09<div style=3D"display: none !imp=
ortant; padding: 0; height: 1px; font-size: 1px; background-color: inherit =
!important; opacity: 0; color: transparent; mso-line-height-rule: exactly; =
line-height:1px; mso-hide:all;">=0A=09=09=09Deadline to Apply is Imminent -=
 Two Weeks Left!=0A=09=09=09<div style=3D"display: none; max-height: 0px; o=
verflow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C=0A=09=09=09</div>=0A=
=0A=09=09</div>=0A<div class=3D"divbody" style=3D"margin: 0px; outline: non=
e; padding: 0px; color: #000000; font-family: arial; line-height: 1.1; widt=
h: 100%; background-color: #FFFFFF; background: #FFFFFF; text-align: center=
;"><table class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" width=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background=
-color: #FFFFFF; background: #FFFFFF;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-li=
ne-height-rule: exactly;"><table class=3D"template-table" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#FFFFFF" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt; max-width: 650px;"><tr=0Astyle=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout_table_bb69b593919f088e7c4c4dc444967cb34b45e6fa" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1305"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1305" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g1305" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top=
" height=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spac=
er" style=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table ce=
llpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spa=
cer-body" valign=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-heig=
ht-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-margin1306" valign=3D"top" =
style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"l=
ayout-row1306" class=3D"layout layout-row widget _widget_picture " align=3D=
"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padd=
ing1306" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"imag=
e-td" align=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-heigh=
t-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/0=
8/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1739326504" alt=3D"" width=
=3D"325" style=3D"display: block; border: none; outline: none; width: 325px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-margin1304" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly; padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: initial !important; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-ro=
w1304" class=3D"layout layout-row widget _widget_text style1304" style=3D"m=
so-line-height-rule: exactly; margin: 0; padding: 0; background-color: #244=
df0;"><td id=3D"layout-row-padding1304" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly; background-color: #244df0; padding: 0;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1111=
"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"650" =
style=3D"line-height: 140%; mso-line-height-rule: exactly; margin: 0; outli=
ne: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit=
; line-height: 1.4; text-decoration: inherit; font-family: arial;"> <div st=
yle=3D"line-height: 140%; margin: 0; outline: none; padding: 0; color: #fff=
fff; font-size: 18px; font-weight: inherit; line-height: 1.4; text-decorati=
on: inherit; mso-line-height-rule: exactly;" data-line-height=3D"1.4"> <div=
 style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: =
inherit; font-weight: inherit; line-height: inherit; text-decoration: inher=
it; text-align: center;"><span style=3D"color: #ffffff; font-size: inherit;=
 font-weight: bold; line-height: inherit; text-decoration: inherit;" class=
=3D""><span style=3D"color: #ffffff; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; text-align: inherit;">T=
he Small Business Administration=0Ahas moved the deadline for all EIDL </sp=
an><span style=3D"color: #ffffff; font-size: inherit; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit; text-align: inherit;">appl=
ications</span><span style=3D"color: #ffffff; font-size: inherit; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; text-align: in=
herit;"> to December 31st 2021 Apply before the deadline!</span></span></di=
v>=0A </div>=0A<!--[if (gte mso 12)&(lte mso 15) ]>=0A<style data-ac-keep=
=3D"true" data-ac-inline=3D"false"> #text_div1111, #text_div1111 div { line=
-height: 140% !important; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin1317" valign=3D"top" style=3D=
"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-ro=
w1317" class=3D"layout layout-row widget _widget_picture " align=3D"left" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1317" v=
align=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fon=
t-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt=
;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" alig=
n=3D"left" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exac=
tly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-d=
aad-4389-a62e-b7bdcea92aec.png?r=3D178556658" alt=3D"" width=3D"650" style=
=3D"display: block; border: none; outline: none; width: 650px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-margin1307" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1307" class=3D"layout layout-row =
widget _widget_picture " align=3D"center" style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-padding1307" valign=3D"top" style=3D"mso-line-=
height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" widt=
h=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://co=
ntent.app-us1.com/Rnj5K/2021/11/08/8db24c11-71e7-459f-ab55-2957448b054e.jpe=
g?r=3D762733905" alt=3D"" width=3D"380" style=3D"display: block; border: no=
ne; outline: none; width: 380px; opacity: 1; max-width: 100%;"></td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-=
line-height-rule: exactly;"><td id=3D"layout-row-margin1308" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !imp=
ortant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr id=3D"layout-row1308" class=3D"layout layout-row widget _=
widget_text style1308" style=3D"mso-line-height-rule: exactly; margin: 0; p=
adding: 0; background-color: #244df0;"><td id=3D"layout-row-padding1308" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244=
df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rul=
e: exactly;"><td=0Aid=3D"text_div1115" class=3D"td_text td_block" valign=3D=
"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; =
margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font=
-weight: inherit; line-height: 1; text-decoration: inherit; font-family: ar=
ial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; =
font-size: 18px; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #f=
fffff; font-size: inherit; font-weight: inherit; line-height: inherit; text=
-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0;=
 color: #ffffff; font-size: inherit; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; text-align: center;"><span style=3D"color: =
#ffffff; font-size: inherit; font-weight: bold; line-height: inherit; text-=
decoration: inherit;" class=3D"">What is the EIDL? </span></div>=0A </div>=
=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr id=3D"layout-row1312" class=3D"layout layout-row clear-this " s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1312" v=
align=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fon=
t-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt=
;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_3963=
130ee067b57c81eb5c397db2cb7c6b577850" valign=3D"top" width=3D"325" style=3D=
"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0"=
 border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-margin1309" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1309" class=3D"layout layout-row =
widget _widget_picture " align=3D"center" style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-padding1309" valign=3D"top" style=3D"mso-line-=
height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" widt=
h=3D"325" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://cont=
ent.app-us1.com/Rnj5K/2021/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?r=
=3D57325156" alt=3D"" width=3D"203"=0Astyle=3D"display: block; border: none=
; outline: none; width: 203px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A<td id=3D"layout_table_788051f6407f23aecb05c5a73c22c174104ba0da" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin1310" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" =
cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: initial !important; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row1310" class=3D"layout layout-row widget _widget_text styl=
e1310" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td =
id=3D"layout-row-padding1310" valign=3D"top"=0Astyle=3D"mso-line-height-rul=
e: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div1117" class=3D"td_text td_block" va=
lign=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height-rule: ex=
actly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12p=
x; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fam=
ily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: in=
herit; font-size: 15px; font-weight: inherit; line-height: inherit; text-de=
coration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; co=
lor: inherit; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit;"><ul style=3D"margin: 0 0 0 40px; padding: 0;"=
><li=0Astyle=3D"display: list-item; line-height: inherit; list-style-type: =
disc; margin: 0 0 0 3px;"><span style=3D"color: #244df0; font-size: inherit=
; font-weight: bold; line-height: inherit; text-decoration: inherit; text-a=
lign: inherit;" class=3D"">Up to $2,000,000</span></li><li style=3D"display=
: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 3px=
;"><span style=3D"color: #244df0; font-size: inherit; font-weight: bold; li=
ne-height: inherit; text-decoration: inherit; text-align: inherit;" class=
=3D"">No payments for the first 24 months</span></li><li style=3D"display: =
list-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 3px;"=
><span style=3D"color: #244df0; font-size: inherit; font-weight: bold; line=
-height: inherit; text-decoration: inherit; text-align: inherit;" class=3D"=
">3.75% fixed interest rate over 30 years! </span></li><li style=3D"display=
: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 3px=
;"><span style=3D"color: #244df0;=0Afont-size: inherit; font-weight: bold; =
line-height: inherit; text-decoration: inherit; text-align: inherit;" class=
=3D"">Short for Economic Injury Disaster Loan</span></li><li style=3D"displ=
ay: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 3=
px;"><span class=3D"" style=3D"color: #244df0; font-size: inherit; font-wei=
ght: bold; line-height: inherit; text-decoration: inherit; text-align: inhe=
rit;">Part of the CARES act passed in March of 2020 </span></li><li style=
=3D"display: list-item; line-height: inherit; list-style-type: disc; margin=
: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size: inherit;=
 font-weight: bold; line-height: inherit; text-decoration: inherit; text-al=
ign: inherit;">All US business owners can apply</span></li><li style=3D"dis=
play: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 0=
 3px;"><span class=3D"" style=3D"color: #244df0; font-size: inherit; font-w=
eight: bold; line-height: inherit; text-decoration: inherit;=0Atext-align: =
inherit;">Based off of 2019 business tax returns</span></li><li style=3D"di=
splay: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 =
0 3px;"><span class=3D"" style=3D"color: #244df0; font-size: inherit; font-=
weight: bold; line-height: inherit; text-decoration: inherit; text-align: i=
nherit;">Minimum FICO of 550</span></li></ul></div>=0A </div>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-margin1311" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1311" class=3D"layout layout-row widget _widget_button style1=
311" style=3D"mso-line-height-rule: exactly; background-color: #244df0;"><t=
d id=3D"layout-row-padding1311" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; background-color: #244df0; padding: 5px;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_bl=
ock=0Acustomizable" valign=3D"top" align=3D"left" width=3D"630" style=3D"ms=
o-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D"margi=
n: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v:r=
oundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-m=
icrosoft-com:office:word" href=3D"https://motorcityfunding.lt.acemlnd.com/P=
rod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1=
Z21hbg=3D=3D&sig=3D3NLup3FDPggEB21RGC2HL4isCf7Foi6AEpViY3LiZRak&iat=3D16396=
74886&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2=
Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIV=
KsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D59A91A1A174" style=3D"v-text-=
anchor:middle; width:130px; height:60px; font-weight: bold;" arcsize=3D"6%"=
 strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" o:butto=
n=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox ins=
et=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Arial; f=
ont-size:14px; font-weight: bold;line-height: 1.1;">APPLY NOW</center> </v:=
textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfunding.=
lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1=
cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D3NLup3FDPggEB21RGC2HL4isCf7Foi6AEpViY3Li=
ZRak&iat=3D1639674886&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%=
2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXV=
t3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D59A91A1A174" =
style=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; backgroun=
d: #ff1414; background-color: #ff1414; border: 1px solid #B5B5B5; border-ra=
dius: 3px; font-family: Arial; font-size: 14px; display: inline-block; line=
-height: 1.1; text-align: center; text-decoration: none; mso-hide: all;"> <=
span style=3D"color:#ffffff;font-family:Arial;font-size:14px;font-weight: b=
old;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-margin1313" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1313" class=3D"layout layout-row widget _widget_text style131=
3" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding1313" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"text_div1119" class=3D"td_text td_block" valign=
=3D"top"=0Aalign=3D"left" width=3D"630" style=3D"mso-line-height-rule: exac=
tly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px;=
 font-weight: inherit; line-height: 1; text-decoration: inherit; font-famil=
y: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size: 14px; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; colo=
r: inherit; font-size: inherit; font-weight: inherit; line-height: inherit;=
 text-decoration: inherit;"> <span style=3D"color: #244df0; font-size: inhe=
rit; font-weight: inherit; line-height: inherit; text-decoration: inherit;"=
 class=3D""><br><span style=3D"color: inherit; font-size: inherit; font-wei=
ght: inherit; line-height: inherit; text-decoration: inherit; margin: 0;"><=
div style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-siz=
e: inherit; font-weight: 400; line-height: inherit; text-decoration: inheri=
t; font-family: arial; font-style:=0Anormal; text-align: -webkit-left;"><sp=
an style=3D"color: inherit; font-size: inherit; font-weight: inherit; line-=
height: inherit; text-decoration: inherit; font-family: arial;">If you have=
 any questions please do not hesitate to call.=C2=A0 We pride ourselves on =
always being available to our clients.</span></div>=0A<div style=3D"margin:=
 0; outline: none; padding: 0; color: inherit; font-size: inherit; font-wei=
ght: 400; line-height: inherit; text-decoration: inherit; font-family: aria=
l; font-style: normal; text-align: -webkit-left;"><br style=3D""></div>=0A<=
div style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-siz=
e: inherit; font-weight: 400; line-height: inherit; text-decoration: inheri=
t; font-family: arial; font-style: normal; text-align: -webkit-left;"><span=
 style=3D"color: inherit; font-size: inherit; font-weight: inherit; line-he=
ight: inherit; text-decoration: inherit; font-family: arial;">Sincerely,</s=
pan></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: inh=
erit; font-size: inherit; font-weight: 400; line-height: inherit; text-deco=
ration: inherit; font-family: arial; font-style: normal; text-align: -webki=
t-left;"><br style=3D""></div>=0A<div style=3D"margin: 0; outline: none; pa=
dding: 0; color: inherit; font-size: inherit; font-weight: 400; line-height=
: inherit; text-decoration: inherit; font-family: arial; font-style: normal=
; text-align: -webkit-left;"><span style=3D"color: inherit; font-size: inhe=
rit; font-weight: inherit; line-height: inherit; text-decoration: inherit;"=
><span style=3D"color: inherit; font-size: inherit; font-weight: bold; line=
-height: inherit; text-decoration: inherit; font-family: arial;">Samuel Bru=
gman</span><span style=3D"color: inherit; font-size: inherit; font-weight: =
inherit; line-height: inherit; text-decoration: inherit; font-family: arial=
;"> </span><span style=3D"color: inherit; font-size: inherit; font-weight: =
bold; line-height: inherit; text-decoration: inherit; font-family: arial;">=
| </span><span style=3D"color: inherit; font-size: inherit; font-weight: in=
herit; line-height: inherit; text-decoration: inherit; font-family: arial;"=
>Funding Manager</span></span></div>=0A</span></span></div>=0A </div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=
=3D"layout-row1316" class=3D"layout layout-row clear-this " style=3D"mso-li=
ne-height-rule: exactly;"><td id=3D"layout-row-padding1316" valign=3D"top" =
style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_26e8dfbeffbe423d=
5f095d2a5a7f1dc570b5d284" valign=3D"top" width=3D"325" style=3D"mso-line-he=
ight-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0=
" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1314=
" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly; padding: 5px;"><=
table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspac=
e: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1314" class=3D"layout l=
ayout-row widget _widget_text style1314" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-r=
ow-padding1314" valign=3D"top" style=3D"mso-line-height-rule: exactly; back=
ground-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"text_div1120" class=3D"td_text td_=
block" valign=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height=
-rule: exactly; margin: 0;=0Aoutline: none; padding: 0; color: inherit; fon=
t-size: 12px; font-weight: inherit; line-height: 1; text-decoration: inheri=
t; font-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0=
; color: #ffffff; font-size: 14px; font-weight: inherit; line-height: inher=
it; text-decoration: inherit; font-family: arial;"><div style=3D"margin: 0;=
 outline: none; padding: 0; color: inherit; font-size: 16px; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit; text-align: center;=
"><span style=3D"color: #ffffff; font-size: 14px; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; font-family: arial; text-align=
: inherit;"><span style=3D"color: #01df3a; font-size: inherit; font-weight:=
 bold; line-height: inherit; text-decoration: inherit;" class=3D"">Motor Ci=
ty Funding</span><br style=3D"font-size: 22px;">3000 Town Center</span><br>=
</div>=0A<span style=3D"color: #ffffff; font-size: 14px; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; font-family: arial; fon=
t-style: normal;" class=3D""><div style=3D"margin: 0; outline: none; paddin=
g: 0; color: inherit; font-size: inherit; font-weight: inherit; line-height=
: inherit; text-decoration: inherit; text-align: center;"><span style=3D"co=
lor: inherit; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; font-family: arial; text-align: inherit;">Sout=
hfield, MI 48076</span></div>=0A<div style=3D"margin: 0; outline: none; pad=
ding: 0; color: inherit; font-size: inherit; font-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit; font-style: normal; font-family: ar=
ial; text-align: center;"><span style=3D"color: inherit; font-size: inherit=
; font-weight: inherit; line-height: inherit; text-decoration: inherit; fon=
t-family: arial; text-align: inherit;">O: (315) 257-1195</span></div>=0A</s=
pan></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_955420c2d662ff22ae2b7f6a8=
17fbdeef86275f6" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule=
: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=
=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1315" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; padding: 8px;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: ini=
tial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row1315" class=3D"layout layout-row=
 widget _widget_button style1315" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #244df0;"><td id=3D"layout-row-padding1315" valign=3D"top"=
=0Astyle=3D"mso-line-height-rule: exactly; background-color: #244df0; paddi=
ng: 14px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td class=3D"td_button td_block customizable" valign=3D"top" align=3D"l=
eft" width=3D"281" style=3D"mso-line-height-rule: exactly;"> <div class=3D"=
button-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: =
center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com=
:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"mailto:sbru=
gman@motorcityfunding.com" style=3D"v-text-anchor:middle; width:135px; heig=
ht:58px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#57db28" strokew=
eight=3D"1pt" fillcolor=3D"#57db28" o:button=3D"true" o:allowincell=3D"true=
" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center =
style=3D"color:#ffffff;font-family:Arial; font-size:14px; font-weight: bold=
;line-height: 1.1;">CONTACT US</center> </v:textbox> </v:roundrect>=0A<![en=
dif]--> <a href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"margin: 0=
; outline: none; padding: 12px; color: #ffffff; background: #57db28; backgr=
ound-color: #57db28; border-radius: 3px; font-family: Arial; font-size: 14p=
x; display: inline-block; line-height: 1.1; text-align: center; text-decora=
tion: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial=
;font-size:14px;font-weight: bold;"> CONTACT US </span> </a> </div>=0A=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcity=
funding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=3D59&m=3D91&s=3D0ad92c0c4=
a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.co=
m&a=3D225362583" border=3D"0" width=3D"1" height=3D"1" style=3D"display:blo=
ck;width:1px!important;min-width:1px!important;max-width:1px!important;heig=
ht:1px!important;border:0;overflow:hidden;" /><div id=3D"ac-footer" style=
=3D"clear:both;background-color:inherit;background:inherit;min-width:100%;m=
so-table-lspace:0pt;mso-table-rspace:0pt;padding:20px;color:#000000;font-si=
ze:11px;font-family:arial,helvetica,sans-serif;line-height:140%;line-height=
:1.4;text-align:center;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent =
to: <span style=3D"font-size:11px;font-family:arial,helvetica,sans-serif;fo=
nt-weight:normal;text-decoration:none;outline:none;">linux1394-devel@lists.=
sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://=
motorcityfunding.activehosted.com/proc.php?nl=3D1&c=3D59&m=3D91&s=3D0ad92c0=
c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:=
arial,helvetica,sans-serif;font-weight:bold;text-decoration:underline;"><sp=
an style=3D"font-weight:bold;text-decoration:underline;">Unsubscribe</span>=
</a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town Center, Southf=
ield, United States=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=
=0A</html>
--_=_swift-87300038361bb72462be213.29101473_=_--



--===============3495654828438567256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3495654828438567256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3495654828438567256==--


