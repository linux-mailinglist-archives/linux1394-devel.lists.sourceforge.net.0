Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1616C4910FC
	for <lists+linux1394-devel@lfdr.de>; Mon, 17 Jan 2022 21:31:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n9Yf0-000242-CP; Mon, 17 Jan 2022 20:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-94-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1n9Yez-00023w-3t
 for linux1394-devel@lists.sourceforge.net; Mon, 17 Jan 2022 20:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zigydVsTDmx3TZT6gdH0KIx3XAzMkw2ckBW4x5TJDJI=; b=KqdxcbV7B2MWA4/nRlHJd8DNel
 udgZGlx6KmrYgDX+/4WnRWB8hGFGnbSREiqc08dYNBVpgsYi42MZlDfEA+Rn9rUnwWVIohksaHHEZ
 EO6TVC6Jr8yM0ckXVON/3UzbNaRlidaKYu/1l5+4M6ye5gBHDPzdnzNTFxhpQ+BJ2Nmk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=zigydVsTDmx3TZT6gdH0KIx3XAzMkw2ckBW4x5TJDJI=; b=FhLRlmkz7c/r
 2daEOA/D80MBNJkNJgR9LepO4f7DKjSGBszqDJEVNUQdfo2vEfSF8Dfymp2EgUU3ZzSnuRAbEbrWt
 TIza+v9uS2hssmLW/+JoHrzMjq6a1O5/8QyFYCLJFNIZau9+xmVipmbx71sibwDAoaTgqobIZcMDx
 jrKlo=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9Yew-001FLe-4v
 for linux1394-devel@lists.sourceforge.net; Mon, 17 Jan 2022 20:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=zigydVsTDmx3TZT6gdH0KIx3XAzMkw2ckBW4x5TJDJI=;
 b=Izkk7FD9+kRoYqnyBcDVSPUSExbr0TdGztk6LcQUvXxmcnPLbBDFWRRBc1xhhNel6zD8eBhpKjSO
 cp5NRrm5xps5T4Ybr6G3WvWHuUBdIxrGnPvrXxDkn2stMeaaK2cIe9krwa38jRZYJFtyBsZYHE1o
 B/t41vhQ4n6Hx/Tbqkc=
Received: by s15.avl4.acemsrvd.com id hsn90s2t56g3 for
 <linux1394-devel@lists.sourceforge.net>;
 Mon, 17 Jan 2022 20:31:10 +0000 (envelope-from
 <bounce-2287853-94-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "Motor City Funding" <sbrugman@motorcityfunding.com>
Subject: Revolving Line of Credit
Date: Mon, 17 Jan 2022 14:22:16 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM5NCAsIG0xMzcgLCBzODM
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-94
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220117203110.29507.1531579515.swift@motorcityfunding.activehosted.com>
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
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [192.92.97.219 listed in wl.mailspike.net]
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
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n9Yew-001FLe-4v
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
Content-Type: multipart/mixed; boundary="===============1603604169013877648=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============1603604169013877648==
Content-Type: multipart/alternative;
 boundary="_=_swift-30197287561e5cff84c9d28.31379081_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-30197287561e5cff84c9d28.31379081_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=94&amp;m=137&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-30197287561e5cff84c9d28.31379081_=_
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
854 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row1855 img { width: 100% =
!important; height: auto !important; max-width: 121px !important; } #layout=
-row1859 img { width: 100% !important; height: auto !important; max-width: =
320px !important; } #layout-row1860 img { width: 100% !important; height: a=
uto !important; max-width: 102px !important; } #layout-row1863 img { width:=
 100% !important; height: auto !important; max-width: 102px !important; } #=
layout-row1866 img { width: 100% !important; height: auto !important; max-w=
idth: 104px !important; } #layout-row1871 img { width: 100% !important; hei=
ght: auto !important; max-width: 320px !important; } #layout-row1872 .break=
-line { width: 100% !important; margin: auto !important; } #layout-row1873 =
.break-line { width: 100% !important; margin: auto !important;=0A} #layout-=
row1874 .break-line { width: 100% !important; margin: auto !important; } #l=
ayout-row1875 img { width: 100% !important; height: auto !important; max-wi=
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
 screen and (max-width: 375px) { #layout-row1854 { max-height: 0px!importan=
t; font-size: 0px!important; display: none!important; visibility: hidden!im=
portant; } #layout-row1855 img { width: 100% !important; height: auto !impo=
rtant; max-width: 121px !important; } #layout-row1859 img { width: 100% !im=
portant; height: auto !important; max-width: 375px !important; } #layout-ro=
w1860 img { width: 100% !important; height: auto !important; max-width: 102=
px !important; } #layout-row1863 img { width: 100% !important; height: auto=
 !important; max-width: 102px !important; } #layout-row1866 img { width: 10=
