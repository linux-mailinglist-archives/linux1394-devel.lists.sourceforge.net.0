Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35978484342
	for <lists+linux1394-devel@lfdr.de>; Tue,  4 Jan 2022 15:23:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n4kiL-0000tS-Lz; Tue, 04 Jan 2022 14:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-78-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1n4kiK-0000t3-8v
 for linux1394-devel@lists.sourceforge.net; Tue, 04 Jan 2022 14:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W2tbtXnc6U4h4hrxxy13AxFvWLDFRwnlPaQeC82/xFs=; b=kMOjWiALLBhnxLdw/6lRfIVROY
 9ZwURt6tT3iTB7rf+HFeu17TgzqzWGuCLJn6IuYM1AY70k3HS6k5opZA6VFrlOWM4SercpZX8PGK/
 PEL6p9Vlgh25LIJZq/cinCJZfNuBC3UAr1/qLxt98l5mZwU97Fh5ADhxmkqBk/9NhJog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=W2tbtXnc6U4h4hrxxy13AxFvWLDFRwnlPaQeC82/xFs=; b=gholr3FwfIud
 eppjv/GZPfQ11XVLZd2nvTkDxOMfYKfp6sGmrePezMIzgGfnk8tljjCYxjK0TxdbFOUh64fiW8RL6
 jZOT0xQIuuOVn9hlBXSKPe6YXVrHJqcxgFf5cuHKkWJTOpkOYo/aQTEqslKlCJD10AoOTyIezq0FM
 8KxXs=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n4kiK-0003uj-86
 for linux1394-devel@lists.sourceforge.net; Tue, 04 Jan 2022 14:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=W2tbtXnc6U4h4hrxxy13AxFvWLDFRwnlPaQeC82/xFs=;
 b=y1b5HkwuPj19a0hml2bK6OOM0zTyqkR3IwTivcy+oxY2GCGOaC0BCrQDG3/e0X/kb9lgwAY9h99i
 KmQyqyE8I7RV30znRYZXjkdl79BMUyEjmYkevicsa6hcZrr9llTdhdaQFaxkON3hHc24jjvjIFkJ
 STgwM/5+p7WbFGPo1ws=
