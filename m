Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A5F4432AE
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Nov 2021 17:29:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mhweg-000184-EZ; Tue, 02 Nov 2021 16:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-22-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mhwee-00017h-CE
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Nov 2021 16:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLZ/bo3BEVIH23cxSP0PAxM3gsRjsaCaWcuXp5rcEHw=; b=blx7PyAMXWd/w6k+NGoU/sBFRj
 zhtja85ooQZSuF0TTyjQ0NwiuK1zXUUGbg9KeZuN8faWiKalgr1uyKrYgiBZp6qXcEA8KuRCbOTFW
 KDqEvcVkg8A1dsdn/YIeHL4SIOMrs+4qYKOISTIet9jX3h438bsQv9o7ADofk5Kaaejc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=NLZ/bo3BEVIH23cxSP0PAxM3gsRjsaCaWcuXp5rcEHw=; b=GniWEfiuw+v5
 RIi+qWFrPglkM7IrTJWu1pinx1Wsk2mQpwKRlEDmAU+ZVQk26x7tb7yfQkDCsOEkEAXIBvarQpNj5
 wgWPLR+fzey6FwRTEBu9h7Iq5cRMeMz9MdF2YcfSBL2KQ8q7yETwBli4x0AbOT2hy5vnovAjKyqCf
 D1sK8=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhweX-00F9lD-UG
 for linux1394-devel@lists.sourceforge.net; Tue, 02 Nov 2021 16:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=NLZ/bo3BEVIH23cxSP0PAxM3gsRjsaCaWcuXp5rcEHw=;
 b=IPjeFqn9r7KwI8bZ9qkHGU+R+NDkSS3rFxBurg0sOcKtY4E2VWWIkqXVQ7pLIUHfGP3IFj/lPoUh
 7xyxycVVb86QzT07OuHc6caFIKMKJF3deyT+QDAb6cDTqKU6J565GQ3/hgCTvyCSG6o6188RSFFu
 wK+Zod/vimpNfWz13Ks=
Received: by s15.avl4.acemsrvd.com id hg5jji2q274f for
 <linux1394-devel@lists.sourceforge.net>;
 Tue, 2 Nov 2021 13:27:43 +0000 (envelope-from
 <bounce-2287853-22-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: EIDL Still Open ~ Apply Before the Deadline
Date: Tue, 02 Nov 2021 08:22:44 -0500
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMyMiAsIG0zMiAsIHMxOA
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-22
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211102132743.12109.1261088162.swift@motorcityfunding.activehosted.com>
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
               [Blocked - see <https://www.spamcop.net/bl.shtml?192.92.97.219>]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: img-us6.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mhweX-00F9lD-UG
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
Content-Type: multipart/mixed; boundary="===============5592507206402314873=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============5592507206402314873==
Content-Type: multipart/alternative;
 boundary="_=_swift-133152666061813ba4912601.18085929_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-133152666061813ba4912601.18085929_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=22&amp;m=32&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-133152666061813ba4912601.18085929_=_
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
@media only screen and (max-width: 320px) { #layout-row703 img { width: 100=
% !important; height: auto !important; max-width: 320px !important; } #layo=
ut-row705 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row713 img { width: 100% !important; height: a=
uto !important; max-width: 320px !important; } #layout-row718 img { width: =
100% !important; height: auto !important; max-width: 320px !important; } #l=
ayout-row723 img { width: 100% !important; height: auto !important; max-wid=
th: 320px !important; } #layout-row728 img { width: 100% !important; height=
: auto !important; max-width: 320px !important; } #layout-row732 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row733 img { width: 100% !important; height: auto !important; max-=
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
only screen and (max-width: 375px) { #layout-row703 img { width: 100% !impo=
rtant; height: auto !important; max-width: 375px !important; } #layout-row7=
05 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row713 img { width: 100% !important; height: auto !im=
portant; max-width: 375px !important; } #layout-row718 img { width: 100% !i=
mportant; height: auto !important; max-width: 339px !important; } #layout-r=
ow723 img { width: 100% !important; height: auto !important; max-width: 375=
px !important; } #layout-row728 img { width: 100% !important; height: auto =
!important; max-width: 375px !important; } #layout-row732 img { width: 100%=
 !important; height: auto !important; max-width: 375px !important; } #layou=