0% !important; height: auto !important; max-width: 104px !important; } #lay=
out-row1871 img { width: 100% !important; height: auto !important; max-widt=
h: 375px !important; } #layout-row1872 .break-line { width: 100% !important=
; margin: auto !important; } #layout-row1873 .break-line { width: 100% !imp=
ortant; margin: auto !important; } #layout-row1874 .break-line {=0Awidth: 1=
00% !important; margin: auto !important; } #layout-row1875 img { width: 100=
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
 { #layout-row1854 { max-height: 0px!important; font-size: 0px!important; d=
isplay: none!important; visibility: hidden!important; } #layout-row1855 img=
 { width: 100% !important; height: auto !important; max-width: 121px !impor=
tant; } #layout-row1859 img { width: 100% !important; height: auto !importa=
nt; max-width: 414px !important; } #layout-row1860 img { width: 100% !impor=
tant; height: auto !important; max-width: 102px !important; } #layout-row18=
63 img { width: 100% !important; height: auto !important; max-width: 102px =
!important; } #layout-row1866 img { width: 100% !important; height: auto !i=
mportant; max-width: 104px !important; } #layout-row1871 img { width: 100% =
!important; height: auto !important; max-width: 414px !important; } #layout=
-row1872 .break-line { width: 100% !important; margin: auto !important; } #=
layout-row1873 .break-line { width: 100% !important; margin: auto !importan=
t; } #layout-row1874 .break-line {=0Awidth: 100% !important; margin: auto !=
important; } #layout-row1875 img { width: 100% !important; height: auto !im=
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
}=0A@media only screen and (max-width: 667px) { #layout-row1854 { max-heigh=
t: 0px!important; font-size: 0px!important; display: none!important; visibi=
lity: hidden!important; } #layout-row1855 img { width: 100% !important; hei=
ght: auto !important; max-width: 121px !important; } #layout-row1859 img { =
width: 100% !important; height: auto !important; max-width: 667px !importan=
t; } #layout-row1860 img { width: 100% !important; height: auto !important;=
 max-width: 102px !important; } #layout-row1863 img { width: 100% !importan=
t; height: auto !important; max-width: 102px !important; } #layout-row1866 =
img { width: 100% !important; height: auto !important; max-width: 104px !im=
portant; } #layout-row1871 img { width: 100% !important; height: auto !impo=
rtant; max-width: 667px !important; } #layout-row1872 .break-line { width: =
100% !important; margin: auto !important; } #layout-row1873 .break-line { w=
idth: 100% !important; margin: auto !important; } #layout-row1874 .break-li=
ne {=0Awidth: 100% !important; margin: auto !important; } #layout-row1875 i=
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
actly;"><td id=3D"layout_table_be9d76a79461de2a116f8592af277ddc10cb6964" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1854"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1854" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g1854" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table wid=
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
ine-height-rule: exactly;"><td id=3D"layout-row-margin1871" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 0;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !import=
ant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr id=3D"layout-row1871" class=3D"layout layout-row widget _wid=
get_picture style1871" align=3D"center" style=3D"mso-line-height-rule: exac=
tly; background-color: #ffffff;"><td id=3D"layout-row-padding1871" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
 padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"image-td"=0Aalign=3D"center" valign=3D"top" width=3D"65=
0" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app=
-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1934=
301771" alt=3D"" width=3D"238" style=3D"display: block; border: none; outli=
ne: none; width: 238px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin1870" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1870" class=3D"layout layout-row widget _widget_te=
xt style1870" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #ffffff;"><td id=3D"layout-row-padding1870" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly; background-color: #ffffff; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td=0Aid=3D"text_div1589" class=3D"td_text td_block" valign=3D"top" ali=
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
mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1869" valign=3D"=
top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial =
!important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row1869" class=3D"layout layout-row widg=
et _widget_button style1869" style=3D"mso-line-height-rule: exactly; backgr=
ound-color: #ffffff;"><td id=3D"layout-row-padding1869" valign=3D"top" styl=
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
Uz&sig=3D8hn4FeC1XNGaXzvYe5s1HuyesUm76yHzrZWUsSL2vpw8&iat=3D1642451470&a=3D=
%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=
=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0=
ad92c0c4a2ff86eed94873b1c9268b7&i=3D94A137A1A310" style=3D"v-text-anchor:mi=
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
4JTI1MkMlMkJMTEMlMkIyMjUz&sig=3D8hn4FeC1XNGaXzvYe5s1HuyesUm76yHzrZWUsSL2vpw=
8&iat=3D1642451470&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Ea=
ctivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Q=
tV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D94A137A1A310" st=
yle=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background:=
 #244df0; background-color: #244df0; border: 1px solid #B5B5B5; border-radi=
us: 3px; font-family: georgia, times new roman; font-size: 18px; display: i=
nline-block; line-height: 1.1; text-align: center; text-decoration: none; m=
so-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, times new=
 roman;font-size:18px;font-weight: bold;"> Click Here to Get=0AStarted </sp=
an> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layo=
ut-row-margin1875" valign=3D"top" style=3D"mso-line-height-rule: exactly;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row1875" class=3D"layout layout-row=
 widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout-row-padding1875" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=
=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://con=
tent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?=
r=3D1641084275" alt=3D"" width=3D"650" style=3D"display: block; border: non=
e; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-r=
ow1868" class=3D"layout layout-row clear-this " style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding1868" valign=3D"top" style=3D"mso=
-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"layout_table_7f5f950e3dde2dc7ee3f51e58a762a=
192843ca9d" valign=3D"top" width=3D"175" style=3D"mso-line-height-rule: exa=
ctly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"lay=
out layout-table " width=3D"175" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-margin1866" valign=3D"to=
p" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row1866" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding1866" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"175" style=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/1=
7/f343bbff-9586-4f44-a4db-545e2f757ece.png?r=3D195912136" alt=3D"" width=3D=
"104" style=3D"display:=0Ablock; border: none; outline: none; width: 104px;=
 opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_11bfff4=
6e84fd085e50ed366186e62b4dd43e91b" valign=3D"top" width=3D"475" style=3D"ms=
o-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" class=3D"layout layout-table " width=3D"475" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-m=
argin1872" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row1872" class=3D"layout layout-row widget =
_widget_break " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-r=
ow-padding1872" valign=3D"top" style=3D"mso-line-height-rule: exactly; line=
-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; mso-line-height-rule: =
exactly;"><tr style=3D"mso-line-height-rule: exactly;"><td height=3D"10" st=
yle=3D"mso-line-height-rule: exactly; line-height: 0;"></td>=0A</tr>=0A<tr =
style=3D"mso-line-height-rule: exactly;"><td align=3D"center" height=3D"1" =
width=3D"475" style=3D"mso-line-height-rule: exactly; line-height: 0;"> <ta=
ble align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" heigh=
t=3D"1" width=3D"475" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: auto=
!important; mso-table-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; m=
so-line-height-rule: exactly; width: 100%; max-width: 100%;"><tr style=3D"m=
so-line-height-rule: exactly;"><td class=3D"break-line" bgcolor=3D"#ffffff"=
 height=3D"1" width=3D"475" style=3D"mso-line-height-rule: exactly; line-he=
ight: 1px; height: 1px; width: 475px; background-color: #ffffff;"> </td>=0A=
 </tr>=0A</table>=0A</td>=0A </tr>=0A<tr style=3D"mso-line-height-rule: exa=
ctly;"><td height=3D"10" style=3D"mso-line-height-rule: exactly; line-heigh=
t: 0;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin=
1867" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1867" class=3D"layout=
 layout-row widget _widget_text style1867" style=3D"mso-line-height-rule: e=
xactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding1867" valign=3D=
"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1=
587" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"45=
5" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; paddin=
g: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height: 1=
; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; =
outline: none; padding: 0; color: inherit; font-size: 18px; font-weight: in=
herit; line-height: inherit; text-decoration: inherit;"> <div style=3D'marg=
in: 0; outline: none; padding: 0; color: #000000; font-size: inherit; font-=
weight: inherit; line-height: inherit; text-decoration: inherit; font-famil=
y: georgia, "times new roman";'> <span style=3D'color: #000000; font-size: =
inherit; font-weight: 400; line-height: inherit; text-decoration: inherit; =
font-style: normal; font-family: georgia, "times new roman";' class=3D"">Re=
volving business lines of credit up to $150,000. Repay over 12 or 24 weeks.=
 Your available credit goes back up as you pay. No prepayment penalty.</spa=
n> <br></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
<tr id=3D"layout-row1865" class=3D"layout layout-row clear-this " style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1865" valign=3D=
"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_b0ce0c3e4c4a=
28ac15f1f47f30ad98c964fdc218" valign=3D"top" width=3D"175" style=3D"mso-lin=
e-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table " width=3D"175" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n1863" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row1863" class=3D"layout layout-row widget _w=
idget_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding1863" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"175" sty=
le=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.c=
om/Rnj5K/2022/01/17/16f5a48a-c3eb-42bd-98bb-d019d09384b4.png?r=3D269105927"=
 alt=3D"" width=3D"102" style=3D"display:=0Ablock; border: none; outline: n=
one; width: 102px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"=
layout_table_9159b78ab15e2fbe6e20c55d2fa1b08a419ccefb" valign=3D"top" width=
=3D"475" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"475"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout-row-margin1873" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1873" class=3D"layou=
t layout-row widget _widget_break " style=3D"mso-line-height-rule: exactly;=
"><td id=3D"layout-row-padding1873" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; line-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; ms=
o-line-height-rule: exactly;"><tr style=3D"mso-line-height-rule: exactly;">=
<td height=3D"10" style=3D"mso-line-height-rule: exactly; line-height: 0;">=
</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td align=3D"c=
enter" height=3D"1" width=3D"475" style=3D"mso-line-height-rule: exactly; l=
ine-height: 0;"> <table align=3D"center" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" height=3D"1" width=3D"475" style=3D"-ms-text-size-adjust: au=
to; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 1=
4px; min-width: auto!important; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t; line-height: 0; mso-line-height-rule: exactly; width: 100%; max-width: 1=
00%;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"break-line"=
 bgcolor=3D"#ffffff" height=3D"1" width=3D"475" style=3D"mso-line-height-ru=
le: exactly; line-height: 1px; height: 1px; width: 475px; background-color:=
 #ffffff;"> </td>=0A </tr>=0A</table>=0A</td>=0A </tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly;"><td height=3D"10" style=3D"mso-line-height-rule:=
 exactly; line-height: 0;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin1864" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
1864" class=3D"layout layout-row widget _widget_text style1864" style=3D"ms=
o-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-p=
adding1864" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding:=
 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;">=
<td id=3D"text_div1585" class=3D"td_text td_block" valign=3D"top"=0Aalign=
=3D"left" width=3D"455" style=3D"mso-line-height-rule: exactly; margin: 0; =
outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: in=
herit; line-height: 1; text-decoration: inherit; font-family: arial;"> <div=
 style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: =
18px; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
"> <div style=3D'margin: 0; outline: none; padding: 0; color: #000000; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit; font-family: georgia, "times new roman";'> <span style=3D'color:=
 #000000; font-size: inherit; font-weight: 400; line-height: inherit; text-=
decoration: inherit; font-style: normal; font-family: georgia, "times new r=
oman";' class=3D"">Lump-sum business loans up to $150,000. Repay over 24 or=
 52 weeks. No origination fee. No prepayment penalty.</span> <br></div>=0A =
