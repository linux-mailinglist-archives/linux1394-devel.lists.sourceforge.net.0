Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C1643B502
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Oct 2021 17:01:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mfNxM-0005wM-Uj; Tue, 26 Oct 2021 15:01:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <bounce-2287853-12-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
 id 1mfNxL-0005w9-4S
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Oct 2021 15:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BbD29vmgIuA/+GFzIWuDPpsCc9BdU8ZK+0dQGK7Nn1Y=; b=XP3LzK8SqqT11SpeulvOTq2Ie4
 hDxO+DTYDqXBXxEh5P/mtEf7u5UOizrZh+MfxoGPgRWPtLz/bF3yoclRpDVj/IHjMsat40VtOMmfO
 4EaWu+QhSnhMrBoPcLwbwxzW5FDTUOcZIxwGGPmbcYdbF+ciLSIMhAA2U0fmZRfyCaJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=BbD29vmgIuA/+GFzIWuDPpsCc9BdU8ZK+0dQGK7Nn1Y=; b=jdD9tdwFaC2t
 /1AGMlf/y2sW05PukcMs34DzvhTNyf+NNyonGKjwA1SXGt8gGU6Zk8qcQEzqPF5hThGEs2HQ9GhYE
 yB6FY1s6m7cYF6O5+vabJiQoHd2cAF+2WECtaCLpPaRQ1Lt+XhUkvnIjO9Y2pCAoeJqGq4STKbsjh
 GCUuM=;
Received: from s14.avl3.acemsrvc.com ([192.92.97.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfNwp-00046n-S0
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Oct 2021 15:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s14.avl3.acemsrvc.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com;
 bh=BbD29vmgIuA/+GFzIWuDPpsCc9BdU8ZK+0dQGK7Nn1Y=;
 b=JSktSCHw0ytkMbemFVMfu9Vzrw9u3+Bg4nhXrQviMbcdT6lwsXSYlxjqs6AXw3SgpE2hiCEfFEQI
 ZEdsK4PJHT7KSGFdTKiwqEE0pgdxDQ0+2Rkg6GcK/GmFV6G3WGUINMRtgs8BUQz0nxgPo5LbCLja
 oEh42ksiiDPNobi1Dww=
Received: by s14.avl3.acemsrvc.com id hf0c2k2t56g8 for
 <linux1394-devel@lists.sourceforge.net>;
 Tue, 26 Oct 2021 14:13:17 +0000 (envelope-from
 <bounce-2287853-12-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA Still Accepting Applications for the EIDL!
Date: Tue, 26 Oct 2021 09:06:51 -0500
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMxMiAsIG0xNiAsIHM4
x-virtual-mta: s14.avl3.acemsrvc.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-12
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211026141317.6143.1857928637.swift@motorcityfunding.activehosted.com>
X-Headers-End: 1mfNwp-00046n-S0
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
Content-Type: multipart/mixed; boundary="===============2869007590464220758=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============2869007590464220758==
Content-Type: multipart/alternative;
 boundary="_=_swift-17551670661780b7bc6b2c2.57812115_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-17551670661780b7bc6b2c2.57812115_=_
Content-Type: text/plain; charset=utf-8

Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Credit! 

 

Motor City Funding offers professional and reliable services in the
financial sector, tailored to suit your individual situation. We offer
in-depth consultations to understand your financial goals and current
situation and craft a long-term solution that is right for you. 

APPLY TODAY  

ECONOMIC INJURY DISASTER LOAN 

 

* Up to $500,000

* 3.75% Interest Rate over 30 years

* The EIDL was created by the SBA to help small business meet financial
obligations and operating expenses that could have been met had the
disaster not occurred.

S.B.A. 7(a) 

 

* Interest Rates as Low as 6%

* Up to $5,000,000

* 10 - 30 Year Terms

* Monthly Payments

* Funds in as little as 2 weeks

BUSINESS LINE OF CREDIT 

 

* As low as 3.0% APR

* 2-3 Year Term Payback

* Revolving (As you pay back funds they become available again)

* Lower rates than personal credit cards

BRIDGE LOAN 

 

* Loan Amounts up $500,000

* 3mo - 1yr Terms

* Interest Rates Vary

* Funds in as little as 24 hours

APPLY NOW  

If you have any questions please do not hesitate to call. We pride
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=12&amp;m=16&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-17551670661780b7bc6b2c2.57812115_=_
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html>=0A<head><meta http-equiv=3D"Content-Type" content=3D"=
text/html; charset=3Dutf-8"><meta http-equiv=3D"Content-Language" content=
=3D"en-us"><meta name=3D"format-detection" content=3D"telephone=3Dno"><meta=
 name=3D"format-detection" content=3D"date=3Dno"><meta name=3D"format-detec=
tion" content=3D"address=3Dno"><meta name=3D"format-detection" content=3D"e=
mail=3Dno"><meta name=3D"viewport" content=3D"width=3Ddevice-width, minimal=
-ui, initial-scale=3D1.0, maximum-scale=3D1.0, user-scalable=3D0;"><meta ht=
tp-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge"><title>Preview</title><s=
tyle data-ac-keep=3D"true"> .ExternalClass { width: 100%; background: inher=
it; background-color: inherit; } .ExternalClass, .ExternalClass p, .Externa=
lClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { l=
ine-height: 100%; } .ExternalClass p, .ExternalClass ul, .ExternalClass ol =
{ Margin: 0; } .undoreset div p, .undoreset p { margin-bottom: 20px; } div[=
class^=3D"aolmail_divbody"] { overflow: auto; } [owa] #ac-footer { padding:=
 20px 0px=0A!important; background: inherit; background-color: inherit; } a=
[x-apple-data-detectors] { color: inherit !important; text-decoration: none=
 !important; font-size: inherit !important; font-family: inherit !important=
; font-weight: inherit !important; line-height: inherit !important; } @-ms-=
viewport { width: device-width; } </style><style data-ac-keep=3D"true">=0A@=
media only screen and (max-width: 600px) { /*------------------------------=
-------------------------------------------*\ Abandoned Cart widget \*-----=
-------------------------------------------------------------------*/ .td_a=
bandoned-cart img {display: block;padding-right: 0 !important;padding-botto=
m: 0 !important;width: 100% !important;max-width: 100% !important;height: a=
uto !important;} body { padding: 0!important; font-size:1em!important; } * =
{ -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: =
border-box; } *[class].divbody {-webkit-text-size-adjust:none !important; w=
idth:auto !important;} *[class].td_picture img {width:auto !important;} *[c=
lass].td_text { line-height: 110%; } *[class].td_button { width: auto; } /*=
 Collapse all block elements */ :not(.body) table { display: block!importan=
t; float:none!important; border-collapse:collapse !important; width:100% !i=
mportant; min-width:100% !important; clear:both!important; } :not(.body) th=
ead,=0A:not(.body) tbody, :not(.body) tr { display:block!important; float:n=
one!important; width:100% !important; } :not(.body) th, :not(.body) td, :no=
t(.body) p { display:block!important; float:none!important; width:100% !imp=
ortant; clear:both!important; } /* Remove browser default styling for eleme=
nts */ ul, ol { margin-left: 20px; margin-bottom: 10px; margin-top: 10px; -=
webkit-margin-before: 0; -webkit-margin-after: 0; -webkit-padding-start: 0;=
 } /* Set default height for spacer once collapse */ *[class].spacer { heig=
ht: auto!important; } a[href^=3Ddate]{ color:inherit !important; text-decor=
ation:none !important;} a[href^=3Dtelephone]{ color:inherit !important; tex=
t-decoration:none !important;} a[href^=3Daddress]{ color:inherit !important=
; text-decoration:none !important;} a[href^=3Demail]{ color:inherit !import=
ant; text-decoration:none !important;} /* Default table cell height */ td[h=
eight=3D"14"]{height:14px!important;font-size:14px!important;line-height:14=
px!important;}=0A/*--------------------------------------------------------=
-----------------*\ Product Widget \*--------------------------------------=
-----------------------------------*/ .td_product > div { float: none !impo=
rtant; width: 100% !important; margin-bottom: 20px !important; } .td_produc=
t > div img { width: 75% !important; } /* Default social icons */ *[class].=
ac-social-icon-16 {width:16px !important; height:16px !important;} *[class]=
.ac-social-icon-24 {width:24px !important; height:24px !important;} *[class=
].ac-social-icon-28 {width:28px !important; height:28px !important;} *[clas=
s].__ac_social_icons { margin-right: 0px !important; } }=0A</style><style d=
ata-ac-keep=3D"true"> @media only screen and (max-width: 320px) { #layout-r=
ow373 img { width: 100% !important; height: auto !important; max-width: 320=
px !important; } #layout-row375 img { width: 100% !important; height: auto =
!important; max-width: 320px !important; } #layout-row383 img { width: 100%=
 !important; height: auto !important; max-width: 320px !important; } #layou=
t-row388 img { width: 100% !important; height: auto !important; max-width: =
320px !important; } #layout-row393 img { width: 100% !important; height: au=
to !important; max-width: 320px !important; } #layout-row398 img { width: 1=
00% !important; height: auto !important; max-width: 320px !important; } #la=
yout-row402 img { width: 100% !important; height: auto !important; max-widt=
h: 320px !important; } #layout-row403 img { width: 100% !important; height:=
 auto !important; max-width: 320px !important; } table, tbody, td, .divbody=
 { display: table !important; width: 100% !important; max-width:=0A100% !im=
portant; } .td_rss .rss-item img.iphone_large_image { width: auto !importan=
t; } u + .body { display: table !important; width: 100vw !important; min-wi=
dth: 100vw !important; } u + .body table { display: table !important; width=
: 100% !important; min-width: 100% !important; } u + .body td { display: bl=
ock !important; width: 100% !important; min-width: 100% !important; } u + .=
body img { display: inline-block !important; margin: auto !important; width=
: auto !important; vertical-align: bottom !important; } u + .body center { =
display: block !important; margin: auto !important; width: 100% !important;=
 min-width: 100% !important; text-align: center !important; } u + .body tab=
