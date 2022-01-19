Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E55A493BF7
	for <lists+linux1394-devel@lfdr.de>; Wed, 19 Jan 2022 15:34:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nAC2C-0000sN-RR; Wed, 19 Jan 2022 14:33:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-99-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1nAC2A-0000rz-E4
 for linux1394-devel@lists.sourceforge.net; Wed, 19 Jan 2022 14:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g1q5AWt3u0bI4nT2J3xouaYu0lAAoGQsAnFwzchTu5o=; b=QqdXSBrQOafTA9UEhYzmRPXcv+
 Oj4x9ih3vEkxHmiZN77Z35zH5DewUVOXhUA1hCWA6nvgdBZPXaSJ6okKlsI4RqIvCsFknlwXOzjAZ
 +LH28KztbGyQ+ibJnIdb7OqPccCOPMvQxITbbyJ9YPjhfEF6FhXaLZBDY8ZIPYbLDNyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=g1q5AWt3u0bI4nT2J3xouaYu0lAAoGQsAnFwzchTu5o=; b=GxVVSzvrwMEs
 XrSs85xKgr3WrlCfHgrHi8rIdsRoZ3Ln702usyi+ItBE7DFcqzoz6NZjV7dXRA65rz6isSNXLIGHO
 Snn6ERKZZZq1DIvWyb2fTXjn+lGwE+RZOFBnhlh4OS+yknMbt5lJ3kAGIcUQK5h2JoEYISo3Xf1c+
 wUnTs=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAC25-003k6h-AC
 for linux1394-devel@lists.sourceforge.net; Wed, 19 Jan 2022 14:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=g1q5AWt3u0bI4nT2J3xouaYu0lAAoGQsAnFwzchTu5o=;
 b=i06zwEFchhF1JF8mMZfL1EaNwCUoG6KZcmkbzFM98Nz9o8sznycG6L2bQxiKYQqaPxvxtSIdfhvR
 5fd2EeX6qIhuk1j1HD2GnKRidQmoCYo3v9W79uDAQK8kcNlLIePQ+bljtbgh+SP05rGNXlKRxGAV
 H6c8gW3l/9E4i9cYIHo=
Received: by s15.avl4.acemsrvd.com id ht0gkm2t56gi for
 <linux1394-devel@lists.sourceforge.net>;
 Wed, 19 Jan 2022 14:33:47 +0000 (envelope-from
 <bounce-2287853-99-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "Motor City Funding" <sbrugman@motorcityfunding.com>
Subject: Revolving Line of Credit
Date: Wed, 19 Jan 2022 08:16:40 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM5OSAsIG0xNDcgLCBzODc
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-99
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220119143347.22501.1058157753.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Click Here To Get Started Revolving Business Lines of Credit
    Up To $150,000  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (1.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?192.92.97.219>]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [192.92.97.219 listed in wl.mailspike.net]
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nAC25-003k6h-AC
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
Content-Type: multipart/mixed; boundary="===============3168422189703627453=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3168422189703627453==
Content-Type: multipart/alternative;
 boundary="_=_swift-106247098061e81d489b7b17.03872552_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-106247098061e81d489b7b17.03872552_=_
Content-Type: text/plain; charset=utf-8

Click Here To Get Started Revolving Business Lines of Credit Up To
$150,000 
 ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌

 

**Revolving Line of Credit** 

Click Here to Get Started

Revolving business lines of credit up to $150,000. Repay over 12 or 24
weeks. Your available credit goes back up as you pay. No prepayment
penalty. 

Lump-sum business loans up to $150,000. Repay over 24 or 52 weeks. No
origination fee. No prepayment penalty. 

See your total cash balance across accounts, all in one place. Get
customized predictions and alerts about your cash flow. 

 

**How Credit Line Works**

**Applying for and using your revolving line of credit is easy. Here's
how it works:**

**1. Sign Up Online.** Enter your email and phone number, no lengthy
paperwork.

**2. Get a Decision Quickly.** Connect your accounting software or bank
account to give us insight into your business. Most customers get a
decision in about 3 minutes or even sooner.

**3. Get Funds Right Away.** If approved, draw funds anytime. Funds
arrive as soon as the next business day. 

Motor City Funding 
O: (315) 257-1195
_________________

Sent to linux1394-devel@lists.sourceforge.net

Unsubscribe:
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=99&amp;m=147&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-106247098061e81d489b7b17.03872552_=_
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
one !important;} /* Default table cell height */ td[height=3D"12"]{height:1=
2px!important;font-size:12px!important;line-height:12px!important;}=0Atd[he=
ight=3D"14"]{height:14px!important;font-size:14px!important;line-height:14p=
x!important;} /*-----------------------------------------------------------=
--------------*\ Product Widget \*-----------------------------------------=
--------------------------------*/ .td_product > div { float: none !importa=
nt; width: 100% !important; margin-bottom: 20px !important; } .td_product >=
 div img { width: 75% !important; } /* Default social icons */ *[class].ac-=
