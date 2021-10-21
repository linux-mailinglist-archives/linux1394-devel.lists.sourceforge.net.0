Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3222436336
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Oct 2021 15:37:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mdYGK-0004dX-Bf; Thu, 21 Oct 2021 13:37:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <bounce-2287853-5-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
 id 1mdYGI-0004dP-Qh
 for linux1394-devel@lists.sourceforge.net; Thu, 21 Oct 2021 13:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pIdUC0drUJWObwPq8vwjHgvVma6kY/Ns15MiXQhijrk=; b=M8mIvs5O/DLqXzTU4Cvr2g6CWT
 DQD0GJE2BdjC+x4uzz+wZMqjA7aD46F8PXoRwSD8g1lu7kYmSSKbA17qCKUZ1bNQpH2uCoQhnBkVX
 /MzZkw8H+AUPG4j7mwKe8caoxN8mwaF3sUErZSnXfB9B9MvINVhFngrT8WeZh3lBzEsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pIdUC0drUJWObwPq8vwjHgvVma6kY/Ns15MiXQhijrk=; b=EthJKiwqUB9A
 VyjMpFZ7CzRUWzu5h3bf6I/v1PwClAPMT6ppYFGsJLcDGcJ/Rtm/Vp9aQvZdupjP4RjygF8Oj+XwF
 k56N1gmLxP9OwJd/GXTOcDp07nbiPuysJcXR1e5RXVp3njgqZp+2f2u7oCaEkZ5/O7wbhDem3FSrG
 otlgo=;
Received: from s14.avl3.acemsrvc.com ([192.92.97.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdYGG-0000Yd-RH
 for linux1394-devel@lists.sourceforge.net; Thu, 21 Oct 2021 13:37:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s14.avl3.acemsrvc.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com;
 bh=pIdUC0drUJWObwPq8vwjHgvVma6kY/Ns15MiXQhijrk=;
 b=30p20Fv0OW5TtfwHfWq+vNo8QqTVPXpcgT+i9BT9Xj1tIQ/JKSGFwbOLjjPvknIQcYMdh34eWUSR
 YOQzZegwjoRFVEcWT8LLZ77hgCw9dCNzn7qOmAzPxEEGoMp6U3mX5F0WaUb87vzZB7AmFBl0I0FT
 I+YJHBhFInSn8f60O2c=
Received: by s14.avl3.acemsrvc.com id he5mhe2t56gv for
 <linux1394-devel@lists.sourceforge.net>;
 Thu, 21 Oct 2021 13:37:27 +0000 (envelope-from
 <bounce-2287853-5-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA Still Accepting EIDL Applications!
Date: Thu, 21 Oct 2021 08:31:08 -0500
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM1ICwgbTkgLCBzMw
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-5
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211021133727.23358.1445993323.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Economic Injury Disaster Loan, SBA 7(a), and Business Lines
    of Credit!   Motor City Funding offers professional and reliable services
    in the financial sector, tailored to suit your individual situation. We offer
    in-depth consultations to understand your financial goals and [...] 
 
 Content analysis details:   (1.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?192.92.97.208>]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: activehosted.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mdYGG-0000Yd-RH
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
Content-Type: multipart/mixed; boundary="===============2857247966220269000=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============2857247966220269000==
Content-Type: multipart/alternative;
 boundary="_=_swift-198477497561716b9c7ec310.09013376_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-198477497561716b9c7ec310.09013376_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=5&amp;m=9&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-198477497561716b9c7ec310.09013376_=_
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
@media only screen and (max-width: 320px) { #layout-row109 img { width: 100=
% !important; height: auto !important; max-width: 320px !important; } #layo=
ut-row111 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row119 img { width: 100% !important; height: a=
uto !important; max-width: 320px !important; } #layout-row124 img { width: =
100% !important; height: auto !important; max-width: 320px !important; } #l=
ayout-row129 img { width: 100% !important; height: auto !important; max-wid=
th: 320px !important; } #layout-row134 img { width: 100% !important; height=
: auto !important; max-width: 320px !important; } #layout-row138 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row139 img { width: 100% !important; height: auto !important; max-=
width: 320px !important; } table, tbody, td, .divbody { display: table !imp=
ortant; width: 100% !important; max-width:=0A100% !important; } .td_rss .rs=
s-item img.iphone_large_image { width: auto !important; } u + .body { displ=
ay: table !important; width: 100vw !important; min-width: 100vw !important;=
 } u + .body table { display: table !important; width: 100% !important; min=
-width: 100% !important; } u + .body td { display: block !important; width:=
 100% !important; min-width: 100% !important; } u + .body img { display: in=
line-block !important; margin: auto !important; width: auto !important; ver=
tical-align: bottom !important; } u + .body center { display: block !import=
ant; margin: auto !important; width: 100% !important; min-width: 100% !impo=
rtant; text-align: center !important; } u + .body table._ac_social_table, u=
 + .body table._ac_social_table td, u + .body table._ac_social_table div, u=
 + .body table._ac_social_table a { display: inline-block !important; margi=
n: auto !important; width: auto !important; min-width: auto !important; tex=
t-align: center !important; } u + .body=0Atable._ac_social_table img { disp=
lay: inline-block !important; margin: auto !important; width: 32px !importa=
nt; min-width: 32px !important; max-width: 32px !important; }=0A}=0A@media =
only screen and (max-width: 375px) { #layout-row109 img { width: 100% !impo=
rtant; height: auto !important; max-width: 375px !important; } #layout-row1=
11 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row119 img { width: 100% !important; height: auto !im=
portant; max-width: 375px !important; } #layout-row124 img { width: 100% !i=
mportant; height: auto !important; max-width: 339px !important; } #layout-r=
ow129 img { width: 100% !important; height: auto !important; max-width: 375=
px !important; } #layout-row134 img { width: 100% !important; height: auto =
!important; max-width: 375px !important; } #layout-row138 img { width: 100%=
 !important; height: auto !important; max-width: 375px !important; } #layou=
