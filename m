Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8C5450651
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Nov 2021 15:09:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mmcfP-0004V7-4U; Mon, 15 Nov 2021 14:09:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-37-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mmcfN-0004Us-1P
 for linux1394-devel@lists.sourceforge.net; Mon, 15 Nov 2021 14:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cpAhJz1he/U3PEtiiSkcSF5cC9T4MmPD8FxJ86vdR0k=; b=Zod22ZsTDtoVAKOHGDBmUbOFfu
 +n9pEkE9T9g5OfVSY7aBMMq05uzOWFMULOpkp6KIgl6+v/w1prA39WJqgrLcHFi3bNshF5t1kBUk+
 ok8LHIROrl/2a4MleXqoc9V6A97B+s73boOGN3kENUuGn4Dce6YuwdeItG6jZwS8+fUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=cpAhJz1he/U3PEtiiSkcSF5cC9T4MmPD8FxJ86vdR0k=; b=W1jhsyJskRic
 y530HyHzw7Pq8t68dAd7KqltBodX56nBQklYAPMcYxgkGU8VB54U0Oh31jkP/et9k3Twyfownox2N
 mk6trPXSsNK+1dIIs5FUO1MW6cTgFh6njWLAdrjNHCsO1KQD4u1gTiN0p9XT8upE08e155nK8F4pp
 575Sg=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmcfJ-00DlO0-TS
 for linux1394-devel@lists.sourceforge.net; Mon, 15 Nov 2021 14:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=cpAhJz1he/U3PEtiiSkcSF5cC9T4MmPD8FxJ86vdR0k=;
 b=sYI/I2GEkLwd4ncqDOyYef2JLFDVb4Z2VyxDf2PEU+OPF093KXkebqzoBldSAKidYjJcOBgZQisw
 LrA/hUulHG/DwNG8C8JZUBhpiEOB3a7AzcbPaBbf6TL/ZJKfkOAqnLKqBH+ZyxPpVZQbuEzKcDFp
 q6Cwf/8g37Kk3iUr1/g=
Received: by s15.avl4.acemsrvd.com id hi9kv02q274o for
 <linux1394-devel@lists.sourceforge.net>;
 Mon, 15 Nov 2021 14:08:48 +0000 (envelope-from
 <bounce-2287853-37-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA EIDL Update!
Date: Mon, 15 Nov 2021 08:04:17 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMzNyAsIG01OSAsIHMzMg
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-37
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211115140848.20354.1837063106.swift@motorcityfunding.activehosted.com>
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
X-Headers-End: 1mmcfJ-00DlO0-TS
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
Content-Type: multipart/mixed; boundary="===============4412210181671705643=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4412210181671705643==
Content-Type: multipart/alternative;
 boundary="_=_swift-1362376610619268e166ffe4.45636418_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-1362376610619268e166ffe4.45636418_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=37&amp;m=59&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-1362376610619268e166ffe4.45636418_=_
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
@media only screen and (max-width: 320px) { #layout-row997 { max-height: 0p=
x!important; font-size: 0px!important; display: none!important; visibility:=
 hidden!important; } #layout-row998 img { width: 100% !important; height: a=
uto !important; max-width: 320px !important; } #layout-row999 img { width: =
100% !important; height: auto !important; max-width: 320px !important; } #l=
ayout-row1001 img { width: 100% !important; height: auto !important; max-wi=
dth: 320px !important; } #layout-row1009 img { width: 100% !important; heig=
ht: auto !important; max-width: 320px !important; } table, tbody, td, .divb=
ody { display: table !important; width: 100% !important; max-width: 100% !i=
mportant; } .td_rss .rss-item img.iphone_large_image { width: auto !importa=
nt; } u + .body { display: table !important; width: 100vw !important; min-w=
idth: 100vw !important; } u + .body table { display: table !important; widt=
h: 100% !important; min-width: 100%=0A!important; } u + .body td { display:=
 block !important; width: 100% !important; min-width: 100% !important; } u =
