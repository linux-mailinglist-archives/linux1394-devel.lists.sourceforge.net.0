Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E09B248660A
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jan 2022 15:29:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n5Tlg-00076r-VO; Thu, 06 Jan 2022 14:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-81-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1n5Tlg-00076l-As
 for linux1394-devel@lists.sourceforge.net; Thu, 06 Jan 2022 14:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=duaWfe9UtvlYsHgDR+xYx2gVP5VA99tC1B1ehExDPAc=; b=cErUjueen8if9eRahWwutllWBJ
 IjqZIRwBlp2xe7+PHQi3VETXgt3W15J/V85Yi/AGWx0/POxtlAxwYbEaqGIT7avf8hVhsTgD8MJjt
 6ylZI6w1Ygj5rqZN95kFwkYrTTw/U4Iqkz91QusuQ86Q6j6Lsm1g4EEQYFCvvEYVQpkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=duaWfe9UtvlYsHgDR+xYx2gVP5VA99tC1B1ehExDPAc=; b=OxHzgRE55Le3
 9aqJjQyf/ADki2eHlELZp1OvxDJAqgZzeqZdogIa+ma24kmuO6R19mEnds3pvdJxzC8I6UbCFBTyg
 XbPhW6kMNBeP2hNTxLdn9gB3rgXLbRKh7LyavHMnHsI9cnB7XuFh8p/BuOurAvN2YU8u+mT8RzRch
 owDhQ=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5Tlb-0007Pl-Ao
 for linux1394-devel@lists.sourceforge.net; Thu, 06 Jan 2022 14:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=duaWfe9UtvlYsHgDR+xYx2gVP5VA99tC1B1ehExDPAc=;
 b=Jc+BRI6o8AbAzQXeZcrStx+vuH/SHKcH7jX2HJhvMyZFxiQFI55vMhWCeGIcY9EC63Xtgp7Saoij
 E7+BGSmJaUeQiNER98l5ah5g349wQzb8DKrK8cDxQUFHiGsuKV7Kto7B3HqLr9T7V8EHOG8c4SW9
 q3SrVNZqYPHuYOx5/HM=
Received: by s15.avl4.acemsrvd.com id hqrubk2q2748 for
 <linux1394-devel@lists.sourceforge.net>;
 Thu, 6 Jan 2022 14:29:14 +0000 (envelope-from
 <bounce-2287853-81-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: What's Next After the EIDL?
Date: Thu, 06 Jan 2022 08:20:27 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM4MSAsIG0xMjEgLCBzNzI
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-81
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220106142914.27828.295050999.swift@motorcityfunding.activehosted.com>
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
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n5Tlb-0007Pl-Ao
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
Content-Type: multipart/mixed; boundary="===============7548140708566189473=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============7548140708566189473==
Content-Type: multipart/alternative;
 boundary="_=_swift-92122971761d6faabf27752.42518420_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-92122971761d6faabf27752.42518420_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=81&amp;m=121&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-92122971761d6faabf27752.42518420_=_
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
4px!important;font-size:14px!important;line-height:14px!important;}=0Atd[he=
ight=3D"12"]{height:12px!important;font-size:12px!important;line-height:12p=
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
622 img { width: 100% !important; height: auto !important; max-width: 320px=
 !important; } #layout-row1625 img { width: 100% !important; height: auto !=
important; max-width: 320px !important; } #layout-row1630 img { width: 100%=
 !important; height: auto !important; max-width: 121px !important; } #layou=
t-row1632 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row1636 img { width: 100% !important; height: =
auto !important; max-width: 320px !important; } table, tbody, td, .divbody =
{ display: table !important; width: 100% !important; max-width: 100% !impor=
tant; } .td_rss .rss-item img.iphone_large_image { width: auto !important; =
} u + .body { display: table !important; width: 100vw !important; min-width=
: 100vw !important; } u + .body table { display: table !important; width: 1=
00% !important; min-width: 100% !important; } u + .body td {=0Adisplay: blo=
ck !important; width: 100% !important; min-width: 100% !important; } u + .b=
ody img { display: inline-block !important; margin: auto !important; width:=
 auto !important; vertical-align: bottom !important; } u + .body center { d=
isplay: block !important; margin: auto !important; width: 100% !important; =
min-width: 100% !important; text-align: center !important; } u + .body tabl=
e._ac_social_table, u + .body table._ac_social_table td, u + .body table._a=
c_social_table div, u + .body table._ac_social_table a { display: inline-bl=
ock !important; margin: auto !important; width: auto !important; min-width:=
 auto !important; text-align: center !important; } u + .body table._ac_soci=