t-row733 img { width: 100% !important; height: auto !important; max-width: =
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
reen and (max-width: 414px) { #layout-row703 img { width: 100% !important; =
height: auto !important; max-width: 414px !important; } #layout-row705 img =
{ width: 100% !important; height: auto !important; max-width: 414px !import=
ant; } #layout-row713 img { width: 100% !important; height: auto !important=
; max-width: 414px !important; } #layout-row718 img { width: 100% !importan=
t; height: auto !important; max-width: 339px !important; } #layout-row723 i=
mg { width: 100% !important; height: auto !important; max-width: 414px !imp=
ortant; } #layout-row728 img { width: 100% !important; height: auto !import=
ant; max-width: 414px !important; } #layout-row732 img { width: 100% !impor=
tant; height: auto !important; max-width: 414px !important; } #layout-row73=
3 img { width: 100% !important; height: auto !important; max-width: 414px !=
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
d (max-width: 667px) { #layout-row703 img { width: 100% !important; height:=
 auto !important; max-width: 667px !important; } #layout-row705 img { width=
: 100% !important; height: auto !important; max-width: 434px !important; } =
#layout-row713 img { width: 100% !important; height: auto !important; max-w=
idth: 667px !important; } #layout-row718 img { width: 100% !important; heig=
ht: auto !important; max-width: 339px !important; } #layout-row723 img { wi=
dth: 100% !important; height: auto !important; max-width: 667px !important;=
 } #layout-row728 img { width: 100% !important; height: auto !important; ma=
x-width: 667px !important; } #layout-row732 img { width: 100% !important; h=
eight: auto !important; max-width: 667px !important; } #layout-row733 img {=
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
d id=3D"layout_table_c20cedaeeee89d68e5f8b30153917bebfb7acad7" valign=3D"to=
p" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" class=3D"layout layout-table root-table" width=3D"650" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line-height-rule=
: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin703" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=0A100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row703" class=3D"layout layou=
t-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding703" valign=3D"top" style=3D"mso-=
line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top=
" width=3D"650" style=3D"mso-line-height-rule: exactly;"><img src=3D"https:=
//motorcityfunding.img-us6.com/admin/mcf.png?r=3D2113571526" alt=3D"" width=
=3D"300" style=3D"display: block; border: none; outline: none; width: 300px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin704" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ffffff=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row704" class=3D"layou=
t layout-row widget _widget_text style704" style=3D"mso-line-height-rule: e=
xactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout=
-row-padding704" valign=3D"top" style=3D"mso-line-height-rule: exactly; bac=
kground-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=
=3D"mso-line-height-rule: exactly;"><td id=3D"text_div599" class=3D"td_text=
 td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-he=
ight-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; f=
ont-size: 12px; font-weight: inherit; line-height: 1; text-decoration: inhe=
rit; font-family: arial;"> <div style=3D"margin: 0; outline: none; padding:=
 0; color: inherit; font-size: 20px; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; p=
adding: 0; color: #ffffff; font-size: inherit; font-weight: inherit; line-h=
eight: inherit; text-decoration: inherit; text-align: center;"> <span style=
=3D"color: #ffffff; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial; font-style: normal;" cl=
ass=3D"">Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Cre=
dit!</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin733" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgroun=
d-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row733" class=3D=
"layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding733" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valig=
n=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7=
bdcea92aec.png?id=3D7317681?r=3D1402143543" alt=3D"" width=3D"650" style=3D=
"display: block; border: none; outline: none; width: 650px; opacity: 1; max=
-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #f=
fffff;"><td id=3D"layout-row-margin705" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
id=3D"layout-row705" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-ro=
w-padding705" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D=
"image-td" align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-lin=
e-height-rule: exactly;"><img src=3D"https://motorcityfunding.img-us6.com/a=
dmin/unnamed.jpg?r=3D409078323" alt=3D"" width=3D"434" style=3D"display: bl=
ock; border: none; outline: none; width: 434px; opacity: 1; max-width: 100%=
;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin734" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-=
row734" class=3D"layout layout-row widget _widget_spacer " style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding734" valign=3D"top" st=
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
actly; background-color: #ffffff;"><td id=3D"layout-row-margin707" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-c=
olor: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: initial !important; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row707" c=
lass=3D"layout layout-row widget _widget_text style707" style=3D"mso-line-h=
eight-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding70=
7" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div602"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left"=
 width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: =