+ .body img { display: inline-block !important; margin: auto !important; wi=
dth: auto !important; vertical-align: bottom !important; } u + .body center=
 { display: block !important; margin: auto !important; width: 100% !importa=
nt; min-width: 100% !important; text-align: center !important; } u + .body =
table._ac_social_table, u + .body table._ac_social_table td, u + .body tabl=
e._ac_social_table div, u + .body table._ac_social_table a { display: inlin=
e-block !important; margin: auto !important; width: auto !important; min-wi=
dth: auto !important; text-align: center !important; } u + .body table._ac_=
social_table img { display: inline-block !important; margin: auto !importan=
t; width: 32px !important; min-width: 32px !important; max-width: 32px !imp=
ortant; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row997 =
{ max-height: 0px!important; font-size: 0px!important; display: none!import=
ant; visibility: hidden!important; } #layout-row998 img { width: 100% !impo=
rtant; height: auto !important; max-width: 375px !important; } #layout-row9=
99 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row1001 img { width: 100% !important; height: auto !i=
mportant; max-width: 375px !important; } #layout-row1009 img { width: 100% =
!important; height: auto !important; max-width: 375px !important; } table, =
tbody, td, .divbody { display: table !important; width: 100% !important; ma=
x-width: 100% !important; } .td_rss .rss-item img.iphone_large_image { widt=
h: auto !important; } u + .body { display: table !important; width: 100vw !=
important; min-width: 100vw !important; } u + .body table { display: table =
!important; width: 100% !important; min-width: 100% !important; } u + .body=
 td { display: block=0A!important; width: 100% !important; min-width: 100% =
!important; } u + .body img { display: inline-block !important; margin: aut=
o !important; width: auto !important; vertical-align: bottom !important; } =
u + .body center { display: block !important; margin: auto !important; widt=
h: 100% !important; min-width: 100% !important; text-align: center !importa=
nt; } u + .body table._ac_social_table, u + .body table._ac_social_table td=
, u + .body table._ac_social_table div, u + .body table._ac_social_table a =
{ display: inline-block !important; margin: auto !important; width: auto !i=
mportant; min-width: auto !important; text-align: center !important; } u + =
.body table._ac_social_table img { display: inline-block !important; margin=
: auto !important; width: 32px !important; min-width: 32px !important; max-=
width: 32px !important; }=0A}=0A@media only screen and (max-width: 414px) {=
 #layout-row997 { max-height: 0px!important; font-size: 0px!important; disp=
lay: none!important; visibility: hidden!important; } #layout-row998 img { w=
idth: 100% !important; height: auto !important; max-width: 414px !important=
; } #layout-row999 img { width: 100% !important; height: auto !important; m=
ax-width: 380px !important; } #layout-row1001 img { width: 100% !important;=
 height: auto !important; max-width: 414px !important; } #layout-row1009 im=
g { width: 100% !important; height: auto !important; max-width: 414px !impo=
rtant; } table, tbody, td, .divbody { display: table !important; width: 100=
% !important; max-width: 100% !important; } .td_rss .rss-item img.iphone_la=
rge_image { width: auto !important; } u + .body { display: table !important=
; width: 100vw !important; min-width: 100vw !important; } u + .body table {=
 display: table !important; width: 100% !important; min-width: 100% !import=
ant; } u + .body td { display: block=0A!important; width: 100% !important; =
min-width: 100% !important; } u + .body img { display: inline-block !import=
ant; margin: auto !important; width: auto !important; vertical-align: botto=
m !important; } u + .body center { display: block !important; margin: auto =
!important; width: 100% !important; min-width: 100% !important; text-align:=
 center !important; } u + .body table._ac_social_table, u + .body table._ac=