al_table img { display: inline-block !important; margin: auto !important; w=
idth: 32px !important; min-width: 32px !important; max-width: 32px !importa=
nt; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row1622 img=
 { width: 100% !important; height: auto !important; max-width: 375px !impor=
tant; } #layout-row1625 img { width: 100% !important; height: auto !importa=
nt; max-width: 375px !important; } #layout-row1630 img { width: 100% !impor=
tant; height: auto !important; max-width: 121px !important; } #layout-row16=
32 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row1636 img { width: 100% !important; height: auto !i=
mportant; max-width: 375px !important; } table, tbody, td, .divbody { displ=
ay: table !important; width: 100% !important; max-width: 100% !important; }=
 .td_rss .rss-item img.iphone_large_image { width: auto !important; } u + .=
body { display: table !important; width: 100vw !important; min-width: 100vw=
 !important; } u + .body table { display: table !important; width: 100% !im=
portant; min-width: 100% !important; } u + .body td { display: block !impor=
tant; width: 100%=0A!important; min-width: 100% !important; } u + .body img=
 { display: inline-block !important; margin: auto !important; width: auto !=
important; vertical-align: bottom !important; } u + .body center { display:=
 block !important; margin: auto !important; width: 100% !important; min-wid=
th: 100% !important; text-align: center !important; } u + .body table._ac_s=
ocial_table, u + .body table._ac_social_table td, u + .body table._ac_socia=
l_table div, u + .body table._ac_social_table a { display: inline-block !im=
portant; margin: auto !important; width: auto !important; min-width: auto !=
important; text-align: center !important; } u + .body table._ac_social_tabl=
e img { display: inline-block !important; margin: auto !important; width: 3=
2px !important; min-width: 32px !important; max-width: 32px !important; }=
=0A}=0A@media only screen and (max-width: 414px) { #layout-row1622 img { wi=
dth: 100% !important; height: auto !important; max-width: 414px !important;=
 } #layout-row1625 img { width: 100% !important; height: auto !important; m=
ax-width: 414px !important; } #layout-row1630 img { width: 100% !important;=
 height: auto !important; max-width: 121px !important; } #layout-row1632 im=