none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; li=
ne-height: 1; text-decoration: inherit; font-family: arial;"> <div style=3D=
"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: 16px; fon=
t-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div s=
tyle=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: in=
herit; font-weight: inherit; line-height: inherit; text-decoration: inherit=
; text-align: center;"><span style=3D"color: #084b8a; font-size: inherit; f=
ont-weight: 700; line-height: inherit; text-decoration: inherit; font-famil=
y: arial; font-style: normal;" class=3D"">Motor City Funding offers profess=
ional and reliable services in the financial sector, tailored to suit your =
individual situation. We offer in-depth consultations to understand your fi=
nancial goals and current situation and=0Acraft a long-term solution that i=
s right for you.</span> <br style=3D"color: #084b8a;"></div>=0A </div>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"=
layout-row-margin735" valign=3D"top" style=3D"mso-line-height-rule: exactly=
; padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: initial !important; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row735" class=3D"layout layout-row widget _widget_button=
 style735" style=3D"mso-line-height-rule: exactly; background-color: #244df=
0;"><td id=3D"layout-row-padding735" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td class=3D"td_butto=
n td_block customizable" valign=3D"top" align=3D"left" width=3D"630" style=
=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D=
"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if mso]=
> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:sch=
emas-microsoft-com:office:word" href=3D"https://motorcityfunding.lt.acemlnd=
.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMk=
ZzYnJ1Z21hbg=3D=3D&sig=3DEnbdbMxxThsVQNqXFGNNvwsrutPzdbrsefDXEVHLpG3a&iat=
=3D1635859663&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactive=
hosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xS=
M9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D22A32A1A63" style=3D"=
v-text-anchor:middle; width:142px; height:60px; font-weight: bold;" arcsize=
=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" =
o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:text=
box inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:A=
rial; font-size:14px; font-weight: bold;line-height: 1.1;">APPLY TODAY</cen=
ter> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcit=
yfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd=
3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DEnbdbMxxThsVQNqXFGNNvwsrutPzdbr=
sefDXEVHLpG3a&iat=3D1635859663&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcit=
yfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rh=
DqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D22A3=
2A1A63" style=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; b=
ackground: #ff1414; background-color: #ff1414; border: 1px solid #B5B5B5; b=
order-radius: 3px; font-family: Arial; font-size: 14px; display: inline-blo=
ck; line-height: 1.1; text-align: center; text-decoration: none; mso-hide: =
all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:14px;font-w=
eight: bold;"> APPLY TODAY </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin732"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #=
ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row732" class=3D"layout =
layout-row widget _widget_picture " align=3D"left" style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding732" valign=3D"top" style=3D"m=
so-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top=
" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"http=
s://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92a=
ec.png?id=3D7317681?r=3D780954384" alt=3D"" width=3D"650" style=3D"display:=
 block; border: none; outline: none; width: 650px; opacity: 1; max-width: 1=
00%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin731" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impor=
tant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr id=3D"layout-row731" class=3D"layout layout-row widget _wid=
get_text style731" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0; background-color: #244df0;"><td id=3D"layout-row-padding731" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div621" class=3D"td_text td_block" valign=3D"top"=
 align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margi=
n: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-weig=
ht: inherit; line-height: 1; text-decoration: inherit; font-family: arial;"=
> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-=
size: 20px; font-weight: inherit; line-height: inherit; text-decoration: in=
herit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff=
; font-size: inherit; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-=
size: inherit; font-weight: 700; line-height: inherit; text-decoration: inh=
erit; font-family: arial; font-style: normal;" class=3D"">ECONOMIC INJURY D=
ISASTER LOAN</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"=
layout-row729" class=3D"layout layout-row clear-this " style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-paddin=
g729" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-col=
or: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout_table_ca077ce3ad4310c45cfc0c27db7e60c40ec79218" val=
ign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table c=
ellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-tabl=
e " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td=0Aid=3D"layout-row-margin728" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row72=
8" class=3D"layout layout-row widget _widget_picture " align=3D"center" sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding728" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=
=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/8657e27f-=
7004-40ca-ba8e-9b2b418af77c.png?r=3D871182221" alt=3D"" width=3D"238" style=
=3D"display: block; border: none; outline: none; width: 238px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_9641bded92c15a376b0a=
0f0eaa030f92a737f85e" valign=3D"top" width=3D"325" style=3D"mso-line-height=
-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cl=
ass=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin730" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row730" class=3D"layout layout-row widget _widget_spacer =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding730"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0"=0Acellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" heig=
ht=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" st=
yle=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpadd=
ing=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-bo=
dy" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-rul=
e: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</ta=
ble>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-margin727" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row727" class=3D"layout layout-row widget _widget_tex=
t style727" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding727" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div618" class=3D"td_text td_block" val=
ign=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-rule: e=
xactly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12=
px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fa=
mily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #=
084b8a; font-size: 14px; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; c=
olor: #084b8a; font-size: inherit; font-weight: inherit; line-height: inher=
it; text-decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; padding:=
 0; color: #084b8a; font-family: arial; font-style: normal; font-weight: 40=
