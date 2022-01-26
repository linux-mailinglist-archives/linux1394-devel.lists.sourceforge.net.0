Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B63FF49CFAA
	for <lists+linux1394-devel@lfdr.de>; Wed, 26 Jan 2022 17:27:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nCl8b-0004jj-Rv; Wed, 26 Jan 2022 16:27:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-107-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1nCl8a-0004jc-0x
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 16:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cbfqb/IVt8ZIXFuDCGEj+Nt2+t9vxFA/I5zP8hCPSp0=; b=Q89p2VLNYy/lQZCES+HMHdsIo4
 9qcZxg+6RM5DdgBXTNYJsvz3EA6uxecDWl+YAq2WSBsb5/Do4Ib2fzDwKEJcD/LGFbKh99Nu6vtB8
 cMzyqf8cLikMc0zn7JzqPE8CyqNwkqpn5o/1G1n4ZKzJ3g2mhII/jb3aCseThPWUWW80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Cbfqb/IVt8ZIXFuDCGEj+Nt2+t9vxFA/I5zP8hCPSp0=; b=WCVJfi/9xEc6
 05z0oxCiVinljUq8j2Xi2cExWDEfjV83U8ZWBsYSR3MoscuS5NQXLj9T7iA80jscp+jN3dUHZhYBx
 cBZp5eKMYK35irLcXicVBAYb3KBeIwyJswu2JsuQmB3VLkgxAxn/lTkeyR2zDlr9VQeGVIjFVQUqL
 onNyY=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCl8W-00EfK6-K6
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 16:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=Cbfqb/IVt8ZIXFuDCGEj+Nt2+t9vxFA/I5zP8hCPSp0=;
 b=I4bn2qunGSC2xCofDmyp6SCN/hM1VGwcgEObYGLF7nG+T3e+OqacjyvISKfigJqh2igo2vFg5wvu
 +Mm0AzvJrt47IPVYRHLhCUWrRY9rPXBjnPl90PB0Tgodh/Ja77/827EJU0KNed86z1fbBFGdD24b
 55PiWXGz76aii+TxRbw=
Received: by s15.avl4.acemsrvd.com id hu5r542t56gs for
 <linux1394-devel@lists.sourceforge.net>;
 Wed, 26 Jan 2022 16:26:58 +0000 (envelope-from
 <bounce-2287853-107-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "Motor City Funding" <sbrugman@motorcityfunding.com>
Subject: Revolving Line of Credit
Date: Wed, 26 Jan 2022 10:04:38 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMxMDcgLCBtMTU0ICwgczkx
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-107
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220126162658.5471.48217878.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Click Here To Get Started Revolving Business Lines of Credit
    Up To $150,000  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
X-Headers-End: 1nCl8W-00EfK6-K6
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
Content-Type: multipart/mixed; boundary="===============8716620416837890387=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============8716620416837890387==
Content-Type: multipart/alternative;
 boundary="_=_swift-78502476261f171168ea353.41154724_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-78502476261f171168ea353.41154724_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=107&amp;m=154&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-78502476261f171168ea353.41154724_=_
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
-ac-keep=3D"true"> @media only screen and (max-width: 320px) { #layout-row2=
099 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row2100 img { width: 100% =
!important; height: auto !important; max-width: 121px !important; } #layout=
-row2104 img { width: 100% !important; height: auto !important; max-width: =
320px !important; } #layout-row2105 img { width: 100% !important; height: a=
uto !important; max-width: 102px !important; } #layout-row2108 img { width:=
 100% !important; height: auto !important; max-width: 102px !important; } #=
layout-row2111 img { width: 100% !important; height: auto !important; max-w=
idth: 104px !important; } #layout-row2116 img { width: 100% !important; hei=
ght: auto !important; max-width: 320px !important; } #layout-row2117 .break=
-line { width: 100% !important; margin: auto !important; } #layout-row2118 =
.break-line { width: 100% !important; margin: auto !important;=0A} #layout-=
row2119 .break-line { width: 100% !important; margin: auto !important; } #l=
ayout-row2120 img { width: 100% !important; height: auto !important; max-wi=
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
 screen and (max-width: 375px) { #layout-row2099 { max-height: 0px!importan=
t; font-size: 0px!important; display: none!important; visibility: hidden!im=
portant; } #layout-row2100 img { width: 100% !important; height: auto !impo=
rtant; max-width: 121px !important; } #layout-row2104 img { width: 100% !im=
portant; height: auto !important; max-width: 375px !important; } #layout-ro=
w2105 img { width: 100% !important; height: auto !important; max-width: 102=
px !important; } #layout-row2108 img { width: 100% !important; height: auto=
 !important; max-width: 102px !important; } #layout-row2111 img { width: 10=