</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-=
row1862" class=3D"layout layout-row clear-this " style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding1862" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"layout_table_93d935640fd0f1177849679d849e3=
a461a790ce9" valign=3D"top" width=3D"175" style=3D"mso-line-height-rule: ex=
actly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"la=
yout layout-table " width=3D"175" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-margin1860" valign=3D"t=
op" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row1860" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding1860" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"175" style=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/1=
7/724aa02f-3b7f-4785-be5b-0742ed1419b7.png?r=3D1974384519" alt=3D"" width=
=3D"102"=0Astyle=3D"display: block; border: none; outline: none; width: 102=
px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_48e=
f680776a954af71e32656e00cac0511955fa5" valign=3D"top" width=3D"475" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"475" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin1874" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1874" class=3D"layout layout-row =
widget _widget_break " style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-padding1874" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y; line-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; mso-line-height=
-rule: exactly;"><tr style=3D"mso-line-height-rule: exactly;"><td height=3D=
"12" style=3D"font-size: 12px; height: 12px; line-height: 0; mso-line-heigh=
t-rule: exactly;"></td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactl=
y;"><td align=3D"center" height=3D"1" width=3D"475" style=3D"mso-line-heigh=
t-rule: exactly; line-height: 0;"> <table align=3D"center" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" height=3D"1" width=3D"475" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: auto!important; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt; line-height: 0; mso-line-height-rule: exactly; width: =
100%; max-width: 100%;"><tr style=3D"mso-line-height-rule: exactly;"><td cl=
ass=3D"break-line" bgcolor=3D"#ffffff" height=3D"1" width=3D"475" style=3D"=
mso-line-height-rule: exactly; line-height: 1px; height: 1px; width: 475px;=
 background-color: #ffffff;"> </td>=0A </tr>=0A</table>=0A</td>=0A </tr>=0A=
<tr style=3D"mso-line-height-rule: exactly;"><td height=3D"12" style=3D"fon=
t-size: 12px; height: 12px; line-height: 0; mso-line-height-rule: exactly;"=
></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr =
style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1861" v=
align=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr id=3D"layout-row1861" class=3D"layout layout=
-row widget _widget_text style1861" style=3D"mso-line-height-rule: exactly;=
 margin: 0; padding: 0;"><td id=3D"layout-row-padding1861" valign=3D"top" s=
tyle=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1583" clas=
s=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"455" style=
=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; co=
lor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-d=
ecoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline:=
 none; padding: 0; color: inherit; font-size: 18px; font-weight: inherit; l=
ine-height: inherit; text-decoration: inherit;"> <div style=3D'margin: 0; o=
utline: none; padding: 0; color: inherit; font-size: inherit; font-weight: =
inherit; line-height: inherit; text-decoration: inherit; font-family: georg=
ia, "times new roman";'> <span style=3D'color: inherit; font-size: inherit;=
 font-weight: inherit; line-height: inherit; text-decoration: inherit; font=
-family: georgia, "times new roman";' class=3D""><span style=3D"color: #000=
000; font-size: inherit; font-weight: 400; line-height: inherit; text-decor=
ation: inherit; font-style: normal;">See</span><span style=3D"color: #00000=
0; font-size: inherit; font-weight: 400; line-height: inherit;=0Atext-decor=
ation: inherit; font-style: normal;"> your total cash balance across </span=
><span style=3D"color: #000000; font-size: inherit; font-weight: 400; line-=
height: inherit; text-decoration: inherit; font-style: normal;">accounts, a=
ll in one place. Get customized predictions and alerts about your cash flow=
.</span></span> <br></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-margin1853" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1853" class=3D"layout layout-row =
widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"=
layout-row-padding1853" valign=3D"top" style=3D"mso-line-height-rule: exact=
ly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly;"><di=
v class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0;=0Aheight:=
 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"10=
0%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"650" style=
=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1858"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1858" class=3D"layout layo=
ut-row widget _widget_text style1858" style=3D"mso-line-height-rule: exactl=
y; margin: 0; padding: 0;"><td id=3D"layout-row-padding1858" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1580" cl=
ass=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"630" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; c=
olor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-=
decoration: inherit; font-family: arial;"> <div style=3D'margin: 0; outline=
: none; padding: 0; color: #000000; font-size: 12px; font-weight: inherit; =
line-height: inherit; text-decoration: inherit; font-family: georgia, "time=
s new roman";'> <div style=3D"margin: 0; outline: none; padding: 0; color: =
#000000; font-size: 20px; font-weight: 400; line-height: inherit; text-deco=
ration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-em=
pty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-rin=
g-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --=
tw-ring-shadow: 0 0 transparent; font-style: normal; text-align: center;"><=
strong style=3D'margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 tran=
sparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ring-offset-width: 0px;=
 --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-=
ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; fon=
t-style: inherit; font-weight: 700; color: #000000; font-family: georgia, "=
times new roman";' class=3D"">How Credit Line Works</strong></div>=0A<span =
style=3D'color: #000000; font-size: 12px; font-weight: 400; line-height: in=
herit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-in=
set: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color=
: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0=
 transparent; --tw-ring-shadow: 0 0 transparent; font-style: normal; font-f=