social-icon-16 {width:16px !important; height:16px !important;} *[class].ac=
-social-icon-24 {width:24px !important; height:24px !important;} *[class].a=
c-social-icon-28 {width:28px !important; height:28px !important;} *[class].=
__ac_social_icons { margin-right: 0px !important; } }=0A</style><style data=
-ac-keep=3D"true"> @media only screen and (max-width: 320px) { #layout-row1=
996 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row1997 img { width: 100% =
!important; height: auto !important; max-width: 121px !important; } #layout=
-row2001 img { width: 100% !important; height: auto !important; max-width: =
320px !important; } #layout-row2002 img { width: 100% !important; height: a=
uto !important; max-width: 102px !important; } #layout-row2005 img { width:=
 100% !important; height: auto !important; max-width: 102px !important; } #=
layout-row2008 img { width: 100% !important; height: auto !important; max-w=
idth: 104px !important; } #layout-row2013 img { width: 100% !important; hei=
ght: auto !important; max-width: 320px !important; } #layout-row2014 .break=
-line { width: 100% !important; margin: auto !important; } #layout-row2015 =
.break-line { width: 100% !important; margin: auto !important;=0A} #layout-=
row2016 .break-line { width: 100% !important; margin: auto !important; } #l=
ayout-row2017 img { width: 100% !important; height: auto !important; max-wi=
dth: 320px !important; } table, tbody, td, .divbody { display: table !impor=
tant; width: 100% !important; max-width: 100% !important; } .td_rss .rss-it=
em img.iphone_large_image { width: auto !important; } u + .body { display: =
table !important; width: 100vw !important; min-width: 100vw !important; } u=
 + .body table { display: table !important; width: 100% !important; min-wid=
th: 100% !important; } u + .body td { display: block !important; width: 100=
% !important; min-width: 100% !important; } u + .body img { display: inline=
-block !important; margin: auto !important; width: auto !important; vertica=
l-align: bottom !important; } u + .body center { display: block !important;=
 margin: auto !important; width: 100% !important; min-width: 100% !importan=
t; text-align: center !important; } u + .body table._ac_social_table,=0Au +=
 .body table._ac_social_table td, u + .body table._ac_social_table div, u +=
 .body table._ac_social_table a { display: inline-block !important; margin:=
 auto !important; width: auto !important; min-width: auto !important; text-=
align: center !important; } u + .body table._ac_social_table img { display:=
 inline-block !important; margin: auto !important; width: 32px !important; =
min-width: 32px !important; max-width: 32px !important; }=0A}=0A@media only=
 screen and (max-width: 375px) { #layout-row1996 { max-height: 0px!importan=
t; font-size: 0px!important; display: none!important; visibility: hidden!im=
portant; } #layout-row1997 img { width: 100% !important; height: auto !impo=
rtant; max-width: 121px !important; } #layout-row2001 img { width: 100% !im=
portant; height: auto !important; max-width: 375px !important; } #layout-ro=
w2002 img { width: 100% !important; height: auto !important; max-width: 102=
px !important; } #layout-row2005 img { width: 100% !important; height: auto=
 !important; max-width: 102px !important; } #layout-row2008 img { width: 10=
0% !important; height: auto !important; max-width: 104px !important; } #lay=
out-row2013 img { width: 100% !important; height: auto !important; max-widt=
h: 375px !important; } #layout-row2014 .break-line { width: 100% !important=
; margin: auto !important; } #layout-row2015 .break-line { width: 100% !imp=
ortant; margin: auto !important; } #layout-row2016 .break-line {=0Awidth: 1=
00% !important; margin: auto !important; } #layout-row2017 img { width: 100=
% !important; height: auto !important; max-width: 375px !important; } table=
, tbody, td, .divbody { display: table !important; width: 100% !important; =
max-width: 100% !important; } .td_rss .rss-item img.iphone_large_image { wi=
dth: auto !important; } u + .body { display: table !important; width: 100vw=
 !important; min-width: 100vw !important; } u + .body table { display: tabl=
e !important; width: 100% !important; min-width: 100% !important; } u + .bo=
dy td { display: block !important; width: 100% !important; min-width: 100% =
!important; } u + .body img { display: inline-block !important; margin: aut=
o !important; width: auto !important; vertical-align: bottom !important; } =
u + .body center { display: block !important; margin: auto !important; widt=
h: 100% !important; min-width: 100% !important; text-align: center !importa=
nt; } u + .body table._ac_social_table, u + .body table._ac_social_table=0A=
td, u + .body table._ac_social_table div, u + .body table._ac_social_table =
a { display: inline-block !important; margin: auto !important; width: auto =
!important; min-width: auto !important; text-align: center !important; } u =
+ .body table._ac_social_table img { display: inline-block !important; marg=
in: auto !important; width: 32px !important; min-width: 32px !important; ma=
x-width: 32px !important; }=0A}=0A@media only screen and (max-width: 414px)=
 { #layout-row1996 { max-height: 0px!important; font-size: 0px!important; d=
isplay: none!important; visibility: hidden!important; } #layout-row1997 img=
 { width: 100% !important; height: auto !important; max-width: 121px !impor=
tant; } #layout-row2001 img { width: 100% !important; height: auto !importa=
nt; max-width: 414px !important; } #layout-row2002 img { width: 100% !impor=
tant; height: auto !important; max-width: 102px !important; } #layout-row20=
05 img { width: 100% !important; height: auto !important; max-width: 102px =
!important; } #layout-row2008 img { width: 100% !important; height: auto !i=
mportant; max-width: 104px !important; } #layout-row2013 img { width: 100% =
!important; height: auto !important; max-width: 414px !important; } #layout=
-row2014 .break-line { width: 100% !important; margin: auto !important; } #=
layout-row2015 .break-line { width: 100% !important; margin: auto !importan=
t; } #layout-row2016 .break-line {=0Awidth: 100% !important; margin: auto !=
important; } #layout-row2017 img { width: 100% !important; height: auto !im=
portant; max-width: 414px !important; } table, tbody, td, .divbody { displa=
y: table !important; width: 100% !important; max-width: 100% !important; } =
.td_rss .rss-item img.iphone_large_image { width: auto !important; } u + .b=
ody { display: table !important; width: 100vw !important; min-width: 100vw =
!important; } u + .body table { display: table !important; width: 100% !imp=
ortant; min-width: 100% !important; } u + .body td { display: block !import=
ant; width: 100% !important; min-width: 100% !important; } u + .body img { =
display: inline-block !important; margin: auto !important; width: auto !imp=
ortant; vertical-align: bottom !important; } u + .body center { display: bl=
ock !important; margin: auto !important; width: 100% !important; min-width:=
 100% !important; text-align: center !important; } u + .body table._ac_soci=