Received: by s15.avl4.acemsrvd.com id hqhc3i2q274u for
 <linux1394-devel@lists.sourceforge.net>;
 Tue, 4 Jan 2022 14:22:49 +0000 (envelope-from
 <bounce-2287853-78-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: What's Next After the EIDL?
Date: Tue, 04 Jan 2022 08:10:41 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM3OCAsIG0xMTYgLCBzNjk
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-78
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220104142249.30237.1922530835.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The SBA 7(a) is ready to FUND!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
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
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1n4kiK-0003uj-86
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
Content-Type: multipart/mixed; boundary="===============3071912021860233795=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3071912021860233795==
Content-Type: multipart/alternative;
 boundary="_=_swift-200725471661d4556152bd62.66018646_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-200725471661d4556152bd62.66018646_=_
Content-Type: text/plain; charset=utf-8

The SBA 7(a) is ready to FUND! 
 ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌

The SBA reduces the risk for lenders and makes it easier for them to
access capital. SBA guaranteed loans can be used for a variety of
business purposes, including starting or expanding an existing
businesses. That makes it easier for small businesses to get loans. 

Click Here to Apply  

 

 

Click Here to Apply  

* Under the program, small businesses (generally those with fewer than
500 employees) who are unable to get traditional financing through banks
can apply for funds that can then be used for anything from buying a
business, purchasing real estate, or for working capital. These
multi-purpose SBA loan programs offer the most flexible and longest-term
loans.

* To qualify for this loan you must have fewe
r
than 500 employees or less than $20.5 million in average annual
receipts. You must operate as a for-profit business, be based in the
United States, and not be delinquent on any debt (such as taxes) owed to
the government.

If you have any questions please do not hesitate to call.  We pride
ourselves on always being available to our clients.

Sincerely,

Samuel Brugman | Account Manager

Motor City Funding 
O: (315) 257-1195

Contact Now 
_________________

Sent to linux1394-devel@lists.sourceforge.net

Unsubscribe:
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=78&amp;m=116&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-200725471661d4556152bd62.66018646_=_
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
px!important;}=0Atd[height=3D"12"]{height:12px!important;font-size:12px!imp=
ortant;line-height:12px!important;} /*-------------------------------------=
------------------------------------*\ Product Widget \*-------------------=
------------------------------------------------------*/ .td_product > div =
{ float: none !important; width: 100% !important; margin-bottom: 20px !impo=
rtant; } .td_product > div img { width: 75% !important; } /* Default social=
 icons */ *[class].ac-social-icon-16 {width:16px !important; height:16px !i=
mportant;} *[class].ac-social-icon-24 {width:24px !important; height:24px !=
important;} *[class].ac-social-icon-28 {width:28px !important; height:28px =
!important;} *[class].__ac_social_icons { margin-right: 0px !important; } }=
=0A</style><style data-ac-keep=3D"true"> @media only screen and (max-width:=
 320px) { #layout-row1574 img { width: 100% !important; height: auto !impor=
tant; max-width: 320px !important; } #layout-row1577 img { width: 100% !imp=
ortant; height: auto !important; max-width: 320px !important; } #layout-row=
1582 img { width: 100% !important; height: auto !important; max-width: 121p=
x !important; } #layout-row1584 img { width: 100% !important; height: auto =
!important; max-width: 320px !important; } #layout-row1588 img { width: 100=
% !important; height: auto !important; max-width: 320px !important; } table=
, tbody, td, .divbody { display: table !important; width: 100% !important; =
max-width: 100% !important; } .td_rss .rss-item img.iphone_large_image { wi=
dth: auto !important; } u + .body { display: table !important; width: 100vw=
 !important; min-width: 100vw !important; } u + .body table { display: tabl=
e !important; width: 100% !important; min-width: 100% !important; } u + .bo=
dy td {=0Adisplay: block !important; width: 100% !important; min-width: 100=
% !important; } u + .body img { display: inline-block !important; margin: a=
uto !important; width: auto !important; vertical-align: bottom !important; =
} u + .body center { display: block !important; margin: auto !important; wi=
dth: 100% !important; min-width: 100% !important; text-align: center !impor=
tant; } u + .body table._ac_social_table, u + .body table._ac_social_table =
td, u + .body table._ac_social_table div, u + .body table._ac_social_table =
a { display: inline-block !important; margin: auto !important; width: auto =
!important; min-width: auto !important; text-align: center !important; } u =
+ .body table._ac_social_table img { display: inline-block !important; marg=
in: auto !important; width: 32px !important; min-width: 32px !important; ma=
x-width: 32px !important; }=0A}=0A@media only screen and (max-width: 375px)=
 { #layout-row1574 img { width: 100% !important; height: auto !important; m=
ax-width: 375px !important; } #layout-row1577 img { width: 100% !important;=
 height: auto !important; max-width: 375px !important; } #layout-row1582 im=