g { width: 100% !important; height: auto !important; max-width: 414px !impo=
rtant; } #layout-row1636 img { width: 100% !important; height: auto !import=
ant; max-width: 414px !important; } table, tbody, td, .divbody { display: t=
able !important; width: 100% !important; max-width: 100% !important; } .td_=
rss .rss-item img.iphone_large_image { width: auto !important; } u + .body =
{ display: table !important; width: 100vw !important; min-width: 100vw !imp=
ortant; } u + .body table { display: table !important; width: 100% !importa=
nt; min-width: 100% !important; } u + .body td { display: block !important;=
 width: 100%=0A!important; min-width: 100% !important; } u + .body img { di=
splay: inline-block !important; margin: auto !important; width: auto !impor=
tant; vertical-align: bottom !important; } u + .body center { display: bloc=
k !important; margin: auto !important; width: 100% !important; min-width: 1=
00% !important; text-align: center !important; } u + .body table._ac_social=
_table, u + .body table._ac_social_table td, u + .body table._ac_social_tab=
le div, u + .body table._ac_social_table a { display: inline-block !importa=
nt; margin: auto !important; width: auto !important; min-width: auto !impor=
tant; text-align: center !important; } u + .body table._ac_social_table img=
 { display: inline-block !important; margin: auto !important; width: 32px !=
important; min-width: 32px !important; max-width: 32px !important; }=0A}=0A=
@media only screen and (max-width: 667px) { #layout-row1622 img { width: 10=
0% !important; height: auto !important; max-width: 667px !important; } #lay=
out-row1625 img { width: 100% !important; height: auto !important; max-widt=
h: 667px !important; } #layout-row1630 img { width: 100% !important; height=
: auto !important; max-width: 121px !important; } #layout-row1632 img { wid=
th: 100% !important; height: auto !important; max-width: 667px !important; =
} #layout-row1636 img { width: 100% !important; height: auto !important; ma=
x-width: 667px !important; } table, tbody, td, .divbody { display: table !i=
mportant; width: 100% !important; max-width: 100% !important; } .td_rss .rs=
s-item img.iphone_large_image { width: auto !important; } u + .body { displ=
ay: table !important; width: 100vw !important; min-width: 100vw !important;=
 } u + .body table { display: table !important; width: 100% !important; min=
-width: 100% !important; } u + .body td { display: block !important; width:=
 100%=0A!important; min-width: 100% !important; } u + .body img { display: =
inline-block !important; margin: auto !important; width: auto !important; v=
ertical-align: bottom !important; } u + .body center { display: block !impo=
rtant; margin: auto !important; width: 100% !important; min-width: 100% !im=
portant; text-align: center !important; } u + .body table._ac_social_table,=
 u + .body table._ac_social_table td, u + .body table._ac_social_table div,=
 u + .body table._ac_social_table a { display: inline-block !important; mar=
gin: auto !important; width: auto !important; min-width: auto !important; t=
ext-align: center !important; } u + .body table._ac_social_table img { disp=
lay: inline-block !important; margin: auto !important; width: 32px !importa=
nt; min-width: 32px !important; max-width: 32px !important; }=0A} </style><=
!--[if !mso]><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]=
--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:=
PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<=
![endif]--></head><body id=3D"ac-designer" class=3D"body" style=3D"font-fam=
ily: Arial; line-height: 1.1; margin: 0px; background-color: #50bffa; width=
: 100%; text-align: center;">=09=09<div style=3D"display: none !important; =
padding: 0; height: 1px; font-size: 1px; background-color: inherit !importa=
nt; opacity: 0; color: transparent; mso-line-height-rule: exactly; line-hei=
ght:1px; mso-hide:all;">=0A=09=09=09The SBA 7(a) is ready to FUND!=0A=09=09=
=09<div style=3D"display: none; max-height: 0px; overflow: hidden;">=0A=09=
=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
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
=E2=80=8C&nbsp;=E2=80=8C=0A=09=09=09</div>=0A=0A=09=09</div>=0A<div class=
=3D"divbody" style=3D"margin: 0px; outline: none; padding: 0px; color: #000=
000; font-family: arial; line-height: 1.1; width: 100%; background-color: #=
50bffa; background: #50bffa; text-align: center;"><table class=3D"template-=
table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: auto; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt; background-color: #50bffa; background:=
 #50bffa;"><tr style=3D"mso-line-height-rule: exactly;"><td align=3D"center=
" valign=3D"top" width=3D"100%" style=3D"mso-line-height-rule: exactly;"><t=
able class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" width=3D"650" bgcolor=3D"#50bffa" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px;=
 min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; max-width: =