le._ac_social_table, u + .body table._ac_social_table td, u + .body table._=
ac_social_table div, u + .body table._ac_social_table a { display: inline-b=
lock !important; margin: auto !important; width: auto !important; min-width=
: auto !important; text-align: center !important; } u + .body=0Atable._ac_s=
ocial_table img { display: inline-block !important; margin: auto !important=
; width: 32px !important; min-width: 32px !important; max-width: 32px !impo=
rtant; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row373 i=
mg { width: 100% !important; height: auto !important; max-width: 375px !imp=
ortant; } #layout-row375 img { width: 100% !important; height: auto !import=
ant; max-width: 375px !important; } #layout-row383 img { width: 100% !impor=
tant; height: auto !important; max-width: 375px !important; } #layout-row38=
8 img { width: 100% !important; height: auto !important; max-width: 339px !=
important; } #layout-row393 img { width: 100% !important; height: auto !imp=
ortant; max-width: 375px !important; } #layout-row398 img { width: 100% !im=
portant; height: auto !important; max-width: 375px !important; } #layout-ro=
w402 img { width: 100% !important; height: auto !important; max-width: 375p=
x !important; } #layout-row403 img { width: 100% !important; height: auto !=
important; max-width: 375px !important; } table, tbody, td, .divbody { disp=
lay: table !important; width: 100% !important; max-width: 100% !important; =
} .td_rss .rss-item=0Aimg.iphone_large_image { width: auto !important; } u =
+ .body { display: table !important; width: 100vw !important; min-width: 10=
0vw !important; } u + .body table { display: table !important; width: 100% =
!important; min-width: 100% !important; } u + .body td { display: block !im=
portant; width: 100% !important; min-width: 100% !important; } u + .body im=
g { display: inline-block !important; margin: auto !important; width: auto =
!important; vertical-align: bottom !important; } u + .body center { display=
: block !important; margin: auto !important; width: 100% !important; min-wi=
dth: 100% !important; text-align: center !important; } u + .body table._ac_=
social_table, u + .body table._ac_social_table td, u + .body table._ac_soci=
al_table div, u + .body table._ac_social_table a { display: inline-block !i=
mportant; margin: auto !important; width: auto !important; min-width: auto =
!important; text-align: center !important; } u + .body table._ac_social_tab=
le img { display:=0Ainline-block !important; margin: auto !important; width=
: 32px !important; min-width: 32px !important; max-width: 32px !important; =
}=0A}=0A@media only screen and (max-width: 414px) { #layout-row373 img { wi=
dth: 100% !important; height: auto !important; max-width: 414px !important;=
 } #layout-row375 img { width: 100% !important; height: auto !important; ma=
