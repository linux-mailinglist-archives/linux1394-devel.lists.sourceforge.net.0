Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 060B247C321
	for <lists+linux1394-devel@lfdr.de>; Tue, 21 Dec 2021 16:39:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mzhEF-0000Pz-2u; Tue, 21 Dec 2021 15:39:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-63-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mzhED-0000Ph-4n
 for linux1394-devel@lists.sourceforge.net; Tue, 21 Dec 2021 15:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fq9QtzzxLQ1Ga1VxueiwUeRNMUL7O91rUyhYDkpMK/E=; b=RTBhUCJcJGGGq4NkH8PnECqZmA
 wQlVjzKWi7EnWZD0QDY45OhzEOSp65uPk9j8ckLqkCNzcn6Xw9Ud5xXVopNzhbTx0WLErskRVaggq
 lXllm/6u5EsGn0r7lF+UjFs6EeBQihvtdsN1r0Nge6jyG932Em86GqqFRZFNtqNGhQ6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=fq9QtzzxLQ1Ga1VxueiwUeRNMUL7O91rUyhYDkpMK/E=; b=CgF6m4Dohewz
 sfNIZuKasYaR8WQzDrm/bqkT7rOno8ebsIX+2kKpk5hza7NH3Js9YDvPsfXVpXESGye1Z61MS4UUH
 //XIGIOQU1v6UcpNClPYOzdlSNuGGBngbkCaRZEHO5P7FVcGyqxEOb96IT180GDBI6bxICwZhwWTe
 8Il1M=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzhE7-0004Bu-KL
 for linux1394-devel@lists.sourceforge.net; Tue, 21 Dec 2021 15:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=fq9QtzzxLQ1Ga1VxueiwUeRNMUL7O91rUyhYDkpMK/E=;
 b=2hDUYIm9zd3KGhKPZMLJKOZniOofDB5ulVe11Clu2qi+s63u2kPndk6UeOliUb089ANcficmyUAV
 WftzXukAUen4i44d9lk4AT0EZaw8iIHOV42pB9jsNYSoAu4s3H2km1+bhgR68JdAL+5naSAswGlt
 twGHzdLubIT3kIA2XDo=
Received: by s15.avl4.acemsrvd.com id ho7qg82q274l for
 <linux1394-devel@lists.sourceforge.net>;
 Tue, 21 Dec 2021 15:38:44 +0000 (envelope-from
 <bounce-2287853-63-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA's EIDL and Cash Grant Program Ending December 31
Date: Tue, 21 Dec 2021 09:31:33 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM2MyAsIG05NyAsIHM1OA
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-63
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211221153844.30151.1747374291.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Deadline to Apply is Imminent - 10 Days Left!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
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
X-Headers-End: 1mzhE7-0004Bu-KL
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
Content-Type: multipart/mixed; boundary="===============6608806655531228450=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============6608806655531228450==
Content-Type: multipart/alternative;
 boundary="_=_swift-75061236861c1f35607b5e2.56164907_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-75061236861c1f35607b5e2.56164907_=_
Content-Type: text/plain; charset=utf-8

Deadline to Apply is Imminent - 10 Days Left! 
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=63&amp;m=97&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-75061236861c1f35607b5e2.56164907_=_
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
@media only screen and (max-width: 320px) { #layout-row1361 { max-height: 0=
px!important; font-size: 0px!important; display: none!important; visibility=
: hidden!important; } #layout-row1362 img { width: 100% !important; height:=
 auto !important; max-width: 320px !important; } #layout-row1363 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row1365 img { width: 100% !important; height: auto !important; max=