g { width: 100% !important; height: auto !important; max-width: 121px !impo=
rtant; } #layout-row1584 img { width: 100% !important; height: auto !import=
ant; max-width: 375px !important; } #layout-row1588 img { width: 100% !impo=
rtant; height: auto !important; max-width: 375px !important; } table, tbody=
, td, .divbody { display: table !important; width: 100% !important; max-wid=
th: 100% !important; } .td_rss .rss-item img.iphone_large_image { width: au=
to !important; } u + .body { display: table !important; width: 100vw !impor=
tant; min-width: 100vw !important; } u + .body table { display: table !impo=
rtant; width: 100% !important; min-width: 100% !important; } u + .body td {=
 display: block !important; width: 100%=0A!important; min-width: 100% !impo=
rtant; } u + .body img { display: inline-block !important; margin: auto !im=
portant; width: auto !important; vertical-align: bottom !important; } u + .=
body center { display: block !important; margin: auto !important; width: 10=
0% !important; min-width: 100% !important; text-align: center !important; }=
 u + .body table._ac_social_table, u + .body table._ac_social_table td, u +=
 .body table._ac_social_table div, u + .body table._ac_social_table a { dis=
play: inline-block !important; margin: auto !important; width: auto !import=
ant; min-width: auto !important; text-align: center !important; } u + .body=
 table._ac_social_table img { display: inline-block !important; margin: aut=
o !important; width: 32px !important; min-width: 32px !important; max-width=
: 32px !important; }=0A}=0A@media only screen and (max-width: 414px) { #lay=
out-row1574 img { width: 100% !important; height: auto !important; max-widt=
h: 414px !important; } #layout-row1577 img { width: 100% !important; height=
: auto !important; max-width: 414px !important; } #layout-row1582 img { wid=
th: 100% !important; height: auto !important; max-width: 121px !important; =
} #layout-row1584 img { width: 100% !important; height: auto !important; ma=
x-width: 414px !important; } #layout-row1588 img { width: 100% !important; =
height: auto !important; max-width: 414px !important; } table, tbody, td, .=
divbody { display: table !important; width: 100% !important; max-width: 100=
% !important; } .td_rss .rss-item img.iphone_large_image { width: auto !imp=
ortant; } u + .body { display: table !important; width: 100vw !important; m=
in-width: 100vw !important; } u + .body table { display: table !important; =
width: 100% !important; min-width: 100% !important; } u + .body td { displa=
y: block !important; width: 100%=0A!important; min-width: 100% !important; =
} u + .body img { display: inline-block !important; margin: auto !important=
; width: auto !important; vertical-align: bottom !important; } u + .body ce=
nter { display: block !important; margin: auto !important; width: 100% !imp=
ortant; min-width: 100% !important; text-align: center !important; } u + .b=
ody table._ac_social_table, u + .body table._ac_social_table td, u + .body =
table._ac_social_table div, u + .body table._ac_social_table a { display: i=
nline-block !important; margin: auto !important; width: auto !important; mi=
n-width: auto !important; text-align: center !important; } u + .body table.=
_ac_social_table img { display: inline-block !important; margin: auto !impo=
rtant; width: 32px !important; min-width: 32px !important; max-width: 32px =
!important; }=0A}=0A@media only screen and (max-width: 667px) { #layout-row=
1574 img { width: 100% !important; height: auto !important; max-width: 667p=
x !important; } #layout-row1577 img { width: 100% !important; height: auto =
!important; max-width: 667px !important; } #layout-row1582 img { width: 100=
% !important; height: auto !important; max-width: 121px !important; } #layo=
ut-row1584 img { width: 100% !important; height: auto !important; max-width=
: 667px !important; } #layout-row1588 img { width: 100% !important; height:=
 auto !important; max-width: 667px !important; } table, tbody, td, .divbody=
 { display: table !important; width: 100% !important; max-width: 100% !impo=
rtant; } .td_rss .rss-item img.iphone_large_image { width: auto !important;=
 } u + .body { display: table !important; width: 100vw !important; min-widt=
h: 100vw !important; } u + .body table { display: table !important; width: =
100% !important; min-width: 100% !important; } u + .body td { display: bloc=
k !important; width: 100%=0A!important; min-width: 100% !important; } u + .=
body img { display: inline-block !important; margin: auto !important; width=
: auto !important; vertical-align: bottom !important; } u + .body center { =
display: block !important; margin: auto !important; width: 100% !important;=
 min-width: 100% !important; text-align: center !important; } u + .body tab=