t-row139 img { width: 100% !important; height: auto !important; max-width: =
375px !important; } table, tbody, td, .divbody { display: table !important;=
 width: 100% !important; max-width: 100% !important; } .td_rss .rss-item=0A=
img.iphone_large_image { width: auto !important; } u + .body { display: tab=
le !important; width: 100vw !important; min-width: 100vw !important; } u + =
.body table { display: table !important; width: 100% !important; min-width:=
 100% !important; } u + .body td { display: block !important; width: 100% !=
important; min-width: 100% !important; } u + .body img { display: inline-bl=
ock !important; margin: auto !important; width: auto !important; vertical-a=
lign: bottom !important; } u + .body center { display: block !important; ma=
rgin: auto !important; width: 100% !important; min-width: 100% !important; =
text-align: center !important; } u + .body table._ac_social_table, u + .bod=
y table._ac_social_table td, u + .body table._ac_social_table div, u + .bod=
y table._ac_social_table a { display: inline-block !important; margin: auto=
 !important; width: auto !important; min-width: auto !important; text-align=
: center !important; } u + .body table._ac_social_table img { display:=0Ain=
line-block !important; margin: auto !important; width: 32px !important; min=
-width: 32px !important; max-width: 32px !important; }=0A}=0A@media only sc=
reen and (max-width: 414px) { #layout-row109 img { width: 100% !important; =
height: auto !important; max-width: 414px !important; } #layout-row111 img =
{ width: 100% !important; height: auto !important; max-width: 414px !import=
ant; } #layout-row119 img { width: 100% !important; height: auto !important=
; max-width: 414px !important; } #layout-row124 img { width: 100% !importan=
t; height: auto !important; max-width: 339px !important; } #layout-row129 i=
mg { width: 100% !important; height: auto !important; max-width: 414px !imp=
ortant; } #layout-row134 img { width: 100% !important; height: auto !import=
ant; max-width: 414px !important; } #layout-row138 img { width: 100% !impor=
tant; height: auto !important; max-width: 414px !important; } #layout-row13=
9 img { width: 100% !important; height: auto !important; max-width: 414px !=
important; } table, tbody, td, .divbody { display: table !important; width:=
 100% !important; max-width: 100% !important; } .td_rss .rss-item=0Aimg.iph=
one_large_image { width: auto !important; } u + .body { display: table !imp=
ortant; width: 100vw !important; min-width: 100vw !important; } u + .body t=
able { display: table !important; width: 100% !important; min-width: 100% !=
important; } u + .body td { display: block !important; width: 100% !importa=
nt; min-width: 100% !important; } u + .body img { display: inline-block !im=
portant; margin: auto !important; width: auto !important; vertical-align: b=
ottom !important; } u + .body center { display: block !important; margin: a=
uto !important; width: 100% !important; min-width: 100% !important; text-al=
ign: center !important; } u + .body table._ac_social_table, u + .body table=
._ac_social_table td, u + .body table._ac_social_table div, u + .body table=
._ac_social_table a { display: inline-block !important; margin: auto !impor=
tant; width: auto !important; min-width: auto !important; text-align: cente=
r !important; } u + .body table._ac_social_table img { display:=0Ainline-bl=
ock !important; margin: auto !important; width: 32px !important; min-width:=
 32px !important; max-width: 32px !important; }=0A}=0A@media only screen an=
d (max-width: 667px) { #layout-row109 img { width: 100% !important; height:=
 auto !important; max-width: 667px !important; } #layout-row111 img { width=
: 100% !important; height: auto !important; max-width: 434px !important; } =
#layout-row119 img { width: 100% !important; height: auto !important; max-w=
idth: 667px !important; } #layout-row124 img { width: 100% !important; heig=
ht: auto !important; max-width: 339px !important; } #layout-row129 img { wi=
dth: 100% !important; height: auto !important; max-width: 667px !important;=
 } #layout-row134 img { width: 100% !important; height: auto !important; ma=