0; text-align: -webkit-left;"><li style=3D"display: list-item; line-height:=
 inherit; list-style-type: disc; margin: 0; color: #084b8a; font-size: 16px=
;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; li=
ne-height: inherit; text-decoration: inherit; font-family: arial;" class=3D=
"">Up to $500,000</span></li><li style=3D"display:=0Alist-item; line-height=
: inherit; list-style-type: disc; margin: 0; color: #084b8a; font-size: 16p=
x;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; l=
ine-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">3.75% Interest Rate over 30 years</span></li><li style=3D"display: li=
st-item; line-height: inherit; list-style-type: disc; margin: 0; color: #08=
4b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; font-family: arial;" c=
lass=3D""><span style=3D"color: inherit; font-size: 16px; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;" class=3D"">The EIDL w=
as created by the SBA to help small business meet financial obligations and=
 operating expenses that could have been met had the disaster not occurred<=
/span>.</span></li></ul><br style=3D"color: #084b8a;"></div>=0A </div>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin726"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; backg=
round-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: initial !important; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-ro=
w726" class=3D"layout layout-row widget _widget_text style726" style=3D"mso=
-line-height-rule: exactly; margin: 0; padding: 0; background-color: #244df=
0;"><td id=3D"layout-row-padding726" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div617=
" class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" st=
yle=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0;=
 color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; tex=
t-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #ffffff; font-size: 20px; font-weight: inherit=
; line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0=
; outline: none; padding: 0; color: #ffffff; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit; text-align: cen=
ter;"> <span style=3D"color: #ffffff; font-size: inherit; font-weight: 700;=
 line-height: inherit; text-decoration: inherit; font-family: arial; font-s=
tyle: normal;" class=3D"">S.B.A. 7(a)</span> <br style=3D"color: #ffffff;">=
</div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A<tr id=3D"layout-row724" class=3D"layout layout-row clear-thi=
s " style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td=
 id=3D"layout-row-padding724" valign=3D"top" style=3D"mso-line-height-rule:=
 exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min=
-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout_table_650f75705eba97991800d=
6c82af7a5d2c710478b" valign=3D"top" width=3D"325" style=3D"mso-line-height-=
rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cla=
ss=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: au=
to; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr st=
yle=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin725" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row725" class=3D"layout layout-row widget _widget_spacer=
 " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding725=
" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" heigh=
t=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" sty=
le=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpaddi=
ng=3D"0" cellspacing=3D"0"=0Aborder=3D"0" width=3D"100%" style=3D"-ms-text-=
size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collaps=
e; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspac=
e: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-b=
ody" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-ru=
le: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-he=
ight-rule: exactly;"><td id=3D"layout-row-margin722" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr id=3D"layout-row722" class=3D"layout layout-row widget _widget_=
text style722" style=3D"mso-line-height-rule: exactly; margin: 0; padding: =
0;"><td id=3D"layout-row-padding722" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"text_div614" class=3D"td_text td_block" =
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
ht: inherit; list-style-type: disc; margin: 0; color: #084b8a;"><span style=
=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial;" class=3D"">Interest Ra=
tes as Low as 6%</span></li><li style=3D"display:=0Alist-item; line-height:=
 inherit; list-style-type: disc; margin: 0; color: #084b8a;"><span style=3D=
"color: #084b8a; font-size: inherit; font-weight: bold; line-height: inheri=
t; text-decoration: inherit; font-family: arial;" class=3D"">Up to $5,000,0=
00</span></li><li style=3D"display: list-item; line-height: inherit; list-s=
tyle-type: disc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a;=
 font-size: inherit; font-weight: bold; line-height: inherit; text-decorati=
