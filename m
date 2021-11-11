Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279FF44D780
	for <lists+linux1394-devel@lfdr.de>; Thu, 11 Nov 2021 14:47:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mlAPd-0000vl-Nn; Thu, 11 Nov 2021 13:46:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-32-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mlAPb-0000vS-TY
 for linux1394-devel@lists.sourceforge.net; Thu, 11 Nov 2021 13:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ORoex1sLA0QppmhieGlzg9nhzNHUofLcwD4li1LT4+M=; b=cIhGQJ2cRDC9+LWTqaYrz+6yT9
 1OKg6nGEgQJAlApMVSK2T3Aw52nzhi5/7JozYnaMZNzwnvZgjfdtmUcFx743kGulTBEsZxnfUbnQT
 Or2ZaBh9hjxiqr8E2tp9uJ2Jbcmm9LfJjylOCLcsGeadtTWCthRxUAkfDGuAMkL/ZuMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ORoex1sLA0QppmhieGlzg9nhzNHUofLcwD4li1LT4+M=; b=Ivy0CzYAsO9N
 OtqeGZegDBf1ctnkOc57/CyDbq2pofRhBhTnbokob1T76QFLgBXs7M+0Zj1POexI4R6bkhO0UUwCY
 FBvnuh9qDcDsymyIFxpXx9xt5WnINcMye3FgiGXGPS/7xHPnluElMh+pB5OeZQ8xozjy48bKr99Io
 88fgs=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlAPX-0004Jh-LA
 for linux1394-devel@lists.sourceforge.net; Thu, 11 Nov 2021 13:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=ORoex1sLA0QppmhieGlzg9nhzNHUofLcwD4li1LT4+M=;
 b=QVFcedP6P6oDnorDBqST+aImkAzJlTrUQzhH6V8rpO4tpQJZnCyvoESPLu1mIModJQ4mcrIOhju6
 Hwl22vYQHJQaNo0hU7IAR6jcD4+zS7ZvWuUhHFFmwJCIWlk+t8eClImDTcxfk/Dmn8rdRi8okfUu
 LYlQKEvozfeOk0tDU3A=