le._ac_social_table, u + .body table._ac_social_table td, u + .body table._=
ac_social_table div, u + .body table._ac_social_table a { display: inline-b=
lock !important; margin: auto !important; width: auto !important; min-width=
: auto !important; text-align: center !important; } u + .body table._ac_soc=
ial_table img { display: inline-block !important; margin: auto !important; =
width: 32px !important; min-width: 32px !important; max-width: 32px !import=
ant; }=0A} </style><!--[if !mso]><!-- webfonts --><!--<![endif]--><!--[if l=
t mso 12]> <![endif]--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSetting=
s> <o:AllowPNG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSe=
ttings>=0A</xml>=0A<![endif]--></head><body id=3D"ac-designer" class=3D"bod=
y" style=3D"font-family: Arial; line-height: 1.1; margin: 0px; background-c=
olor: #50bffa; width: 100%; text-align: center;">=09=09<div style=3D"displa=
y: none !important; padding: 0; height: 1px; font-size: 1px; background-col=
or: inherit !important; opacity: 0; color: transparent; mso-line-height-rul=
e: exactly; line-height:1px; mso-hide:all;">=0A=09=09=09The SBA 7(a) is rea=
dy to FUND!=0A=09=09=09<div style=3D"display: none; max-height: 0px; overfl=
ow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=
=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
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
h: 100%; background-color: #50bffa; background: #50bffa; text-align: center=
;"><table class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" width=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background=
-color: #50bffa; background: #50bffa;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-li=
ne-height-rule: exactly;"><table class=3D"template-table" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#50bffa" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt; max-width: 650px;"><tr=0Astyle=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout_table_b90badecfe508d0324f62b15283039fda048e2f9" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" class=3D"layout layout-table root-table" width=3D"650" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line=
-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-mar=
gin1574" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0;=
 background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row1574"=0Aclass=3D"layout layout-row widget _widget_picture style1574"=
 align=3D"center" style=3D"mso-line-height-rule: exactly; background-color:=
 #f7f9ff;"><td id=3D"layout-row-padding1574" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; background-color: #f7f9ff; padding: 20px 0 20px 0p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"image-td" align=3D"center" valign=3D"top" width=3D"650" style=3D"=
mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj=
5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1136666407" alt=
=3D"" width=3D"230" style=3D"display: block; border: none; outline: none; w=
idth: 230px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin1588" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row1588" class=3D"layout layout-r=
ow widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"layout-row-padding1588" valign=3D"top" style=3D"mso-line=
-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height=
-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=
=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"https://con=
tent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?=
r=3D215321419" alt=3D"" width=3D"650" style=3D"display: block; border: none=
; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin1573" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding:=
 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: initial !important; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1573" class=3D"layout layout-row widget _widget_text style157=
3" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; backgroun=
d-color: #ffffff;"><td id=3D"layout-row-padding1573" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; background-color: #ffffff; padding: 20px=
 5px 20px 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt;=0Amso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div1342" class=3D"td_text td_block" valign=3D"top=
" align=3D"left" width=3D"630" style=3D"line-height: 140%; mso-line-height-=
rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-s=
ize: 12px; font-weight: inherit; line-height: 1.4; text-decoration: inherit=
; font-family: arial;"> <div style=3D"line-height: 140%; margin: 0; outline=
: none; padding: 0; color: inherit; font-size: inherit; font-weight: inheri=
t; line-height: 1.4; text-decoration: inherit; mso-line-height-rule: exactl=
y;" data-line-height=3D"1.4"> <div style=3D"margin: 0; outline: none; paddi=
ng: 0; color: inherit; font-size: inherit; font-weight: inherit; line-heigh=
t: inherit; text-decoration: inherit; text-align: center;"><span style=3D'c=
olor: #000000; font-size: 14px; font-weight: bold; line-height: inherit; te=
xt-decoration: inherit; font-family: georgia, "times new roman";' class=3D"=
"> The SBA reduces the risk for lenders and=0Amakes it easier for them to a=
ccess capital. SBA guaranteed loans can be used for a variety of business p=
urposes, including starting or expanding an existing businesses. That makes=
 it easier for small businesses to get loans.</span> </div>=0A </div>=0A<!-=
-[if (gte mso 12)&(lte mso 15) ]>=0A<style data-ac-keep=3D"true" data-ac-in=
line=3D"false"> #text_div1342, #text_div1342 div { line-height: 140% !impor=
tant; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; b=
ackground-color: #ffffff;"><td id=3D"layout-row-margin1576" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ff=
ffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: initial !important; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1576" class=3D"=
layout layout-row widget _widget_button style1576" style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-padding157=
6" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color:=
 #ffffff; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-hei=
ght-rule: exactly;"><td class=3D"td_button td_block customizable" valign=3D=
"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly;"=
> <div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padding:=
 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schem=
as-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" hre=
f=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH497z7G3p=
mSAsCG3My1yQevMjhgWzkdpoddXvcKwiNik&iat=3D1641306169&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D78A116A1A230" style=3D"v-text-anchor:middle; width:189px;=
 height:64px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" st=
rokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"true" o:allowincell=3D=
"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <ce=
nter style=3D"color:#ffffff;font-family:georgia, times new roman; font-size=
:14px; font-weight: bold;line-height: 1.1;">Click Here to Apply</center> </=
v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfundin=
g.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbW=
Z1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH497z7G3pmSAsCG3My1yQevMjhgWzkdpoddXvc=
KwiNik&iat=3D1641306169&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfundin=
g%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BU=
XVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D78A116A1A23=
0" style=3D"margin: 0; outline: none; padding: 14px; color: #ffffff; backgr=
ound: #244df0; background-color: #244df0; border: 1px solid #B5B5B5; border=
-radius: 3px; font-family: georgia, times new roman; font-size: 14px; displ=
ay: inline-block; line-height: 1.1; text-align: center; text-decoration: no=
ne; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, time=
s new roman;font-size:14px;font-weight: bold;"> Click Here to Apply </span>=
 </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: =
#ffffff;"><td id=3D"layout-row-margin1579" valign=3D"top" style=3D"mso-line=
-height-rule: exactly; background-color: #ffffff;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr id=3D"layout-row1579" class=3D"layout layout-row widget _widget_spacer "=
 style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1579"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=
=3D"30" style=3D"mso-line-height-rule: exactly;"><div=0Aclass=3D"spacer" st=
yle=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpadd=
ing=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-bo=
dy" valign=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-height-rul=
e: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</ta=
ble>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-hei=
ght-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin1=
577" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-colo=
r: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1577" class=3D"layo=
ut layout-row widget _widget_picture " align=3D"left" style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-padding1577" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=
=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=
=3D"https://content.app-us1.com/Rnj5K/2022/01/03/2a2d3efc-e79f-4c80-8866-1c=
85b0f01fda.jpeg?r=3D1945409814" alt=3D"" width=3D"650" style=3D"display: bl=
ock; border: none; outline: none; width: 650px; opacity: 1; max-width: 100%=
;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin1580" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout=
-row1580" class=3D"layout layout-row widget _widget_spacer " style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-padding1580" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px;=
 min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=3D"30" style=
=3D"mso-line-height-rule: exactly;"><div=0Aclass=3D"spacer" style=3D"margin=
: 0; outline: none; padding: 0; height: 30px;"><table cellpadding=3D"0" cel=
lspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body" valign=3D=
"top" height=3D"30" width=3D"650" style=3D"mso-line-height-rule: exactly;">=
=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin1575" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-c=
olor: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: initial !important; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1575" =
class=3D"layout layout-row widget _widget_button style1575" style=3D"mso-li=
ne-height-rule: exactly;"><td id=3D"layout-row-padding1575" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fon=
t-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt=
;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_b=
lock=0Acustomizable" valign=3D"top" align=3D"left" width=3D"630" style=3D"m=
so-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D"marg=
in: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v:=
roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-=
microsoft-com:office:word" href=3D"https://motorcityfunding.lt.acemlnd.com/=
Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ=
1Z21hbg=3D=3D&sig=3DH497z7G3pmSAsCG3My1yQevMjhgWzkdpoddXvcKwiNik&iat=3D1641=
306169&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%=
2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkI=
VKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D78A116A1A230" style=3D"v-tex=
t-anchor:middle; width:191px; height:66px; font-weight: bold;" arcsize=3D"6=
%" strokecolor=3D"#244df0" strokeweight=3D"1pt" fillcolor=3D"#244df0" o:but=
ton=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox i=
nset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:georgi=
a, times new roman; font-size:14px; font-weight: bold;line-height: 1.1;">Cl=
ick Here to Apply</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a hr=
ef=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH497z7G3p=
mSAsCG3My1yQevMjhgWzkdpoddXvcKwiNik&iat=3D1641306169&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D78A116A1A230" style=3D"margin: 0; outline: none; padding:=
 16px; color: #ffffff; background: #244df0; background-color: #244df0; bord=