on: inherit; font-family: arial;" class=3D"">10 - 30 Year Terms</span></li>=
<li style=3D"display: list-item; line-height: inherit; list-style-type: dis=
c; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; font-size: in=
herit; font-weight: bold; line-height: inherit; text-decoration: inherit; f=
ont-family: arial;" class=3D"">Monthly Payments</span></li><li style=3D"dis=
play: list-item; line-height: inherit; list-style-type: disc; margin: 0; co=
lor: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit;=0Afont-we=
ight: bold; line-height: inherit; text-decoration: inherit; font-family: ar=
ial;" class=3D"">Funds in as little as 2 weeks</span></li></ul><br style=3D=
"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_0=
452bf49e87b25435f6b476461907a658819f0a7" valign=3D"top" width=3D"325" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin723" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row723" class=3D"layout layout-row w=
idget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"layout-row-padding723" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D=
"325" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.=
app-us1.com/Rnj5K/2021/10/19/72d82e8b-4724-4459-9eff-032cd1c50677.jpeg?id=
=3D7317507?r=3D176371166" alt=3D"" width=3D"318" style=3D"display: block; b=
order: none; outline: none; width: 318px; opacity: 1; max-width: 100%;"></t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin721" =
valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; backgr=
ound-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
721" class=3D"layout layout-row widget _widget_text style721" style=3D"mso-=
line-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0=
;"><td id=3D"layout-row-padding721" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div613"=
 class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" sty=
le=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; =
color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text=
-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #ffffff; font-size: 20px; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #ffffff; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit; text-align: cent=
er;"> <span style=3D"color: #ffffff; font-size: inherit; font-weight: 700; =
line-height: inherit; text-decoration: inherit; font-family: arial; font-st=
yle: normal;" class=3D"">BUSINESS LINE OF CREDIT</span> <br style=3D"color:=
 #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row719" class=3D"layout layout-ro=
w clear-this " style=3D"mso-line-height-rule: exactly; background-color: #f=
fffff;"><td id=3D"layout-row-padding719" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=
 style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_ab3d7ca75f=
2729b3cab5de2f8e3f3f34c80939ce" valign=3D"top" width=3D"325" style=3D"mso-l=
ine-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-ma=
rgin718" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row718" class=3D"layout layout-row widget _wi=
dget_picture " align=3D"center" style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout-row-padding718" valign=3D"top" style=3D"mso-line-height-rule=
: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td class=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" s=
tyle=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-u=
s1.com/Rnj5K/2021/10/19/2386d3f8-90e6-4b50-a4d8-21653389cc8e.png?id=3D73173=
74?r=3D1257779265" alt=3D"" width=3D"200" style=3D"display: block; border: =
none; outline: none; width: 200px; opacity: 1; max-width: 100%;"></td>=0A</=
tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A<td id=3D"layout_table_37758cacfe2285b285e597c7842f69853af3418f" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cell=
padding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table "=
 width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin720" valign=3D"top" style=3D"mso-lin=
e-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row720" cl=
ass=3D"layout layout-row widget _widget_spacer " style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding720" valign=3D"top" style=3D"mso=
-line-height-rule: exactly;"><table width=3D"100%" border=3D"0"=0Acellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-=
height-rule: exactly;"><div class=3D"spacer" style=3D"margin: 0; outline: n=
one; padding: 0; height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D=
"30" width=3D"325" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A<=
/tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin717" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: initial !important; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row7=
17" class=3D"layout layout-row widget _widget_text style717" style=3D"mso-l=
ine-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padd=
ing717" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td =
id=3D"text_div610" class=3D"td_text td_block" valign=3D"top" align=3D"left"=
=0Awidth=3D"305" style=3D"mso-line-height-rule: exactly; margin: 0; outline=
: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; =
line-height: 1; text-decoration: inherit; font-family: arial;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: 16px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit;"> <ul style=3D"margin: 0 0px 0 40px; padding: 0; color: #084b8a; font-=
family: arial; font-style: normal; font-weight: 400; text-align: -webkit-le=
ft;"><li style=3D"display: list-item; line-height: inherit; list-style-type=
: disc; margin: 0; color: #084b8a; text-align: left;"><span style=3D"color:=
 #084b8a; font-size: inherit; font-weight: bold; line-height: inherit; text=