_social_table td, u + .body table._ac_social_table div, u + .body table._ac=
_social_table a { display: inline-block !important; margin: auto !important=
; width: auto !important; min-width: auto !important; text-align: center !i=
mportant; } u + .body table._ac_social_table img { display: inline-block !i=
mportant; margin: auto !important; width: 32px !important; min-width: 32px =
!important; max-width: 32px !important; }=0A}=0A@media only screen and (max=
-width: 667px) { #layout-row997 { max-height: 0px!important; font-size: 0px=
!important; display: none!important; visibility: hidden!important; } #layou=
t-row998 img { width: 100% !important; height: auto !important; max-width: =
667px !important; } #layout-row999 img { width: 100% !important; height: au=
to !important; max-width: 380px !important; } #layout-row1001 img { width: =
100% !important; height: auto !important; max-width: 667px !important; } #l=
ayout-row1009 img { width: 100% !important; height: auto !important; max-wi=
dth: 667px !important; } table, tbody, td, .divbody { display: table !impor=
tant; width: 100% !important; max-width: 100% !important; } .td_rss .rss-it=
em img.iphone_large_image { width: auto !important; } u + .body { display: =
table !important; width: 100vw !important; min-width: 100vw !important; } u=
 + .body table { display: table !important; width: 100% !important; min-wid=
th: 100% !important; } u + .body td { display: block=0A!important; width: 1=
00% !important; min-width: 100% !important; } u + .body img { display: inli=
ne-block !important; margin: auto !important; width: auto !important; verti=
cal-align: bottom !important; } u + .body center { display: block !importan=
t; margin: auto !important; width: 100% !important; min-width: 100% !import=
ant; text-align: center !important; } u + .body table._ac_social_table, u +=
 .body table._ac_social_table td, u + .body table._ac_social_table div, u +=
 .body table._ac_social_table a { display: inline-block !important; margin:=
 auto !important; width: auto !important; min-width: auto !important; text-=
align: center !important; } u + .body table._ac_social_table img { display:=
 inline-block !important; margin: auto !important; width: 32px !important; =
min-width: 32px !important; max-width: 32px !important; }=0A} </style><!--[=
if !mso]><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]--><=
!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:Pixe=
lsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<![en=
dif]--></head><body id=3D"ac-designer" class=3D"body" style=3D"font-family:=
 Arial; line-height: 1.1; margin: 0px; background-color: #FFFFFF; width: 10=
0%; text-align: center;">=09=09<div style=3D"display: none !important; padd=
ing: 0; height: 1px; font-size: 1px; background-color: inherit !important; =
opacity: 0; color: transparent; mso-line-height-rule: exactly; line-height:=
1px; mso-hide:all;">=0A=09=09=09New December 31st Deadline Approaching ~ Ap=
ply Now!=0A=09=09=09<div style=3D"display: none; max-height: 0px; overflow:=
 hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp=
;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C=0A=09=09=09</div>=0A=0A=09=09</div=
>=0A<div class=3D"divbody" style=3D"margin: 0px; outline: none; padding: 0p=
x; color: #000000; font-family: arial; line-height: 1.1; width: 100%; backg=
round-color: #FFFFFF; background: #FFFFFF; text-align: center;"><table clas=
s=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=
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
=3D"layout_table_b1a84b29513ce2cfe1f2523da0d4bb572bb6fc11" valign=3D"top" a=
lign=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table root-table" width=3D"650" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td id=3D"layout-row-margin997" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px;=
 min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"=
layout-row997" class=3D"layout layout-row widget _widget_spacer " style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding997" valign=3D"=
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
exactly;"><td id=3D"layout-row-margin998" valign=3D"top" style=3D"mso-line-=
height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row998" clas=
s=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding998" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"cen=
ter" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly;">=
<img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-45=
06-a900-35ec4edba52c.png?r=3D154029971" alt=3D"" width=3D"325" style=3D"dis=
play: block; border: none; outline: none; width: 325px; opacity: 1; max-wid=
th: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-mar=
gin996" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row996" class=3D"layout =
layout-row widget _widget_text style996" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-r=
ow-padding996" valign=3D"top" style=3D"mso-line-height-rule: exactly; backg=
round-color: #244df0; padding: 0;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-=
line-height-rule: exactly;"><td id=3D"text_div847"=0Aclass=3D"td_text td_bl=
ock" valign=3D"top" align=3D"left" width=3D"650" style=3D"line-height: 140%=
; mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; colo=
r: inherit; font-size: 12px; font-weight: inherit; line-height: 1.4; text-d=
ecoration: inherit; font-family: arial;"> <div style=3D"line-height: 140%; =
margin: 0; outline: none; padding: 0; color: #ffffff; font-size: 18px; font=
-weight: inherit; line-height: 1.4; text-decoration: inherit; mso-line-heig=
ht-rule: exactly;" data-line-height=3D"1.4"> <div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #ffffff; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; text-align: center;"><=
span style=3D"color: #ffffff; font-size: inherit; font-weight: bold; line-h=
eight: inherit; text-decoration: inherit;" class=3D""><span style=3D"color:=
 #ffffff; font-size: inherit; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit; text-align: inherit;">The Small Business Administr=