-width: 320px !important; } #layout-row1373 img { width: 100% !important; h=
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
361 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row1362 img { width: 100% =
!important; height: auto !important; max-width: 375px !important; } #layout=
-row1363 img { width: 100% !important; height: auto !important; max-width: =
375px !important; } #layout-row1365 img { width: 100% !important; height: a=
uto !important; max-width: 375px !important; } #layout-row1373 img { width:=
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
4px) { #layout-row1361 { max-height: 0px!important; font-size: 0px!importan=
t; display: none!important; visibility: hidden!important; } #layout-row1362=
 img { width: 100% !important; height: auto !important; max-width: 414px !i=
mportant; } #layout-row1363 img { width: 100% !important; height: auto !imp=
ortant; max-width: 380px !important; } #layout-row1365 img { width: 100% !i=
mportant; height: auto !important; max-width: 414px !important; } #layout-r=
ow1373 img { width: 100% !important; height: auto !important; max-width: 41=
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
 and (max-width: 667px) { #layout-row1361 { max-height: 0px!important; font=
-size: 0px!important; display: none!important; visibility: hidden!important=
; } #layout-row1362 img { width: 100% !important; height: auto !important; =
max-width: 667px !important; } #layout-row1363 img { width: 100% !important=
; height: auto !important; max-width: 380px !important; } #layout-row1365 i=
mg { width: 100% !important; height: auto !important; max-width: 667px !imp=
ortant; } #layout-row1373 img { width: 100% !important; height: auto !impor=
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
 10 Days Left!=0A=09=09=09<div style=3D"display: none; max-height: 0px; ove=
rflow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
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
actly;"><td id=3D"layout_table_e35349c1d4fa43417bba31c8a845a0f423e99ad5" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1361"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1361" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g1361" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table wid=
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
ine-height-rule: exactly;"><td id=3D"layout-row-margin1362" valign=3D"top" =
style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"l=
ayout-row1362" class=3D"layout layout-row widget _widget_picture " align=3D=
"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padd=
ing1362" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"imag=
e-td" align=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-heigh=
t-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/0=
8/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D834055359" alt=3D"" width=3D=
"325" style=3D"display: block; border: none; outline: none; width: 325px; o=
pacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin1360" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: initial !important; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row13=
60" class=3D"layout layout-row widget _widget_text style1360" style=3D"mso-=
line-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0=
;"><td id=3D"layout-row-padding1360" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; background-color: #244df0; padding: 0;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1159"=
=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"650" s=
tyle=3D"line-height: 140%; mso-line-height-rule: exactly; margin: 0; outlin=
e: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit;=
 line-height: 1.4; text-decoration: inherit; font-family: arial;"> <div sty=
le=3D"line-height: 140%; margin: 0; outline: none; padding: 0; color: #ffff=
ff; font-size: 18px; font-weight: inherit; line-height: 1.4; text-decoratio=
n: inherit; mso-line-height-rule: exactly;" data-line-height=3D"1.4"> <div =
style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: i=
nherit; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t; text-align: center;"><span style=3D"color: #ffffff; font-size: inherit; =
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
=3D"true" data-ac-inline=3D"false"> #text_div1159, #text_div1159 div { line=
-height: 140% !important; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin1373" valign=3D"top" style=3D=
"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-ro=
w1373" class=3D"layout layout-row widget _widget_picture " align=3D"left" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1373" v=
align=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fon=
t-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt=
;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" alig=
n=3D"left" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exac=
tly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-d=
aad-4389-a62e-b7bdcea92aec.png?r=3D621970081" alt=3D"" width=3D"650" style=
=3D"display: block; border: none; outline: none; width: 650px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-margin1363" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1363" class=3D"layout layout-row =
widget _widget_picture " align=3D"center" style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-padding1363" valign=3D"top" style=3D"mso-line-=
height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" widt=
h=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://co=
ntent.app-us1.com/Rnj5K/2021/11/08/8db24c11-71e7-459f-ab55-2957448b054e.jpe=
g?r=3D2001919695" alt=3D"" width=3D"380" style=3D"display: block; border: n=
one; outline: none; width: 380px; opacity: 1; max-width: 100%;"></td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso=
-line-height-rule: exactly;"><td id=3D"layout-row-margin1364" valign=3D"top=
" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !im=
portant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row1364" class=3D"layout layout-row widget =
_widget_text style1364" style=3D"mso-line-height-rule: exactly; margin: 0; =
padding: 0; background-color: #244df0;"><td id=3D"layout-row-padding1364" v=
align=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #24=
4df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td=0Aid=3D"text_div1163" class=3D"td_text td_block" valign=
=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactl=
y; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; f=
ont-weight: inherit; line-height: 1; text-decoration: inherit; font-family:=
 arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inheri=