al_table, u + .body table._ac_social_table=0Atd, u + .body table._ac_social=
_table div, u + .body table._ac_social_table a { display: inline-block !imp=
ortant; margin: auto !important; width: auto !important; min-width: auto !i=
mportant; text-align: center !important; } u + .body table._ac_social_table=
 img { display: inline-block !important; margin: auto !important; width: 32=
px !important; min-width: 32px !important; max-width: 32px !important; }=0A=
}=0A@media only screen and (max-width: 667px) { #layout-row1996 { max-heigh=
t: 0px!important; font-size: 0px!important; display: none!important; visibi=
lity: hidden!important; } #layout-row1997 img { width: 100% !important; hei=
ght: auto !important; max-width: 121px !important; } #layout-row2001 img { =
width: 100% !important; height: auto !important; max-width: 667px !importan=
t; } #layout-row2002 img { width: 100% !important; height: auto !important;=
 max-width: 102px !important; } #layout-row2005 img { width: 100% !importan=
t; height: auto !important; max-width: 102px !important; } #layout-row2008 =
img { width: 100% !important; height: auto !important; max-width: 104px !im=
portant; } #layout-row2013 img { width: 100% !important; height: auto !impo=
rtant; max-width: 667px !important; } #layout-row2014 .break-line { width: =
100% !important; margin: auto !important; } #layout-row2015 .break-line { w=
idth: 100% !important; margin: auto !important; } #layout-row2016 .break-li=
ne {=0Awidth: 100% !important; margin: auto !important; } #layout-row2017 i=
mg { width: 100% !important; height: auto !important; max-width: 667px !imp=
ortant; } table, tbody, td, .divbody { display: table !important; width: 10=
0% !important; max-width: 100% !important; } .td_rss .rss-item img.iphone_l=
arge_image { width: auto !important; } u + .body { display: table !importan=
t; width: 100vw !important; min-width: 100vw !important; } u + .body table =
{ display: table !important; width: 100% !important; min-width: 100% !impor=
tant; } u + .body td { display: block !important; width: 100% !important; m=
in-width: 100% !important; } u + .body img { display: inline-block !importa=
nt; margin: auto !important; width: auto !important; vertical-align: bottom=
 !important; } u + .body center { display: block !important; margin: auto !=
important; width: 100% !important; min-width: 100% !important; text-align: =
center !important; } u + .body table._ac_social_table, u + .body table._ac_=
social_table=0Atd, u + .body table._ac_social_table div, u + .body table._a=
c_social_table a { display: inline-block !important; margin: auto !importan=
t; width: auto !important; min-width: auto !important; text-align: center !=
important; } u + .body table._ac_social_table img { display: inline-block !=
important; margin: auto !important; width: 32px !important; min-width: 32px=
 !important; max-width: 32px !important; }=0A} </style><!--[if !mso]><!-- w=
ebfonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]--><!--[if gte mso =
9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:PixelsPerInch>96</o=
:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<![endif]--></head><=
body id=3D"ac-designer" class=3D"body" style=3D"font-family: Arial; line-he=
ight: 1.1; margin: 0px; background-color: #ffffff; width: 100%; text-align:=
 center;">=09=09<div style=3D"display: none !important; padding: 0; height:=
 1px; font-size: 1px; background-color: inherit !important; opacity: 0; col=
or: transparent; mso-line-height-rule: exactly; line-height:1px; mso-hide:a=
ll;">=0A=09=09=09Click Here To Get Started Revolving Business Lines of Cred=
it Up To $150,000=0A=09=09=09<div style=3D"display: none; max-height: 0px; =
overflow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
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
h: 100%; background-color: #ffffff; background: #ffffff; text-align: center=
;"><table class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" width=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background=
-color: #ffffff; background: #ffffff;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-li=
ne-height-rule: exactly;"><table class=3D"template-table" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#ffffff" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt; max-width: 650px;"><tr=0Astyle=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout_table_17322f49d991e024d7916df741a4733418cf4790" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1996"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1996" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g1996" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table wid=
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
ine-height-rule: exactly;"><td id=3D"layout-row-margin2013" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 0;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !import=
ant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr id=3D"layout-row2013" class=3D"layout layout-row widget _wid=
get_picture style2013" align=3D"center" style=3D"mso-line-height-rule: exac=
tly; background-color: #ffffff;"><td id=3D"layout-row-padding2013" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
 padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"image-td"=0Aalign=3D"center" valign=3D"top" width=3D"65=
0" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app=
-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1227=
367557" alt=3D"" width=3D"238" style=3D"display: block; border: none; outli=
ne: none; width: 238px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin2012" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row2012" class=3D"layout layout-row widget _widget_te=
xt style2012" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #ffffff;"><td id=3D"layout-row-padding2012" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly; background-color: #ffffff; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td=0Aid=3D"text_div1711" class=3D"td_text td_block" valign=3D"top" ali=
gn=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0=
; outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: =
inherit; line-height: 1; text-decoration: inherit; font-family: arial;"> <d=
iv style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size=
: 28px; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; fo=
nt-size: inherit; font-weight: inherit; line-height: inherit; text-decorati=
on: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: i=
nherit; font-size: inherit; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit; text-align: center;"> <strong style=3D'margin: 0; ou=
tline: none; padding: 0; --tw-shadow: 0 0 transparent; --tw-ring-inset: var=
(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; =
--tw-ring-color:=0Argba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 trans=
parent; --tw-ring-shadow: 0 0 transparent; font-style: normal; font-weight:=
 700; color: #000000; font-family: georgia, "times new roman";' class=3D"">=
Revolving Line of Credit</strong> <br></div>=0A </div>=0A </div>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2011" valign=3D"=
top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial =
!important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row2011" class=3D"layout layout-row widg=
et _widget_button style2011" style=3D"mso-line-height-rule: exactly; backgr=
ound-color: #ffffff;"><td id=3D"layout-row-padding2011" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff; padding: 5px=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td =
class=3D"td_button td_block=0Acustomizable" valign=3D"top" align=3D"left" w=
idth=3D"630" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button=
-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: center=
;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motorcity=
funding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cHMlM0ElMkYlMkZw=
YXJ0bmVyLmZ1bmRib3guY29tJTJGZ2V0LXN0YXJ0ZWQtd2l0aC1wYXJ0bmVyJTJGJTNGYWZmaWx=
pYXRlX25hbWUlM0RQcmVtaXVtJTJCTWVyY2hhbnQlMkJGdW5kaW5nJTJCMTglMjUyQyUyQkxMQy=
UyNnRyYW5zYWN0aW9uX2lkJTNEMTAyMDNkZGUwZGVkZGJiYzNjMjkwMjE0MzYyOGY5JTI2dXRtX=
2NhbXBhaWduJTNEMTAyMDNkZGUwZGVkZGJiYzNjMjkwMjE0MzYyOGY5JTI2dXRtX2NvbnRlbnQl=
M0Q2NSUyNnV0bV9tZWRpdW0lM0RoYXNvZmZlcnNfcGFydG5lcnNfcGxhdGZvcm0lMjZ1dG1fc29=
1cmNlJTNEUHJlbWl1bSUyQk1lcmNoYW50JTJCRnVuZGluZyUyQjE4JTI1MkMlMkJMTEMlMkIyMj=
Uz&sig=3D8JwMNZWPnSud3hJaAAuSYsHBxd9Lx8KrxA3ysbkWen9C&iat=3D1642602827&a=3D=
%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=
=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0=
ad92c0c4a2ff86eed94873b1c9268b7&i=3D99A147A1A346" style=3D"v-text-anchor:mi=
ddle; width:276px; height:64px; font-weight: bold;" arcsize=3D"6%" strokeco=
lor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"true=
" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px=
,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:georgia, times ne=
w roman; font-size:18px;=0Afont-weight: bold;line-height: 1.1;">Click Here =
to Get Started</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=
=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cHMlM0ElMkYlMkZwYXJ0bmVyLmZ1bmRib3guY29tJTJGZ2V0LXN0YXJ0ZWQtd2l0aC1w=
YXJ0bmVyJTJGJTNGYWZmaWxpYXRlX25hbWUlM0RQcmVtaXVtJTJCTWVyY2hhbnQlMkJGdW5kaW5=
nJTJCMTglMjUyQyUyQkxMQyUyNnRyYW5zYWN0aW9uX2lkJTNEMTAyMDNkZGUwZGVkZGJiYzNjMj=
kwMjE0MzYyOGY5JTI2dXRtX2NhbXBhaWduJTNEMTAyMDNkZGUwZGVkZGJiYzNjMjkwMjE0MzYyO=
GY5JTI2dXRtX2NvbnRlbnQlM0Q2NSUyNnV0bV9tZWRpdW0lM0RoYXNvZmZlcnNfcGFydG5lcnNf=
cGxhdGZvcm0lMjZ1dG1fc291cmNlJTNEUHJlbWl1bSUyQk1lcmNoYW50JTJCRnVuZGluZyUyQjE=
4JTI1MkMlMkJMTEMlMkIyMjUz&sig=3D8JwMNZWPnSud3hJaAAuSYsHBxd9Lx8KrxA3ysbkWen9=
C&iat=3D1642602827&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Ea=
ctivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Q=
tV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D99A147A1A346" st=
yle=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background:=
 #244df0; background-color: #244df0; border: 1px solid #B5B5B5; border-radi=
us: 3px; font-family: georgia, times new roman; font-size: 18px; display: i=
nline-block; line-height: 1.1; text-align: center; text-decoration: none; m=
so-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, times new=
 roman;font-size:18px;font-weight: bold;"> Click Here to Get=0AStarted </sp=
an> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layo=
ut-row-margin2017" valign=3D"top" style=3D"mso-line-height-rule: exactly;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row2017" class=3D"layout layout-row=
 widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout-row-padding2017" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=
=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://con=
tent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?=
r=3D574030001" alt=3D"" width=3D"650" style=3D"display: block; border: none=
; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-r=
ow2010" class=3D"layout layout-row clear-this " style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding2010" valign=3D"top" style=3D"mso=
-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"layout_table_b9673eb85870c872eca886728b4c70=
63366eb553" valign=3D"top" width=3D"175" style=3D"mso-line-height-rule: exa=
ctly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"lay=
out layout-table " width=3D"175" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-margin2008" valign=3D"to=
p" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row2008" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding2008" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"175" style=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/1=
7/f343bbff-9586-4f44-a4db-545e2f757ece.png?r=3D1118667313" alt=3D"" width=
=3D"104"=0Astyle=3D"display: block; border: none; outline: none; width: 104=
px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_e92=
9a2c8bd15e08036376ecb1a9fdcb991305d53" valign=3D"top" width=3D"475" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"475" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin2014" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row2014" class=3D"layout layout-row =
widget _widget_break " style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-padding2014" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y; line-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; mso-line-height=
-rule: exactly;"><tr style=3D"mso-line-height-rule: exactly;"><td height=3D=
"10" style=3D"mso-line-height-rule: exactly; line-height: 0;"></td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly;"><td align=3D"center" height=
=3D"1" width=3D"475" style=3D"mso-line-height-rule: exactly; line-height: 0=
;"> <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" height=3D"1" width=3D"475" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: auto!important; mso-table-lspace: 0pt; mso-table-rspace: 0pt; line-heigh=
t: 0; mso-line-height-rule: exactly; width: 100%; max-width: 100%;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td class=3D"break-line" bgcolor=3D"#=
ffffff" height=3D"1" width=3D"475" style=3D"mso-line-height-rule: exactly; =
line-height: 1px; height: 1px; width: 475px; background-color: #ffffff;"> <=
/td>=0A </tr>=0A</table>=0A</td>=0A </tr>=0A<tr style=3D"mso-line-height-ru=
le: exactly;"><td height=3D"10" style=3D"mso-line-height-rule: exactly; lin=
e-height: 0;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-margin2009" valign=3D"top" style=3D"mso-line-height-rule: exactly; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2009" class=
=3D"layout layout-row widget _widget_text style2009" style=3D"mso-line-heig=
ht-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding2009"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"t=
ext_div1709" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" wid=
th=3D"455" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none=
; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-h=
eight: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: inherit; font-size: 18px; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit;"> <div style=
=3D'margin: 0; outline: none; padding: 0; color: #000000; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit; fo=
nt-family: georgia, "times new roman";'> <span style=3D'color: #000000; fon=
t-size: inherit; font-weight: 400; line-height: inherit; text-decoration: i=
nherit; font-style: normal; font-family: georgia, "times new roman";' class=
=3D"">Revolving business lines of credit up to $150,000. Repay over 12 or 2=
4 weeks. Your available credit goes back up as you pay. No prepayment penal=
ty.</span> <br></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr id=3D"layout-row2007" class=3D"layout layout-row clear-this =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding2007=
" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_b=
ddee6b573a99dc7854b3b2f37f5cfd85b00acae" valign=3D"top" width=3D"175" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"175" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin2005" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row2005" class=3D"layout layout-row=
 widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout-row-padding2005" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=
=3D"175" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://conte=
nt.app-us1.com/Rnj5K/2022/01/17/16f5a48a-c3eb-42bd-98bb-d019d09384b4.png?r=
=3D1033974864" alt=3D"" width=3D"102"=0Astyle=3D"display: block; border: no=
ne; outline: none; width: 102px; opacity: 1; max-width: 100%;"></td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A<td id=3D"layout_table_4feb874c3bfebb7d8664553ef0780563946bff6c" valign=
=3D"top" width=3D"475" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"475" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin2015" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2015" =
class=3D"layout layout-row widget _widget_break " style=3D"mso-line-height-=
rule: exactly;"><td id=3D"layout-row-padding2015" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; line-height: 0;"><table=0Awidth=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt; line=
-height: 0; mso-line-height-rule: exactly;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td height=3D"10" style=3D"mso-line-height-rule: exactly; lin=
e-height: 0;"></td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;">=
<td align=3D"center" height=3D"1" width=3D"475" style=3D"mso-line-height-ru=
le: exactly; line-height: 0;"> <table align=3D"center" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" height=3D"1" width=3D"475" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: auto!important; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt; line-height: 0; mso-line-height-rule: exactly; width: 100%=
; max-width: 100%;"><tr style=3D"mso-line-height-rule: exactly;"><td class=
=3D"break-line" bgcolor=3D"#ffffff" height=3D"1" width=3D"475" style=3D"mso=
-line-height-rule: exactly; line-height: 1px; height: 1px; width: 475px; ba=
ckground-color: #ffffff;"> </td>=0A </tr>=0A</table>=0A</td>=0A </tr>=0A<tr=
 style=3D"mso-line-height-rule: exactly;"><td height=3D"10" style=3D"mso-li=
ne-height-rule: exactly; line-height: 0;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-margin2006" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row2006" class=3D"layout layout-row widget _widget_text style200=
6" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding2006" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"text_div1707" class=3D"td_text td_block" valign=
=3D"top"=0Aalign=3D"left" width=3D"455" style=3D"mso-line-height-rule: exac=
tly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px;=
 font-weight: inherit; line-height: 1; text-decoration: inherit; font-famil=
y: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size: 18px; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit;"> <div style=3D'margin: 0; outline: none; padding: 0; colo=
r: #000000; font-size: inherit; font-weight: inherit; line-height: inherit;=
 text-decoration: inherit; font-family: georgia, "times new roman";'> <span=
 style=3D'color: #000000; font-size: inherit; font-weight: 400; line-height=
: inherit; text-decoration: inherit; font-style: normal; font-family: georg=
ia, "times new roman";' class=3D"">Lump-sum business loans up to $150,000. =
Repay over 24 or 52 weeks. No origination fee. No prepayment penalty.</span=
> <br></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
tr id=3D"layout-row2004" class=3D"layout layout-row clear-this " style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding2004" valign=3D"=
top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_e2f5aa0ff97f=
12853b0a470e440f4d592b520527" valign=3D"top" width=3D"175" style=3D"mso-lin=
e-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table " width=3D"175" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n2002" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row2002" class=3D"layout layout-row widget _w=
idget_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding2002" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"175" sty=
le=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.c=
om/Rnj5K/2022/01/17/724aa02f-3b7f-4785-be5b-0742ed1419b7.png?r=3D119566158"=
 alt=3D"" width=3D"102" style=3D"display:=0Ablock; border: none; outline: n=
one; width: 102px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"=
layout_table_52a7903ad9a8353b56e6519058f6a252e777724c" valign=3D"top" width=
=3D"475" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"475"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout-row-margin2016" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2016" class=3D"layou=
t layout-row widget _widget_break " style=3D"mso-line-height-rule: exactly;=
"><td id=3D"layout-row-padding2016" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; line-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; ms=
o-line-height-rule: exactly;"><tr style=3D"mso-line-height-rule: exactly;">=
<td height=3D"12" style=3D"font-size: 12px; height: 12px; line-height: 0; m=
so-line-height-rule: exactly;"></td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly;"><td align=3D"center" height=3D"1" width=3D"475" style=3D"m=
so-line-height-rule: exactly; line-height: 0;"> <table align=3D"center" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" height=3D"1" width=3D"475" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: auto!important; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt; line-height: 0; mso-line-height-rule: exa=
ctly; width: 100%; max-width: 100%;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"break-line" bgcolor=3D"#ffffff" height=3D"1" width=3D"4=
75" style=3D"mso-line-height-rule: exactly; line-height: 1px; height: 1px; =
width: 475px; background-color: #ffffff;"> </td>=0A </tr>=0A</table>=0A</td=
>=0A </tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td height=3D"12"=
 style=3D"font-size: 12px; height: 12px; line-height: 0; mso-line-height-ru=
le: exactly;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-margin2003" valign=3D"top" style=3D"mso-line-height-rule: exactly; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2003" class=
=3D"layout layout-row widget _widget_text style2003" style=3D"mso-line-heig=
ht-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding2003"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"t=
ext_div1705" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" wid=
th=3D"455" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none=
; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-h=
eight: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: inherit; font-size: 18px; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit;"> <div style=
=3D'margin: 0; outline: none; padding: 0; color: inherit; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit; fo=
nt-family: georgia, "times new roman";'> <span style=3D'color: inherit; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit; font-family: georgia, "times new roman";' class=3D""><span styl=
e=3D"color: #000000; font-size: inherit; font-weight: 400; line-height: inh=
erit; text-decoration: inherit; font-style: normal;">See</span><span style=
=3D"color: #000000; font-size: inherit; font-weight: 400; line-height: inhe=
rit;=0Atext-decoration: inherit; font-style: normal;"> your total cash bala=
nce across </span><span style=3D"color: #000000; font-size: inherit; font-w=
eight: 400; line-height: inherit; text-decoration: inherit; font-style: nor=
mal;">accounts, all in one place. Get customized predictions and alerts abo=
ut your cash flow.</span></span> <br></div>=0A </div>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;">=
<td id=3D"layout-row-margin1995" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1995" class=3D"lay=
out layout-row widget _widget_spacer " style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"layout-row-padding1995" valign=3D"top" style=3D"mso-line-hei=
ght-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rul=
e: exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule=
: exactly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; paddin=
g: 0;=0Aheight: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D=
"0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" widt=
h=3D"650" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</=
table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-margin2000" valign=3D"top" style=3D"mso-line-height-rule: exactly; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2000" class=
=3D"layout layout-row widget _widget_text style2000" style=3D"mso-line-heig=
ht-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding2000"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"t=
ext_div1702" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" wid=
th=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none=
; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-h=
eight: 1; text-decoration: inherit; font-family: arial;"> <div style=3D'mar=
gin: 0; outline: none; padding: 0; color: #000000; font-size: 12px; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit; font-family:=
 georgia, "times new roman";'> <div style=3D"margin: 0; outline: none; padd=
ing: 0; color: #000000; font-size: 20px; font-weight: 400; line-height: inh=
erit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-ins=
et: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color:=
 #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 =
transparent; --tw-ring-shadow: 0 0 transparent; font-style: normal; text-al=
ign: center;"><strong style=3D'margin: 0; outline: none; padding: 0; --tw-s=
hadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ring-off=
set-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,=
246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 t=
ransparent; font-style: inherit; font-weight: 700; color: #000000; font-fam=
ily: georgia, "times new roman";' class=3D"">How Credit Line Works</strong>=
</div>=0A<span style=3D'color: #000000; font-size: 12px; font-weight: 400; =
line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparen=
t; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ri=
ng-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-off=
set-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style:=
 normal; font-family: georgia, "times new roman";' class=3D""><br style=3D"=
font-size: 15px;"><span style=3D"color: inherit; font-size: 14px; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0=
 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width:=
 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
;"><strong style=3D"margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 =
transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0p=
x;=0A--tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); -=
-tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;=
 font-style: normal; font-weight: 700; font-size: 15px; color: #000000;">Ap=
plying for and using your revolving line of credit is easy. Here=E2=80=
=99s how it works:<br style=3D""></strong><br style=3D""><span class=3D"" s=
tyle=3D"color: inherit; font-size: 16px; font-weight: inherit; line-height:=
 inherit; text-decoration: inherit;"><span style=3D"color: #000000; font-si=
ze: inherit; font-weight: 400; line-height: inherit; text-decoration: inher=
it; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-=
ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba=
(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shado=
w: 0 0 transparent; font-style: normal;"><strong style=3D"margin: 0; outlin=
e: none; padding: 0; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--t=
w-empty, );=0A--tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --=
tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transpare=
nt; --tw-ring-shadow: 0 0 transparent; font-style: inherit; font-weight: 70=
0; color: #000000;">1. Sign Up Online.</strong><span style=3D"color: #00000=
0; font-size: inherit; font-weight: inherit; line-height: inherit; text-dec=
oration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-e=
mpty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ri=
ng-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; -=
-tw-ring-shadow: 0 0 transparent;"> Enter your email and phone number, no l=
engthy paperwork.<br style=3D""></span></span><br style=3D""><span style=3D=
"color: #000000; font-size: inherit; font-weight: 400; line-height: inherit=
; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: =
var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #ff=
f; --tw-ring-color:=0Argba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tr=
ansparent; --tw-ring-shadow: 0 0 transparent; font-style: normal;"><strong =
style=3D"margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 transparent=
; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-rin=
g-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offs=
et-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: =
inherit; font-weight: 700; color: #000000;">2. Get a Decision Quickly.</str=
ong><span style=3D"color: #000000; font-size: inherit; font-weight: inherit=
; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transpar=
ent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-=
ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-o=
ffset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;"> Connect=
 your accounting software or bank account to give us insight into your busi=
ness. Most customers get a=0Adecision in about 3 minutes or even sooner.<br=
 style=3D""></span></span><br style=3D""><span style=3D"color: #000000; fon=
t-size: inherit; font-weight: 400; line-height: inherit; text-decoration: i=
nherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); -=
-tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: =
rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-s=
hadow: 0 0 transparent; font-style: normal;"><strong style=3D"margin: 0; ou=
tline: none; padding: 0; --tw-shadow: 0 0 transparent; --tw-ring-inset: var=
(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; =
--tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transpa=
rent; --tw-ring-shadow: 0 0 transparent; font-style: inherit; font-weight: =
700; color: #000000;">3. Get Funds Right Away.</strong><span style=3D"color=
: #000000; font-size: inherit; font-weight: inherit; line-height: inherit; =
text-decoration: inherit; --tw-shadow: 0 0=0Atransparent; --tw-ring-inset: =
var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #ff=
f; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tran=
sparent; --tw-ring-shadow: 0 0 transparent;"> If approved, draw funds anyti=
me. Funds arrive as soon as the next business day.</span></span></span></sp=
an></span> <br></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-margin2001" valign=3D"top" style=3D"mso-line-height-rule: exactly=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr id=3D"layout-row2001" class=3D"layout layout-=
row widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: =
exactly;"><td id=3D"layout-row-padding2001" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heigh=
t-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" widt=
h=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://co=
ntent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png=
?r=3D893619301" alt=3D"" width=3D"650" style=3D"display: block; border: non=
e; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-r=
ow1999" class=3D"layout layout-row clear-this " style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding1999" valign=3D"top" style=3D"mso=
-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"layout_table_89e844672b900e28a7d1d959288af2=
8c97a4cc10" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"lay=
out layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-margin1998" valign=3D"to=
p" style=3D"mso-line-height-rule:=0Aexactly; padding: 5px;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial =
!important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row1998" class=3D"layout layout-row widg=
et _widget_text style1998" style=3D"mso-line-height-rule: exactly; margin: =
0; padding: 0;"><td id=3D"layout-row-padding1998" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1701" class=3D"td=
_text td_block" valign=3D"top" align=3D"left" width=3D"305" style=3D"mso-li=
ne-height-rule: exactly; margin: 0; outline: none; padding: 0; color: inher=
it; font-size:=0A12px; font-weight: inherit; line-height: 1; text-decoratio=
n: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; p=
adding: 0; color: inherit; font-size: 14px; font-weight: inherit; line-heig=
ht: inherit; text-decoration: inherit; font-family: arial;"> <span style=3D=
"color: inherit; font-size: 16px; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset:=
 var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #f=
ff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tra=
nsparent; --tw-ring-shadow: 0 0 transparent; font-family: arial;"><a href=
=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3D8dmbnaPTR=
HwiQYP6Lh33nKYs9kZXmpQ3ZgZBbr7tr9n9&iat=3D1642602827&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D99A147A1A350" target=3D"_blank"=0Adata-saferedirecturl=3D=
"https://www.google.com/url?q=3Dhttps://motorcityfunding.lt.acemlnd.com/Pro=
d/link-tracker?redirectUrl%3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLm=
NvbQ%3D%3D%26sig%3D516LAVULGnbJK7k7d3efYjxHGfh7ZUk5jNjjWtZKCfk8%26iat%3D164=
1911438%26a%3D%257C%257C225362583%257C%257C%26account%3Dmotorcityfunding%25=
2Eactivehosted%252Ecom%26email%3DMiaf5VkGfx%252BcD4q5u2IElitkAjPv3Bu2XnpRNF=
kRdAg%253D%26s%3D757d06d6095fd89c9c5bca4c0ceece4e%26i%3D84A126A1A262&source=
=3Dgmail&ust=3D1642533783179000&usg=3DAOvVaw3mkgO9OXoox5DPzdJdcpsq" data-ac=
-default-color=3D"1" style=3D"margin: 0; outline: none; padding: 0; color: =
#045fb4; text-decoration: underline; --tw-shadow: 0 0 transparent; --tw-rin=
g-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-c=
olor: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-family: arial; fo=
nt-weight: 700;"><span style=3D"color: inherit; font-size: inherit;=0Afont-=
weight: inherit; line-height: inherit; text-decoration: inherit; --tw-shado=
w: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-wi=
dth: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.=
5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpa=
rent; font-family: arial;">Motor City Funding</span></a><br><span style=3D"=
color: #000000; font-size: inherit; font-weight: bold; line-height: inherit=
; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: =
var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #ff=
f; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tran=
sparent; --tw-ring-shadow: 0 0 transparent; font-family: arial; margin: 0;"=
>O: (315) 257-1195</span><br></span><span style=3D"color: inherit; font-siz=
e: inherit; font-weight: inherit; line-height: inherit; text-decoration: in=
herit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, );=0A=
--tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color:=
 rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-=