650px;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_tab=
le_3ac51a66614b00c226b70865327e37c5a6735e65" valign=3D"top" align=3D"center=
" width=3D"650" style=3D"mso-line-height-rule: exactly; background-color: #=
ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"l=
ayout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt; back=
ground-color: #ffffff;"><tr style=3D"mso-line-height-rule: exactly; backgro=
und-color: #ffffff;"><td id=3D"layout-row-margin1622" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 0; background-color: #ffffff;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspa=
ce: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1622"=0Aclass=3D"layou=
t layout-row widget _widget_picture style1622" align=3D"center" style=3D"ms=
o-line-height-rule: exactly; background-color: #f7f9ff;"><td id=3D"layout-r=
ow-padding1622" valign=3D"top" style=3D"mso-line-height-rule: exactly; back=
ground-color: #f7f9ff; padding: 20px 0 20px 0px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"=
center" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly=
;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4=
506-a900-35ec4edba52c.png?r=3D25224012" alt=3D"" width=3D"230" style=3D"dis=
play: block; border: none; outline: none; width: 230px; opacity: 1; max-wid=
th: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff=
;"><td id=3D"layout-row-margin1636" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1636" class=3D"layout layout-row widget _widget_picture " ali=
gn=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-p=
adding1636" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"i=
mage-td" align=3D"left" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-he=
ight-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/=
19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D892872134" alt=3D"" width=
=3D"650" style=3D"display: block; border: none; outline: none; width: 650px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin1621" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1621" class=3D"lay=
out layout-row widget _widget_text style1621" style=3D"mso-line-height-rule=
: exactly; margin: 0; padding: 0; background-color: #ffffff;"><td id=3D"lay=
out-row-padding1621" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 background-color: #ffffff; padding: 20px 5px 20px 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=0Amso-table-rspace:=
 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1384"=
 class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" sty=
le=3D"line-height: 140%; mso-line-height-rule: exactly; margin: 0; outline:=
 none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; l=
ine-height: 1.4; text-decoration: inherit; font-family: arial;"> <div style=
=3D"line-height: 140%; margin: 0; outline: none; padding: 0; color: inherit=
; font-size: inherit; font-weight: inherit; line-height: 1.4; text-decorati=
on: inherit; mso-line-height-rule: exactly;" data-line-height=3D"1.4"> <div=
 style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: =
inherit; font-weight: inherit; line-height: inherit; text-decoration: inher=
it; text-align: center;"><span style=3D'color: #000000; font-size: 14px; fo=
nt-weight: bold; line-height: inherit; text-decoration: inherit; font-famil=
y: georgia, "times new roman";' class=3D""> The SBA reduces the risk for le=
nders and=0Amakes it easier for them to access capital. SBA guaranteed loan=
s can be used for a variety of business purposes, including starting or exp=
anding an existing businesses. That makes it easier for small businesses to=
 get loans.</span> </div>=0A </div>=0A<!--[if (gte mso 12)&(lte mso 15) ]>=
=0A<style data-ac-keep=3D"true" data-ac-inline=3D"false"> #text_div1384, #t=
ext_div1384 div { line-height: 140% !important; };=0A</style>=0A<![endif]--=
></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr =
style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-margin1624" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row1624" class=3D"layout layout-row widget _widget_=
button style1624" style=3D"mso-line-height-rule: exactly; background-color:=
 #ffffff;"><td id=3D"layout-row-padding1624" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; background-color: #ffffff; padding: 5px;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td class=3D"=