er-radius: 3px; font-family: georgia, times new roman; font-size: 14px; dis=
play: inline-block; line-height: 1.1; text-align: center; text-decoration: =
none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, ti=
mes new roman;font-size:14px;font-weight: bold;"> Click Here to Apply </spa=
n> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color=
: #ffffff;"><td id=3D"layout-row-margin1578" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; padding: 5px; background-color: #ffffff;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: i=
nitial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row1578" class=3D"layout layout-r=
ow widget _widget_text style1578" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0;"><td id=3D"layout-row-padding1578" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"text_div1347" clas=
s=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D=
"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color=
: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-deco=
ration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: no=
ne; padding: 0; color: #000000; font-size: 14px; font-weight: inherit; line=
-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outl=
ine: none; padding: 0; color: #000000; font-size: inherit; font-weight: inh=
erit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"margin=
: 0 0 0 40px; padding: 0; font-style: normal; text-align: left; color: #000=
000;"><li style=3D"display: list-item; line-height: inherit; list-style-typ=
e: disc; margin: 0 0 0 15px; color: #000000;"><span style=3D'color: #000000=
; font-size: inherit; font-weight: bold; line-height: inherit; text-decorat=
ion: inherit; font-family: georgia, "times new roman";' class=3D"">Under th=
e=0Aprogram, small businesses (generally those with fewer than 500 employee=
s) who are unable to get traditional financing through banks can apply for =
funds that can then be used for anything from buying a business, purchasing=
 real estate, or for working capital. These multi-purpose SBA loan programs=
 offer the most flexible and longest-term loans.</span></li><li style=3D"di=
splay: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 =
0 15px; color: #000000;"><span style=3D'color: #000000; font-size: inherit;=
 font-weight: bold; line-height: inherit; text-decoration: inherit; font-fa=
mily: georgia, "times new roman";' class=3D"">To qualify for this loan you =
<a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redire=
ctUrl=3DaHR0cHMlM0ElMkYlMkZ3d3cuc2JhLmdvdiUyRmZlZGVyYWwtY29udHJhY3RpbmclMkZ=
jb250cmFjdGluZy1ndWlkZSUyRmJhc2ljLXJlcXVpcmVtZW50cyUyM3NlY3Rpb24taGVhZGVyLT=
Y=3D&sig=3D8VzKxYpBM6KvxATPKE4CHtvYFeuah5BLUsaADZGY886m&iat=3D1641306169&a=
=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&em=
ail=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=
=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D78A116A1A231"=0Adata-ac-default-col=
or=3D"1" style=3D"margin: 0; outline: none; padding: 0; color: #045fb4; tex=
t-decoration: underline;"><span style=3D"color: ; font-size: inherit; font-=
weight: inherit; line-height: inherit; text-decoration: inherit;">must have=
 fewe</span></a>r than 500 employees or less than $20.5 million in average =
annual receipts. You must operate as a for-profit business, be based in the=
 United States, and not be delinquent on any debt (such as taxes) owed to t=
he government.</span></li></ul><br style=3D"color: #000000;"></div>=0A </di=
v>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td=
 id=3D"layout-row-margin1584" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layo=
ut-row1584" class=3D"layout layout-row widget _widget_picture " align=3D"ce=
nter" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding=
1584" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-=
td" align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-heigh=
t-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/=
efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D1309676003" alt=3D"" width=3D"=
650" style=3D"display: block; border: none; outline: none; width: 650px; op=
acity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</ta=
ble>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; backgrou=
nd-color: #ffffff;"><td id=3D"layout-row-margin1585" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: initial !important; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1585" class=3D"layou=
t layout-row widget _widget_text style1585" style=3D"mso-line-height-rule: =
exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding1585" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"text_d=
iv1353" class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"6=
30" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; paddi=
ng: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height: =
1; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #000000; font-size: 12px; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit;"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: #000000; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #000000; font-size: inh=
erit; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
 --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-rin=
g-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59=
,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: =
0 0=0Atransparent; font-style: normal; text-align: -webkit-left;"><span sty=
le=3D'color: #000000; font-size: inherit; font-weight: inherit; line-height=
: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-rin=
g-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-c=
olor: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow:=
 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-family: georgia, =
"times new roman";' class=3D"">If you have any questions please do not hesi=
tate to call.=C2=A0 We pride ourselves on always being available to our cli=
ents.</span></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; co=
lor: #000000; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset:=
 var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #f=