x-width: 667px !important; } #layout-row138 img { width: 100% !important; h=
eight: auto !important; max-width: 667px !important; } #layout-row139 img {=
 width: 100% !important; height: auto !important; max-width: 667px !importa=
nt; } table, tbody, td, .divbody { display: table !important; width: 100% !=
important; max-width: 100% !important; } .td_rss .rss-item=0Aimg.iphone_lar=
ge_image { width: auto !important; } u + .body { display: table !important;=
 width: 100vw !important; min-width: 100vw !important; } u + .body table { =
display: table !important; width: 100% !important; min-width: 100% !importa=
nt; } u + .body td { display: block !important; width: 100% !important; min=
-width: 100% !important; } u + .body img { display: inline-block !important=
; margin: auto !important; width: auto !important; vertical-align: bottom !=
important; } u + .body center { display: block !important; margin: auto !im=
portant; width: 100% !important; min-width: 100% !important; text-align: ce=
nter !important; } u + .body table._ac_social_table, u + .body table._ac_so=
cial_table td, u + .body table._ac_social_table div, u + .body table._ac_so=
cial_table a { display: inline-block !important; margin: auto !important; w=
idth: auto !important; min-width: auto !important; text-align: center !impo=
rtant; } u + .body table._ac_social_table img { display:=0Ainline-block !im=
portant; margin: auto !important; width: 32px !important; min-width: 32px !=
important; max-width: 32px !important; }=0A} </style><!--[if !mso]><!-- web=
fonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]--><!--[if gte mso 9]=
>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:PixelsPerInch>96</o:P=
ixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<![endif]--></head><bo=
dy id=3D"ac-designer" class=3D"body" style=3D"font-family: Arial; line-heig=
ht: 1.1; margin: 0px; background-color: #ffffff; width: 100%; text-align: c=
enter;"><div class=3D"divbody" style=3D"margin: 0px; outline: none; padding=
: 0px; color: #000000; font-family: arial; line-height: 1.1; width: 100%; b=
ackground-color: #ffffff; background: #ffffff; text-align: center;"><table =
class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" w=
idth=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f=
fffff; background: #ffffff;"><tr style=3D"mso-line-height-rule: exactly;"><=
td align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-line-height-=
rule: exactly;"><table class=3D"template-table" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#ffffff" style=3D"-ms-text-s=
ize-adjust: auto;=0A-webkit-text-size-adjust: 100%; border-collapse: collap=
se; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt; max-width: 650px;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout_table_84f2c92c7823fb56674890de5f437a352960acf9" valign=3D"to=
p" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" class=3D"layout layout-table root-table" width=3D"650" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line-height-rule=
: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin109" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=0A100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row109" class=3D"layout layou=
t-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding109" valign=3D"top" style=3D"mso-=
line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top=
" width=3D"650" style=3D"mso-line-height-rule: exactly;"><img src=3D"https:=
//motorcityfunding.img-us6.com/admin/mcf.png?r=3D1959175196" alt=3D"" width=
=3D"300" style=3D"display: block; border: none; outline: none; width: 300px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin110" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ffffff=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row110" class=3D"layou=
t layout-row widget _widget_text style110" style=3D"mso-line-height-rule: e=
xactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout=
-row-padding110" valign=3D"top" style=3D"mso-line-height-rule: exactly; bac=
kground-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=
=3D"mso-line-height-rule: exactly;"><td id=3D"text_div95" class=3D"td_text =
td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-hei=
ght-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; fo=
nt-size: 12px; font-weight: inherit; line-height: 1; text-decoration: inher=
it; font-family: arial;"> <div style=3D"margin: 0; outline: none; padding: =
0; color: inherit; font-size: 20px; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; pa=
dding: 0; color: #ffffff; font-size: inherit; font-weight: inherit; line-he=
ight: inherit; text-decoration: inherit; text-align: center;"> <span style=
=3D"color: #ffffff; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial; font-style: normal;" cl=
ass=3D"">Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Cre=
dit!</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin139" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgroun=
d-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row139" class=3D=
"layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding139" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valig=
n=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7=
bdcea92aec.png?id=3D7317681?r=3D516884909" alt=3D"" width=3D"650" style=3D"=
display: block; border: none; outline: none; width: 650px; opacity: 1; max-=
width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #f=
fffff;"><td id=3D"layout-row-margin111" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
id=3D"layout-row111" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-padding111" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D=
"image-td" align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-lin=
e-height-rule: exactly;"><img src=3D"https://motorcityfunding.img-us6.com/a=
dmin/unnamed.jpg?r=3D852138667" alt=3D"" width=3D"434" style=3D"display: bl=
ock; border: none; outline: none; width: 434px; opacity: 1; max-width: 100%=
;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin140" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-=
row140" class=3D"layout layout-row widget _widget_spacer " style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding140" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td valign=3D"top" height=3D"10" style=3D"m=
so-line-height-rule: exactly;"><div class=3D"spacer"=0Astyle=3D"margin: 0; =
outline: none; padding: 0; height: 10px;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px;=
 min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body" valign=3D"top=