-decoration: inherit; font-family: arial;" class=3D"">As low as 3.0% APR</s=
pan></li><li=0Astyle=3D"display: list-item; line-height: inherit; list-styl=
e-type: disc; margin: 0; color: #084b8a; text-align: left;"><span style=3D"=
color: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit=
; text-decoration: inherit; font-family: arial;" class=3D"">2-3 Year Term P=
ayback</span></li><li style=3D"display: list-item; line-height: inherit; li=
st-style-type: disc; margin: 0; color: #084b8a; text-align: left;"><span st=
yle=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: =
inherit; text-decoration: inherit; font-family: arial;" class=3D"">Revolvin=
g (As you pay back funds they become available again)</span></li><li style=
=3D"display: list-item; line-height: inherit; list-style-type: disc; margin=
: 0; color: #084b8a; text-align: left;"><span style=3D"color: #084b8a; font=
-size: inherit; font-weight: bold; line-height: inherit; text-decoration: i=
nherit; font-family: arial;" class=3D"">Lower rates than personal credit ca=
rds</span></li></ul><br style=3D"color:=0A#084b8a;"></div>=0A </div>=0A</td=
>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin716" =
valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; backgr=
ound-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
716" class=3D"layout layout-row widget _widget_text style716" style=3D"mso-=
line-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0=
;"><td id=3D"layout-row-padding716" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div609"=
 class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" sty=
le=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; =
color: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text=
-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outlin=
e: none; padding: 0; color: #ffffff; font-size: 20px; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #ffffff; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit; text-align: cent=
er;"> <span style=3D"color: #ffffff; font-size: inherit; font-weight: 700; =
line-height: inherit; text-decoration: inherit; font-family: arial; font-st=
yle: normal;" class=3D"">BRIDGE LOAN</span> <br style=3D"color: #ffffff;"><=
/div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A<tr id=3D"layout-row714" class=3D"layout layout-row clear-this=
 " style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td =
id=3D"layout-row-padding714" valign=3D"top" style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout_table_b62ba66940776184e5011c=
cdccf5bf42ef7eff8b" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin715" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row715" class=3D"layout layout-row widget _widget_spacer =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding715"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=
=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" styl=
e=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpaddin=
g=3D"0" cellspacing=3D"0"=0Aborder=3D"0" width=3D"100%" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-bo=
dy" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-rul=
e: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</ta=
ble>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-margin712" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row712" class=3D"layout layout-row widget _widget_tex=
t style712" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding712" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div606" class=3D"td_text td_block" val=
ign=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-rule: e=
xactly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12=
px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fa=
mily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #=
084b8a; font-size: 16px; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; c=
olor: #084b8a; font-size: inherit; font-weight: inherit; line-height: inher=
it; text-decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; padding:=
 0; color: #084b8a; font-family: arial; font-style: normal; font-weight: 40=
0; text-align: -webkit-left;"><li style=3D"display: list-item; line-height:=
 inherit; list-style-type: disc; margin: 0; text-align: left; color: #084b8=
a;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; l=
ine-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">Loan Amounts up $500,000</span></li><li=0Astyle=3D"display: list-item=
; line-height: inherit; list-style-type: disc; margin: 0; text-align: left;=
 color: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-w=
eight: bold; line-height: inherit; text-decoration: inherit; font-family: a=
rial;" class=3D"">3mo - 1yr Terms</span></li><li style=3D"display: list-ite=
m; line-height: inherit; list-style-type: disc; margin: 0; text-align: left=
; color: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-=
weight: bold; line-height: inherit; text-decoration: inherit; font-family: =
arial;" class=3D"">Interest Rates Vary</span></li><li style=3D"display: lis=
t-item; line-height: inherit; list-style-type: disc; margin: 0; text-align:=
 left; color: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; font-fam=
ily: arial;" class=3D"">Funds in as little as 24 hours</span></li></ul><br =
style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout=
_table_fed09ef1a754d77b2519dc513c0b05e22ab4106e" valign=3D"top" width=3D"32=
5" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellsp=
acing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin713" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row713" class=3D"layout layo=
ut-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding713" valign=3D"top" style=3D"mso=
-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"t=
op" width=3D"325" style=3D"mso-line-height-rule: exactly;"><img src=3D"http=
s://content.app-us1.com/Rnj5K/2021/10/19/f75a4ad9-80f6-4393-b275-de539fe04f=
af.jpeg?id=3D7317250?r=3D1360999924" alt=3D"" width=3D"259" style=3D"displa=
y: block; border: none; outline: none; width: 259px; opacity: 1; max-width:=
 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin711" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: =
0px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: initial !important; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D=
"layout-row711" class=3D"layout layout-row widget _widget_button style711" =
style=3D"mso-line-height-rule: exactly; background-color: #244df0;"><td id=
=3D"layout-row-padding711" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; background-color: #244df0; padding: 5px;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=
=0Astyle=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_block=
 customizable" valign=3D"top" align=3D"left" width=3D"640" style=3D"mso-lin=
