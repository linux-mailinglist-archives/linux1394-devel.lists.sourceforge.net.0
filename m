Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C65444315
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Nov 2021 15:09:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1miGwu-0004tD-GN; Wed, 03 Nov 2021 14:09:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-23-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1miGws-0004t7-G5
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Nov 2021 14:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pxv82zjyksoZw4KffFVJt7F5aK3ghU82nuxbBQvkU24=; b=O2OgS4Gedt+aWsRmrqfj/f+RlI
 fMi40kea5sR5ygOxPu+jVuY54V1bUs4+58KTiCeCRKWSuha40KX90koZ8jwIQxDF8LuHF0SKca/xr
 +ZOLwLyO+prhpMRzG0FSFNi75feLpsyRFjlBXJ81Wz2EOHw9OnBctF9pLxr2AGqg9Fsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pxv82zjyksoZw4KffFVJt7F5aK3ghU82nuxbBQvkU24=; b=TRqcB9U1U7Z2
 nypCSBEt55UhJbr6SoTwNinyFriippRYlpuiE3OVWGRsp5F0cacYkBNL6V8APcw/QZ3407cm3axEL
 2BuC0N+Ris55bYEOfoHj6YOCingY/sRzROAROxt+5Euq52ObOW4iJU1LF5SVvZMYNJl43qbB5jwCB
 TKhM8=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miGwn-0008Er-84
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Nov 2021 14:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=pxv82zjyksoZw4KffFVJt7F5aK3ghU82nuxbBQvkU24=;
 b=cuzAOQij73P0ileQvcA7krhz4Gr4Kt05PQghU44k/nSasvD/rg3oXIJA1UOMvXfCmgxQ7xoPlMhn
 sMYdAhwYNm2Z8qrLccamxfP7QKEQc9RQulXIofsgibQgJYslf01kioWngJT1b+5qoFIzC4L57g2M
 Q4FQBFE1N1Ckg1PQVsQ=
Received: by s15.avl4.acemsrvd.com id hgabv42q2742 for
 <linux1394-devel@lists.sourceforge.net>;
 Wed, 3 Nov 2021 14:08:50 +0000 (envelope-from
 <bounce-2287853-23-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: EIDL Still Open ~ Apply Before the Deadline
Date: Wed, 03 Nov 2021 09:05:58 -0500
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMyMyAsIG00MyAsIHMxOQ
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-23
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211103140850.19472.976652329.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Economic Injury Disaster Loan, SBA 7(a), and Business Lines
    of Credit!   Motor City Funding offers professional and reliable services
    in the financial sector, tailored to suit your individual situation. We offer
    in-depth consultations to understand your financial goals and [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: activehosted.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1miGwn-0008Er-84
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
Content-Type: multipart/mixed; boundary="===============4231083057472943416=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4231083057472943416==
Content-Type: multipart/alternative;
 boundary="_=_swift-104596307861829746ce9c83.33719048_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-104596307861829746ce9c83.33719048_=_
Content-Type: text/plain; charset=utf-8

Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Credit! 

 

Motor City Funding offers professional and reliable services in the
financial sector, tailored to suit your individual situation. We offer
in-depth consultations to understand your financial goals and current
situation and craft a long-term solution that is right for you. 

APPLY TODAY  

ECONOMIC INJURY DISASTER LOAN 

 

* Up to $2,000,000

* 3.75% Interest Rate over 30 years

* No Payments for 18 months

* The EIDL was created by the SBA to help small business meet financial
obligations and operating expenses that could have been met had the
disaster not occurred.

S.B.A. 7(a) 

 

* Interest Rates as Low as 6%

* Up to $5,000,000

* 10 - 30 Year Terms

* Monthly Payments

* Funds in as little as 4-6 weeks

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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=23&amp;m=43&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-104596307861829746ce9c83.33719048_=_
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
@media only screen and (max-width: 320px) { #layout-row736 img { width: 100=
% !important; height: auto !important; max-width: 320px !important; } #layo=
ut-row738 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row746 img { width: 100% !important; height: a=
uto !important; max-width: 320px !important; } #layout-row751 img { width: =
100% !important; height: auto !important; max-width: 320px !important; } #l=
ayout-row756 img { width: 100% !important; height: auto !important; max-wid=
th: 320px !important; } #layout-row761 img { width: 100% !important; height=
: auto !important; max-width: 320px !important; } #layout-row765 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row766 img { width: 100% !important; height: auto !important; max-=
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
only screen and (max-width: 375px) { #layout-row736 img { width: 100% !impo=
rtant; height: auto !important; max-width: 375px !important; } #layout-row7=
38 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row746 img { width: 100% !important; height: auto !im=
portant; max-width: 375px !important; } #layout-row751 img { width: 100% !i=
mportant; height: auto !important; max-width: 339px !important; } #layout-r=
ow756 img { width: 100% !important; height: auto !important; max-width: 375=
px !important; } #layout-row761 img { width: 100% !important; height: auto =
!important; max-width: 375px !important; } #layout-row765 img { width: 100%=
 !important; height: auto !important; max-width: 375px !important; } #layou=