ation=0Ahas moved the deadline for all EIDL </span><span style=3D"color: #f=
fffff; font-size: inherit; font-weight: inherit; line-height: inherit; text=
-decoration: inherit; text-align: inherit;">applications</span><span style=
=3D"color: #ffffff; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; text-align: inherit;"> to December 31st =
2021 Apply before the deadline!</span></span></div>=0A </div>=0A<!--[if (gt=
e mso 12)&(lte mso 15) ]>=0A<style data-ac-keep=3D"true" data-ac-inline=3D"=
false"> #text_div847, #text_div847 div { line-height: 140% !important; };=
=0A</style>=0A<![endif]--></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D=
"layout-row-margin1009" valign=3D"top" style=3D"mso-line-height-rule: exact=
ly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1009" class=3D"layout layou=
t-row widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-padding1009" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" =
width=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https:=
//content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec=
.png?r=3D1393631594" alt=3D"" width=3D"650" style=3D"display: block; border=
: none; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-margin999" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row999" class=3D"layout layout-row widget _widget_picture " ali=
gn=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row=
-padding999" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-h=
eight-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/=
11/08/8db24c11-71e7-459f-ab55-2957448b054e.jpeg?r=3D184117533" alt=3D"" wid=
th=3D"380" style=3D"display: block; border: none; outline: none; width: 380=
px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;">=
<td id=3D"layout-row-margin1000" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row1000" class=3D"layout layout-row widget _widget_text style1000" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; background-color=
: #244df0;"><td id=3D"layout-row-padding1000" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly; background-color: #244df0; padding: 5px;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"te=
xt_div851" class=3D"td_text td_block" valign=3D"top" align=3D"left" width=
=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; =
padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-hei=
ght: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"margi=
n: 0; outline: none; padding: 0; color: inherit; font-size: 18px; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit;"> =
<div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-si=
ze: inherit; font-weight: inherit; line-height: inherit; text-decoration: i=
nherit; text-align: center;"><span style=3D"color: #ffffff; font-size: inhe=
rit; font-weight: bold; line-height: inherit; text-decoration: inherit;" cl=
ass=3D"">What is the EIDL? </span></div>=0A </div>=0A </div>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-=
row1004" class=3D"layout layout-row clear-this " style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding1004" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"layout_table_ba1ab95e07ee5f8c7edb2ffff49d9=
531d40be844" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: ex=
actly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"la=
yout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-margin1001" valign=3D"t=
op" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row1001" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-padding1001" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=
=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"mso-li=
ne-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/202=
1/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?r=3D1606049727" alt=3D"" w=
idth=3D"203"=0Astyle=3D"display: block; border: none; outline: none; width:=
 203px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_=