x-width: 414px !important; } #layout-row383 img { width: 100% !important; h=
eight: auto !important; max-width: 414px !important; } #layout-row388 img {=
 width: 100% !important; height: auto !important; max-width: 339px !importa=
nt; } #layout-row393 img { width: 100% !important; height: auto !important;=
 max-width: 414px !important; } #layout-row398 img { width: 100% !important=
; height: auto !important; max-width: 414px !important; } #layout-row402 im=
g { width: 100% !important; height: auto !important; max-width: 414px !impo=
rtant; } #layout-row403 img { width: 100% !important; height: auto !importa=
nt; max-width: 414px !important; } table, tbody, td, .divbody { display: ta=
ble !important; width: 100% !important; max-width: 100% !important; } .td_r=
ss .rss-item=0Aimg.iphone_large_image { width: auto !important; } u + .body=
 { display: table !important; width: 100vw !important; min-width: 100vw !im=
portant; } u + .body table { display: table !important; width: 100% !import=
ant; min-width: 100% !important; } u + .body td { display: block !important=
; width: 100% !important; min-width: 100% !important; } u + .body img { dis=
play: inline-block !important; margin: auto !important; width: auto !import=
ant; vertical-align: bottom !important; } u + .body center { display: block=
 !important; margin: auto !important; width: 100% !important; min-width: 10=
0% !important; text-align: center !important; } u + .body table._ac_social_=
table, u + .body table._ac_social_table td, u + .body table._ac_social_tabl=
e div, u + .body table._ac_social_table a { display: inline-block !importan=
t; margin: auto !important; width: auto !important; min-width: auto !import=
ant; text-align: center !important; } u + .body table._ac_social_table img =
{ display:=0Ainline-block !important; margin: auto !important; width: 32px =
!important; min-width: 32px !important; max-width: 32px !important; }=0A}=
=0A@media only screen and (max-width: 667px) { #layout-row373 img { width: =
100% !important; height: auto !important; max-width: 667px !important; } #l=
ayout-row375 img { width: 100% !important; height: auto !important; max-wid=
th: 434px !important; } #layout-row383 img { width: 100% !important; height=
: auto !important; max-width: 667px !important; } #layout-row388 img { widt=
h: 100% !important; height: auto !important; max-width: 339px !important; }=
 #layout-row393 img { width: 100% !important; height: auto !important; max-=
width: 667px !important; } #layout-row398 img { width: 100% !important; hei=
ght: auto !important; max-width: 667px !important; } #layout-row402 img { w=
idth: 100% !important; height: auto !important; max-width: 667px !important=
; } #layout-row403 img { width: 100% !important; height: auto !important; m=
ax-width: 667px !important; } table, tbody, td, .divbody { display: table !=
important; width: 100% !important; max-width: 100% !important; } .td_rss .r=
ss-item=0Aimg.iphone_large_image { width: auto !important; } u + .body { di=
splay: table !important; width: 100vw !important; min-width: 100vw !importa=
nt; } u + .body table { display: table !important; width: 100% !important; =
min-width: 100% !important; } u + .body td { display: block !important; wid=
th: 100% !important; min-width: 100% !important; } u + .body img { display:=
 inline-block !important; margin: auto !important; width: auto !important; =
vertical-align: bottom !important; } u + .body center { display: block !imp=
ortant; margin: auto !important; width: 100% !important; min-width: 100% !i=
mportant; text-align: center !important; } u + .body table._ac_social_table=
, u + .body table._ac_social_table td, u + .body table._ac_social_table div=
, u + .body table._ac_social_table a { display: inline-block !important; ma=
rgin: auto !important; width: auto !important; min-width: auto !important; =
text-align: center !important; } u + .body table._ac_social_table img { dis=
play:=0Ainline-block !important; margin: auto !important; width: 32px !impo=
rtant; min-width: 32px !important; max-width: 32px !important; }=0A} </styl=
e><!--[if !mso]><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <![end=
if]--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> =
<o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=
=0A<![endif]--></head><body id=3D"ac-designer" class=3D"body" style=3D"font=
-family: Arial; line-height: 1.1; margin: 0px; background-color: #ffffff; w=
idth: 100%; text-align: center;"><div class=3D"divbody" style=3D"margin: 0p=
x; outline: none; padding: 0px; color: #000000; font-family: arial; line-he=
ight: 1.1; width: 100%; background-color: #ffffff; background: #ffffff; tex=
t-align: center;"><table class=3D"template-table" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%" align=3D"left" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt; background-color: #ffffff; background: #ffffff;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td align=3D"center" valign=3D"top" width=3D"100%"=
 style=3D"mso-line-height-rule: exactly;"><table class=3D"template-table" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#f=