t-row766 img { width: 100% !important; height: auto !important; max-width: =
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
reen and (max-width: 414px) { #layout-row736 img { width: 100% !important; =
height: auto !important; max-width: 414px !important; } #layout-row738 img =
{ width: 100% !important; height: auto !important; max-width: 414px !import=
ant; } #layout-row746 img { width: 100% !important; height: auto !important=
; max-width: 414px !important; } #layout-row751 img { width: 100% !importan=
t; height: auto !important; max-width: 339px !important; } #layout-row756 i=
mg { width: 100% !important; height: auto !important; max-width: 414px !imp=
ortant; } #layout-row761 img { width: 100% !important; height: auto !import=
ant; max-width: 414px !important; } #layout-row765 img { width: 100% !impor=
tant; height: auto !important; max-width: 414px !important; } #layout-row76=
6 img { width: 100% !important; height: auto !important; max-width: 414px !=
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
d (max-width: 667px) { #layout-row736 img { width: 100% !important; height:=
 auto !important; max-width: 667px !important; } #layout-row738 img { width=
: 100% !important; height: auto !important; max-width: 434px !important; } =
#layout-row746 img { width: 100% !important; height: auto !important; max-w=
idth: 667px !important; } #layout-row751 img { width: 100% !important; heig=
ht: auto !important; max-width: 339px !important; } #layout-row756 img { wi=
dth: 100% !important; height: auto !important; max-width: 667px !important;=
 } #layout-row761 img { width: 100% !important; height: auto !important; ma=
x-width: 667px !important; } #layout-row765 img { width: 100% !important; h=
eight: auto !important; max-width: 667px !important; } #layout-row766 img {=
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
d id=3D"layout_table_6ac20afc3e4cd7fad9877d4557e0dabd4c135b41" valign=3D"to=
p" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" class=3D"layout layout-table root-table" width=3D"650" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line-height-rule=
: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin736" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=0A100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row736" class=3D"layout layou=
t-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding736" valign=3D"top" style=3D"mso-=
line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top=
" width=3D"650" style=3D"mso-line-height-rule: exactly;"><img src=3D"https:=
//motorcityfunding.img-us6.com/admin/mcf.png?r=3D544227716" alt=3D"" width=
=3D"300" style=3D"display: block; border: none; outline: none; width: 300px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin737" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ffffff=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row737" class=3D"layou=
t layout-row widget _widget_text style737" style=3D"mso-line-height-rule: e=
xactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout=
-row-padding737" valign=3D"top" style=3D"mso-line-height-rule: exactly; bac=
kground-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=
=3D"mso-line-height-rule: exactly;"><td id=3D"text_div627" class=3D"td_text=
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
margin766" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgroun=
d-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row766" class=3D=
"layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding766" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valig=
n=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7=
bdcea92aec.png?id=3D7317681?r=3D85527902" alt=3D"" width=3D"650" style=3D"d=
isplay: block; border: none; outline: none; width: 650px; opacity: 1; max-w=
idth: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffff=
ff;"><td id=3D"layout-row-margin738" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; background-color: #ffffff;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row738" class=3D"layout layout-row widget _widget_picture " ali=
gn=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row=
-padding738" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line=
-height-rule: exactly;"><img src=3D"https://motorcityfunding.img-us6.com/ad=
min/unnamed.jpg?r=3D1066831452" alt=3D"" width=3D"434" style=3D"display: bl=
ock; border: none; outline: none; width: 434px; opacity: 1; max-width: 100%=
;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin767" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-=
row767" class=3D"layout layout-row widget _widget_spacer " style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding767" valign=3D"top" st=
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
actly; background-color: #ffffff;"><td id=3D"layout-row-margin740" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-c=
olor: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: initial !important; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row740" c=
lass=3D"layout layout-row widget _widget_text style740" style=3D"mso-line-h=
eight-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding74=
0" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div630"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D"left"=
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
layout-row-margin768" valign=3D"top" style=3D"mso-line-height-rule: exactly=
; padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: initial !important; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row768" class=3D"layout layout-row widget _widget_button=
 style768" style=3D"mso-line-height-rule: exactly; background-color: #244df=