shadow: 0 0 transparent; font-family: arial; text-align: left; margin: 0;">=
 </span><br></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_de9666ff4bb9a9e0f=
b26136db7e5f9f439522403" valign=3D"top" width=3D"325" style=3D"mso-line-hei=
ght-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0"=
 class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1997"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1997" class=3D"layout layout-row widget _widget_pi=
cture " align=3D"right" style=3D"mso-line-height-rule: exactly;"><td id=3D"=
layout-row-padding1997" valign=3D"top" style=3D"mso-line-height-rule: exact=
ly;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;">=
<td class=3D"image-td" align=3D"right" valign=3D"top" width=3D"325" style=
=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com=
/Rnj5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D1545452718" =
alt=3D"" width=3D"121" style=3D"display: block; border: none; outline: none=
; width: 121px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</div>=0A<img src=3D"https://motorcityfunding.lt.acemlnd.com/Prod=
/link-tracker?nl=3D1&c=3D99&m=3D147&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=
=3Dopen&account=3Dmotorcityfunding.activehosted.com&a=3D225362583" border=
=3D"0" width=3D"1" height=3D"1" style=3D"display:block;width:1px!important;=
min-width:1px!important;max-width:1px!important;height:1px!important;border=
:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D"clear:both;background=
-color:inherit;background:inherit;min-width:100%;mso-table-lspace:0pt;mso-t=
able-rspace:0pt;padding:20px;color:#000000;font-size:11px;font-family:arial=
,helvetica,sans-serif;line-height:140%;line-height:1.4;text-align:center;bo=
x-sizing:border-box;">=0A=09<center>=0A=09=09Sent to: <span style=3D"font-s=
ize:11px;font-family:arial,helvetica,sans-serif;font-weight:normal;text-dec=
oration:none;outline:none;">linux1394-devel@lists.sourceforge.net</span>=0A=
=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://motorcityfunding.activeho=
sted.com/proc.php?nl=3D1&c=3D99&m=3D147&s=3D0ad92c0c4a2ff86eed94873b1c9268b=
7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helvetica,sans-ser=
if;font-weight:bold;text-decoration:underline;"><span style=3D"font-weight:=
bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=
=09<br> Motor City Funding, 3000 Town Center, Southfield, United States=0A=
=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-106247098061e81d489b7b17.03872552_=_--



--===============3168422189703627453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3168422189703627453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3168422189703627453==--