e-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0;=
 outline: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundr=
ect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-micros=
oft-com:office:word" href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/l=
ink-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hb=
g=3D=3D&sig=3DEnbdbMxxThsVQNqXFGNNvwsrutPzdbrsefDXEVHLpG3a&iat=3D1635859663=
&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&=
email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&=
s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D22A32A1A63" style=3D"v-text-anchor=
:middle; width:150px; height:60px; font-weight: bold;" arcsize=3D"6%" strok=
ecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" o:button=3D"t=
rue" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"=
2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Arial; font-si=
ze:18px; font-weight: bold;line-height: 1.1;">APPLY NOW</center> </v:textbo=
x> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfunding.lt.ace=
mlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb2=
0lMkZzYnJ1Z21hbg=3D=3D&sig=3DEnbdbMxxThsVQNqXFGNNvwsrutPzdbrsefDXEVHLpG3a&i=
at=3D1635859663&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eacti=
vehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0=
xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D22A32A1A63" style=
=3D"margin: 0; outline: none; padding: 10px; color: #ffffff; background: #f=
f1414; background-color: #ff1414; border: 1px solid #B5B5B5; border-radius:=
 3px; font-family: Arial; font-size: 18px; display: inline-block; line-heig=
ht: 1.1; text-align: center; text-decoration: none; mso-hide: all;"> <span =
style=3D"color:#ffffff;font-family:Arial;font-size:18px;font-weight: bold;"=
> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;=
 background-color: #ffffff;"><td id=3D"layout-row-margin710" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #f=
fffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: initial !important; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row710" class=3D"=
layout layout-row widget _widget_text style710" style=3D"mso-line-height-ru=
le: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding710" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_di=
v604"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"6=
30" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; paddi=
ng: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height: =
1; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #084b8a; font-size: 16px; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit;"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: #084b8a; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: inh=
erit; font-weight: 400; line-height: inherit; text-decoration: inherit; fon=
t-family: arial; font-style: normal; text-align: -webkit-left;"><span style=
=3D"color: #084b8a; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;" class=3D"">If you h=
ave any questions please do not=0Ahesitate to call. We pride ourselves on a=
lways being available to our clients.</span></div>=0A<div style=3D"margin: =
0; outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weig=
ht: 400; line-height: inherit; text-decoration: inherit; font-family: arial=
; font-style: normal; text-align: -webkit-left;"><br style=3D"color: #084b8=
a;color: #084b8a;"></div>=0A<div style=3D"margin: 0; outline: none; padding=
: 0; color: #084b8a; font-size: inherit; font-weight: 400; line-height: inh=
erit; text-decoration: inherit; font-family: arial; font-style: normal; tex=
t-align: -webkit-left;"><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: inherit; line-height: inherit; text-decoration: inherit; font-=
family: arial;" class=3D"">Sincerely,</span></div>=0A<div style=3D"margin: =
0; outline: none; padding: 0; color: #084b8a; font-size: inherit; font-weig=
ht: 400; line-height: inherit; text-decoration: inherit; font-family: arial=
; font-style: normal; text-align: -webkit-left;"><br style=3D"color: #084b8=
a;color: #084b8a;"></div>=0A<div style=3D"margin: 0; outline: none; padding=
: 0; color: #084b8a; font-size: inherit; font-weight: 400; line-height: inh=
erit; text-decoration: inherit; font-family: arial; font-style: normal; tex=
t-align: -webkit-left;"><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;" clas=
s=3D""><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold=
; line-height: inherit; text-decoration: inherit; font-family: arial;">Samu=
el Brugman</span><span style=3D"color: #084b8a; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit; font-family:=
 arial;"> </span><span style=3D"color: #084b8a; font-size: inherit; font-we=
ight: bold; line-height: inherit; text-decoration: inherit; font-family: ar=
ial;">| </span><span style=3D"color: #084b8a; font-size: inherit; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; font-family: a=
rial;">Funding Manager</span></span></div>=0A <br style=3D"color: #084b8a;"=
></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr id=3D"layout-row709" class=3D"layout layout-row clear-th=
is " style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><t=
d id=3D"layout-row-padding709" valign=3D"top" style=3D"mso-line-height-rule=
: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout_table_3694e68ec795aa9a3466=
4777ee1e98ca9199c680" valign=3D"top" width=3D"425" style=3D"mso-line-height=
-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cl=
ass=3D"layout layout-table " width=3D"425" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin706" v=
align=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr id=3D"layout-row706" class=3D"layout layout-=
row widget _widget_text style706" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row-padd=
ing706" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-c=
olor: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td id=3D"text_div601" class=3D"td_text td_block" va=
lign=3D"top"=0Aalign=3D"left" width=3D"405" style=3D"mso-line-height-rule: =
exactly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 1=
2px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-f=
amily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: =
inherit; font-size: inherit; font-weight: inherit; line-height: inherit; te=
xt-decoration: inherit; text-align: center;"><span style=3D"color: #01df3a;=
 font-size: 18px; font-weight: bold; line-height: inherit; text-decoration:=
 inherit; font-style: normal; text-align: center; font-family: arial;" clas=