td_button td_block customizable" valign=3D"top" align=3D"left" width=3D"630=
" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" s=
tyle=3D"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[=
if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"=
urn:schemas-microsoft-com:office:word" href=3D"https://motorcityfunding.lt.=
acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5=
jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DCp5mKv3duiwr6E1NZ84HNahMw696mnjyATvcnGjzVWM=
j&iat=3D1641479354&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Ea=
ctivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Q=
tV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D81A121A1A245" st=
yle=3D"v-text-anchor:middle; width:189px; height:64px; font-weight: bold;" =
arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#2=
44df0" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > =
<v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-f=
amily:georgia, times new roman; font-size:14px; font-weight: bold;line-heig=
ht: 1.1;">Click Here to Apply</center> </v:textbox> </v:roundrect>=0A<![end=
if]--> <a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker=
?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=
=3DCp5mKv3duiwr6E1NZ84HNahMw696mnjyATvcnGjzVWMj&iat=3D1641479354&a=3D%7C%7C=
225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3Drcn=
ACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0=
c4a2ff86eed94873b1c9268b7&i=3D81A121A1A245" style=3D"margin: 0; outline: no=
ne; padding: 14px; color: #ffffff; background: #244df0; background-color: #=
244df0; border: 1px solid #B5B5B5; border-radius: 3px; font-family: georgia=
, times new roman; font-size: 14px; display: inline-block; line-height: 1.1=
; text-align: center; text-decoration: none; mso-hide: all;"> <span style=
=3D"color:#ffffff;font-family:georgia, times new roman;font-size:14px;font-=
weight: bold;"> Click Here to Apply </span> </a> </div>=0A=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin1627" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgrou=
nd-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1627" class=
=3D"layout layout-row widget _widget_spacer " style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-padding1627" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-he=
ight-rule: exactly;"><div=0Aclass=3D"spacer" style=3D"margin: 0; outline: n=
one; padding: 0; height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D=
"30" width=3D"650" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A<=
/tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; backgroun=
d-color: #ffffff;"><td id=3D"layout-row-margin1625" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; background-color: #ffffff;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr id=3D"layout-row1625" class=3D"layout layout-row widget _widget=
_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding1625" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"650"=0Ast=
yle=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.=
com/Rnj5K/2022/01/03/2a2d3efc-e79f-4c80-8866-1c85b0f01fda.jpeg?r=3D33646402=
" alt=3D"" width=3D"650" style=3D"display: block; border: none; outline: no=
ne; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin1628" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fff=
fff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1628" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding1628" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactl=
y;"><div=0Aclass=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; =
height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" widt=
h=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: ex=
actly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"650=
" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=
=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<=
/tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #fffff=
f;"><td id=3D"layout-row-margin1623" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !=
important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr id=3D"layout-row1623" class=3D"layout layout-row widge=
t _widget_button style1623" style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding1623" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td class=3D"td_button td_block=0Acustomizable" valign=3D"t=
op" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly;"> =
<div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padding: 0=
; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas=
-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=
=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DCp5mKv3du=
iwr6E1NZ84HNahMw696mnjyATvcnGjzVWMj&iat=3D1641479354&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D81A121A1A245" style=3D"v-text-anchor:middle; width:191px;=
 height:66px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#244df0" st=
rokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"true" o:allowincell=3D=
"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <ce=
nter style=3D"color:#ffffff;font-family:georgia, times new roman; font-size=
:14px; font-weight: bold;line-height: 1.1;">Click Here to Apply</center> </=
v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfundin=
g.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbW=
Z1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DCp5mKv3duiwr6E1NZ84HNahMw696mnjyATvcnG=
jzVWMj&iat=3D1641479354&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfundin=
g%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BU=
XVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D81A121A1A24=
5" style=3D"margin: 0; outline: none; padding: 16px; color: #ffffff; backgr=
ound: #244df0; background-color: #244df0; border-radius: 3px; font-family: =
georgia, times new roman; font-size: 14px; display: inline-block; line-heig=
ht: 1.1; text-align: center; text-decoration: none; mso-hide: all;"> <span =
style=3D"color:#ffffff;font-family:georgia, times new roman;font-size:14px;=
font-weight: bold;"> Click Here to Apply </span> </a> </div>=0A=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"m=
so-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-=
row-margin1626" valign=3D"top" style=3D"mso-line-height-rule: exactly; padd=
ing: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: initial !important; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
id=3D"layout-row1626" class=3D"layout layout-row widget _widget_text style1=
626" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding1626" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td=0Aid=3D"text_div1389" class=3D"td_text td_block" valign=
=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactl=
y; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; f=
ont-weight: inherit; line-height: 1; text-decoration: inherit; font-family:=
 arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #00000=
0; font-size: 14px; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color:=
 #000000; font-size: inherit; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit;"> <ul style=3D"margin: 0 0 0 40px; padding: 0; fon=
t-style: normal; text-align: left; color: #000000;"><li style=3D"display: l=
ist-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 15px; =
color: #000000;"><span style=3D'color: #000000; font-size: inherit; font-we=
ight: bold; line-height: inherit; text-decoration: inherit; font-family: ge=
orgia, "times new roman";' class=3D"">Under the=0Aprogram, small businesses=
 (generally those with fewer than 500 employees) who are unable to get trad=