" height=3D"10" width=3D"650" style=3D"mso-line-height-rule: exactly;">=
=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin113" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-c=
olor: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: initial !important; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row113" c=
lass=3D"layout layout-row widget _widget_text style113" style=3D"mso-line-h=
eight-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding11=
3" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div98"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left" =
width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: n=
one; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; lin=
e-height: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"=
margin: 0; outline: none; padding: 0; color: #084b8a; font-size: 16px; font=
-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: inh=
erit; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
 text-align: center;"><span style=3D"color: #084b8a; font-size: inherit; fo=
nt-weight: 700; line-height: inherit; text-decoration: inherit; font-family=
: arial; font-style: normal;" class=3D"">Motor City Funding offers professi=
onal and reliable services in the financial sector, tailored to suit your i=
ndividual situation. We offer in-depth consultations to understand your fin=
ancial goals and current situation and=0Acraft a long-term solution that is=
 right for you.</span> <br style=3D"color: #084b8a;"></div>=0A </div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"l=
ayout-row-margin141" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: initial !important; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row141" class=3D"layout layout-row widget _widget_button =
style141" style=3D"mso-line-height-rule: exactly; background-color: #244df0=
;"><td id=3D"layout-row-padding141" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td class=3D"td_button=
 td_block customizable" valign=3D"top" align=3D"left" width=3D"630" style=
=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D=
"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if mso]=
> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:sch=
emas-microsoft-com:office:word" href=3D"" style=3D"v-text-anchor:middle; wi=
dth:142px; height:60px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#=
B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" o:button=3D"true" o:allo=
wincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px=
,2px"> <center style=3D"color:#ffffff;font-family:Arial; font-size:14px; fo=
nt-weight: bold;line-height: 1.1;">APPLY TODAY</center> </v:textbox> </v:ro=
undrect>=0A<![endif]--> <a href=3D"" style=3D"margin: 0; outline: none; pad=
ding: 12px; color: #ffffff; background: #ff1414; background-color: #ff1414;=
 border: 1px solid #B5B5B5; border-radius: 3px; font-family: Arial; font-si=
ze: 14px; display: inline-block; line-height: 1.1; text-align: center; text=
-decoration: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-famil=
y:Arial;font-size:14px;font-weight: bold;"> APPLY TODAY </span> </a> </div>=
=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin138" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" =
cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; m=
in-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"la=
yout-row138" class=3D"layout layout-row widget _widget_picture " align=3D"l=
eft" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1=
38" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td"=
 align=3D"left" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rul=
e: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c=
4bf-daad-4389-a62e-b7bdcea92aec.png?id=3D7317681?r=3D1542748082" alt=3D"" w=
idth=3D"650" style=3D"display: block; border: none; outline: none; width: 6=
50px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; =
background-color: #ffffff;"><td id=3D"layout-row-margin137" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ff=
ffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: initial !important; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row137" class=3D"l=
ayout layout-row widget _widget_text style137" style=3D"mso-line-height-rul=
e: exactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"la=
yout-row-padding137" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 background-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Asty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"text_div117" class=3D"td_te=
xt td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-=
height-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit;=
 font-size: 12px; font-weight: inherit; line-height: 1; text-decoration: in=
herit; font-family: arial;"> <div style=3D"margin: 0; outline: none; paddin=
g: 0; color: #ffffff; font-size: 20px; font-weight: inherit; line-height: i=
nherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none;=
 padding: 0; color: #ffffff; font-size: inherit; font-weight: inherit; line=
-height: inherit; text-decoration: inherit; text-align: center;"> <span sty=
le=3D"color: #ffffff; font-size: inherit; font-weight: 700; line-height: in=
herit; text-decoration: inherit; font-family: arial; font-style: normal;" c=
lass=3D"">ECONOMIC INJURY DISASTER LOAN</span> <br style=3D"color: #ffffff;=
"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A<tr id=3D"layout-row135" class=3D"layout layout-row clear-t=
his " style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><=
td id=3D"layout-row-padding135" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" =
cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; m=
in-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D=
"mso-line-height-rule: exactly;"><td id=3D"layout_table_96976cb4abdc0a944a3=
2238c4f0fd10dc954950e" valign=3D"top" width=3D"325" style=3D"mso-line-heigh=
t-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" c=
lass=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin134" =
valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr id=3D"layout-row134" class=3D"layout layout-row widget _widget_pict=
ure " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-padding134" valign=3D"top" style=3D"mso-line-height-rule: exactly=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td =
class=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"m=
so-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rn=
j5K/2021/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?r=3D1084847040" alt=
=3D"" width=3D"238" style=3D"display: block; border: none; outline: none; w=
idth: 238px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_t=
able_d5e56bf6c1139c591e5f8028362095784d7f074e" valign=3D"top" width=3D"325"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin136" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row136" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding136" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly;"><table width=3D"100%" border=3D"0"=0Acellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exact=
ly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; h=
eight: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=
=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"325"=
 style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A=