fffff" style=3D"-ms-text-size-adjust: auto;=0A-webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: auto; mso-table-l=
space: 0pt; mso-table-rspace: 0pt; max-width: 650px;"><tr style=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout_table_96f90ec7538de8dba11c24006991=
15eda53f9a0e" valign=3D"top" align=3D"center" width=3D"650" style=3D"mso-li=
ne-height-rule: exactly; background-color: #ffffff;"><table cellpadding=3D"=
0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table root-table" =
width=3D"650" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust=
: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt; background-color: #ffffff;"><tr sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"=
layout-row-margin373" valign=3D"top" style=3D"mso-line-height-rule: exactly=
; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust:=0A100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
373" class=3D"layout layout-row widget _widget_picture " align=3D"center" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding373" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=
=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exa=
ctly;"><img src=3D"https://motorcityfunding.img-us6.com/admin/mcf.png?r=3D2=
123255052" alt=3D"" width=3D"300" style=3D"display: block; border: none; ou=
tline: none; width: 300px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-h=
eight-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margi=
n374" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; =
background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row374" class=3D"layout layout-row widget _widget_text style374" style=
=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; background-color:=
 #244df0;"><td id=3D"layout-row-padding374" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly; background-color: #244df0; padding: 5px;"><table wi=
dth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text=
_div319" class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"=
630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padd=
ing: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height:=
 1; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0=
; outline: none; padding: 0; color: inherit; font-size: 20px; font-weight: =
inherit; line-height: inherit; text-decoration: inherit;"> <div style=3D"ma=
rgin: 0; outline: none; padding: 0; color: #ffffff; font-size: inherit; fon=
t-weight: inherit; line-height: inherit; text-decoration: inherit; text-ali=
gn: center;"> <span style=3D"color: #ffffff; font-size: inherit; font-weigh=
t: bold; line-height: inherit; text-decoration: inherit; font-family: arial=
; font-style: normal;" class=3D"">Economic Injury Disaster Loan, SBA 7(a), =
and Business Lines of Credit!</span> <br style=3D"color: #ffffff;"></div>=
=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffff=
ff;"><td id=3D"layout-row-margin403" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; background-color: #ffffff;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row403" class=3D"layout layout-row widget _widget_picture " ali=
gn=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-p=
adding403" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"im=
age-td" align=3D"left" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/1=
9/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?id=3D7317681?r=3D72464044" alt=
=3D"" width=3D"650" style=3D"display: block; border: none; outline: none; w=
idth: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin375" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row375" class=3D"layout layout-ro=
w widget _widget_picture " align=3D"center" style=3D"mso-line-height-rule: =
exactly;"><td id=3D"layout-row-padding375" valign=3D"top" style=3D"mso-line=
-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height=
-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" wid=
th=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"https://m=
otorcityfunding.img-us6.com/admin/unnamed.jpg?r=3D126134279" alt=3D"" width=
=3D"434" style=3D"display: block; border: none; outline: none; width: 434px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin404" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr id=3D"layout-row404" class=3D"layout layout-row widget _wid=
get_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding404" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"=
top" height=3D"10" style=3D"mso-line-height-rule: exactly;"><div class=3D"s=
pacer"=0Astyle=3D"margin: 0; outline: none; padding: 0; height: 10px;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=
=3D"spacer-body" valign=3D"top" height=3D"10" width=3D"650" style=3D"mso-li=
ne-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=
=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"la=
yout-row-margin377" valign=3D"top" style=3D"mso-line-height-rule: exactly; =
padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: initial !important; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr id=3D"layout-row377" class=3D"layout layout-row widget _widget_text sty=
le377" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td =
id=3D"layout-row-padding377" valign=3D"top" style=3D"mso-line-height-rule: =
exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height=
-rule: exactly;"><td id=3D"text_div322"=0Aclass=3D"td_text td_block" valign=
=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactl=
y; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; f=
ont-weight: inherit; line-height: 1; text-decoration: inherit; font-family:=
 arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #084b8=
a; font-size: 16px; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color:=
 #084b8a; font-size: inherit; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit; text-align: center;"><span style=3D"color: #084b8a=
; font-size: inherit; font-weight: 700; line-height: inherit; text-decorati=
on: inherit; font-family: arial; font-style: normal;" class=3D"">Motor City=
 Funding offers professional and reliable services in the financial sector,=
 tailored to suit your individual situation. We offer in-depth consultation=
s to understand your financial goals and current situation and=0Acraft a lo=
ng-term solution that is right for you.</span> <br style=3D"color: #084b8a;=
"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-colo=
r: #ffffff;"><td id=3D"layout-row-margin405" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; padding: 5px; background-color: #ffffff;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: i=
nitial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row405" class=3D"layout layout-ro=
w widget _widget_button style405" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #244df0;"><td id=3D"layout-row-padding405" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; background-color: #244df0; padding:=
 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;=
"><td class=3D"td_button td_block customizable" valign=3D"top" align=3D"lef=
t" width=3D"630" style=3D"mso-line-height-rule: exactly;"> <div class=3D"bu=
tton-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: ce=
nter;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:v=
ml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motor=
cityfunding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUy=
Rnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2HFThZ9QBW7Fh8WuYNtEHx35xSMV=
HQ85CUSVvJR2vLzY&iat=3D1635257597&a=3D%7C%7C225362583%7C%7C&account=3Dmotor=
cityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK=
6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D1=
2A16A1A33" style=3D"v-text-anchor:middle; width:142px; height:60px; font-we=
ight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fi=
llcolor=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=
=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#=
ffffff;font-family:Arial; font-size:14px; font-weight: bold;line-height: 1.=
1;">APPLY TODAY</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=
=3D"https://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2HFThZ9QB=
W7Fh8WuYNtEHx35xSMVHQ85CUSVvJR2vLzY&iat=3D1635257597&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D12A16A1A33" style=3D"margin: 0; outline: none; padding: 1=
2px; color: #ffffff; background: #ff1414; background-color: #ff1414; border=
: 1px solid #B5B5B5; border-radius: 3px; font-family: Arial; font-size: 14p=
x; display: inline-block; line-height: 1.1; text-align: center; text-decora=
tion: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial=
;font-size:14px;font-weight: bold;"> APPLY TODAY </span> </a> </div>=0A=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr st=
yle=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D=
"layout-row-margin402" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row4=
02" class=3D"layout layout-row widget _widget_picture " align=3D"left" styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding402" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D=
"left" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactl=
y;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-=
4389-a62e-b7bdcea92aec.png?id=3D7317681?r=3D177834755" alt=3D"" width=3D"65=
0" style=3D"display: block; border: none; outline: none; width: 650px; opac=
ity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background=
-color: #ffffff;"><td id=3D"layout-row-margin401" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; padding: 5px; background-color: #ffffff;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspac=
e: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row401" class=3D"layout la=
yout-row widget _widget_text style401" style=3D"mso-line-height-rule: exact=
ly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row=
-padding401" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgro=
und-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"ms=
o-line-height-rule: exactly;"><td id=3D"text_div341" class=3D"td_text td_bl=
ock" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-r=
ule: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-si=
ze: 12px; font-weight: inherit; line-height: 1; text-decoration: inherit; f=
ont-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; co=
lor: #ffffff; font-size: 20px; font-weight: inherit; line-height: inherit; =
text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding=
: 0; color: #ffffff; font-size: inherit; font-weight: inherit; line-height:=
 inherit; text-decoration: inherit; text-align: center;"> <span style=3D"co=