itional financing through banks can apply for funds that can then be used f=
or anything from buying a business, purchasing real estate, or for working =
capital. These multi-purpose SBA loan programs offer the most flexible and =
longest-term loans.</span></li><li style=3D"display: list-item; line-height=
: inherit; list-style-type: disc; margin: 0 0 0 15px; color: #000000;"><spa=
n style=3D'color: #000000; font-size: inherit; font-weight: bold; line-heig=
ht: inherit; text-decoration: inherit; font-family: georgia, "times new rom=
an";' class=3D"">To qualify for this loan you <a href=3D"https://motorcityf=
unding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cHMlM0ElMkYlMkZ3d=
3cuc2JhLmdvdiUyRmZlZGVyYWwtY29udHJhY3RpbmclMkZjb250cmFjdGluZy1ndWlkZSUyRmJh=
c2ljLXJlcXVpcmVtZW50cyUyM3NlY3Rpb24taGVhZGVyLTY=3D&sig=3D7K2K8E6TBvD3GEUdUd=
v5WcvnWUZJkXLxvz6Z4cuR54w5&iat=3D1641479354&a=3D%7C%7C225362583%7C%7C&accou=
nt=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdI=
U0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c92=
68b7&i=3D81A121A1A246"=0Adata-ac-default-color=3D"1" style=3D"margin: 0; ou=
tline: none; padding: 0; color: #045fb4; text-decoration: underline;"><span=
 style=3D"color: ; font-size: inherit; font-weight: inherit; line-height: i=
nherit; text-decoration: inherit;">must have fewe</span></a>r than 500 empl=
oyees or less than $20.5 million in average annual receipts. You must opera=
te as a for-profit business, be based in the United States, and not be deli=
nquent on any debt (such as taxes) owed to the government.</span></li></ul>=
<br style=3D"color: #000000;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin1632"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #=
ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1632" class=3D"layout=
 layout-row widget _widget_picture " align=3D"center" style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-padding1632" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=
=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7=
bdcea92aec.png?r=3D1877500961" alt=3D"" width=3D"650" style=3D"display: blo=
ck; border: none; outline: none; width: 650px; opacity: 1; max-width: 100%;=
"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr=
 style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-margin1633" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row1633" class=3D"layout layout-row widget _widget_=
text style1633" style=3D"mso-line-height-rule: exactly; margin: 0; padding:=
 0;"><td id=3D"layout-row-padding1633" valign=3D"top" style=3D"mso-line-hei=
ght-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wid=
th: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-l=
ine-height-rule: exactly;"><td=0Aid=3D"text_div1395" class=3D"td_text td_bl=
ock" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-r=
ule: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-si=
ze: 12px; font-weight: inherit; line-height: 1; text-decoration: inherit; f=
ont-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; co=
lor: #000000; font-size: 12px; font-weight: inherit; line-height: inherit; =
text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding=
: 0; color: #000000; font-size: inherit; font-weight: inherit; line-height:=
 inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: non=
e; padding: 0; color: #000000; font-size: inherit; font-weight: inherit; li=
ne-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent;=
 --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring=
-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offse=
t-shadow: 0 0 transparent; --tw-ring-shadow: 0 0=0Atransparent; font-style:=
 normal; text-align: -webkit-left;"><span style=3D'color: #000000; font-siz=