</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n133" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row133" class=3D"layout =
layout-row widget _widget_text style133" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding133" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div114" c=
lass=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" sty=
le=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; =
color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text=
-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #084b8a; font-size: 14px; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"m=
argin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial; font-s=
tyle: normal; font-weight: 400; text-align: -webkit-left;"><li style=3D"dis=
play: list-item; line-height: inherit; list-style-type: disc; margin: 0; co=
lor: #084b8a; font-size: 16px;"><span style=3D"color: #084b8a; font-size: i=
nherit; font-weight: bold; line-height: inherit; text-decoration: inherit; =
font-family: arial;" class=3D"">Up to $500,000</span></li><li style=3D"disp=
lay:=0Alist-item; line-height: inherit; list-style-type: disc; margin: 0; c=
olor: #084b8a; font-size: 16px;"><span style=3D"color: #084b8a; font-size: =
inherit; font-weight: bold; line-height: inherit; text-decoration: inherit;=
 font-family: arial;" class=3D"">3.75% Interest Rate over 30 years</span></=
li><li style=3D"display: list-item; line-height: inherit; list-style-type: =
disc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit; font-family: arial;" class=3D""><span style=3D"color: inherit; font-si=
ze: 16px; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit;" class=3D"">The EIDL was created by the SBA to help small business mee=
t financial obligations and operating expenses that could have been met had=
 the disaster not occurred</span>.</span></li></ul><br style=3D"color: #084=
b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<=
tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td =
id=3D"layout-row-margin132" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr id=3D"layout-row132" class=3D"layout layout-row widget _widget_=
text style132" style=3D"mso-line-height-rule: exactly; margin: 0; padding: =
0; background-color: #244df0;"><td id=3D"layout-row-padding132" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly; background-color: #244df0; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div113" class=3D"td_text td_block" valign=3D"top" alig=
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
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row130" class=3D"=
layout layout-row clear-this " style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-padding130" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_=
table_b373a7e7d5723caca23372055ee8116c9f8c4ea6" valign=3D"top" width=3D"325=
" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspa=
cing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin131" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row131" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding131" valign=3D"top" style=3D"mso-line-height-rule:=
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
n128" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row128" class=3D"layout =
layout-row widget _widget_text style128" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding128" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div110" c=
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
=0A<td id=3D"layout_table_3ee20a524892d5d7ce059669089902e06de82de8" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin129" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row129" cl=
ass=3D"layout layout-row widget _widget_picture " align=3D"left" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding129" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"lef=
t" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><i=
mg src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/72d82e8b-4724-4459-9=
eff-032cd1c50677.jpeg?id=3D7317507?r=3D835669059" alt=3D"" width=3D"318" st=
yle=3D"display: block; border: none; outline: none; width: 318px; opacity: =
1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr s=
tyle=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-margin127" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr id=3D"layout-row127" class=3D"layout layout-row widget _widget_te=
xt style127" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;=
 background-color: #244df0;"><td id=3D"layout-row-padding127" valign=3D"top=
" style=3D"mso-line-height-rule: exactly; background-color: #244df0; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div109" class=3D"td_text td_block" valign=3D"top" alig=
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
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row12=
5" class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: e=
xactly; background-color: #ffffff;"><td id=3D"layout-row-padding125" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout_table_de0e65418ef8d269401b79cdbf0975e83b3fc623" valign=3D"top" =
width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td=0Aid=3D"layout-row-margin124" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row124" class=
=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-padding124" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"center=
" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><im=
g=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/2386d3f8-90e6-4b50-=
a4d8-21653389cc8e.png?id=3D7317374?r=3D1014458091" alt=3D"" width=3D"200" s=
tyle=3D"display: block; border: none; outline: none; width: 200px; opacity:=
 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_0cb57887c6752f=
6d5438d5e7bfe5dffb8ddd71a7" valign=3D"top" width=3D"325" style=3D"mso-line-=
height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D=
"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin12=
6" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row126" class=3D"layout layout-row widget _widget_s=
pacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddi=
ng126" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=
=3D"100%" border=3D"0"=0Acellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top=
" height=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spac=
er" style=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table ce=
llpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spa=
cer-body" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-heig=
ht-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-margin123" valign=3D"top" s=
tyle=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impor=
tant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr id=3D"layout-row123" class=3D"layout layout-row widget _wid=
get_text style123" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0;"><td id=3D"layout-row-padding123" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td id=3D"text_div106" class=3D"td_text td_blo=
ck" valign=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-=
rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-s=
ize: 12px; font-weight: inherit; line-height: 1; text-decoration: inherit; =
font-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; c=
olor: #084b8a; font-size: 16px; font-weight: inherit; line-height: inherit;=
 text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; paddin=