lor: #ffffff; font-size: inherit; font-weight: 700; line-height: inherit; t=
ext-decoration: inherit; font-family: arial; font-style: normal;" class=3D"=
">ECONOMIC INJURY DISASTER LOAN</span> <br style=3D"color: #ffffff;"></div>=
=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr id=3D"layout-row399" class=3D"layout layout-row clear-this " st=
yle=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D=
"layout-row-padding399" valign=3D"top" style=3D"mso-line-height-rule: exact=
ly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout_table_dafbe709a46fc4f0b7179a86d50=
c3241f270f9bf" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; m=
in-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D=
"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin398" valign=
=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row398" class=3D"layout layout-row widget _widget_picture " =
align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-padding398" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td clas=
s=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"mso-l=
ine-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/=
2021/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?r=3D858231397" alt=3D""=
 width=3D"238" style=3D"display: block; border: none; outline: none; width:=
 238px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_=
3d89696af8c8cc1d77d88da4001086f4480335eb" valign=3D"top" width=3D"325" styl=
e=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-margin400" valign=3D"top" style=3D"mso-line-height-rule: exactly;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row400" class=3D"layout layout-row =
widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"=
layout-row-padding400" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y;"><table width=3D"100%" border=3D"0"=0Acellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly;"><d=
iv class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; height: =
30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100=
%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;">=
<td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"325" style=
=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin397" =
valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row397" class=3D"layout layout=
-row widget _widget_text style397" style=3D"mso-line-height-rule: exactly; =
margin: 0; padding: 0;"><td id=3D"layout-row-padding397" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div338" class=
=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" style=
=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; co=
lor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-d=
ecoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline:=
 none; padding: 0; color: #084b8a; font-size: 14px; font-weight: inherit; l=
ine-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; o=
utline: none; padding: 0; color: #084b8a; font-size: inherit; font-weight: =
inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"mar=
gin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial; font-sty=
le: normal; font-weight: 400; text-align: -webkit-left;"><li style=3D"displ=
ay: list-item; line-height: inherit; list-style-type: disc; margin: 0; colo=
r: #084b8a; font-size: 16px;"><span style=3D"color: #084b8a; font-size: inh=
erit; font-weight: bold; line-height: inherit; text-decoration: inherit; fo=
nt-family: arial;" class=3D"">Up to $500,000</span></li><li style=3D"displa=
y:=0Alist-item; line-height: inherit; list-style-type: disc; margin: 0; col=
or: #084b8a; font-size: 16px;"><span style=3D"color: #084b8a; font-size: in=
herit; font-weight: bold; line-height: inherit; text-decoration: inherit; f=
ont-family: arial;" class=3D"">3.75% Interest Rate over 30 years</span></li=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; font-size: i=
nherit; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t; font-family: arial;" class=3D""><span style=3D"color: inherit; font-size=
: 16px; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t;" class=3D"">The EIDL was created by the SBA to help small business meet =
financial obligations and operating expenses that could have been met had t=
he disaster not occurred</span>.</span></li></ul><br style=3D"color: #084b8=
a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin396" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row396" class=3D"layout layout-row widget _widget_t=
ext style396" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #244df0;"><td id=3D"layout-row-padding396" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; background-color: #244df0; paddi=
ng: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div337" class=3D"td_text td_block" valign=3D"top" alig=
n=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0;=
 outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: i=
nherit; line-height: 1; text-decoration: inherit; font-family: arial;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size:=
 20px; font-weight: inherit; line-height: inherit; text-decoration: inherit=
;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-size:=
 inherit; font-weight: 700; line-height: inherit; text-decoration: inherit;=
 font-family: arial; font-style: normal;" class=3D"">S.B.A. 7(a)</span> <br=
 style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row394" class=3D"=
layout layout-row clear-this " style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-padding394" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_=
table_d19d717f20cb41e1856fe10436dc79ea46de53ed" valign=3D"top" width=3D"325=
" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspa=
cing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin395" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row395" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding395" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly=
;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; hei=
ght: 30px;"><table cellpadding=3D"0" cellspacing=3D"0"=0Aborder=3D"0" width=
=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"325"=
 style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A=
</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n392" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row392" class=3D"layout =
layout-row widget _widget_text style392" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding392" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div334" c=
lass=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" sty=
le=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; =
color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text=
-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #084b8a; font-size: 16px; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"m=
argin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial; font-s=
tyle: normal; font-weight: 400; text-align: -webkit-left;"><li style=3D"dis=
play: list-item; line-height: inherit; list-style-type: disc; margin: 0; co=
lor: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-weig=
ht: bold; line-height: inherit; text-decoration: inherit; font-family: aria=
l;" class=3D"">Interest Rates as Low as 6%</span></li><li style=3D"display:=
=0Alist-item; line-height: inherit; list-style-type: disc; margin: 0; color=
: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-weight:=
 bold; line-height: inherit; text-decoration: inherit; font-family: arial;"=
 class=3D"">Up to $5,000,000</span></li><li style=3D"display: list-item; li=