0% !important; height: auto !important; max-width: 104px !important; } #lay=
out-row2116 img { width: 100% !important; height: auto !important; max-widt=
h: 375px !important; } #layout-row2117 .break-line { width: 100% !important=
; margin: auto !important; } #layout-row2118 .break-line { width: 100% !imp=
ortant; margin: auto !important; } #layout-row2119 .break-line {=0Awidth: 1=
00% !important; margin: auto !important; } #layout-row2120 img { width: 100=
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
 { #layout-row2099 { max-height: 0px!important; font-size: 0px!important; d=
isplay: none!important; visibility: hidden!important; } #layout-row2100 img=
 { width: 100% !important; height: auto !important; max-width: 121px !impor=
tant; } #layout-row2104 img { width: 100% !important; height: auto !importa=
nt; max-width: 414px !important; } #layout-row2105 img { width: 100% !impor=
tant; height: auto !important; max-width: 102px !important; } #layout-row21=
08 img { width: 100% !important; height: auto !important; max-width: 102px =
!important; } #layout-row2111 img { width: 100% !important; height: auto !i=
mportant; max-width: 104px !important; } #layout-row2116 img { width: 100% =
!important; height: auto !important; max-width: 414px !important; } #layout=
-row2117 .break-line { width: 100% !important; margin: auto !important; } #=
layout-row2118 .break-line { width: 100% !important; margin: auto !importan=
t; } #layout-row2119 .break-line {=0Awidth: 100% !important; margin: auto !=
important; } #layout-row2120 img { width: 100% !important; height: auto !im=
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
}=0A@media only screen and (max-width: 667px) { #layout-row2099 { max-heigh=
t: 0px!important; font-size: 0px!important; display: none!important; visibi=
lity: hidden!important; } #layout-row2100 img { width: 100% !important; hei=
ght: auto !important; max-width: 121px !important; } #layout-row2104 img { =
width: 100% !important; height: auto !important; max-width: 667px !importan=
t; } #layout-row2105 img { width: 100% !important; height: auto !important;=
 max-width: 102px !important; } #layout-row2108 img { width: 100% !importan=
t; height: auto !important; max-width: 102px !important; } #layout-row2111 =
img { width: 100% !important; height: auto !important; max-width: 104px !im=
portant; } #layout-row2116 img { width: 100% !important; height: auto !impo=
rtant; max-width: 667px !important; } #layout-row2117 .break-line { width: =
100% !important; margin: auto !important; } #layout-row2118 .break-line { w=
idth: 100% !important; margin: auto !important; } #layout-row2119 .break-li=
ne {=0Awidth: 100% !important; margin: auto !important; } #layout-row2120 i=
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
actly;"><td id=3D"layout_table_96dbec9294b649294d0682ae6b8d5f9b93ab5277" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"=
layout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2099"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row2099" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g2099" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table wid=
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
ine-height-rule: exactly;"><td id=3D"layout-row-margin2116" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 0;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !import=
ant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr id=3D"layout-row2116" class=3D"layout layout-row widget _wid=
get_picture style2116" align=3D"center" style=3D"mso-line-height-rule: exac=
tly; background-color: #ffffff;"><td id=3D"layout-row-padding2116" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
 padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"image-td"=0Aalign=3D"center" valign=3D"top" width=3D"65=
0" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app=
-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1924=
364458" alt=3D"" width=3D"238" style=3D"display: block; border: none; outli=
ne: none; width: 238px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin2115" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row2115" class=3D"layout layout-row widget _widget_te=
xt style2115" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #ffffff;"><td id=3D"layout-row-padding2115" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly; background-color: #ffffff; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td=0Aid=3D"text_div1800" class=3D"td_text td_block" valign=3D"top" ali=
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
mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2114" valign=3D"=
top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial =
!important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row2114" class=3D"layout layout-row widg=
et _widget_button style2114" style=3D"mso-line-height-rule: exactly; backgr=
ound-color: #ffffff;"><td id=3D"layout-row-padding2114" valign=3D"top" styl=
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
Uz&sig=3D5C5SAKh3VDZVhcX79GhsUQ5ApW8Xbo7qW4ofrM3Pvcci&iat=3D1643214418&a=3D=
%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=
=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0=
ad92c0c4a2ff86eed94873b1c9268b7&i=3D107A154A1A379" style=3D"v-text-anchor:m=
iddle; width:276px; height:64px; font-weight: bold;" arcsize=3D"6%" strokec=
olor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"tru=
e" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2p=
x,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:georgia, times n=
ew roman; font-size:18px;=0Afont-weight: bold;line-height: 1.1;">Click Here=
 to Get Started</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=
=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cHMlM0ElMkYlMkZwYXJ0bmVyLmZ1bmRib3guY29tJTJGZ2V0LXN0YXJ0ZWQtd2l0aC1w=
YXJ0bmVyJTJGJTNGYWZmaWxpYXRlX25hbWUlM0RQcmVtaXVtJTJCTWVyY2hhbnQlMkJGdW5kaW5=
nJTJCMTglMjUyQyUyQkxMQyUyNnRyYW5zYWN0aW9uX2lkJTNEMTAyMDNkZGUwZGVkZGJiYzNjMj=
kwMjE0MzYyOGY5JTI2dXRtX2NhbXBhaWduJTNEMTAyMDNkZGUwZGVkZGJiYzNjMjkwMjE0MzYyO=
GY5JTI2dXRtX2NvbnRlbnQlM0Q2NSUyNnV0bV9tZWRpdW0lM0RoYXNvZmZlcnNfcGFydG5lcnNf=
cGxhdGZvcm0lMjZ1dG1fc291cmNlJTNEUHJlbWl1bSUyQk1lcmNoYW50JTJCRnVuZGluZyUyQjE=
4JTI1MkMlMkJMTEMlMkIyMjUz&sig=3D5C5SAKh3VDZVhcX79GhsUQ5ApW8Xbo7qW4ofrM3Pvcc=
i&iat=3D1643214418&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Ea=
ctivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Q=
tV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D107A154A1A379" s=
tyle=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background=
: #244df0; background-color: #244df0; border: 1px solid #B5B5B5; border-rad=
ius: 3px; font-family: georgia, times new roman; font-size: 18px; display: =
inline-block; line-height: 1.1; text-align: center; text-decoration: none; =
mso-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, times ne=
w roman;font-size:18px;font-weight: bold;"> Click Here to Get=0AStarted </s=
pan> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-margin2120" valign=3D"top" style=3D"mso-line-height-rule: exactly=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr id=3D"layout-row2120" class=3D"layout layout-=
row widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: =
exactly;"><td id=3D"layout-row-padding2120" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heigh=
t-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" widt=
h=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://co=
ntent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png=
?r=3D1543673589" alt=3D"" width=3D"650" style=3D"display: block; border: no=
ne; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-=
row2113" class=3D"layout layout-row clear-this " style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding2113" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"layout_table_b0cbb1cfc731d8853ab11f23a5938=
6ff8a6d65cb" valign=3D"top" width=3D"175" style=3D"mso-line-height-rule: ex=
actly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"la=
yout layout-table " width=3D"175" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-margin2111" valign=3D"t=
op" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row2111" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding2111" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"175" style=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/1=
7/f343bbff-9586-4f44-a4db-545e2f757ece.png?r=3D989609730" alt=3D"" width=3D=
"104" style=3D"display:=0Ablock; border: none; outline: none; width: 104px;=
 opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_2f5c3e2=
b0faa69870ba0c3b740b4d4442fb26b5c" valign=3D"top" width=3D"475" style=3D"ms=
o-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" class=3D"layout layout-table " width=3D"475" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-m=
argin2117" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row2117" class=3D"layout layout-row widget =
_widget_break " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-r=
ow-padding2117" valign=3D"top" style=3D"mso-line-height-rule: exactly; line=
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
2112" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2112" class=3D"layout=
 layout-row widget _widget_text style2112" style=3D"mso-line-height-rule: e=
xactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding2112" valign=3D=
"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1=
798" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"45=
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
<tr id=3D"layout-row2110" class=3D"layout layout-row clear-this " style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding2110" valign=3D=
"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_f53830315a75=
968926a8d86a87f5dccfea164461" valign=3D"top" width=3D"175" style=3D"mso-lin=
e-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table " width=3D"175" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n2108" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row2108" class=3D"layout layout-row widget _w=
idget_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding2108" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"175" sty=
le=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.c=
om/Rnj5K/2022/01/17/16f5a48a-c3eb-42bd-98bb-d019d09384b4.png?r=3D1602082035=
" alt=3D"" width=3D"102"=0Astyle=3D"display: block; border: none; outline: =
none; width: 102px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"=
layout_table_74594534ba0216caa35455528a72ecd3d658cebe" valign=3D"top" width=
=3D"475" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"475"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout-row-margin2118" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2118" class=3D"layou=
t layout-row widget _widget_break " style=3D"mso-line-height-rule: exactly;=
"><td id=3D"layout-row-padding2118" valign=3D"top" style=3D"mso-line-height=
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
=3D"layout-row-margin2109" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
2109" class=3D"layout layout-row widget _widget_text style2109" style=3D"ms=
o-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-p=
adding2109" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding:=
 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;">=
<td id=3D"text_div1796" class=3D"td_text td_block" valign=3D"top"=0Aalign=
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
row2107" class=3D"layout layout-row clear-this " style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding2107" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"layout_table_eaa92258075ae563ccdae649af849=
a4a4a209df3" valign=3D"top" width=3D"175" style=3D"mso-line-height-rule: ex=
actly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"la=
yout layout-table " width=3D"175" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-margin2105" valign=3D"t=
op" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row2105" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding2105" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"175" style=3D"mso-line-hei=
ght-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/1=
7/724aa02f-3b7f-4785-be5b-0742ed1419b7.png?r=3D738755012" alt=3D"" width=3D=
"102" style=3D"display:=0Ablock; border: none; outline: none; width: 102px;=
 opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_fb566a9=
5825563617f7141b84660c4b0cfd30f85" valign=3D"top" width=3D"475" style=3D"ms=
o-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" class=3D"layout layout-table " width=3D"475" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-m=
argin2119" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row2119" class=3D"layout layout-row widget =
_widget_break " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-r=
ow-padding2119" valign=3D"top" style=3D"mso-line-height-rule: exactly; line=
-height: 0;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt; line-height: 0; mso-line-height-rule: =
exactly;"><tr style=3D"mso-line-height-rule: exactly;"><td height=3D"12" st=
yle=3D"font-size: 12px; height: 12px; line-height: 0; mso-line-height-rule:=
 exactly;"></td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td=
 align=3D"center" height=3D"1" width=3D"475" style=3D"mso-line-height-rule:=
 exactly; line-height: 0;"> <table align=3D"center" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" height=3D"1" width=3D"475" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: auto!important; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt; line-height: 0; mso-line-height-rule: exactly; width: 100%; m=
ax-width: 100%;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
break-line" bgcolor=3D"#ffffff" height=3D"1" width=3D"475" style=3D"mso-lin=
e-height-rule: exactly; line-height: 1px; height: 1px; width: 475px; backgr=
ound-color: #ffffff;"> </td>=0A </tr>=0A</table>=0A</td>=0A </tr>=0A<tr sty=
le=3D"mso-line-height-rule: exactly;"><td height=3D"12" style=3D"font-size:=
 12px; height: 12px; line-height: 0; mso-line-height-rule: exactly;"></td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2106" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row2106" class=3D"layout layout-row =
widget _widget_text style2106" style=3D"mso-line-height-rule: exactly; marg=
in: 0; padding: 0;"><td id=3D"layout-row-padding2106" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1794" class=3D=
"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"455" style=3D"m=
so-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color: =
inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-decora=
tion: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none=
; padding: 0; color: inherit; font-size: 18px; font-weight: inherit; line-h=
eight: inherit; text-decoration: inherit;"> <div style=3D'margin: 0; outlin=
e: none; padding: 0; color: inherit; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; font-family: georgia, "=
times new roman";'> <span style=3D'color: inherit; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit; font-fami=
ly: georgia, "times new roman";' class=3D""><span style=3D"color: #000000; =
font-size: inherit; font-weight: 400; line-height: inherit; text-decoration=
: inherit; font-style: normal;">See</span><span style=3D"color: #000000; fo=
nt-size: inherit; font-weight: 400; line-height: inherit;=0Atext-decoration=
: inherit; font-style: normal;"> your total cash balance across </span><spa=
n style=3D"color: #000000; font-size: inherit; font-weight: 400; line-heigh=
t: inherit; text-decoration: inherit; font-style: normal;">accounts, all in=
 one place. Get customized predictions and alerts about your cash flow.</sp=