g: 0; color: #084b8a; font-size: inherit; font-weight: inherit; line-height=
: inherit; text-decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; p=
adding: 0; color: #084b8a; font-family: arial; font-style: normal; font-wei=
ght: 400; text-align: -webkit-left;"><li style=3D"display: list-item; line-=
height: inherit; list-style-type: disc; margin: 0; color: #084b8a; text-ali=
gn: left;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: =
bold; line-height: inherit; text-decoration: inherit; font-family: arial;" =
class=3D"">As low as 3.0% APR</span></li><li=0Astyle=3D"display: list-item;=
 line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a; te=
xt-align: left;"><span style=3D"color: #084b8a; font-size: inherit; font-we=
ight: bold; line-height: inherit; text-decoration: inherit; font-family: ar=
ial;" class=3D"">2-3 Year Term Payback</span></li><li style=3D"display: lis=
t-item; line-height: inherit; list-style-type: disc; margin: 0; color: #084=
b8a; text-align: left;"><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; font-fam=
ily: arial;" class=3D"">Revolving (As you pay back funds they become availa=
ble again)</span></li><li style=3D"display: list-item; line-height: inherit=
; list-style-type: disc; margin: 0; color: #084b8a; text-align: left;"><spa=
n style=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-heig=
ht: inherit; text-decoration: inherit; font-family: arial;" class=3D"">Lowe=
r rates than personal credit cards</span></li></ul><br style=3D"color:=0A#0=
84b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin122" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impor=
tant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr id=3D"layout-row122" class=3D"layout layout-row widget _wid=
get_text style122" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0; background-color: #244df0;"><td id=3D"layout-row-padding122" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div105" class=3D"td_text td_block" valign=3D"top"=
 align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margi=
n: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-weig=
ht: inherit; line-height: 1; text-decoration: inherit; font-family: arial;"=
> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-=
size: 20px; font-weight: inherit; line-height: inherit; text-decoration: in=
herit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff=
; font-size: inherit; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-=
size: inherit; font-weight: 700; line-height: inherit; text-decoration: inh=
erit; font-family: arial; font-style: normal;" class=3D"">BRIDGE LOAN</span=
> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row120" clas=
s=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exactly;=
 background-color: #ffffff;"><td id=3D"layout-row-padding120" valign=3D"top=
" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"la=
yout_table_83796986e267fe82af722c4dfa148ac2d9044892" valign=3D"top" width=
=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d=0Aid=3D"layout-row-margin121" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row121" class=3D"layou=
t layout-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly=
;"><td id=3D"layout-row-padding121" valign=3D"top" style=3D"mso-line-height=
-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: =
exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: e=
xactly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: =
0; height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0"=0Aborder=3D"0"=
 width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rul=
e: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=
=3D"325" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</t=
able>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-r=
ow-margin118" valign=3D"top" style=3D"mso-line-height-rule: exactly; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row118" class=
=3D"layout layout-row widget _widget_text style118" style=3D"mso-line-heigh=
t-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding118" v=
align=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"tex=
t_div102" class=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=
=3D"305" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; =
padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-hei=
ght: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"margi=
n: 0; outline: none; padding: 0; color: #084b8a; font-size: 16px; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit;"> =
<ul style=3D"margin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family:=
 arial; font-style: normal; font-weight: 400; text-align: -webkit-left;"><l=
i style=3D"display: list-item; line-height: inherit; list-style-type: disc;=
 margin: 0; text-align: left; color: #084b8a;"><span style=3D"color: #084b8=
a; font-size: inherit; font-weight: bold; line-height: inherit; text-decora=
tion: inherit; font-family: arial;" class=3D"">Loan Amounts up $500,000</sp=
an></li><li=0Astyle=3D"display: list-item; line-height: inherit; list-style=
-type: disc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"c=
olor: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit;=
 text-decoration: inherit; font-family: arial;" class=3D"">3mo - 1yr Terms<=
/span></li><li style=3D"display: list-item; line-height: inherit; list-styl=
e-type: disc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"=
color: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit=
; text-decoration: inherit; font-family: arial;" class=3D"">Interest Rates =
Vary</span></li><li style=3D"display: list-item; line-height: inherit; list=
-style-type: disc; margin: 0; text-align: left; color: #084b8a;"><span styl=
e=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: in=
herit; text-decoration: inherit; font-family: arial;" class=3D"">Funds in a=
s little as 24 hours</span></li></ul><br style=3D"color: #084b8a;"></div>=
=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_908ee58477d0baf648953c287=
124e9acc86cc8f5" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule=
: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=
=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin119" valign=
=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row119" class=3D"layout layout-row widget _widget_picture " =
align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-=
row-padding119" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td clas=
s=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"mso-l=
ine-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/20=
21/10/19/f75a4ad9-80f6-4393-b275-de539fe04faf.jpeg?id=3D7317250?r=3D1376339=
801" alt=3D"" width=3D"259" style=3D"display: block; border: none; outline:=
 none; width: 259px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; backgr=