e: inherit; font-weight: inherit; line-height: inherit; text-decoration: in=
herit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --=
tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: r=
gba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-sh=
adow: 0 0 transparent; font-family: georgia, "times new roman";' class=3D""=
>If you have any questions please do not hesitate to call.=C2=A0 We pride o=
urselves on always being available to our clients.</span></div>=0A<div styl=
e=3D"margin: 0; outline: none; padding: 0; color: #000000; font-size: inher=
it; font-weight: inherit; line-height: inherit; text-decoration: inherit; -=
-tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-=
offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,1=
30,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 =
0 transparent; font-style: normal; text-align: -webkit-left;"><br style=3D'=
color: #000000; font-family: georgia, "times new roman";color: #000000;'></=
div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #000000; =
font-size: inherit; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empt=
y, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-=
color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw=
-ring-shadow: 0 0 transparent; font-style: normal; text-align: -webkit-left=
;"><span style=3D'color: #000000; font-size: inherit; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transpare=
nt; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-r=
ing-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-of=
fset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-famil=
y: georgia, "times new roman";' class=3D"">Sincerely,<br></span></div>=0A<d=
iv style=3D"margin: 0; outline: none; padding: 0; color: #000000; font-size=
: inherit; font-weight: inherit; line-height: inherit; text-decoration: inh=
erit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --t=
w-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rg=
ba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-sha=
dow: 0 0 transparent; font-style: normal; text-align: -webkit-left;"><br st=
yle=3D'color: #000000; font-family: georgia, "times new roman";color: #0000=
00;'></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #0=
00000; font-size: inherit; font-weight: inherit; line-height: inherit; text=
-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--=
tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --t=
w-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparen=
t; --tw-ring-shadow: 0 0 transparent; font-style: normal; text-align: -webk=
it-left;"><span style=3D'color: #000000; font-size: inherit; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 tr=
ansparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px;=
 --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-=
ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; fon=
t-family: georgia, "times new roman";' class=3D""><span style=3D"color: #00=
0000; font-size: inherit; font-weight: inherit; line-height: inherit; text-=
decoration: inherit;=0A--tw-shadow: 0 0 transparent; --tw-ring-inset: var(-=
-tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --=
tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transpare=
nt; --tw-ring-shadow: 0 0 transparent;">Samuel Brugman</span><span style=3D=
"color: #000000; font-size: inherit; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-ins=
et: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color:=
 #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 =
transparent; --tw-ring-shadow: 0 0 transparent;"> </span><span style=3D"col=
or: #000000; font-size: inherit; font-weight: inherit; line-height: inherit=
; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: =
var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #ff=
f; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tran=
sparent; --tw-ring-shadow: 0 0=0Atransparent;">| Account</span><span style=
=3D"color: #000000; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-=
inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-col=
or: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0=
 0 transparent; --tw-ring-shadow: 0 0 transparent;"> Manager</span></span><=
/div>=0A <br style=3D"color: #000000;"></div>=0A </div>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row16=
31" class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><td id=3D"layout-row-padding1631" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout_table_6a623756b4ee182a78f8b6daec639be518d101cf" valign=3D"top=
" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td=0Aid=3D"layout-row-margin1629" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1629" class=3D"layout layout-row widget _widget_text style162=
9" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding1629" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"text_div1392" class=3D"td_text td_block" valign=
=3D"top" align=3D"left" width=3D"305" style=3D"mso-line-height-rule:=0Aexac=
tly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12px;=
 font-weight: inherit; line-height: 1; text-decoration: inherit; font-famil=
y: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #fff=
fff; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;"><span style=3D"color: #ffffff; font-size: inherit; fon=
t-weight: inherit; line-height: inherit; text-decoration: inherit;" class=
=3D""><span style=3D'color: inherit; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; font-family: georgia, "=
times new roman";' class=3D""> </span><div style=3D"margin: 0; outline: non=
e; padding: 0; color: #ffffff; font-size: 16px; font-weight: inherit; line-=
height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --=
tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-of=
fset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-s=
hadow: 0 0=0Atransparent; --tw-ring-shadow: 0 0 transparent; font-style: no=
rmal; text-align: center;"><span style=3D"color: #000000; font-size: 14px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;" clas=
s=3D""> <span style=3D"color: #01df3a; font-size: 14px; font-weight: 700; l=
ine-height: inherit; text-decoration: inherit; font-family: arial; font-sty=
le: normal;"><a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-t=
racker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ=3D=
=3D&sig=3DGJXjxf342Z7oL9GbQ5ha1xmWhjgozkuoDsvp34vvgaNF&iat=3D1641479354&a=
=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&em=
ail=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=
=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D81A121A1A247" data-ac-default-color=
=3D"1" style=3D"margin: 0; outline: none; padding: 0; color: #045fb4; text-=
decoration: underline;"><span style=3D"color: ; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit;">Motor City =
Funding</span></a><br></span><span style=3D"color: inherit; font-size: inhe=
rit; font-weight: bold; line-height: inherit;=0Atext-decoration: inherit;" =
class=3D"">O: (315) 257-1195</span></span><br></div>=0A </span></div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A<td id=3D"layout_table_13bff84aa2c41cbb44456461ac643bc480198153"=
 valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1635" =
class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exac=
tly;"><td id=3D"layout-row-padding1635" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout_table_05fefc502f75078ceff9de8463862fc6c1b890=
9b" valign=3D"top" width=3D"150" style=3D"mso-line-height-rule:=0Aexactly;"=
><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout la=
yout-table " width=3D"150" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout-row-margin1634" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 0px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !importa=
nt; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr id=3D"layout-row1634" class=3D"layout layout-row widget _widg=
et_button style1634" style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-padding1634" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto;=0A-webkit-text-size-adjust=
: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=
 exactly;"><td class=3D"td_button td_block customizable" valign=3D"top" ali=
gn=3D"left" width=3D"140" style=3D"mso-line-height-rule: exactly;"> <div cl=
ass=3D"button-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-=
align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-micros=
oft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"mail=
to:sbrugman@motorcityfunding.com" style=3D"v-text-anchor:middle; width:138p=
x; height:60px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" =
strokeweight=3D"1pt" fillcolor=3D"#FFFFFF" o:button=3D"true" o:allowincell=
=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> =
<center style=3D"color:#244df0;font-family:georgia, times new roman; font-s=
ize:14px; font-weight: bold;line-height: 1.1;">Contact Now</center> </v:tex=
tbox> </v:roundrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@motorcityfun=
ding.com" style=3D"margin: 0; outline: none; padding: 12px; color: #244df0;=
 background: #FFFFFF; background-color: #FFFFFF; border: 1px solid #B5B5B5;=
 border-radius: 3px; font-family: georgia, times new roman; font-size: 14px=
; display: inline-block; line-height: 1.1; text-align: center; text-decorat=
ion: none; mso-hide: all;"> <span style=3D"color:#244df0;font-family:georgi=
a, times new roman;font-size:14px;font-weight: bold;"> Contact Now </span> =
</a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_8704340b2603b86a4e3e2=
47df598c9f6d7cea177" valign=3D"top" width=3D"175" style=3D"mso-line-height-=
rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cla=
ss=3D"layout layout-table " width=3D"175" style=3D"-ms-text-size-adjust: au=
to; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr st=
yle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1630" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row1630" class=3D"layout layout-row widget _widget_pictur=
e " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-padding1630" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"image-td" align=3D"center" valign=3D"top" width=3D"175" style=3D"=
mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj=
5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D1620650934" alt=
=3D"" width=3D"121" style=3D"display: block; border: none; outline: none; w=
idth: 121px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<im=
g src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=
=3D81&m=3D121&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotor=
cityfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"1" height=
=3D"1" style=3D"display:block;width:1px!important;min-width:1px!important;m=
ax-width:1px!important;height:1px!important;border:0;overflow:hidden;" /><d=
iv id=3D"ac-footer" style=3D"clear:both;background-color:inherit;background=
:inherit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:2=
0px;color:#000000;font-size:11px;font-family:arial,helvetica,sans-serif;lin=
e-height:140%;line-height:1.4;text-align:center;box-sizing:border-box;">=0A=
=09<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:aria=
l,helvetica,sans-serif;font-weight:normal;text-decoration:none;outline:none=
;">linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=
=0A=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D=
1&c=3D81&m=3D121&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D=
"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold;tex=
t-decoration:underline;"><span style=3D"font-weight:bold;text-decoration:un=
derline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Fundi=
ng, 3000 Town Center, Southfield, United States=0A=09</center>=0A</div>=0A<=
br clear=3D"all" /></body>=0A</html>
--_=_swift-92122971761d6faabf27752.42518420_=_--



--===============7548140708566189473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7548140708566189473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7548140708566189473==--