amily: georgia, "times new roman";' class=3D""><br style=3D"font-size: 15px=
;"><span style=3D"color: inherit; font-size: 14px; font-weight: inherit; li=
ne-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent;=
 --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring=
-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offse=
t-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;"><strong styl=
e=3D"margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 transparent; --=
tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px;=0A--tw-ring-=
offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset=
-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: no=
rmal; font-weight: 700; font-size: 15px; color: #000000;">Applying for and =
using your revolving line of credit is easy. Here=E2=80=99s how it works:<b=
r style=3D""></strong><br style=3D""><span class=3D"" style=3D"color: inher=
it; font-size: 16px; font-weight: inherit; line-height: inherit; text-decor=
ation: inherit;"><span style=3D"color: #000000; font-size: inherit; font-we=
ight: 400; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0=
 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0=
px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --=
tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; =
font-style: normal;"><strong style=3D"margin: 0; outline: none; padding: 0;=
 --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-r=
ing-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(=
59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow=
: 0 0 transparent; font-style: inherit; font-weight: 700; color: #000000;">=
1. Sign Up Online.</strong><span style=3D"color: #000000; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit; --=
tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-o=
ffset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,13=
0,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0=
 transparent;"> Enter your email and phone number, no lengthy paperwork.<br=
 style=3D""></span></span><br style=3D""><span style=3D"color: #000000; fon=
t-size: inherit; font-weight: 400; line-height: inherit; text-decoration: i=
nherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); -=
-tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color:=
=0Argba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-rin=
g-shadow: 0 0 transparent; font-style: normal;"><strong style=3D"margin: 0;=
 outline: none; padding: 0; --tw-shadow: 0 0 transparent; --tw-ring-inset: =
var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #ff=
f; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tran=
sparent; --tw-ring-shadow: 0 0 transparent; font-style: inherit; font-weigh=
t: 700; color: #000000;">2. Get a Decision Quickly.</strong><span style=3D"=
color: #000000; font-size: inherit; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inse=
t: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: =
#fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 t=
ransparent; --tw-ring-shadow: 0 0 transparent;"> Connect your accounting so=
ftware or bank account to give us insight into your business. Most customer=
s get a=0Adecision in about 3 minutes or even sooner.<br style=3D""></span>=
</span><br style=3D""><span style=3D"color: #000000; font-size: inherit; fo=
nt-weight: 400; line-height: inherit; text-decoration: inherit; --tw-shadow=
: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-wid=
th: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5=
); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpar=
ent; font-style: normal;"><strong style=3D"margin: 0; outline: none; paddin=
g: 0; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --t=
w-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rg=
ba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-sha=
dow: 0 0 transparent; font-style: inherit; font-weight: 700; color: #000000=
;">3. Get Funds Right Away.</strong><span style=3D"color: #000000; font-siz=
e: inherit; font-weight: inherit; line-height: inherit; text-decoration: in=
herit; --tw-shadow: 0 0=0Atransparent; --tw-ring-inset: var(--tw-empty, ); =
--tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color:=
 rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-=
shadow: 0 0 transparent;"> If approved, draw funds anytime. Funds arrive as=
 soon as the next business day.</span></span></span></span></span> <br></di=