ound-color: #ffffff;"><td id=3D"layout-row-margin117" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 0px; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: initial !important; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row117" class=3D"layout=
 layout-row widget _widget_button style117" style=3D"mso-line-height-rule: =
exactly; background-color: #244df0;"><td id=3D"layout-row-padding117" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0=
; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule=
: exactly;"><td class=3D"td_button td_block customizable" valign=3D"top" al=
ign=3D"left" width=3D"640" style=3D"mso-line-height-rule: exactly;"> <div c=
lass=3D"button-wrapper" style=3D"margin: 0; outline: none; padding: 0; text=
-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-micro=
soft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"htt=
ps://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cC=
UzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DEQ7o9rG3YCPdCnTYHp=
wPjfvsqtiWjsx2G7Tg1YntMrqk&iat=3D1634823447&a=3D%7C%7C225362583%7C%7C&accou=
nt=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdI=
U0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c92=
68b7&i=3D5A9A1A12" style=3D"v-text-anchor:middle; width:150px; height:60px;=
 font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D=
"1pt" fillcolor=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allo=
woverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D=
"color:#ffffff;font-family:Arial; font-size:18px; font-weight: bold;line-he=
ight: 1.1;">APPLY NOW</center> </v:textbox> </v:roundrect>=0A<![endif]--> <=
a href=3D"https://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?redirec=
tUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DEQ7o9=
rG3YCPdCnTYHpwPjfvsqtiWjsx2G7Tg1YntMrqk&iat=3D1634823447&a=3D%7C%7C22536258=
3%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2T=
QUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86=
eed94873b1c9268b7&i=3D5A9A1A12" style=3D"margin: 0; outline: none; padding:=
 10px; color: #ffffff; background: #ff1414; background-color: #ff1414; bord=
er: 1px solid #B5B5B5; border-radius: 3px; font-family: Arial; font-size: 1=
8px; display: inline-block; line-height: 1.1; text-align: center; text-deco=
ration: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Ari=
al;font-size:18px;font-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr st=
yle=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D=
"layout-row-margin116" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y; padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row116" class=3D"layout layout-row widget _widget_tex=
t style116" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding116" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div100"=0Aclass=3D"td_text td_block" v=
align=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: e=
xactly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12=
px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fa=
mily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #=
084b8a; font-size: 16px; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; c=
olor: #084b8a; font-size: inherit; font-weight: inherit; line-height: inher=
it; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; pad=
ding: 0; color: #084b8a; font-size: inherit; font-weight: 400; line-height:=
 inherit; text-decoration: inherit; font-family: arial; font-style: normal;=
 text-align: -webkit-left;"><span style=3D"color: #084b8a; font-size: inher=
it; font-weight: inherit; line-height: inherit; text-decoration: inherit; f=
ont-family: arial;" class=3D"">If you have any questions please do not=0Ahe=
sitate to call. We pride ourselves on always being available to our clients=
.</span></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color:=
 #084b8a; font-size: inherit; font-weight: 400; line-height: inherit; text-=
decoration: inherit; font-family: arial; font-style: normal; text-align: -w=
ebkit-left;"><br style=3D"color: #084b8a;color: #084b8a;"></div>=0A<div sty=
le=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: inhe=
rit; font-weight: 400; line-height: inherit; text-decoration: inherit; font=
-family: arial; font-style: normal; text-align: -webkit-left;"><span style=
=3D"color: #084b8a; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;" class=3D"">Sincerel=
y,</span></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color=
: #084b8a; font-size: inherit; font-weight: 400; line-height: inherit; text=
-decoration: inherit; font-family: arial; font-style: normal; text-align: -=
webkit-left;"><br style=3D"color: #084b8a;color: #084b8a;"></div>=0A<div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: inh=
erit; font-weight: 400; line-height: inherit; text-decoration: inherit; fon=
t-family: arial; font-style: normal; text-align: -webkit-left;"><span style=
=3D"color: #084b8a; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit;" class=3D""><span style=3D"color: #084b8=
a; font-size: inherit; font-weight: bold; line-height: inherit; text-decora=
tion: inherit; font-family: arial;">Samuel Brugman</span><span style=3D"col=
or: #084b8a; font-size: inherit; font-weight: inherit; line-height: inherit=
; text-decoration: inherit; font-family: arial;"> </span><span style=3D"col=
or: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit; t=
ext-decoration: inherit; font-family: arial;">| </span><span style=3D"color=
: #084b8a; font-size: inherit; font-weight: inherit; line-height: inherit; =
text-decoration: inherit; font-family: arial;">Funding Manager</span></span=
></div>=0A <br style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-r=
ow115" class=3D"layout layout-row clear-this " style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><td id=3D"layout-row-padding115" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fff=
fff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td id=3D"layout_table_48defe7fa4fb6844a491551d488518ae976afa41" valign=3D"t=
op" width=3D"425" style=3D"mso-line-height-rule: exactly;"><table cellpaddi=
ng=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " widt=
h=3D"425" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td=0Aid=3D"layout-row-margin112" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row112" class=3D"layout layout-row widget _widget_text style112"=
 style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; background-=