0;"><td id=3D"layout-row-padding768" valign=3D"top" style=3D"mso-line-heigh=
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
ZzYnJ1Z21hbg=3D=3D&sig=3D6jLwoATpToFrEwHmfPEsFPA7hfsAtTWEJYyvn5Mmz4Tz&iat=
=3D1635948530&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactive=
hosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xS=
M9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D23A43A1A66" style=3D"=
v-text-anchor:middle; width:142px; height:60px; font-weight: bold;" arcsize=
=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" =
o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:text=
box inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:A=
rial; font-size:14px; font-weight: bold;line-height: 1.1;">APPLY TODAY</cen=
ter> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcit=
yfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd=
3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D6jLwoATpToFrEwHmfPEsFPA7hfsAtTW=
EJYyvn5Mmz4Tz&iat=3D1635948530&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcit=
yfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rh=
DqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D23A4=
3A1A66" style=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; b=
ackground: #ff1414; background-color: #ff1414; border: 1px solid #B5B5B5; b=
order-radius: 3px; font-family: Arial; font-size: 14px; display: inline-blo=
ck; line-height: 1.1; text-align: center; text-decoration: none; mso-hide: =
all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:14px;font-w=
eight: bold;"> APPLY TODAY </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin765"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #=
ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row765" class=3D"layout =
layout-row widget _widget_picture " align=3D"left" style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding765" valign=3D"top" style=3D"m=
so-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top=
" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"http=
s://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92a=
ec.png?id=3D7317681?r=3D1598442381" alt=3D"" width=3D"650" style=3D"display=
: block; border: none; outline: none; width: 650px; opacity: 1; max-width: =
100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin764" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impor=
tant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr id=3D"layout-row764" class=3D"layout layout-row widget _wid=
get_text style764" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0; background-color: #244df0;"><td id=3D"layout-row-padding764" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div649" class=3D"td_text td_block" valign=3D"top"=
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
layout-row762" class=3D"layout layout-row clear-this " style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-paddin=
g762" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-col=
or: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout_table_a5716bc328443d7f10065a7552ae6543dc8f3c73" val=
ign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table c=
ellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-tabl=
e " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td=0Aid=3D"layout-row-margin761" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row76=
1" class=3D"layout layout-row widget _widget_picture " align=3D"center" sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding761" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=
=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/8657e27f-=
7004-40ca-ba8e-9b2b418af77c.png?r=3D66388869" alt=3D"" width=3D"238" style=
=3D"display: block; border: none; outline: none; width: 238px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_ef3d433f2fbc07e60e8c=
938d720bf8c5e4f49bc9" valign=3D"top" width=3D"325" style=3D"mso-line-height=
-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cl=
ass=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin763" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row763" class=3D"layout layout-row widget _widget_spacer =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding763"=
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
ght-rule: exactly;"><td id=3D"layout-row-margin760" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row760" class=3D"layout layout-row widget _widget_tex=
t style760" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding760" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div646" class=3D"td_text td_block" val=
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
"">Up to $2,000,000</span></li><li style=3D"display:=0Alist-item; line-heig=
ht: inherit; list-style-type: disc; margin: 0; color: #084b8a; font-size: 1=
6px;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold;=
 line-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">3.75% Interest Rate over 30 years</span></li><li style=3D"display: li=
st-item; line-height: inherit; list-style-type: disc; margin: 0; color: #08=
4b8a; font-size: 16px;"><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; font-fam=
ily: arial;" class=3D"">No Payments for 18 months</span></li><li style=3D"d=
isplay: list-item; line-height: inherit; list-style-type: disc; margin: 0; =
color: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit; font-family:=
 arial;" class=3D""><span style=3D"color: inherit; font-size: 16px; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit;" class=3D"">=