v>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin185=
9" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row1859" class=3D"layout layout-row widget _widget_=
picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D=
"layout-row-padding1859" valign=3D"top" style=3D"mso-line-height-rule: exac=
tly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"650" style=3D"=
mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/R=
nj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D1178393492" al=
t=3D"" width=3D"650" style=3D"display: block; border: none; outline: none; =
width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row1857" class=3D"l=
ayout layout-row clear-this " style=3D"mso-line-height-rule: exactly;"><td =
id=3D"layout-row-padding1857" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"layout_table_3ea1f7ff8e70c9ded5c1b8d2b04ee3aaa046665d" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin1856" valign=3D"top" style=3D"mso-li=
ne-height-rule:=0Aexactly; padding: 5px;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: initial !important; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr id=3D"layout-row1856" class=3D"layout layout-row widget _widget_text st=
yle1856" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><t=
d id=3D"layout-row-padding1856" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div1579" class=3D"td_text td_block" va=
lign=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height-rule: ex=
actly; margin: 0; outline: none; padding: 0; color: inherit; font-size:=0A1=
2px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-f=
amily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: =
inherit; font-size: 14px; font-weight: inherit; line-height: inherit; text-=
decoration: inherit; font-family: arial;"> <span style=3D"color: inherit; f=
ont-size: 16px; font-weight: inherit; line-height: inherit; text-decoration=
: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, )=
; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-colo=
r: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-rin=
g-shadow: 0 0 transparent; font-family: arial;"><a href=3D"https://motorcit=
yfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd=
3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3DJ93bLwHaGNCz4DXZCD7AkFAoTA5Vpve=
1GPGHVhNEMkXc&iat=3D1642451470&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcit=
yfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rh=
DqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D94A1=
37A1A311" target=3D"_blank"=0Adata-saferedirecturl=3D"https://www.google.co=
m/url?q=3Dhttps://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirec=
tUrl%3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ%3D%3D%26sig%3D516=
LAVULGnbJK7k7d3efYjxHGfh7ZUk5jNjjWtZKCfk8%26iat%3D1641911438%26a%3D%257C%25=
7C225362583%257C%257C%26account%3Dmotorcityfunding%252Eactivehosted%252Ecom=
%26email%3DMiaf5VkGfx%252BcD4q5u2IElitkAjPv3Bu2XnpRNFkRdAg%253D%26s%3D757d0=
6d6095fd89c9c5bca4c0ceece4e%26i%3D84A126A1A262&source=3Dgmail&ust=3D1642533=
783179000&usg=3DAOvVaw3mkgO9OXoox5DPzdJdcpsq" data-ac-default-color=3D"1" s=
tyle=3D"margin: 0; outline: none; padding: 0; color: #045fb4; text-decorati=
on: underline; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empt=
y, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-=
color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw=
-ring-shadow: 0 0 transparent; font-family: arial; font-weight: 700;"><span=
 style=3D"color: inherit; font-size: inherit;=0Afont-weight: inherit; line-=
height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --=
tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-of=
fset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-s=
hadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-family: ari=
al;">Motor City Funding</span></a><br><span style=3D"color: #000000; font-s=
ize: inherit; font-weight: bold; line-height: inherit; text-decoration: inh=
erit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --t=
w-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rg=
ba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-sha=
dow: 0 0 transparent; font-family: arial; margin: 0;">O: (315) 257-1195</sp=
an><br></span><span style=3D"color: inherit; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 =
0 transparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ring-offset-width=
: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5);=
 --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparen=
t; font-family: arial; text-align: left; margin: 0;"> </span><br></div>=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A<td id=3D"layout_table_06e7b65b03f636f1b024cee4f8124647ca391e2=
a" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><t=
able cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layou=
t-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-s=
ize-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 10=
0%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-he=
ight-rule: exactly;"><td id=3D"layout-row-margin1855" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout=
-row1855" class=3D"layout layout-row widget _widget_picture " align=3D"righ=
t" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding185=
5" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-=
td" align=3D"right" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/03/194=
ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D1789502661" alt=3D"" width=3D"121=
" style=3D"display: block; border: none; outline: none; width: 121px; opaci=
ty: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<i=
mg src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&=
c=3D94&m=3D137&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmoto=
rcityfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"1" heigh=
t=3D"1" style=3D"display:block;width:1px!important;min-width:1px!important;=
max-width:1px!important;height:1px!important;border:0;overflow:hidden;" /><=
div id=3D"ac-footer" style=3D"clear:both;background-color:inherit;backgroun=
d:inherit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:=
20px;color:#000000;font-size:11px;font-family:arial,helvetica,sans-serif;li=
ne-height:140%;line-height:1.4;text-align:center;box-sizing:border-box;">=
=0A=09<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:a=
rial,helvetica,sans-serif;font-weight:normal;text-decoration:none;outline:n=
one;">linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br=
>=0A=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.php?nl=
=3D1&c=3D94&m=3D137&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=
=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold;=
text-decoration:underline;"><span style=3D"font-weight:bold;text-decoration=
:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Fu=
nding, 3000 Town Center, Southfield, United States=0A=09</center>=0A</div>=
=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-30197287561e5cff84c9d28.31379081_=_--



--===============1603604169013877648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1603604169013877648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1603604169013877648==--