s=3D"">Motor City Funding</span><br><span class=3D"" style=3D"color: #fffff=
f; font-size: 15px; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit;"><span style=3D"color: #ffffff; font-size: inherit; font-wei=
ght: inherit; line-height: inherit; text-decoration: inherit; font-style: n=
ormal; text-align: center; font-family: arial;">3000 Town Center</span><br =
style=3D"color: #ffffff;"><span=0Astyle=3D"color: #ffffff; font-size: inher=
it; font-weight: inherit; line-height: inherit; text-decoration: inherit; f=
ont-style: normal; text-align: center; font-family: arial;">Southfield, MI =
48076</span><br style=3D"color: #ffffff;"><span style=3D"color: #ffffff; fo=
nt-size: inherit; font-weight: inherit; line-height: inherit; text-decorati=
on: inherit; font-style: normal; text-align: center; font-family: arial;">O=
: (315) 257-1195</span></span> <br></div>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_=
table_ccde086a93912088522c27fa495144d7041892b0" valign=3D"top" width=3D"225=
" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspa=
cing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"225" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin708" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 8px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: initial !important; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row7=
08" class=3D"layout layout-row widget _widget_button style708" style=3D"mso=
-line-height-rule: exactly; background-color: #244df0;"><td id=3D"layout-ro=
w-padding708" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; back=
ground-color: #244df0; padding: 14px;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"td_button td_block customizabl=
e" valign=3D"top" align=3D"left" width=3D"181" style=3D"mso-line-height-rul=
e: exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outline: no=
ne; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=
=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:off=
ice:word" href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-text-anc=
hor:middle; width:137px; height:60px; font-weight: bold;" arcsize=3D"6%" st=
rokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#57db28" o:button=
=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inse=
t=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Arial; fo=
nt-size:14px; font-weight: bold;line-height: 1.1;">CONTACT US</center> </v:=
textbox> </v:roundrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@motorcity=
funding.com" style=3D"margin: 0; outline: none; padding: 12px; color: #ffff=
ff; background: #57db28; background-color: #57db28; border: 1px solid #B5B5=
B5; border-radius: 3px; font-family: Arial; font-size: 14px; display: inlin=
e-block; line-height: 1.1; text-align: center; text-decoration: none; mso-h=
ide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:14px;f=
ont-weight: bold;"> CONTACT US </span> </a> </div>=0A=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcityfunding.lt.acem=
lnd.com/Prod/link-tracker?nl=3D1&c=3D22&m=3D32&s=3D0ad92c0c4a2ff86eed94873b=
1c9268b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.com&a=3D225362583=
" border=3D"0" width=3D"1" height=3D"1" style=3D"display:block;width:1px!im=
portant;min-width:1px!important;max-width:1px!important;height:1px!importan=
t;border:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D"clear:both;ba=
ckground-color:inherit;background:inherit;min-width:100%;mso-table-lspace:0=
pt;mso-table-rspace:0pt;padding:20px;color:#000000;font-size:11px;font-fami=
ly:arial,helvetica,sans-serif;line-height:140%;line-height:1.4;text-align:c=
enter;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent to: <span style=
=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:norma=
l;text-decoration:none;outline:none;">linux1394-devel@lists.sourceforge.net=
</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://motorcityfundin=
g.activehosted.com/proc.php?nl=3D1&c=3D22&m=3D32&s=3D0ad92c0c4a2ff86eed9487=
3b1c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helvetica=
,sans-serif;font-weight:bold;text-decoration:underline;"><span style=3D"fon=
t-weight:bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09<b=
r>=0A=09=09<br> Motor City Funding, 3000 Town Center, Southfield, United St=
ates=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-133152666061813ba4912601.18085929_=_--



--===============5592507206402314873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5592507206402314873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5592507206402314873==--