The=0AEIDL was created by the SBA to help small business meet financial obl=
igations and operating expenses that could have been met had the disaster n=
ot occurred</span>.</span></li></ul><br style=3D"color: #084b8a;"></div>=0A=
 </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso=
-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-ro=
w-margin759" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding=
: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: initial !important; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row759" class=3D"layout layout-row widget _widget_text style759"=
 style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; background-=
color: #244df0;"><td id=3D"layout-row-padding759" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; background-color: #244df0; padding: 5px;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=
=3D"text_div645" class=3D"td_text td_block" valign=3D"top" align=3D"left" w=
idth=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline: no=
ne; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; line=
-height: 1; text-decoration: inherit; font-family: arial;"> <div style=3D"m=
argin: 0; outline: none; padding: 0; color: #ffffff; font-size: 20px; font-=
weight: inherit; line-height: inherit; text-decoration: inherit;"> <div sty=
le=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: inhe=
rit; font-weight: inherit; line-height: inherit; text-decoration: inherit; =
text-align: center;"> <span style=3D"color: #ffffff; font-size: inherit; fo=
nt-weight: 700; line-height: inherit; text-decoration: inherit; font-family=
: arial; font-style: normal;" class=3D"">S.B.A. 7(a)</span> <br style=3D"co=
lor: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row757" class=3D"layout layo=
ut-row clear-this " style=3D"mso-line-height-rule: exactly; background-colo=
r: #ffffff;"><td id=3D"layout-row-padding757" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_f0dc6=
0473a646fd6fdae33d024f88d31aab5a079" valign=3D"top" width=3D"325" style=3D"=
mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text=
-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collap=
se; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-r=
ow-margin758" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr id=3D"layout-row758" class=3D"layout layout-row widge=
t _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layou=
t-row-padding758" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><=
table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td vali=
gn=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly;"><div clas=
s=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; height: 30px;">=
<table cellpadding=3D"0" cellspacing=3D"0"=0Aborder=3D"0" width=3D"100%" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td c=
lass=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"325" style=3D"ms=
o-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin755" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row755" class=3D"layout layout-row w=
idget _widget_text style755" style=3D"mso-line-height-rule: exactly; margin=
: 0; padding: 0;"><td id=3D"layout-row-padding755" valign=3D"top" style=3D"=
mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div642" class=3D"td_=
text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-l=
ine-height-rule: exactly; margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size: 12px; font-weight: inherit; line-height: 1; text-decoration=
: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; pa=
dding: 0; color: #084b8a; font-size: 16px; font-weight: inherit; line-heigh=
t: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: n=
one; padding: 0; color: #084b8a; font-size: inherit; font-weight: inherit; =
line-height: inherit; text-decoration: inherit;"> <ul style=3D"margin: 0 0p=
x 0 40px; padding: 0; color: #084b8a; font-family: arial; font-style: norma=
l; font-weight: 400; text-align: -webkit-left;"><li style=3D"display: list-=
item; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8=
a;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; l=
ine-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">Interest Rates as Low as 6%</span></li><li style=3D"display:=0Alist-i=
tem; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a=
;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; li=
ne-height: inherit; text-decoration: inherit; font-family: arial;" class=3D=
"">Up to $5,000,000</span></li><li style=3D"display: list-item; line-height=
: inherit; list-style-type: disc; margin: 0; color: #084b8a;"><span style=
=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial;" class=3D"">10 - 30 Yea=
r Terms</span></li><li style=3D"display: list-item; line-height: inherit; l=
ist-style-type: disc; margin: 0; color: #084b8a;"><span style=3D"color: #08=
4b8a; font-size: inherit; font-weight: bold; line-height: inherit; text-dec=
oration: inherit; font-family: arial;" class=3D"">Monthly Payments</span></=
li><li style=3D"display: list-item; line-height: inherit; list-style-type: =
disc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; font-size:=
 inherit;=0Afont-weight: bold; line-height: inherit; text-decoration: inher=
it; font-family: arial;" class=3D"">Funds in as little as 4-6 weeks</span><=
/li></ul><br style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td=
 id=3D"layout_table_1321a4fbc5212b8705e3bb8122f7dea57d78dc40" valign=3D"top=
" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td id=3D"layout-row-margin756" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row756" class=3D=
"layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout-row-padding756" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" v=
align=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><img s=
rc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/72d82e8b-4724-4459-9eff-=
032cd1c50677.jpeg?id=3D7317507?r=3D928022526" alt=3D"" width=3D"318" style=
=3D"display: block; border: none; outline: none; width: 318px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"l=
ayout-row-margin754" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: initial !important; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row754" class=3D"layout layout-row widget _widget_text st=
yle754" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; back=
ground-color: #244df0;"><td id=3D"layout-row-padding754" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; background-color: #244df0; padding: 5p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><=
td id=3D"text_div641" class=3D"td_text td_block" valign=3D"top" align=3D"le=
ft" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outlin=
e: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit;=
 line-height: 1; text-decoration: inherit; font-family: arial;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size: 20px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit; text-align: center;"> <span style=3D"color: #ffffff; font-size: inheri=
t; font-weight: 700; line-height: inherit; text-decoration: inherit; font-f=
amily: arial; font-style: normal;" class=3D"">BUSINESS LINE OF CREDIT</span=
> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row752" clas=
s=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exactly;=
 background-color: #ffffff;"><td id=3D"layout-row-padding752" valign=3D"top=
" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><tabl=
e width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"la=
yout_table_aa99abb30d04ffe56a0782322bf9b9164a6b8e90" valign=3D"top" width=
=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d=0Aid=3D"layout-row-margin751" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row751" class=3D"layou=
t layout-row widget _widget_picture " align=3D"center" style=3D"mso-line-he=
ight-rule: exactly;"><td id=3D"layout-row-padding751" valign=3D"top" style=
=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-w=
idth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso=
-line-height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=
=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/2386d3f8-90e6-4b50-a4d8-21=
653389cc8e.png?id=3D7317374?r=3D580748046" alt=3D"" width=3D"200" style=3D"=
display: block; border: none; outline: none; width: 200px; opacity: 1; max-=
width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_65788c30f951ed32c2e983=
60461f385742459368" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin753" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr id=3D"layout-row753" class=3D"layout layout-row widget _widget_spacer " =
style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding753" v=
align=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%=
" border=3D"0"=0Acellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=
=3D"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" styl=
e=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpaddin=
g=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body=
" valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-rule:=
 exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heigh=
t-rule: exactly;"><td id=3D"layout-row-margin750" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row750" class=3D"layout layout-row widget _widget_tex=
t style750" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding750" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div638" class=3D"td_text td_block" val=
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
 inherit; list-style-type: disc; margin: 0; color: #084b8a; text-align: lef=
t;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; l=
ine-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">As low as 3.0% APR</span></li><li=0Astyle=3D"display: list-item; line=
-height: inherit; list-style-type: disc; margin: 0; color: #084b8a; text-al=
ign: left;"><span style=3D"color: #084b8a; font-size: inherit; font-weight:=
 bold; line-height: inherit; text-decoration: inherit; font-family: arial;"=
 class=3D"">2-3 Year Term Payback</span></li><li style=3D"display: list-ite=
m; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a; =
text-align: left;"><span style=3D"color: #084b8a; font-size: inherit; font-=
weight: bold; line-height: inherit; text-decoration: inherit; font-family: =
arial;" class=3D"">Revolving (As you pay back funds they become available a=
gain)</span></li><li style=3D"display: list-item; line-height: inherit; lis=
t-style-type: disc; margin: 0; color: #084b8a; text-align: left;"><span sty=
le=3D"color: #084b8a; font-size: inherit; font-weight: bold; line-height: i=
nherit; text-decoration: inherit; font-family: arial;" class=3D"">Lower rat=
es than personal credit cards</span></li></ul><br style=3D"color:=0A#084b8a=
;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-margin749" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row749" class=3D"layout layout-row widget _widget_t=
ext style749" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0=
; background-color: #244df0;"><td id=3D"layout-row-padding749" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; background-color: #244df0; paddi=
ng: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule: exac=
tly;"><td id=3D"text_div637" class=3D"td_text td_block" valign=3D"top" alig=
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
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row747" class=3D"=
layout layout-row clear-this " style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-padding747" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_=
table_88bd92cbf8475f331730e53811053cc1a1d1fecd" valign=3D"top" width=3D"325=
" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspa=
cing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin748" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row748" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding748" valign=3D"top" style=3D"mso-line-height-rule:=
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
n745" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"=
><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" sty=
le=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-co=
llapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row745" class=3D"layout =
layout-row widget _widget_text style745" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding745" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div634" c=
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
=0A</td>=0A<td id=3D"layout_table_acafbeb9fdf3c5686c98fa258a91c78278aa4af6"=
 valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin746" valign=3D"top" style=3D"=
mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
746" class=3D"layout layout-row widget _widget_picture " align=3D"center" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding746" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" ali=
gn=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: e=
xactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/f75a4ad9-=
80f6-4393-b275-de539fe04faf.jpeg?id=3D7317250?r=3D439272578" alt=3D"" width=
=3D"259" style=3D"display: block; border: none; outline: none; width: 259px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff=
;"><td id=3D"layout-row-margin744" valign=3D"top" style=3D"mso-line-height-=
rule: exactly; padding: 0px; background-color: #ffffff;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !im=
portant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row744" class=3D"layout layout-row widget _=
widget_button style744" style=3D"mso-line-height-rule: exactly; background-=
color: #244df0;"><td id=3D"layout-row-padding744" valign=3D"top" style=3D"m=
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
ding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5=
wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D6jLwoATpToFrEwHmfPEsFPA7hfsAtTWEJYy=
vn5Mmz4Tz&iat=3D1635948530&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfun=
ding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%=
2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D23A43A1A=
66" style=3D"v-text-anchor:middle; width:150px; height:60px; font-weight: b=
old;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=
=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"fal=
se" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;=
font-family:Arial; font-size:18px; font-weight: bold;line-height: 1.1;">APP=
LY NOW</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https=
://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUz=
QSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D6jLwoATpToFrEwHmfPEs=
FPA7hfsAtTWEJYyvn5Mmz4Tz&iat=3D1635948530&a=3D%7C%7C225362583%7C%7C&account=
=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0=
DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268=
b7&i=3D23A43A1A66" style=3D"margin: 0; outline: none; padding: 10px; color:=
 #ffffff; background: #ff1414; background-color: #ff1414; border: 1px solid=
 #B5B5B5; border-radius: 3px; font-family: Arial; font-size: 18px; display:=
 inline-block; line-height: 1.1; text-align: center; text-decoration: none;=
 mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:=
18px;font-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin743" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: =
5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: initial !important; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D=
"layout-row743" class=3D"layout layout-row widget _widget_text style743" st=
yle=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"lay=
out-row-padding743" valign=3D"top" style=3D"mso-line-height-rule: exactly; =
padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"text_div632"=0Aclass=3D"td_text td_block" valign=3D"top" =
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
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row742" class=3D"l=
ayout layout-row clear-this " style=3D"mso-line-height-rule: exactly; backg=
round-color: #ffffff;"><td id=3D"layout-row-padding742" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_t=
able_a28ec4787110fdf2ae95842bbc3332895a6d6de7" valign=3D"top" width=3D"425"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"425" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=
=3D"layout-row-margin739" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: initial !important; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row7=
39" class=3D"layout layout-row widget _widget_text style739" style=3D"mso-l=
ine-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0;=
"><td id=3D"layout-row-padding739" valign=3D"top" style=3D"mso-line-height-=
rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div629" cl=
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
=0A</td>=0A<td id=3D"layout_table_9cda2771843cdf94224b321dd89f858e3f2d0c44"=
 valign=3D"top" width=3D"225" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"225" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin741" valign=3D"top" style=3D"=
mso-line-height-rule: exactly; padding: 8px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row741" class=3D"layout layout-row widget _widget_but=
ton style741" style=3D"mso-line-height-rule: exactly; background-color: #24=
4df0;"><td id=3D"layout-row-padding741" valign=3D"top"=0Astyle=3D"mso-line-=
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
://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=3D23&m=3D43&s=
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
=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D1&c=3D23&m=3D43&=
s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11px;f=
ont-family:arial,helvetica,sans-serif;font-weight:bold;text-decoration:unde=
rline;"><span style=3D"font-weight:bold;text-decoration:underline;">Unsubsc=
ribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town Cen=
ter, Southfield, United States=0A=09</center>=0A</div>=0A<br clear=3D"all" =
/></body>=0A</html>
--_=_swift-104596307861829746ce9c83.33719048_=_--



--===============4231083057472943416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4231083057472943416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4231083057472943416==--