t; font-size: 18px; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color:=
 #ffffff; font-size: inherit; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding:=
 0; color: #ffffff; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; text-align: center;"><span style=3D"colo=
r: #ffffff; font-size: inherit; font-weight: bold; line-height: inherit; te=
xt-decoration: inherit;" class=3D"">What is the EIDL? </span></div>=0A </di=
v>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr id=3D"layout-row1368" class=3D"layout layout-row clear-this =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1368=
" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_1=
8688d5858727d4e3ed446d0d1e31ca6610be46f" valign=3D"top" width=3D"325" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin1365" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row1365" class=3D"layout layout-row=
 widget _widget_picture " align=3D"center" style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"layout-row-padding1365" valign=3D"top" style=3D"mso-line=
-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height=
-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" wid=
th=3D"325" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://con=
tent.app-us1.com/Rnj5K/2021/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?=
r=3D1204281174" alt=3D"" width=3D"203"=0Astyle=3D"display: block; border: n=
one; outline: none; width: 203px; opacity: 1; max-width: 100%;"></td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A<td id=3D"layout_table_bf7bba13be9a7f6e61b20e0bb9f2949c236dc8bb" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin1366" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" =
cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: initial !important; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row1366" class=3D"layout layout-row widget _widget_text styl=
e1366" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td =
id=3D"layout-row-padding1366" valign=3D"top"=0Astyle=3D"mso-line-height-rul=
e: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div1165" class=3D"td_text td_block" va=
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
actly;"><td id=3D"layout-row-margin1367" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1367" class=3D"layout layout-row widget _widget_button style1=
367" style=3D"mso-line-height-rule: exactly; background-color: #244df0;"><t=
d id=3D"layout-row-padding1367" valign=3D"top" style=3D"mso-line-height-rul=
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
Z21hbg=3D=3D&sig=3D95CffxSwqoWhDtrMgXsjpSicUhJBKZDTsTk8PbhVKnj&iat=3D164010=
1124&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2E=
com&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVK=
sAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D63A97A1A186" style=3D"v-text-a=
nchor:middle; width:130px; height:60px; font-weight: bold;" arcsize=3D"6%" =
strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" o:button=
=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inse=
t=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Arial; fo=
nt-size:14px; font-weight: bold;line-height: 1.1;">APPLY NOW</center> </v:t=
extbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfunding.l=
t.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1c=
y5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D95CffxSwqoWhDtrMgXsjpSicUhJBKZDTsTk8PbhVK=
nj&iat=3D1640101124&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2E=
activehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3=
QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D63A97A1A186" st=
yle=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background:=
 #ff1414; background-color: #ff1414; border: 1px solid #B5B5B5; border-radi=
us: 3px; font-family: Arial; font-size: 14px; display: inline-block; line-h=
eight: 1.1; text-align: center; text-decoration: none; mso-hide: all;"> <sp=
an style=3D"color:#ffffff;font-family:Arial;font-size:14px;font-weight: bol=
d;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"layout-row-margin1369" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: initial !important; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D=
"layout-row1369" class=3D"layout layout-row widget _widget_text style1369" =
style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"l=
ayout-row-padding1369" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cell=
spacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust=
: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div1167" class=3D"td_text td_block" valign=3D"top=
"=0Aalign=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; ma=
rgin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-w=
eight: inherit; line-height: 1; text-decoration: inherit; font-family: aria=
l;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; fo=
nt-size: 14px; font-weight: inherit; line-height: inherit; text-decoration:=
 inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;"> <span style=3D"color: #244df0; font-size: inherit; fo=