fab97bd9a235824a4944fe47ec5c53df49202568" valign=3D"top" width=3D"325" styl=
e=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-margin1002" valign=3D"top" style=3D"mso-line-height-rule: exactly; =
padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: initial !important; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1002" c=
lass=3D"layout layout-row widget _widget_text style1002" style=3D"mso-line-=
height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding1=
002" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; padding: 5px;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"text_div853" class=3D"td_text td_block" valign=3D"top" align=3D"left" =
width=3D"305" style=3D"mso-line-height-rule: exactly; margin: 0; outline: n=
one; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; lin=
e-height: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"=
margin: 0; outline: none; padding: 0; color: inherit; font-size: 15px; font=
-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: inh=
erit; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
"><ul style=3D"margin: 0 0 0 40px; padding: 0;"><li=0Astyle=3D"display: lis=
t-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><s=
pan style=3D"color: #244df0; font-size: inherit; font-weight: bold; line-he=
ight: inherit; text-decoration: inherit; text-align: inherit;" class=3D"">U=
p to $2,000,000</span></li><li style=3D"display: list-item; line-height: in=
herit; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"color: #24=
4df0; font-size: inherit; font-weight: bold; line-height: inherit; text-dec=
oration: inherit; text-align: inherit;" class=3D"">No payments for the firs=
t 24 months</span></li><li style=3D"display: list-item; line-height: inheri=
t; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"color: #244df0=
; font-size: inherit; font-weight: bold; line-height: inherit; text-decorat=
ion: inherit; text-align: inherit;" class=3D"">3.75% fixed interest rate ov=
er 30 years! </span></li><li style=3D"display: list-item; line-height: inhe=
rit; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"color: #244d=
f0;=0Afont-size: inherit; font-weight: bold; line-height: inherit; text-dec=
oration: inherit; text-align: inherit;" class=3D"">Short for Economic Injur=
y Disaster Loan</span></li><li style=3D"display: list-item; line-height: in=
herit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"" style=3D=
"color: #244df0; font-size: inherit; font-weight: bold; line-height: inheri=
t; text-decoration: inherit; text-align: inherit;">Part of the CARES act pa=
ssed in March of 2020 </span></li><li style=3D"display: list-item; line-hei=
ght: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"" s=
tyle=3D"color: #244df0; font-size: inherit; font-weight: bold; line-height:=
 inherit; text-decoration: inherit; text-align: inherit;">All US business o=
wners can apply</span></li><li style=3D"display: list-item; line-height: in=
herit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"" style=3D=
"color: #244df0; font-size: inherit; font-weight: bold; line-height: inheri=
t; text-decoration: inherit;=0Atext-align: inherit;">Based off of 2019 busi=
ness tax returns</span></li><li style=3D"display: list-item; line-height: i=
nherit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"" style=
=3D"color: #244df0; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; text-align: inherit;">Minimum FICO of 550</=
span></li></ul></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-margin1003" valign=3D"top" style=3D"mso-line-height-rule: exactly; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1003" class=
=3D"layout layout-row widget _widget_button style1003" style=3D"mso-line-he=
ight-rule: exactly; background-color: #244df0;"><td id=3D"layout-row-paddin=
g1003" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-co=
lor: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"td_button td_block=0Acustomizable" valig=
n=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exact=
ly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padd=
ing: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:s=
chemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word"=
 href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirect=
Url=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DqnSDVK=
3HjuiqrRrH7NqFPnT878Qq1q5CN64JomfzDKy&iat=3D1636985328&a=3D%7C%7C225362583%=
7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQU=
yfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86ee=
d94873b1c9268b7&i=3D37A59A1A108" style=3D"v-text-anchor:middle; width:130px=
; height:60px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" s=
trokeweight=3D"1pt" fillcolor=3D"#ff1414" o:button=3D"true" o:allowincell=
=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> =
<center style=3D"color:#ffffff;font-family:Arial; font-size:14px; font-weig=
ht: bold;line-height: 1.1;">APPLY NOW</center> </v:textbox> </v:roundrect>=
=0A<![endif]--> <a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/lin=
k-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=
=3D=3D&sig=3DqnSDVK3HjuiqrRrH7NqFPnT878Qq1q5CN64JomfzDKy&iat=3D1636985328&a=
=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&em=
ail=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=
=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D37A59A1A108" style=3D"margin: 0; ou=
tline: none; padding: 12px; color: #ffffff; background: #ff1414; background=
-color: #ff1414; border: 1px solid #B5B5B5; border-radius: 3px; font-family=
: Arial; font-size: 14px; display: inline-block; line-height: 1.1; text-ali=
gn: center; text-decoration: none; mso-hide: all;"> <span style=3D"color:#f=
fffff;font-family:Arial;font-size:14px;font-weight: bold;"> APPLY NOW </spa=
n> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layou=
t-row-margin1005" valign=3D"top" style=3D"mso-line-height-rule: exactly; pa=
dding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: initial !important; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1005" cla=
ss=3D"layout layout-row widget _widget_text style1005" style=3D"mso-line-he=
ight-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding100=
5" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div855" class=3D"td_text td_block" valign=3D"top" align=3D"left"=
=0Awidth=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline=
: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; =
line-height: 1; text-decoration: inherit; font-family: arial;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: 14px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit;"> <span style=3D"color: #244df0; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;" class=3D""><br><span =
style=3D"color: inherit; font-size: inherit; font-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit; margin: 0;"><div style=3D"margin: 0=
; outline: none; padding: 0; color: inherit; font-size: inherit; font-weigh=
t: 400; line-height: inherit; text-decoration: inherit; font-family: arial;=
 font-style: normal;=0Atext-align: -webkit-left;"><span style=3D"color: inh=