ne-height: inherit; list-style-type: disc; margin: 0; color: #084b8a;"><spa=
n style=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-heig=
ht: inherit; text-decoration: inherit; font-family: arial;" class=3D"">10 -=
 30 Year Terms</span></li><li style=3D"display: list-item; line-height: inh=
erit; list-style-type: disc; margin: 0; color: #084b8a;"><span style=3D"col=
or: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit; t=
ext-decoration: inherit; font-family: arial;" class=3D"">Monthly Payments</=
span></li><li style=3D"display: list-item; line-height: inherit; list-style=
-type: disc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; fon=
t-size: inherit;=0Afont-weight: bold; line-height: inherit; text-decoration=
: inherit; font-family: arial;" class=3D"">Funds in as little as 2 weeks</s=
pan></li></ul><br style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A<td id=3D"layout_table_d9e5095b7b2bf1add5a9a5e6b4675e8470173ea6" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin393" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row393" cl=
ass=3D"layout layout-row widget _widget_picture " align=3D"left" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding393" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"lef=
t" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><i=
mg src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/72d82e8b-4724-4459-9=
eff-032cd1c50677.jpeg?id=3D7317507?r=3D1370944224" alt=3D"" width=3D"318" s=
tyle=3D"display: block; border: none; outline: none; width: 318px; opacity:=
 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin391" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row391" class=3D"layout layout-row widget _widget_t=
ext style391" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #244df0;"><td id=3D"layout-row-padding391" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; background-color: #244df0; paddi=
ng: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div333" class=3D"td_text td_block" valign=3D"top" alig=
n=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0;=
 outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: i=
nherit; line-height: 1; text-decoration: inherit; font-family: arial;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size:=
 20px; font-weight: inherit; line-height: inherit; text-decoration: inherit=
;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-size:=
 inherit; font-weight: 700; line-height: inherit; text-decoration: inherit;=
 font-family: arial; font-style: normal;" class=3D"">BUSINESS LINE OF CREDI=
T</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row38=
9" class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: e=
xactly; background-color: #ffffff;"><td id=3D"layout-row-padding389" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout_table_64a08eebb657de6ac141d81a60a1e4aadea72640" valign=3D"top" =
width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td=0Aid=3D"layout-row-margin388" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row388" class=
=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-padding388" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"center=
" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><im=
g=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/2386d3f8-90e6-4b50-=
a4d8-21653389cc8e.png?id=3D7317374?r=3D124580901" alt=3D"" width=3D"200" st=
yle=3D"display: block; border: none; outline: none; width: 200px; opacity: =
1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_05449b4e4efbe9421=
995bbc63620dea01619bd83" valign=3D"top" width=3D"325" style=3D"mso-line-hei=
ght-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0"=
 class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin390" =
valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr id=3D"layout-row390" class=3D"layout layout-row widget _widget_spac=
er " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding3=
90" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D=
"100%" border=3D"0"=0Acellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text=
-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collap=
se; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" h=
eight=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer"=
 style=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellp=
adding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer=
-body" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-=
rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"layout-row-margin387" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr id=3D"layout-row387" class=3D"layout layout-row widget _widget_=
text style387" style=3D"mso-line-height-rule: exactly; margin: 0; padding: =
0;"><td id=3D"layout-row-padding387" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"text_div330" class=3D"td_text td_block" =
valign=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-rule=
: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-size:=
 12px; font-weight: inherit; line-height: 1; text-decoration: inherit; font=
-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color=
: #084b8a; font-size: 16px; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0=
; color: #084b8a; font-size: inherit; font-weight: inherit; line-height: in=
herit; text-decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; paddi=
ng: 0; color: #084b8a; font-family: arial; font-style: normal; font-weight:=
 400; text-align: -webkit-left;"><li style=3D"display: list-item; line-heig=
ht: inherit; list-style-type: disc; margin: 0; color: #084b8a; text-align: =
left;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold=
; line-height: inherit; text-decoration: inherit; font-family: arial;" clas=
s=3D"">As low as 3.0% APR</span></li><li=0Astyle=3D"display: list-item; lin=
e-height: inherit; list-style-type: disc; margin: 0; color: #084b8a; text-a=
lign: left;"><span style=3D"color: #084b8a; font-size: inherit; font-weight=
: bold; line-height: inherit; text-decoration: inherit; font-family: arial;=
" class=3D"">2-3 Year Term Payback</span></li><li style=3D"display: list-it=
em; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a;=
 text-align: left;"><span style=3D"color: #084b8a; font-size: inherit; font=
-weight: bold; line-height: inherit; text-decoration: inherit; font-family:=
 arial;" class=3D"">Revolving (As you pay back funds they become available =
again)</span></li><li style=3D"display: list-item; line-height: inherit; li=
st-style-type: disc; margin: 0; color: #084b8a; text-align: left;"><span st=
yle=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: =
inherit; text-decoration: inherit; font-family: arial;" class=3D"">Lower ra=
tes than personal credit cards</span></li></ul><br style=3D"color:=0A#084b8=
a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin386" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row386" class=3D"layout layout-row widget _widget_t=
ext style386" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #244df0;"><td id=3D"layout-row-padding386" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; background-color: #244df0; paddi=
ng: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div329" class=3D"td_text td_block" valign=3D"top" alig=
n=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0;=
 outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: i=
nherit; line-height: 1; text-decoration: inherit; font-family: arial;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size:=
 20px; font-weight: inherit; line-height: inherit; text-decoration: inherit=
;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-size:=
 inherit; font-weight: 700; line-height: inherit; text-decoration: inherit;=
 font-family: arial; font-style: normal;" class=3D"">BRIDGE LOAN</span> <br=
 style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row384" class=3D"=