ff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tra=
nsparent; --tw-ring-shadow: 0 0 transparent; font-style: normal; text-align=
: -webkit-left;"><br style=3D'color: #000000; font-family: georgia, "times =
new roman";color: #000000;'></div>=0A<div style=3D"margin: 0; outline: none=
; padding: 0; color: #000000; font-size: inherit; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; =
--tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-=
offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset=
-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: no=
rmal; text-align: -webkit-left;"><span style=3D'color: #000000; font-size: =
inherit; font-weight: inherit; line-height: inherit; text-decoration: inher=
it; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-=
ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba=
(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shado=
w: 0 0 transparent; font-family: georgia, "times new roman";' class=3D"">Si=
ncerely,<br></span></div>=0A<div style=3D"margin: 0; outline: none; padding=
: 0; color: #000000; font-size: inherit; font-weight: inherit; line-height:=
 inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring=
-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-co=
lor: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: =
0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: normal; tex=
t-align: -webkit-left;"><br style=3D'color: #000000; font-family: georgia, =
"times new roman";color: #000000;'></div>=0A<div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #000000; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transp=
arent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --t=
w-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring=
-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-st=
yle: normal; text-align: -webkit-left;"><span style=3D'color: #000000; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, )=
; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-colo=
r: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-rin=
g-shadow: 0 0 transparent; font-family: georgia, "times new roman";' class=
=3D""><span style=3D"color: #000000; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit;=0A--tw-shadow: 0 0 tran=
sparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; -=
-tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ri=
ng-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;">Samu=
el Brugman</span><span style=3D"color: #000000; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow:=
 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5)=
; --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpare=
nt;"> </span><span style=3D"color: #000000; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0=
 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0=
px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --=
tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0=0Atransparent=
;">| Account</span><span style=3D"color: #000000; font-size: inherit; font-=
weight: inherit; line-height: inherit; text-decoration: inherit; --tw-shado=
w: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-wi=
dth: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.=
5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpa=
rent;"> Manager</span></span></div>=0A <br style=3D"color: #000000;"></div>=
=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr id=3D"layout-row1583" class=3D"layout layout-row clear-this " s=
tyle=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-padding1583" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td id=3D"layout_table_2eddb551a2a02969856a1bf=
690d13da29b665a05" valign=3D"top" width=3D"325" style=3D"mso-line-height-ru=
le: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=
=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin1581" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: i=
nitial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row1581" class=3D"layout layout-r=
ow widget _widget_text style1581" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0;"><td id=3D"layout-row-padding1581" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1350" class=
=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"305" style=3D"=
mso-line-height-rule:=0Aexactly; margin: 0; outline: none; padding: 0; colo=
r: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-dec=
oration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: n=
one; padding: 0; color: #ffffff; font-size: inherit; font-weight: inherit; =
line-height: inherit; text-decoration: inherit;"><span style=3D"color: #fff=
fff; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;" class=3D""><span style=3D'color: inherit; font-size: i=
nherit; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t; font-family: georgia, "times new roman";' class=3D""> </span><div style=
=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: 16px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit; --tw-=
shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offs=
et-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,2=
46,0.5); --tw-ring-offset-shadow: 0 0=0Atransparent; --tw-ring-shadow: 0 0 =
transparent; font-style: normal; text-align: center;"><span style=3D"color:=
 #000000; font-size: 14px; font-weight: inherit; line-height: inherit; text=
-decoration: inherit;" class=3D""> <span style=3D"color: #01df3a; font-size=
: 14px; font-weight: 700; line-height: inherit; text-decoration: inherit; f=
ont-family: arial; font-style: normal;"><a href=3D"https://motorcityfunding=
.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5tb3R=
vcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3DJB1DxKbRRTWv5mXEY23BsTqfNj131ZQonFkVFzf=
gVsWq&iat=3D1641306169&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding=
%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUX=
Vt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D78A116A1A232=
" data-ac-default-color=3D"1" style=3D"margin: 0; outline: none; padding: 0=
; color: #045fb4; text-decoration: underline;"><span style=3D"color: ; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit;">Motor City Funding</span></a><br></span><span style=3D"color: i=
nherit; font-size: inherit; font-weight: bold; line-height: inherit;=0Atext=
-decoration: inherit;" class=3D"">O: (315) 257-1195</span></span><br></div>=
=0A </span></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_8ee47c088111b9c542=
686b509b53926ecae1a59e" valign=3D"top" width=3D"325" style=3D"mso-line-heig=
ht-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" =
class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=
 id=3D"layout-row1587" class=3D"layout layout-row clear-this " style=3D"mso=