erit; font-size: inherit; font-weight: inherit; line-height: inherit; text-=
decoration: inherit; font-family: arial;">If you have any questions please =
do not hesitate to call.=C2=A0 We pride ourselves on always being available=
 to our clients.</span></div>=0A<div style=3D"margin: 0; outline: none; pad=
ding: 0; color: inherit; font-size: inherit; font-weight: 400; line-height:=
 inherit; text-decoration: inherit; font-family: arial; font-style: normal;=
 text-align: -webkit-left;"><br style=3D""></div>=0A<div style=3D"margin: 0=
; outline: none; padding: 0; color: inherit; font-size: inherit; font-weigh=
t: 400; line-height: inherit; text-decoration: inherit; font-family: arial;=
 font-style: normal; text-align: -webkit-left;"><span style=3D"color: inher=
it; font-size: inherit; font-weight: inherit; line-height: inherit; text-de=
coration: inherit; font-family: arial;">Sincerely,</span></div>=0A<div styl=
e=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: inher=
it; font-weight: 400; line-height: inherit; text-decoration: inherit; font-=
family: arial; font-style: normal; text-align: -webkit-left;"><br style=3D"=
"></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: inher=
it; font-size: inherit; font-weight: 400; line-height: inherit; text-decora=
tion: inherit; font-family: arial; font-style: normal; text-align: -webkit-=
left;"><span style=3D"color: inherit; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;"><span style=3D"color:=
 inherit; font-size: inherit; font-weight: bold; line-height: inherit; text=
-decoration: inherit; font-family: arial;">Samuel Brugman</span><span style=
=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;"> </span><span style=
=3D"color: inherit; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial;">| </span><span style=
=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;">Funding Manager</sp=
an></span></div>=0A</span></span></div>=0A </div>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row1008" cl=
ass=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"layout-row-padding1008" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout_table_10c45010820e024664de2ba3baf8cfc178a08d91=
" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><ta=
ble cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout=
-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-si=
ze-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100=
%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-margin1006" valign=3D"top" style=
=3D"mso-line-height-rule:=0Aexactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !importa=
nt; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr id=3D"layout-row1006" class=3D"layout layout-row widget _widg=
et_text style1006" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0; background-color: #244df0;"><td id=3D"layout-row-padding1006" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"text_div856" class=3D"td_text td_block" valign=3D"top" a=
lign=3D"left" width=3D"305" style=3D"mso-line-height-rule: exactly; margin:=
 0;=0Aoutline: none; padding: 0; color: inherit; font-size: 12px; font-weig=
ht: inherit; line-height: 1; text-decoration: inherit; font-family: arial;"=
> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-=
size: inherit; font-weight: inherit; line-height: inherit; text-decoration:=
 inherit;"><div style=3D"margin: 0; outline: none; padding: 0; color: inher=