nt-weight: inherit; line-height: inherit; text-decoration: inherit;" class=
=3D""><br><span style=3D"color: inherit; font-size: inherit; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit; margin: 0;"><div st=
yle=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: inh=
erit; font-weight: 400; line-height: inherit; text-decoration: inherit; fon=
t-family: arial; font-style:=0Anormal; text-align: -webkit-left;"><span sty=
le=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height=
: inherit; text-decoration: inherit; font-family: arial;">If you have any q=
uestions please do not hesitate to call.=C2=A0 We pride ourselves on always=
 being available to our clients.</span></div>=0A<div style=3D"margin: 0; ou=
tline: none; padding: 0; color: inherit; font-size: inherit; font-weight: 4=
00; line-height: inherit; text-decoration: inherit; font-family: arial; fon=
t-style: normal; text-align: -webkit-left;"><br style=3D""></div>=0A<div st=
yle=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: inh=
erit; font-weight: 400; line-height: inherit; text-decoration: inherit; fon=
t-family: arial; font-style: normal; text-align: -webkit-left;"><span style=
=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;">Sincerely,</span></=
div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: inherit; =
font-size: inherit; font-weight: 400; line-height: inherit; text-decoration=
: inherit; font-family: arial; font-style: normal; text-align: -webkit-left=
;"><br style=3D""></div>=0A<div style=3D"margin: 0; outline: none; padding:=
 0; color: inherit; font-size: inherit; font-weight: 400; line-height: inhe=
rit; text-decoration: inherit; font-family: arial; font-style: normal; text=
-align: -webkit-left;"><span style=3D"color: inherit; font-size: inherit; f=
ont-weight: inherit; line-height: inherit; text-decoration: inherit;"><span=
 style=3D"color: inherit; font-size: inherit; font-weight: bold; line-heigh=
t: inherit; text-decoration: inherit; font-family: arial;">Samuel Brugman</=
span><span style=3D"color: inherit; font-size: inherit; font-weight: inheri=
t; line-height: inherit; text-decoration: inherit; font-family: arial;"> </=
span><span style=3D"color: inherit; font-size: inherit; font-weight: bold; =
line-height: inherit; text-decoration: inherit; font-family: arial;">| </sp=
an><span style=3D"color: inherit; font-size: inherit; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit; font-family: arial;">Fundi=
ng Manager</span></span></div>=0A</span></span></div>=0A </div>=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layo=
ut-row1372" class=3D"layout layout-row clear-this " style=3D"mso-line-heigh=
t-rule: exactly;"><td id=3D"layout-row-padding1372" valign=3D"top" style=3D=
"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-li=
ne-height-rule: exactly;"><td id=3D"layout_table_2b14e0647972e7cb99b4e2650d=
2bf410a9e2af26" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule:=
 exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D=
"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1370" valign=
=3D"top" style=3D"mso-line-height-rule:=0Aexactly; padding: 5px;"><table wi=
dth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: in=
itial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; =
mso-table-rspace: 0pt;"><tr id=3D"layout-row1370" class=3D"layout layout-ro=
w widget _widget_text style1370" style=3D"mso-line-height-rule: exactly; ma=
rgin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row-paddi=
ng1370" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-c=
olor: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"text_div1168" class=3D"td_text td_block" v=
align=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height-rule: e=
xactly; margin: 0;=0Aoutline: none; padding: 0; color: inherit; font-size: =
12px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-=
family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color:=
 #ffffff; font-size: 14px; font-weight: inherit; line-height: inherit; text=