an></span> <br></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-margin2098" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row2098" class=3D"layout layout-row widg=
et _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layo=
ut-row-padding2098" valign=3D"top" style=3D"mso-line-height-rule: exactly;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; =
mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td va=
lign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly;"><div cl=
ass=3D"spacer" style=3D"margin: 0; outline: none; padding: 0;=0Aheight: 30p=
x;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"650" style=3D"=
mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr st=
yle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2103" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: i=
nitial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row2103" class=3D"layout layout-r=
ow widget _widget_text style2103" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0;"><td id=3D"layout-row-padding2103" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1791" class=
=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" width=3D"630" style=
=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; co=
lor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-d=
ecoration: inherit; font-family: arial;"> <div style=3D'margin: 0; outline:=
 none; padding: 0; color: #000000; font-size: 12px; font-weight: inherit; l=
ine-height: inherit; text-decoration: inherit; font-family: georgia, "times=
 new roman";'> <div style=3D"margin: 0; outline: none; padding: 0; color: #=
000000; font-size: 20px; font-weight: 400; line-height: inherit; text-decor=
ation: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-emp=
ty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring=
-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --t=
w-ring-shadow: 0 0 transparent; font-style: normal; text-align: center;"><s=
trong style=3D'margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 trans=
parent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ring-offset-width: 0px; =
--tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-r=
ing-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font=
-style: inherit; font-weight: 700; color: #000000; font-family: georgia, "t=
imes new roman";' class=3D"">How Credit Line Works</strong></div>=0A<span s=
tyle=3D'color: #000000; font-size: 12px; font-weight: 400; line-height: inh=
erit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-ins=
et: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color:=
 #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 =
transparent; --tw-ring-shadow: 0 0 transparent; font-style: normal; font-fa=
mily: georgia, "times new roman";' class=3D""><br style=3D"font-size: 15px;=
"><span style=3D"color: inherit; font-size: 14px; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; =
--tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-=
offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset=
-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;"><strong style=
=3D"margin: 0; outline: none; padding: 0; --tw-shadow: 0 0 transparent; --t=
w-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px;=0A--tw-ring-o=
ffset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-=
shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: nor=
mal; font-weight: 700; font-size: 15px; color: #000000;">Applying for and u=
sing your revolving line of credit is easy. Here=E2=80=99s how it works:<br=
 style=3D""></strong><br style=3D""><span class=3D"" style=3D"color: inheri=