-line-height-rule: exactly;"><td id=3D"layout-row-padding1587" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_b4c8f35dc21019f=
b2e2e5effba794af589ff3180" valign=3D"top" width=3D"150" style=3D"mso-line-h=
eight-rule:=0Aexactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table " width=3D"150" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n1586" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0px;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: initial !important; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1586" class=3D"layou=
t layout-row widget _widget_button style1586" style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-padding1586" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
=0A-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_block custo=
mizable" valign=3D"top" align=3D"left" width=3D"140" style=3D"mso-line-heig=
ht-rule: exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outli=
ne: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xm=
lns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-co=
m:office:word" href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-tex=
t-anchor:middle; width:138px; height:60px; font-weight: bold;" arcsize=3D"6=
%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#FFFFFF" o:but=
ton=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox i=
nset=3D"2px,2px,2px,2px"> <center style=3D"color:#244df0;font-family:georgi=
a, times new roman; font-size:14px; font-weight: bold;line-height: 1.1;">Co=
ntact Now</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"ma=
ilto:sbrugman@motorcityfunding.com" style=3D"margin: 0; outline: none; padd=
ing: 12px; color: #244df0; background: #FFFFFF; background-color: #FFFFFF; =
border: 1px solid #B5B5B5; border-radius: 3px; font-family: georgia, times =
new roman; font-size: 14px; display: inline-block; line-height: 1.1; text-a=
lign: center; text-decoration: none; mso-hide: all;"> <span style=3D"color:=
#244df0;font-family:georgia, times new roman;font-size:14px;font-weight: bo=
ld;"> Contact Now </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_t=
able_2eac35e9c9c790f5abbfbf2ffc354bf95952ae58" valign=3D"top" width=3D"175"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"175" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin1582" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1582" class=3D"layout la=
yout-row widget _widget_picture " align=3D"center" style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding1582" valign=3D"top" style=3D"=
mso-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wid=
th: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-l=
ine-height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=
=3D"top" width=3D"175" style=3D"mso-line-height-rule: exactly;"><img src=3D=
"https://content.app-us1.com/Rnj5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e7558=
12b75d6.png?r=3D234512366" alt=3D"" width=3D"121" style=3D"display: block; =
border: none; outline: none; width: 121px; opacity: 1; max-width: 100%;"></=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</div>=0A<img src=3D"https://motorcityfunding.lt.acemlnd.co=
m/Prod/link-tracker?nl=3D1&c=3D78&m=3D116&s=3D0ad92c0c4a2ff86eed94873b1c926=
8b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.com&a=3D225362583" bor=
der=3D"0" width=3D"1" height=3D"1" style=3D"display:block;width:1px!importa=
nt;min-width:1px!important;max-width:1px!important;height:1px!important;bor=
der:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D"clear:both;backgro=
und-color:inherit;background:inherit;min-width:100%;mso-table-lspace:0pt;ms=
o-table-rspace:0pt;padding:20px;color:#000000;font-size:11px;font-family:ar=
ial,helvetica,sans-serif;line-height:140%;line-height:1.4;text-align:center=
;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent to: <span style=3D"fon=
t-size:11px;font-family:arial,helvetica,sans-serif;font-weight:normal;text-=
decoration:none;outline:none;">linux1394-devel@lists.sourceforge.net</span>=
=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://motorcityfunding.activ=
ehosted.com/proc.php?nl=3D1&c=3D78&m=3D116&s=3D0ad92c0c4a2ff86eed94873b1c92=
68b7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helvetica,sans-=
serif;font-weight:bold;text-decoration:underline;"><span style=3D"font-weig=
ht:bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=
=09=09<br> Motor City Funding, 3000 Town Center, Southfield, United States=
=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-200725471661d4556152bd62.66018646_=_--



--===============3071912021860233795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3071912021860233795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3071912021860233795==--