layout layout-row clear-this " style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-padding384" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_=
table_c832cdce040c52adafd8d4f810907f7c37e240b7" valign=3D"top" width=3D"325=
" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspa=
cing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin385" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row385" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding385" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly=
;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; hei=
ght: 30px;"><table cellpadding=3D"0" cellspacing=3D"0"=0Aborder=3D"0" width=
=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"325"=
 style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A=
</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n382" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row382" class=3D"layout =
layout-row widget _widget_text style382" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding382" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div326" c=
lass=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" sty=
le=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; =
color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text=
-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #084b8a; font-size: 16px; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"m=
argin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial; font-s=
tyle: normal; font-weight: 400; text-align: -webkit-left;"><li style=3D"dis=
play: list-item; line-height: inherit; list-style-type: disc; margin: 0; te=
xt-align: left; color: #084b8a;"><span style=3D"color: #084b8a; font-size: =
inherit; font-weight: bold; line-height: inherit; text-decoration: inherit;=
 font-family: arial;" class=3D"">Loan Amounts up $500,000</span></li><li=0A=
style=3D"display: list-item; line-height: inherit; list-style-type: disc; m=
argin: 0; text-align: left; color: #084b8a;"><span style=3D"color: #084b8a;=
 font-size: inherit; font-weight: bold; line-height: inherit; text-decorati=
on: inherit; font-family: arial;" class=3D"">3mo - 1yr Terms</span></li><li=
 style=3D"display: list-item; line-height: inherit; list-style-type: disc; =
margin: 0; text-align: left; color: #084b8a;"><span style=3D"color: #084b8a=
; font-size: inherit; font-weight: bold; line-height: inherit; text-decorat=
ion: inherit; font-family: arial;" class=3D"">Interest Rates Vary</span></l=
i><li style=3D"display: list-item; line-height: inherit; list-style-type: d=
isc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"color: #0=
84b8a; font-size: inherit; font-weight: bold; line-height: inherit; text-de=
coration: inherit; font-family: arial;" class=3D"">Funds in as little as 24=
 hours</span></li></ul><br style=3D"color: #084b8a;"></div>=0A </div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A<td id=3D"layout_table_64e0300607e56efce61bafcfda202f3ace5f648a"=
 valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin383" valign=3D"top" style=3D"=
mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
383" class=3D"layout layout-row widget _widget_picture " align=3D"center" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding383" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" ali=
gn=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: e=
xactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/f75a4ad9-=
80f6-4393-b275-de539fe04faf.jpeg?id=3D7317250?r=3D19420922" alt=3D"" width=
=3D"259" style=3D"display: block; border: none; outline: none; width: 259px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff=
;"><td id=3D"layout-row-margin381" valign=3D"top" style=3D"mso-line-height-=
rule: exactly; padding: 0px; background-color: #ffffff;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !im=
portant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row381" class=3D"layout layout-row widget _=
widget_button style381" style=3D"mso-line-height-rule: exactly; background-=
color: #244df0;"><td id=3D"layout-row-padding381" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; background-color: #244df0; padding: 5px;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td cl=
ass=3D"td_button td_block customizable" valign=3D"top" align=3D"left" width=
=3D"640" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wra=
pper" style=3D"margin: 0; outline: none; padding: 0; text-align: center;">=
=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xml=
ns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motorcityfun=
ding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5=
wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2HFThZ9QBW7Fh8WuYNtEHx35xSMVHQ85CUS=
VvJR2vLzY&iat=3D1635257597&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfun=
ding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%=
2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D12A16A1A=
33" style=3D"v-text-anchor:middle; width:150px; height:60px; font-weight: b=
old;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=
=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"fal=
se" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;=
font-family:Arial; font-size:18px; font-weight: bold;line-height: 1.1;">APP=
LY NOW</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https=
://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cCUz=
QSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2HFThZ9QBW7Fh8WuYNtE=
Hx35xSMVHQ85CUSVvJR2vLzY&iat=3D1635257597&a=3D%7C%7C225362583%7C%7C&account=
=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0=
DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268=
b7&i=3D12A16A1A33" style=3D"margin: 0; outline: none; padding: 10px; color:=
 #ffffff; background: #ff1414; background-color: #ff1414; border: 1px solid=
 #B5B5B5; border-radius: 3px; font-family: Arial; font-size: 18px; display:=
 inline-block; line-height: 1.1; text-align: center; text-decoration: none;=
 mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:=
18px;font-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin380" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: =
5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: initial !important; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D=
"layout-row380" class=3D"layout layout-row widget _widget_text style380" st=
yle=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"lay=
out-row-padding380" valign=3D"top" style=3D"mso-line-height-rule: exactly; =
padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"text_div324"=0Aclass=3D"td_text td_block" valign=3D"top" =
align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin=
: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-weigh=
t: inherit; line-height: 1; text-decoration: inherit; font-family: arial;">=
 <div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-s=
ize: 16px; font-weight: inherit; line-height: inherit; text-decoration: inh=
erit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a;=
 font-size: inherit; font-weight: inherit; line-height: inherit; text-decor=