it; font-size: 16px; font-weight: inherit; line-height: inherit; text-decor=
ation: inherit; text-align: center;"><span style=3D"color: #53ff14; font-si=
ze: inherit; font-weight: bold; line-height: inherit; text-decoration: inhe=
rit; font-family: arial; text-align: inherit;" class=3D"">Motor City Fundin=
g</span></div>=0A <div style=3D"margin: 0; outline: none; padding: 0; color=
: inherit; font-size: 14px; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit; text-align: center;"><span style=3D"color: #ffffff; =
font-size: inherit; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit; font-family: arial; text-align: inherit;" class=3D"">3000 To=
wn Center</span></div>=0A<span style=3D"color: #ffffff; font-size: 14px; fo=
nt-weight: inherit; line-height: inherit; text-decoration: inherit; font-fa=
mily: arial; font-style: normal;" class=3D""><div style=3D"margin: 0; outli=
ne: none; padding: 0; color: inherit; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; text-align: center;"><=
span style=3D"color: inherit; font-size: inherit; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; font-family: arial; text-align=
: inherit;">Southfield, MI 48076</span></div>=0A<div style=3D"margin: 0; ou=
tline: none; padding: 0; color: inherit; font-size: inherit; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit; font-style: normal;=
 font-family: arial; text-align: center;"><span style=3D"color: inherit; fo=
nt-size: inherit; font-weight: inherit; line-height: inherit; text-decorati=
on: inherit; font-family: arial; text-align: inherit;">O: (315) 257-1195</s=
pan></div>=0A</span></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_d95145a65=
9a93616e476831028ddc471f1b02eab" valign=3D"top" width=3D"325" style=3D"mso-=
line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bord=
er=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-mar=
gin1007" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 8p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1007" class=3D"lay=
out layout-row widget _widget_button style1007" style=3D"mso-line-height-ru=
le: exactly; background-color: #244df0;"><td id=3D"layout-row-padding1007" =
valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; background-color: =
#244df0; padding: 14px;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heigh=
t-rule: exactly;"><td class=3D"td_button td_block customizable" valign=3D"t=
op" align=3D"left" width=3D"281" style=3D"mso-line-height-rule: exactly;"> =
<div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padding: 0=
; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas=
-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=
=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-text-anchor:middle; wi=
dth:135px; height:58px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#=
57db28" strokeweight=3D"1pt" fillcolor=3D"#57db28" o:button=3D"true" o:allo=
wincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px=
,2px"> <center style=3D"color:#ffffff;font-family:Arial; font-size:14px; fo=
nt-weight: bold;line-height: 1.1;">CONTACT US</center> </v:textbox> </v:rou=
ndrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@motorcityfunding.com" sty=
le=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background: =
#57db28; background-color: #57db28; border-radius: 3px; font-family: Arial;=
 font-size: 14px; display: inline-block; line-height: 1.1; text-align: cent=
er; text-decoration: none; mso-hide: all;"> <span style=3D"color:#ffffff;fo=
nt-family:Arial;font-size:14px;font-weight: bold;"> CONTACT US </span> </a>=
 </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"ht=
tps://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=3D37&m=3D5=
9&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.=
activehosted.com&a=3D225362583" border=3D"0" width=3D"1" height=3D"1" style=
=3D"display:block;width:1px!important;min-width:1px!important;max-width:1px=
!important;height:1px!important;border:0;overflow:hidden;" /><div id=3D"ac-=
footer" style=3D"clear:both;background-color:inherit;background:inherit;min=
-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:20px;color:#0=
00000;font-size:11px;font-family:arial,helvetica,sans-serif;line-height:140=
%;line-height:1.4;text-align:center;box-sizing:border-box;">=0A=09<center>=
=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:arial,helvetica=
,sans-serif;font-weight:normal;text-decoration:none;outline:none;">linux139=
4-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a h=
ref=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D1&c=3D37&m=3D=
59&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11p=
x;font-family:arial,helvetica,sans-serif;font-weight:bold;text-decoration:u=
nderline;"><span style=3D"font-weight:bold;text-decoration:underline;">Unsu=
bscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town =
Center, Southfield, United States=0A=09</center>=0A</div>=0A<br clear=3D"al=
l" /></body>=0A</html>
--_=_swift-1362376610619268e166ffe4.45636418_=_--



--===============4412210181671705643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4412210181671705643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4412210181671705643==--