Received: by s15.avl4.acemsrvd.com id hhkfba2q2743 for
 <linux1394-devel@lists.sourceforge.net>;
 Thu, 11 Nov 2021 13:46:29 +0000 (envelope-from
 <bounce-2287853-32-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA EIDL Update!
Date: Thu, 11 Nov 2021 07:43:31 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMzMiAsIG01NCAsIHMyNw
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-32
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211111134629.5124.1620476814.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  New December 31st Deadline Approaching ~ Apply Now!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (1.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?192.92.97.219>]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mlAPX-0004Jh-LA
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
Content-Type: multipart/mixed; boundary="===============6374130948853519472=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============6374130948853519472==
Content-Type: multipart/alternative;
 boundary="_=_swift-1195058064618d1e03366fe1.53827991_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-1195058064618d1e03366fe1.53827991_=_
Content-Type: text/plain; charset=utf-8

New December 31st Deadline Approaching ~ Apply Now! 
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=32&amp;m=54&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-1195058064618d1e03366fe1.53827991_=_
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
@media only screen and (max-width: 320px) { #layout-row927 { max-height: 0p=
x!important; font-size: 0px!important; display: none!important; visibility:=
 hidden!important; } #layout-row928 img { width: 100% !important; height: a=
uto !important; max-width: 320px !important; } #layout-row929 img { width: =
100% !important; height: auto !important; max-width: 320px !important; } #l=
ayout-row931 img { width: 100% !important; height: auto !important; max-wid=
th: 320px !important; } #layout-row939 img { width: 100% !important; height=
: auto !important; max-width: 320px !important; } table, tbody, td, .divbod=
y { display: table !important; width: 100% !important; max-width: 100% !imp=
ortant; } .td_rss .rss-item img.iphone_large_image { width: auto !important=
; } u + .body { display: table !important; width: 100vw !important; min-wid=
th: 100vw !important; } u + .body table { display: table !important; width:=
 100% !important; min-width: 100%=0A!important; } u + .body td { display: b=
lock !important; width: 100% !important; min-width: 100% !important; } u + =
.body img { display: inline-block !important; margin: auto !important; widt=
h: auto !important; vertical-align: bottom !important; } u + .body center {=
 display: block !important; margin: auto !important; width: 100% !important=
; min-width: 100% !important; text-align: center !important; } u + .body ta=
ble._ac_social_table, u + .body table._ac_social_table td, u + .body table.=
_ac_social_table div, u + .body table._ac_social_table a { display: inline-=
block !important; margin: auto !important; width: auto !important; min-widt=
h: auto !important; text-align: center !important; } u + .body table._ac_so=
cial_table img { display: inline-block !important; margin: auto !important;=
 width: 32px !important; min-width: 32px !important; max-width: 32px !impor=
tant; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row927 { =
max-height: 0px!important; font-size: 0px!important; display: none!importan=
t; visibility: hidden!important; } #layout-row928 img { width: 100% !import=
ant; height: auto !important; max-width: 375px !important; } #layout-row929=
 img { width: 100% !important; height: auto !important; max-width: 375px !i=
mportant; } #layout-row931 img { width: 100% !important; height: auto !impo=
rtant; max-width: 375px !important; } #layout-row939 img { width: 100% !imp=
ortant; height: auto !important; max-width: 375px !important; } table, tbod=
y, td, .divbody { display: table !important; width: 100% !important; max-wi=
dth: 100% !important; } .td_rss .rss-item img.iphone_large_image { width: a=
uto !important; } u + .body { display: table !important; width: 100vw !impo=
rtant; min-width: 100vw !important; } u + .body table { display: table !imp=
ortant; width: 100% !important; min-width: 100% !important; } u + .body td =
{ display: block=0A!important; width: 100% !important; min-width: 100% !imp=
ortant; } u + .body img { display: inline-block !important; margin: auto !i=
mportant; width: auto !important; vertical-align: bottom !important; } u + =
.body center { display: block !important; margin: auto !important; width: 1=
00% !important; min-width: 100% !important; text-align: center !important; =
} u + .body table._ac_social_table, u + .body table._ac_social_table td, u =
+ .body table._ac_social_table div, u + .body table._ac_social_table a { di=
splay: inline-block !important; margin: auto !important; width: auto !impor=
tant; min-width: auto !important; text-align: center !important; } u + .bod=
y table._ac_social_table img { display: inline-block !important; margin: au=
to !important; width: 32px !important; min-width: 32px !important; max-widt=
h: 32px !important; }=0A}=0A@media only screen and (max-width: 414px) { #la=
yout-row927 { max-height: 0px!important; font-size: 0px!important; display:=
 none!important; visibility: hidden!important; } #layout-row928 img { width=
: 100% !important; height: auto !important; max-width: 414px !important; } =
#layout-row929 img { width: 100% !important; height: auto !important; max-w=
idth: 380px !important; } #layout-row931 img { width: 100% !important; heig=
ht: auto !important; max-width: 414px !important; } #layout-row939 img { wi=
dth: 100% !important; height: auto !important; max-width: 414px !important;=
 } table, tbody, td, .divbody { display: table !important; width: 100% !imp=
ortant; max-width: 100% !important; } .td_rss .rss-item img.iphone_large_im=
age { width: auto !important; } u + .body { display: table !important; widt=
h: 100vw !important; min-width: 100vw !important; } u + .body table { displ=
ay: table !important; width: 100% !important; min-width: 100% !important; }=
 u + .body td { display: block=0A!important; width: 100% !important; min-wi=
dth: 100% !important; } u + .body img { display: inline-block !important; m=
argin: auto !important; width: auto !important; vertical-align: bottom !imp=
ortant; } u + .body center { display: block !important; margin: auto !impor=
tant; width: 100% !important; min-width: 100% !important; text-align: cente=
r !important; } u + .body table._ac_social_table, u + .body table._ac_socia=
l_table td, u + .body table._ac_social_table div, u + .body table._ac_socia=
l_table a { display: inline-block !important; margin: auto !important; widt=
h: auto !important; min-width: auto !important; text-align: center !importa=
nt; } u + .body table._ac_social_table img { display: inline-block !importa=
nt; margin: auto !important; width: 32px !important; min-width: 32px !impor=
tant; max-width: 32px !important; }=0A}=0A@media only screen and (max-width=
: 667px) { #layout-row927 { max-height: 0px!important; font-size: 0px!impor=
tant; display: none!important; visibility: hidden!important; } #layout-row9=
28 img { width: 100% !important; height: auto !important; max-width: 667px =
!important; } #layout-row929 img { width: 100% !important; height: auto !im=
portant; max-width: 380px !important; } #layout-row931 img { width: 100% !i=
mportant; height: auto !important; max-width: 667px !important; } #layout-r=
ow939 img { width: 100% !important; height: auto !important; max-width: 667=
px !important; } table, tbody, td, .divbody { display: table !important; wi=
dth: 100% !important; max-width: 100% !important; } .td_rss .rss-item img.i=
phone_large_image { width: auto !important; } u + .body { display: table !i=
mportant; width: 100vw !important; min-width: 100vw !important; } u + .body=
 table { display: table !important; width: 100% !important; min-width: 100%=
 !important; } u + .body td { display: block=0A!important; width: 100% !imp=
ortant; min-width: 100% !important; } u + .body img { display: inline-block=
 !important; margin: auto !important; width: auto !important; vertical-alig=
n: bottom !important; } u + .body center { display: block !important; margi=
n: auto !important; width: 100% !important; min-width: 100% !important; tex=
t-align: center !important; } u + .body table._ac_social_table, u + .body t=
able._ac_social_table td, u + .body table._ac_social_table div, u + .body t=
able._ac_social_table a { display: inline-block !important; margin: auto !i=
mportant; width: auto !important; min-width: auto !important; text-align: c=
enter !important; } u + .body table._ac_social_table img { display: inline-=
block !important; margin: auto !important; width: 32px !important; min-widt=
h: 32px !important; max-width: 32px !important; }=0A} </style><!--[if !mso]=
><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]--><!--[if g=
te mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:PixelsPerInc=
h>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<![endif]--><=
/head><body id=3D"ac-designer" class=3D"body" style=3D"font-family: Arial; =
line-height: 1.1; margin: 0px; background-color: #FFFFFF; width: 100%; text=
-align: center;">=09=09<div style=3D"display: none !important; padding: 0; =
height: 1px; font-size: 1px; background-color: inherit !important; opacity:=
 0; color: transparent; mso-line-height-rule: exactly; line-height:1px; mso=
-hide:all;">=0A=09=09=09New December 31st Deadline Approaching ~ Apply Now!=
=0A=09=09=09<div style=3D"display: none; max-height: 0px; overflow: hidden;=
">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
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
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C=0A=09=09=09</div>=0A=0A=09=09</div>=
=0A<div class=3D"divbody" style=3D"margin: 0px; outline: none; padding: 0px=
; color: #000000; font-family: arial; line-height: 1.1; width: 100%; backgr=
ound-color: #FFFFFF; background: #FFFFFF; text-align: center;"><table class=
=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: a=
uto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFF=
F; background: #FFFFFF;"><tr style=3D"mso-line-height-rule: exactly;"><td a=
lign=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-line-height-rule=
: exactly;"><table class=3D"template-table" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" width=3D"650" bgcolor=3D"#FFFFFF" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t; max-width: 650px;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout_table_0bd1d191ed9e11ef06e65a064e74fc8993fb4106" valign=3D"top" a=
lign=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table root-table" width=3D"650" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td id=3D"layout-row-margin927" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px;=
 min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"=
layout-row927" class=3D"layout layout-row widget _widget_spacer " style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding927" valign=3D"=
top"=0Astyle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=3D"30" s=
tyle=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" style=3D"marg=
in: 0; outline: none; padding: 0; height: 30px;"><table cellpadding=3D"0" c=
ellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=
 style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body" valign=
=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-height-rule: exactly=
;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: =
exactly;"><td id=3D"layout-row-margin928" valign=3D"top" style=3D"mso-line-=
height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row928" clas=
s=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding928" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"cen=
ter" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly;">=
<img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-45=
06-a900-35ec4edba52c.png?r=3D5980500" alt=3D"" width=3D"325" style=3D"displ=
ay: block; border: none; outline: none; width: 325px; opacity: 1; max-width=
: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n926" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0;"><=
table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspac=
e: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row926" class=3D"layout la=
yout-row widget _widget_text style926" style=3D"mso-line-height-rule: exact=
ly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row=
-padding926" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgro=
und-color: #244df0; padding: 0;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-li=
ne-height-rule: exactly;"><td id=3D"text_div787"=0Aclass=3D"td_text td_bloc=
k" valign=3D"top" align=3D"left" width=3D"650" style=3D"line-height: 140%; =
mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color:=
 inherit; font-size: 12px; font-weight: inherit; line-height: 1.4; text-dec=
oration: inherit; font-family: arial;"> <div style=3D"line-height: 140%; ma=
rgin: 0; outline: none; padding: 0; color: #ffffff; font-size: 18px; font-w=
eight: inherit; line-height: 1.4; text-decoration: inherit; mso-line-height=
-rule: exactly;" data-line-height=3D"1.4"> <div style=3D"margin: 0; outline=
: none; padding: 0; color: #ffffff; font-size: inherit; font-weight: inheri=
t; line-height: inherit; text-decoration: inherit; text-align: center;"><sp=
an style=3D"color: #ffffff; font-size: inherit; font-weight: bold; line-hei=
ght: inherit; text-decoration: inherit;" class=3D""><span style=3D"color: #=
ffffff; font-size: inherit; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit; text-align: inherit;">The Small Business Administrat=
ion=0Ahas moved the deadline for all EIDL </span><span style=3D"color: #fff=
fff; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit; text-align: inherit;">applications</span><span style=3D=
"color: #ffffff; font-size: inherit; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; text-align: inherit;"> to December 31st 202=
1 Apply before the deadline!</span></span></div>=0A </div>=0A<!--[if (gte m=
so 12)&(lte mso 15) ]>=0A<style data-ac-keep=3D"true" data-ac-inline=3D"fal=
se"> #text_div787, #text_div787 div { line-height: 140% !important; };=0A</=
style>=0A<![endif]--></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layo=
ut-row-margin939" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><=
table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row939" class=3D"layout layout-row w=
idget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"layout-row-padding939" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"6=
50" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.=
app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D2=
18534949" alt=3D"" width=3D"650" style=3D"display: block; border: none; out=
line: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-he=
ight-rule: exactly;"><td id=3D"layout-row-margin929" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout=
-row929" class=3D"layout layout-row widget _widget_picture " align=3D"cente=
r" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding929=
" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" a=
lign=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule:=
 exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/08/8db24=
c11-71e7-459f-ab55-2957448b054e.jpeg?r=3D1193522839" alt=3D"" width=3D"380"=
 style=3D"display: block; border: none; outline: none; width: 380px; opacit=
y: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-margin930" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: initial !important; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row930" c=
lass=3D"layout layout-row widget _widget_text style930" style=3D"mso-line-h=
eight-rule: exactly; margin: 0; padding: 0; background-color: #244df0;"><td=
 id=3D"layout-row-padding930" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly; background-color: #244df0; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div791"=0Aclass=
=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"=
mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color:=
 inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-decor=
ation: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: non=
e; padding: 0; color: inherit; font-size: 18px; font-weight: inherit; line-=
height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #ffffff; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;"> <div style=3D"margin=
: 0; outline: none; padding: 0; color: #ffffff; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit; text-align: =
center;"><span style=3D"color: #ffffff; font-size: inherit; font-weight: bo=
ld; line-height: inherit; text-decoration: inherit;" class=3D"">What is the=
 EIDL? </span></div>=0A </div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row934" class=3D"lay=
out layout-row clear-this " style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding934" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td id=3D"layout_table_2a64fa819af08a68ba9b849377226e65cf94632e" valign=3D=
"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpad=
ding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " wi=
dth=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"layout-row-margin931" valign=3D"top" style=3D"mso-line-h=
eight-rule:=0Aexactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row931" cla=
ss=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding931" valign=3D"=
top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"cen=
ter" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;">=
<img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/8657e27f-7004-40ca=
-ba8e-9b2b418af77c.png?r=3D1353030806" alt=3D"" width=3D"203"=0Astyle=3D"di=
splay: block; border: none; outline: none; width: 203px; opacity: 1; max-wi=
dth: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_48adbe87ad24c46918f6094bca=
06de44bdf7faa0" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule:=
 exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D=
"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin932" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row932" class=3D"layout layout-row w=
idget _widget_text style932" style=3D"mso-line-height-rule: exactly; margin=
: 0; padding: 0;"><td id=3D"layout-row-padding932" valign=3D"top"=0Astyle=
=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div793" class=3D"=
td_text td_block" valign=3D"top" align=3D"left" width=3D"305" style=3D"mso-=
line-height-rule: exactly; margin: 0; outline: none; padding: 0; color: inh=
erit; font-size: 12px; font-weight: inherit; line-height: 1; text-decoratio=
n: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; p=
adding: 0; color: inherit; font-size: 15px; font-weight: inherit; line-heig=
ht: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: =
none; padding: 0; color: inherit; font-size: inherit; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"><ul style=3D"margin: 0 0 =
0 40px; padding: 0;"><li=0Astyle=3D"display: list-item; line-height: inheri=
t; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"color: #244df0=
; font-size: inherit; font-weight: bold; line-height: inherit; text-decorat=
ion: inherit; text-align: inherit;" class=3D"">Up to $2,000,000</span></li>=
<li style=3D"display: list-item; line-height: inherit; list-style-type: dis=
c; margin: 0 0 0 3px;"><span style=3D"color: #244df0; font-size: inherit; f=
ont-weight: bold; line-height: inherit; text-decoration: inherit; text-alig=
n: inherit;" class=3D"">No payments for the first 24 months</span></li><li =
style=3D"display: list-item; line-height: inherit; list-style-type: disc; m=
argin: 0 0 0 3px;"><span style=3D"color: #244df0; font-size: inherit; font-=
weight: bold; line-height: inherit; text-decoration: inherit; text-align: i=
nherit;" class=3D"">3.75% fixed interest rate over 30 years! </span></li><l=
i style=3D"display: list-item; line-height: inherit; list-style-type: disc;=
 margin: 0 0 0 3px;"><span style=3D"color: #244df0;=0Afont-size: inherit; f=
ont-weight: bold; line-height: inherit; text-decoration: inherit; text-alig=
n: inherit;" class=3D"">Short for Economic Injury Disaster Loan</span></li>=
<li style=3D"display: list-item; line-height: inherit; list-style-type: dis=
c; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size:=
 inherit; font-weight: bold; line-height: inherit; text-decoration: inherit=
; text-align: inherit;">Part of the CARES act passed in March of 2020 </spa=
n></li><li style=3D"display: list-item; line-height: inherit; list-style-ty=
pe: disc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; fon=
t-size: inherit; font-weight: bold; line-height: inherit; text-decoration: =
inherit; text-align: inherit;">All US business owners can apply</span></li>=
<li style=3D"display: list-item; line-height: inherit; list-style-type: dis=
c; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size:=
 inherit; font-weight: bold; line-height: inherit; text-decoration: inherit=
;=0Atext-align: inherit;">Based off of 2019 business tax returns</span></li=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size=
: inherit; font-weight: bold; line-height: inherit; text-decoration: inheri=
t; text-align: inherit;">Minimum FICO of 550</span></li></ul></div>=0A </di=
v>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout-row-margin933" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !importan=
t; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspac=
e: 0pt;"><tr id=3D"layout-row933" class=3D"layout layout-row widget _widget=
_button style933" style=3D"mso-line-height-rule: exactly; background-color:=
 #244df0;"><td id=3D"layout-row-padding933" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly; background-color: #244df0; padding: 5px;"><table wi=
dth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"td_=
button td_block=0Acustomizable" valign=3D"top" align=3D"left" width=3D"630"=
 style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" st=
yle=3D"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[i=
f mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"u=
rn:schemas-microsoft-com:office:word" href=3D"https://motorcityfunding.lt.a=
cemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5j=
b20lMkZzYnJ1Z21hbg=3D=3D&sig=3D5CCfkYmzRJz7BaE7fJ9PGgNSSgyvzShF8tuTWXq6xz8L=
&iat=3D1636638389&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eac=
tivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Qt=
V0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D32A54A1A93" style=
=3D"v-text-anchor:middle; width:130px; height:60px; font-weight: bold;" arc=
size=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff14=
14" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:=
textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-fami=
ly:Arial; font-size:14px; font-weight: bold;line-height: 1.1;">APPLY NOW</c=
enter> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorc=
ityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyR=
nd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D5CCfkYmzRJz7BaE7fJ9PGgNSSgyvz=
ShF8tuTWXq6xz8L&iat=3D1636638389&a=3D%7C%7C225362583%7C%7C&account=3Dmotorc=
ityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6=
rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D32=
A54A1A93" style=3D"margin: 0; outline: none; padding: 12px; color: #ffffff;=
 background: #ff1414; background-color: #ff1414; border: 1px solid #B5B5B5;=
 border-radius: 3px; font-family: Arial; font-size: 14px; display: inline-b=
lock; line-height: 1.1; text-align: center; text-decoration: none; mso-hide=
: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:14px;font=
-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-margin935" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: initial !important; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row935" class=3D"layout layout-row widget _widget_text s=
tyle935" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><t=
d id=3D"layout-row-padding935" valign=3D"top" style=3D"mso-line-height-rule=
: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"text_div795" class=3D"td_text td_block" valign=
=3D"top" align=3D"left"=0Awidth=3D"630" style=3D"mso-line-height-rule: exac=
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
t; font-family: arial; font-style: normal;=0Atext-align: -webkit-left;"><sp=
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
=3D"layout-row938" class=3D"layout layout-row clear-this " style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding938" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout_table_a1102a632b52d5dcc47d=
d63c3dc2ad85b56d101b" valign=3D"top" width=3D"325" style=3D"mso-line-height=
-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cl=
ass=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin936" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;=0Apadding: 5px;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr id=3D"layout-row936" class=3D"layout layout-=
row widget _widget_text style936" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row-padd=
ing936" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-c=
olor: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"text_div796" class=3D"td_text td_block" va=
lign=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height-rule: ex=
actly; margin: 0; outline:=0Anone; padding: 0; color: inherit; font-size: 1=
2px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-f=
amily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: =
inherit; font-size: inherit; font-weight: inherit; line-height: inherit; te=
xt-decoration: inherit;"><div style=3D"margin: 0; outline: none; padding: 0=
; color: inherit; font-size: 16px; font-weight: inherit; line-height: inher=
it; text-decoration: inherit; text-align: center;"><span style=3D"color: #5=
3ff14; font-size: inherit; font-weight: bold; line-height: inherit; text-de=
coration: inherit; font-family: arial; text-align: inherit;" class=3D"">Mot=
or City Funding</span></div>=0A <div style=3D"margin: 0; outline: none; pad=
ding: 0; color: inherit; font-size: 14px; font-weight: inherit; line-height=
: inherit; text-decoration: inherit; text-align: center;"><span style=3D"co=
lor: #ffffff; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; font-family: arial; text-align: inherit;" clas=
s=3D"">3000 Town Center</span></div>=0A<span style=3D"color: #ffffff; font-=
size: 14px; font-weight: inherit; line-height: inherit; text-decoration: in=
herit; font-family: arial; font-style: normal;" class=3D""><div style=3D"ma=
rgin: 0; outline: none; padding: 0; color: inherit; font-size: inherit; fon=
t-weight: inherit; line-height: inherit; text-decoration: inherit; text-ali=
gn: center;"><span style=3D"color: inherit; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit; font-family: ari=
al; text-align: inherit;">Southfield, MI 48076</span></div>=0A<div style=3D=
"margin: 0; outline: none; padding: 0; color: inherit; font-size: inherit; =
font-weight: inherit; line-height: inherit; text-decoration: inherit; font-=
style: normal; font-family: arial; text-align: center;"><span style=3D"colo=
r: inherit; font-size: inherit; font-weight: inherit; line-height: inherit;=
 text-decoration: inherit; font-family: arial; text-align: inherit;">O: (31=
5) 257-1195</span></div>=0A</span></div>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_t=
able_c1a7a6bff89fdd72a82f08c915f19d14306749ca" valign=3D"top" width=3D"325"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin937" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 8px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: initial !important; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row9=
37" class=3D"layout layout-row widget _widget_button style937" style=3D"mso=
-line-height-rule: exactly; background-color: #244df0;"><td id=3D"layout-ro=
w-padding937" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; back=
ground-color: #244df0; padding: 14px;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"td_button td_block customizabl=
e" valign=3D"top" align=3D"left" width=3D"281" style=3D"mso-line-height-rul=
e: exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outline: no=
ne; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=
=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:off=
ice:word" href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-text-anc=
hor:middle; width:135px; height:58px; font-weight: bold;" arcsize=3D"6%" st=
rokecolor=3D"#57db28" strokeweight=3D"1pt" fillcolor=3D"#57db28" o:button=
=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inse=
t=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Arial; fo=
nt-size:14px; font-weight: bold;line-height: 1.1;">CONTACT US</center> </v:=
textbox> </v:roundrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@motorcity=
funding.com" style=3D"margin: 0; outline: none; padding: 12px; color: #ffff=
ff; background: #57db28; background-color: #57db28; border-radius: 3px; fon=
t-family: Arial; font-size: 14px; display: inline-block; line-height: 1.1; =
text-align: center; text-decoration: none; mso-hide: all;"> <span style=3D"=
color:#ffffff;font-family:Arial;font-size:14px;font-weight: bold;"> CONTACT=
 US </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=
=0A<img src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=
=3D1&c=3D32&m=3D54&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3D=
motorcityfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"1" h=
eight=3D"1" style=3D"display:block;width:1px!important;min-width:1px!import=
ant;max-width:1px!important;height:1px!important;border:0;overflow:hidden;"=
 /><div id=3D"ac-footer" style=3D"clear:both;background-color:inherit;backg=
round:inherit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padd=
ing:20px;color:#000000;font-size:11px;font-family:arial,helvetica,sans-seri=
f;line-height:140%;line-height:1.4;text-align:center;box-sizing:border-box;=
">=0A=09<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-family=
:arial,helvetica,sans-serif;font-weight:normal;text-decoration:none;outline=
:none;">linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<=
br>=0A=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.php?nl=
=3D1&c=3D32&m=3D54&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=
=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold;=
text-decoration:underline;"><span style=3D"font-weight:bold;text-decoration=
:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Fu=
nding, 3000 Town Center, Southfield, United States=0A=09</center>=0A</div>=
=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-1195058064618d1e03366fe1.53827991_=_--



--===============6374130948853519472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6374130948853519472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6374130948853519472==--