ation: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color=
: #084b8a; font-size: inherit; font-weight: 400; line-height: inherit; text=
-decoration: inherit; font-family: arial; font-style: normal; text-align: -=
webkit-left;"><span style=3D"color: #084b8a; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit; font-family: ar=
ial;" class=3D"">If you have any questions please do not=0Ahesitate to call=
. We pride ourselves on always being available to our clients.</span></div>=
=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font=
-size: inherit; font-weight: 400; line-height: inherit; text-decoration: in=
herit; font-family: arial; font-style: normal; text-align: -webkit-left;"><=
br style=3D"color: #084b8a;color: #084b8a;"></div>=0A<div style=3D"margin: =
0; outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weig=
ht: 400; line-height: inherit; text-decoration: inherit; font-family: arial=
; font-style: normal; text-align: -webkit-left;"><span style=3D"color: #084=
b8a; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit; font-family: arial;" class=3D"">Sincerely,</span></div>=
=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font=
-size: inherit; font-weight: 400; line-height: inherit; text-decoration: in=
herit; font-family: arial; font-style: normal; text-align: -webkit-left;"><=
br style=3D"color: #084b8a;color: #084b8a;"></div>=0A<div style=3D"margin: =
0; outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weig=
ht: 400; line-height: inherit; text-decoration: inherit; font-family: arial=
; font-style: normal; text-align: -webkit-left;"><span style=3D"color: #084=
b8a; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;" class=3D""><span style=3D"color: #084b8a; font-size: i=
nherit; font-weight: bold; line-height: inherit; text-decoration: inherit; =
font-family: arial;">Samuel Brugman</span><span style=3D"color: #084b8a; fo=
nt-size: inherit; font-weight: inherit; line-height: inherit; text-decorati=
on: inherit; font-family: arial;"> </span><span style=3D"color: #084b8a; fo=
nt-size: inherit; font-weight: bold; line-height: inherit; text-decoration:=
 inherit; font-family: arial;">| </span><span style=3D"color: #084b8a; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit; font-family: arial;">Funding Manager</span></span></div>=0A <br =
style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row379" class=3D"l=
ayout layout-row clear-this " style=3D"mso-line-height-rule: exactly; backg=
round-color: #ffffff;"><td id=3D"layout-row-padding379" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_t=
able_cbaaaa74306ba45207d7b9121d07c41b11903443" valign=3D"top" width=3D"425"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"425" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin376" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: initial !important; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row3=
76" class=3D"layout layout-row widget _widget_text style376" style=3D"mso-l=
ine-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0;=
"><td id=3D"layout-row-padding376" valign=3D"top" style=3D"mso-line-height-=
rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div321" cl=
ass=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"405" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; c=
olor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-=
decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline=
: none; padding: 0; color: inherit; font-size: inherit; font-weight: inheri=
t; line-height: inherit; text-decoration: inherit; text-align: center;"><sp=
an style=3D"color: #01df3a; font-size: 18px; font-weight: bold; line-height=
: inherit; text-decoration: inherit; font-style: normal; text-align: center=
; font-family: arial;" class=3D"">Motor City Funding</span><br><span class=
=3D"" style=3D"color: #ffffff; font-size: 15px; font-weight: inherit; line-=
height: inherit; text-decoration: inherit;"><span style=3D"color: #ffffff; =
font-size: inherit; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit; font-style: normal; text-align: center; font-family: arial;"=
>3000 Town Center</span><br style=3D"color: #ffffff;"><span=0Astyle=3D"colo=
r: #ffffff; font-size: inherit; font-weight: inherit; line-height: inherit;=
 text-decoration: inherit; font-style: normal; text-align: center; font-fam=
ily: arial;">Southfield, MI 48076</span><br style=3D"color: #ffffff;"><span=
 style=3D"color: #ffffff; font-size: inherit; font-weight: inherit; line-he=
ight: inherit; text-decoration: inherit; font-style: normal; text-align: ce=
nter; font-family: arial;">O: (315) 257-1195</span></span> <br></div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A<td id=3D"layout_table_698a47bfae60a0667592e60f865accb3fd124918"=
 valign=3D"top" width=3D"225" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"225" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin378" valign=3D"top" style=3D"=
mso-line-height-rule: exactly; padding: 8px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row378" class=3D"layout layout-row widget _widget_but=
ton style378" style=3D"mso-line-height-rule: exactly; background-color: #24=
4df0;"><td id=3D"layout-row-padding378" valign=3D"top"=0Astyle=3D"mso-line-=
height-rule: exactly; background-color: #244df0; padding: 14px;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"td_b=
utton td_block customizable" valign=3D"top" align=3D"left" width=3D"181" st=
yle=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=
=3D"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if m=
so]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:=
schemas-microsoft-com:office:word" href=3D"mailto:sbrugman@motorcityfunding=
.com" style=3D"v-text-anchor:middle; width:137px; height:60px; font-weight:=
 bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcol=
or=3D"#57db28" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"f=
alse" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#fffff=
f;font-family:Arial; font-size:14px; font-weight: bold;line-height: 1.1;">C=
ONTACT US</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"ma=
ilto:sbrugman@motorcityfunding.com" style=3D"margin: 0; outline: none; padd=
ing: 12px; color: #ffffff; background: #57db28; background-color: #57db28; =
border: 1px solid #B5B5B5; border-radius: 3px; font-family: Arial; font-siz=
e: 14px; display: inline-block; line-height: 1.1; text-align: center; text-=
decoration: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family=
:Arial;font-size:14px;font-weight: bold;"> CONTACT US </span> </a> </div>=
=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https=
://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?nl=3D1&c=3D12&m=3D16&s=
=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.act=
ivehosted.com&a=3D225362583" border=3D"0" width=3D"1" height=3D"1" style=3D=
"display:block;width:1px!important;min-width:1px!important;max-width:1px!im=
portant;height:1px!important;border:0;overflow:hidden;" /><div id=3D"ac-foo=
ter" style=3D"clear:both;background-color:inherit;background:inherit;min-wi=
dth:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:20px;color:#0000=
00;font-size:11px;font-family:arial,helvetica,sans-serif;line-height:140%;l=
ine-height:1.4;text-align:center;box-sizing:border-box;">=0A=09<center>=0A=
=09=09Sent to: <span style=3D"font-size:11px;font-family:arial,helvetica,sa=
ns-serif;font-weight:normal;text-decoration:none;outline:none;">linux1394-d=
evel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=
=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D1&c=3D12&m=3D16&=
s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11px;f=
ont-family:arial,helvetica,sans-serif;font-weight:bold;text-decoration:unde=
rline;"><span style=3D"font-weight:bold;text-decoration:underline;">Unsubsc=
ribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town Cen=
ter, Southfield, United States=0A=09</center>=0A</div>=0A<br clear=3D"all" =
/></body>=0A</html>
--_=_swift-17551670661780b7bc6b2c2.57812115_=_--



--===============2869007590464220758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2869007590464220758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2869007590464220758==--