-decoration: inherit; font-family: arial;"><div style=3D"margin: 0; outline=
: none; padding: 0; color: inherit; font-size: 16px; font-weight: inherit; =
line-height: inherit; text-decoration: inherit; text-align: center;"><span =
style=3D"color: #ffffff; font-size: 14px; font-weight: inherit; line-height=
: inherit; text-decoration: inherit; font-family: arial; text-align: inheri=
t;"><span style=3D"color: #01df3a; font-size: inherit; font-weight: bold; l=
ine-height: inherit; text-decoration: inherit;" class=3D"">Motor City Fundi=
ng</span><br style=3D"font-size: 22px;">3000 Town Center</span><br></div>=
=0A<span style=3D"color: #ffffff; font-size: 14px; font-weight: inherit; li=
ne-height: inherit; text-decoration: inherit; font-family: arial; font-styl=
e: normal;" class=3D""><div style=3D"margin: 0; outline: none; padding: 0; =
color: inherit; font-size: inherit; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit; text-align: center;"><span style=3D"color: i=
nherit; font-size: inherit; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit; font-family: arial; text-align: inherit;">Southfield=
, MI 48076</span></div>=0A<div style=3D"margin: 0; outline: none; padding: =
0; color: inherit; font-size: inherit; font-weight: inherit; line-height: i=
nherit; text-decoration: inherit; font-style: normal; font-family: arial; t=
ext-align: center;"><span style=3D"color: inherit; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit; font-fami=
ly: arial; text-align: inherit;">O: (315) 257-1195</span></div>=0A</span></=
div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A<td id=3D"layout_table_9abb765edff566b990874df1626b18=
9d12de8288" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"lay=
out layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-margin1371" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 8px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !i=
mportant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr id=3D"layout-row1371" class=3D"layout layout-row widget=
 _widget_button style1371" style=3D"mso-line-height-rule: exactly; backgrou=
nd-color: #244df0;"><td id=3D"layout-row-padding1371" valign=3D"top"=0Astyl=
e=3D"mso-line-height-rule: exactly; background-color: #244df0; padding: 14p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"td_button td_block customizable" valign=3D"top" align=3D"left" wi=
dth=3D"281" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-=
wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: center;=
">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" x=
mlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"mailto:sbrugman@mo=
torcityfunding.com" style=3D"v-text-anchor:middle; width:135px; height:58px=
; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#57db28" strokeweight=
=3D"1pt" fillcolor=3D"#57db28" o:button=3D"true" o:allowincell=3D"true" o:a=
llowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=
=3D"color:#ffffff;font-family:Arial; font-size:14px; font-weight: bold;line=
-height: 1.1;">CONTACT US</center> </v:textbox> </v:roundrect>=0A<![endif]-=
-> <a href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"margin: 0; out=
line: none; padding: 12px; color: #ffffff; background: #57db28; background-=
color: #57db28; border-radius: 3px; font-family: Arial; font-size: 14px; di=
splay: inline-block; line-height: 1.1; text-align: center; text-decoration:=
 none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font=
-size:14px;font-weight: bold;"> CONTACT US </span> </a> </div>=0A=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcityf=
unding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=3D63&m=3D97&s=3D0ad92c0c4a=
2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.com=
&a=3D225362583" border=3D"0" width=3D"1" height=3D"1" style=3D"display:bloc=
k;width:1px!important;min-width:1px!important;max-width:1px!important;heigh=
t:1px!important;border:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D=
"clear:both;background-color:inherit;background:inherit;min-width:100%;mso-=
table-lspace:0pt;mso-table-rspace:0pt;padding:20px;color:#000000;font-size:=
11px;font-family:arial,helvetica,sans-serif;line-height:140%;line-height:1.=
4;text-align:center;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent to:=
 <span style=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-=
weight:normal;text-decoration:none;outline:none;">linux1394-devel@lists.sou=
rceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://mot=
orcityfunding.activehosted.com/proc.php?nl=3D1&c=3D63&m=3D97&s=3D0ad92c0c4a=
2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:ari=
al,helvetica,sans-serif;font-weight:bold;text-decoration:underline;"><span =
style=3D"font-weight:bold;text-decoration:underline;">Unsubscribe</span></a=
>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town Center, Southfiel=
d, United States=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</=
html>
--_=_swift-75061236861c1f35607b5e2.56164907_=_--



--===============6608806655531228450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6608806655531228450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6608806655531228450==--