color: #244df0;"><td id=3D"layout-row-padding112" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; background-color: #244df0; padding: 5px;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div97" class=3D"td_text td_block" valign=3D"top"=0Aalign=3D"left" =
width=3D"405" style=3D"mso-line-height-rule: exactly; margin: 0; outline: n=
one; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; lin=
e-height: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"=
margin: 0; outline: none; padding: 0; color: inherit; font-size: inherit; f=
ont-weight: inherit; line-height: inherit; text-decoration: inherit; text-a=
lign: center;"><span style=3D"color: #01df3a; font-size: 18px; font-weight:=
 bold; line-height: inherit; text-decoration: inherit; font-style: normal; =
text-align: center; font-family: arial;" class=3D"">Motor City Funding</spa=
n><br><span class=3D"" style=3D"color: #ffffff; font-size: 15px; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit;"><span style=3D=
"color: #ffffff; font-size: inherit; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; font-style: normal; text-align: center; fon=
t-family: arial;">3000 Town Center</span><br style=3D"color: #ffffff;"><spa=
n=0Astyle=3D"color: #ffffff; font-size: inherit; font-weight: inherit; line=
-height: inherit; text-decoration: inherit; font-style: normal; text-align:=
 center; font-family: arial;">Southfield, MI 48076</span><br style=3D"color=
: #ffffff;"><span style=3D"color: #ffffff; font-size: inherit; font-weight:=
 inherit; line-height: inherit; text-decoration: inherit; font-style: norma=
l; text-align: center; font-family: arial;">O: (315) 257-1195</span></span>=
 <br></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_20c5718c35c820f702374e=
dbf60d63f67dbe6108" valign=3D"top" width=3D"225" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"225" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin114" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; padding: 8px;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: ini=
tial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row114" class=3D"layout layout-row =
widget _widget_button style114" style=3D"mso-line-height-rule: exactly; bac=
kground-color: #244df0;"><td id=3D"layout-row-padding114" valign=3D"top"=0A=
style=3D"mso-line-height-rule: exactly; background-color: #244df0; padding:=
 14px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td class=3D"td_button td_block customizable" valign=3D"top" align=3D"left=
" width=3D"181" style=3D"mso-line-height-rule: exactly;"> <div class=3D"but=
ton-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: cen=
ter;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vm=
l" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"mailto:sbrugma=
n@motorcityfunding.com" style=3D"v-text-anchor:middle; width:137px; height:=
60px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweig=
ht=3D"1pt" fillcolor=3D"#57db28" o:button=3D"true" o:allowincell=3D"true" o=
:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center sty=
le=3D"color:#ffffff;font-family:Arial; font-size:14px; font-weight: bold;li=
ne-height: 1.1;">CONTACT US</center> </v:textbox> </v:roundrect>=0A<![endif=
]--> <a href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"margin: 0; o=
utline: none; padding: 12px; color: #ffffff; background: #57db28; backgroun=
d-color: #57db28; border: 1px solid #B5B5B5; border-radius: 3px; font-famil=
y: Arial; font-size: 14px; display: inline-block; line-height: 1.1; text-al=
ign: center; text-decoration: none; mso-hide: all;"> <span style=3D"color:#=
ffffff;font-family:Arial;font-size:14px;font-weight: bold;"> CONTACT US </s=
pan> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<im=
g src=3D"https://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?nl=3D1&c=
=3D5&m=3D9&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcit=
yfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"1" height=3D=
"1" style=3D"display:block;width:1px!important;min-width:1px!important;max-=
width:1px!important;height:1px!important;border:0;overflow:hidden;" /><div =
id=3D"ac-footer" style=3D"clear:both;background-color:inherit;background:in=
herit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:20px=
;color:#000000;font-size:11px;font-family:arial,helvetica,sans-serif;line-h=
eight:140%;line-height:1.4;text-align:center;box-sizing:border-box;">=0A=09=
<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:arial,h=
elvetica,sans-serif;font-weight:normal;text-decoration:none;outline:none;">=
linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=
=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D1&c=
=3D5&m=3D9&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-=
size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold;text-deco=
ration:underline;"><span style=3D"font-weight:bold;text-decoration:underlin=
e;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 30=
00 Town Center, Southfield, United States=0A=09</center>=0A</div>=0A<br cle=
ar=3D"all" /></body>=0A</html>
--_=_swift-198477497561716b9c7ec310.09013376_=_--



--===============2857247966220269000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2857247966220269000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2857247966220269000==--