t; font-size: 16px; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit;"><span style=3D"color: #000000; font-size: inherit; font-wei=
ght: 400; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 =
transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0p=
x; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --t=
w-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; f=
ont-style: normal;"><strong style=3D"margin: 0; outline: none; padding: 0; =
--tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ri=
ng-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(5=
9,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow:=
 0 0 transparent; font-style: inherit; font-weight: 700; color: #000000;">1=
. Sign Up Online.</strong><span style=3D"color: #000000; font-size: inherit=
; font-weight: inherit; line-height: inherit; text-decoration: inherit; --t=
w-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-of=
fset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130=
,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 =
transparent;"> Enter your email and phone number, no lengthy paperwork.<br =
style=3D""></span></span><br style=3D""><span style=3D"color: #000000; font=
-size: inherit; font-weight: 400; line-height: inherit; text-decoration: in=
herit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --=
tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color:=
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
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin210=
4" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row2104" class=3D"layout layout-row widget _widget_=
picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D=
"layout-row-padding2104" valign=3D"top" style=3D"mso-line-height-rule: exac=
tly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"650" style=3D"=
mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/R=
nj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D839924221" alt=
=3D"" width=3D"650" style=3D"display: block; border: none; outline: none; w=
idth: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row2102" class=3D"la=
yout layout-row clear-this " style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout-row-padding2102" valign=3D"top" style=3D"mso-line-height-rule: =
exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"layout_table_db55c0fb168308becc823e17f2b3bcc5369b62d6" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin2101" valign=3D"top" style=3D"mso-li=
ne-height-rule:=0Aexactly; padding: 5px;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: initial !important; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr id=3D"layout-row2101" class=3D"layout layout-row widget _widget_text st=
yle2101" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><t=
d id=3D"layout-row-padding2101" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div1790" class=3D"td_text td_block" va=
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
3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3D4vZFmY2YYaVAE3wN3UfvmU88XNZvGEG=
giXAnKmdhahE3&iat=3D1643214418&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcit=
yfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rh=
DqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D107A=
154A1A383" target=3D"_blank"=0Adata-saferedirecturl=3D"https://www.google.c=
om/url?q=3Dhttps://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redire=
ctUrl%3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ%3D%3D%26sig%3D51=
6LAVULGnbJK7k7d3efYjxHGfh7ZUk5jNjjWtZKCfk8%26iat%3D1641911438%26a%3D%257C%2=
57C225362583%257C%257C%26account%3Dmotorcityfunding%252Eactivehosted%252Eco=
m%26email%3DMiaf5VkGfx%252BcD4q5u2IElitkAjPv3Bu2XnpRNFkRdAg%253D%26s%3D757d=
06d6095fd89c9c5bca4c0ceece4e%26i%3D84A126A1A262&source=3Dgmail&ust=3D164253=
3783179000&usg=3DAOvVaw3mkgO9OXoox5DPzdJdcpsq" data-ac-default-color=3D"1" =
style=3D"margin: 0; outline: none; padding: 0; color: #045fb4; text-decorat=
ion: underline; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-emp=
ty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring=
-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --t=
w-ring-shadow: 0 0 transparent; font-family: arial; font-weight: 700;"><spa=
n style=3D"color: inherit; font-size: inherit;=0Afont-weight: inherit; line=
-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; -=
-tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-o=
ffset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-=
shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-family: ar=
ial;">Motor City Funding</span></a><br><span style=3D"color: #000000; font-=
size: inherit; font-weight: bold; line-height: inherit; text-decoration: in=
herit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --=
tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: r=
gba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-sh=
adow: 0 0 transparent; font-family: arial; margin: 0;">O: (315) 257-1195</s=
pan><br></span><span style=3D"color: inherit; font-size: inherit; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0=
 0 transparent; --tw-ring-inset: var(--tw-empty, );=0A--tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5)=
; --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpare=
nt; font-family: arial; text-align: left; margin: 0;"> </span><br></div>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A<td id=3D"layout_table_f4b6e53005945d63294b42ba8f7a18aa1680aa=
98" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><=
table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layo=
ut-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"layout-row-margin2100" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout=
-row2100" class=3D"layout layout-row widget _widget_picture " align=3D"righ=
t" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding210=
0" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-=
td" align=3D"right" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2022/01/03/194=
ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D1198998263" alt=3D"" width=3D"121=
" style=3D"display: block; border: none; outline: none; width: 121px; opaci=
ty: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<i=
mg src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&=
c=3D107&m=3D154&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmot=
orcityfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"1" heig=
ht=3D"1" style=3D"display:block;width:1px!important;min-width:1px!important=
;max-width:1px!important;height:1px!important;border:0;overflow:hidden;" />=
<div id=3D"ac-footer" style=3D"clear:both;background-color:inherit;backgrou=
nd:inherit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding=
:20px;color:#000000;font-size:11px;font-family:arial,helvetica,sans-serif;l=
ine-height:140%;line-height:1.4;text-align:center;box-sizing:border-box;">=
=0A=09<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:a=
rial,helvetica,sans-serif;font-weight:normal;text-decoration:none;outline:n=
one;">linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br=
>=0A=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.php?nl=
=3D1&c=3D107&m=3D154&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" styl=
e=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold=
;text-decoration:underline;"><span style=3D"font-weight:bold;text-decoratio=
n:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City F=
unding, 3000 Town Center, Southfield, United States=0A=09</center>=0A</div>=
=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-78502476261f171168ea353.41154724_=_--



--===============8716620416837890387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8716620416837890387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8716620416837890387==--


