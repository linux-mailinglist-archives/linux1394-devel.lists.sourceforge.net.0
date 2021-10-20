Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB0E4350C7
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Oct 2021 18:55:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mdErz-0001Fa-Ew; Wed, 20 Oct 2021 16:55:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <bounce-2287853-4-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
 id 1mdErw-0001FH-ED
 for linux1394-devel@lists.sourceforge.net; Wed, 20 Oct 2021 16:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5MHzNx7U/i6bWrEmVkIAHFnmMSJ2FADIS8Bb07fBaxk=; b=ODGLmKdI2wc2rEeu9+8Pb/Pj4m
 Vyxe0NfFbOzk+f7zY7ZANSaEXk70haKBmvyPplWyXSGis8gDEEkf5wzkjCuGAuR1gXm7vnuN1UNVC
 +VYz+BmD2ngborxgAVcIM44BYk3h1JFmuQzpz6yW7iIJ4GrufgmEcST4X+TYV0m7iP/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=5MHzNx7U/i6bWrEmVkIAHFnmMSJ2FADIS8Bb07fBaxk=; b=fpcMoyOMruyW
 4dEu3miU9iaDEQpd6VTvTp7gb3ht4LFK5fBnbsICqvjJqmGkKyVhiDZUE4zVEeMed7su8gs4ZnZOH
 x+6Us+bNTaUnhtGI7qdGY1EQIvW7G4O9sxN/uf/87S8MppEzlKSOpIDRcUIPJdQA2RzPig/H0OvGE
 M4oWo=;
Received: from s14.avl3.acemsrvc.com ([192.92.97.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdErs-00032v-N8
 for linux1394-devel@lists.sourceforge.net; Wed, 20 Oct 2021 16:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s14.avl3.acemsrvc.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com;
 bh=5MHzNx7U/i6bWrEmVkIAHFnmMSJ2FADIS8Bb07fBaxk=;
 b=OdStFd7ypeqV7hF1LBECdTSJNs+eQfqeWZGXZXeV5+dk28VbCy/nmD81qswO6WjIcZhYNZdwBy/W
 jEjGMYgfpWaXz3aMjQ5FFzr4m7c2c+3R4dltxXe/Sp4rx/fYOcON6oSRT0S7i48VAIPrAjS/LK3N
 lgSKeXMEZnLuGZFxnvY=
Received: by s14.avl3.acemsrvc.com id he14ua2t56g2 for
 <linux1394-devel@lists.sourceforge.net>;
 Wed, 20 Oct 2021 16:24:51 +0000 (envelope-from
 <bounce-2287853-4-17611-linux1394-devel=lists.sourceforge.net@s14.avl3.acemsrvc.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA Still Accepting EIDL Applications!
Date: Wed, 20 Oct 2021 11:21:11 -0500
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s14.avl3.acemsrvc.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM0ICwgbTggLCBzMg
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-4
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211020162451.29808.1231687964.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Economic Injury Disaster Loan, SBA 7(a), and Business Lines
    of Credit!   Premium Merchant Funding offers professional and reliable services
    in the financial sector, tailored to suit your individual situation. We offer
    in-depth consultations to understand your financial goa [...] 
 
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
                             [URIs: acemsrvc.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mdErs-00032v-N8
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
Content-Type: multipart/mixed; boundary="===============5123147265025199202=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============5123147265025199202==
Content-Type: multipart/alternative;
 boundary="_=_swift-1658624129617041f7389745.43267076_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-1658624129617041f7389745.43267076_=_
Content-Type: text/plain; charset=utf-8

Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Credit! 

 

Premium Merchant Funding offers professional and reliable services in
the financial sector, tailored to suit your individual situation. We
offer in-depth consultations to understand your financial goals and
current situation and craft a long-term solution that is right for you. 

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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=4&amp;m=8&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-1658624129617041f7389745.43267076_=_
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
ow77 img { width: 100% !important; height: auto !important; max-width: 320p=
x !important; } #layout-row79 img { width: 100% !important; height: auto !i=
mportant; max-width: 320px !important; } #layout-row87 img { width: 100% !i=
mportant; height: auto !important; max-width: 320px !important; } #layout-r=
ow92 img { width: 100% !important; height: auto !important; max-width: 320p=
x !important; } #layout-row97 img { width: 100% !important; height: auto !i=
mportant; max-width: 320px !important; } #layout-row102 img { width: 100% !=
important; height: auto !important; max-width: 320px !important; } #layout-=
row106 img { width: 100% !important; height: auto !important; max-width: 32=
0px !important; } #layout-row107 img { width: 100% !important; height: auto=
 !important; max-width: 320px !important; } table, tbody, td, .divbody { di=
splay: table !important; width: 100% !important; max-width: 100%=0A!importa=
nt; } .td_rss .rss-item img.iphone_large_image { width: auto !important; } =
u + .body { display: table !important; width: 100vw !important; min-width: =
100vw !important; } u + .body table { display: table !important; width: 100=
% !important; min-width: 100% !important; } u + .body td { display: block !=
important; width: 100% !important; min-width: 100% !important; } u + .body =
img { display: inline-block !important; margin: auto !important; width: aut=
o !important; vertical-align: bottom !important; } u + .body center { displ=
ay: block !important; margin: auto !important; width: 100% !important; min-=
width: 100% !important; text-align: center !important; } u + .body table._a=
c_social_table, u + .body table._ac_social_table td, u + .body table._ac_so=
cial_table div, u + .body table._ac_social_table a { display: inline-block =
!important; margin: auto !important; width: auto !important; min-width: aut=
o !important; text-align: center !important; } u + .body=0Atable._ac_social=
_table img { display: inline-block !important; margin: auto !important; wid=
th: 32px !important; min-width: 32px !important; max-width: 32px !important=
; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row77 img { w=
idth: 100% !important; height: auto !important; max-width: 375px !important=
; } #layout-row79 img { width: 100% !important; height: auto !important; ma=
x-width: 375px !important; } #layout-row87 img { width: 100% !important; he=
ight: auto !important; max-width: 375px !important; } #layout-row92 img { w=
idth: 100% !important; height: auto !important; max-width: 339px !important=
; } #layout-row97 img { width: 100% !important; height: auto !important; ma=
x-width: 375px !important; } #layout-row102 img { width: 100% !important; h=
eight: auto !important; max-width: 375px !important; } #layout-row106 img {=
 width: 100% !important; height: auto !important; max-width: 375px !importa=
nt; } #layout-row107 img { width: 100% !important; height: auto !important;=
 max-width: 375px !important; } table, tbody, td, .divbody { display: table=
 !important; width: 100% !important; max-width: 100% !important; } .td_rss =
.rss-item=0Aimg.iphone_large_image { width: auto !important; } u + .body { =
display: table !important; width: 100vw !important; min-width: 100vw !impor=
tant; } u + .body table { display: table !important; width: 100% !important=
; min-width: 100% !important; } u + .body td { display: block !important; w=
idth: 100% !important; min-width: 100% !important; } u + .body img { displa=
y: inline-block !important; margin: auto !important; width: auto !important=
; vertical-align: bottom !important; } u + .body center { display: block !i=
mportant; margin: auto !important; width: 100% !important; min-width: 100% =
!important; text-align: center !important; } u + .body table._ac_social_tab=
le, u + .body table._ac_social_table td, u + .body table._ac_social_table d=
iv, u + .body table._ac_social_table a { display: inline-block !important; =
margin: auto !important; width: auto !important; min-width: auto !important=
; text-align: center !important; } u + .body table._ac_social_table img { d=
isplay:=0Ainline-block !important; margin: auto !important; width: 32px !im=
portant; min-width: 32px !important; max-width: 32px !important; }=0A}=0A@m=
edia only screen and (max-width: 414px) { #layout-row77 img { width: 100% !=
important; height: auto !important; max-width: 414px !important; } #layout-=
row79 img { width: 100% !important; height: auto !important; max-width: 414=
px !important; } #layout-row87 img { width: 100% !important; height: auto !=
important; max-width: 414px !important; } #layout-row92 img { width: 100% !=
important; height: auto !important; max-width: 339px !important; } #layout-=
row97 img { width: 100% !important; height: auto !important; max-width: 414=
px !important; } #layout-row102 img { width: 100% !important; height: auto =
!important; max-width: 414px !important; } #layout-row106 img { width: 100%=
 !important; height: auto !important; max-width: 414px !important; } #layou=
t-row107 img { width: 100% !important; height: auto !important; max-width: =
414px !important; } table, tbody, td, .divbody { display: table !important;=
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
reen and (max-width: 667px) { #layout-row77 img { width: 100% !important; h=
eight: auto !important; max-width: 667px !important; } #layout-row79 img { =
width: 100% !important; height: auto !important; max-width: 434px !importan=
t; } #layout-row87 img { width: 100% !important; height: auto !important; m=
ax-width: 667px !important; } #layout-row92 img { width: 100% !important; h=
eight: auto !important; max-width: 339px !important; } #layout-row97 img { =
width: 100% !important; height: auto !important; max-width: 667px !importan=
t; } #layout-row102 img { width: 100% !important; height: auto !important; =
max-width: 667px !important; } #layout-row106 img { width: 100% !important;=
 height: auto !important; max-width: 667px !important; } #layout-row107 img=
 { width: 100% !important; height: auto !important; max-width: 667px !impor=
tant; } table, tbody, td, .divbody { display: table !important; width: 100%=
 !important; max-width: 100% !important; } .td_rss .rss-item=0Aimg.iphone_l=
arge_image { width: auto !important; } u + .body { display: table !importan=
t; width: 100vw !important; min-width: 100vw !important; } u + .body table =
{ display: table !important; width: 100% !important; min-width: 100% !impor=
tant; } u + .body td { display: block !important; width: 100% !important; m=
in-width: 100% !important; } u + .body img { display: inline-block !importa=
nt; margin: auto !important; width: auto !important; vertical-align: bottom=
 !important; } u + .body center { display: block !important; margin: auto !=
important; width: 100% !important; min-width: 100% !important; text-align: =
center !important; } u + .body table._ac_social_table, u + .body table._ac_=
social_table td, u + .body table._ac_social_table div, u + .body table._ac_=
social_table a { display: inline-block !important; margin: auto !important;=
 width: auto !important; min-width: auto !important; text-align: center !im=
portant; } u + .body table._ac_social_table img { display:=0Ainline-block !=
important; margin: auto !important; width: 32px !important; min-width: 32px=
 !important; max-width: 32px !important; }=0A} </style><!--[if !mso]><!-- w=
ebfonts --><!--<![endif]--><!--[if lt mso 12]> <![endif]--><!--[if gte mso =
9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowPNG/> <o:PixelsPerInch>96</o=
:PixelsPerInch> </o:OfficeDocumentSettings>=0A</xml>=0A<![endif]--></head><=
body id=3D"ac-designer" class=3D"body" style=3D"font-family: Arial; line-he=
ight: 1.1; margin: 0px; background-color: #ffffff; width: 100%; text-align:=
 center;"><div class=3D"divbody" style=3D"margin: 0px; outline: none; paddi=
ng: 0px; color: #000000; font-family: arial; line-height: 1.1; width: 100%;=
 background-color: #ffffff; background: #ffffff; text-align: center;"><tabl=
e class=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"=
 width=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: =
#ffffff; background: #ffffff;"><tr style=3D"mso-line-height-rule: exactly;"=
><td align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-line-heigh=
t-rule: exactly;"><table class=3D"template-table" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#ffffff" style=3D"-ms-tex=
t-size-adjust: auto;=0A-webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-r=
space: 0pt; max-width: 650px;"><tr style=3D"mso-line-height-rule: exactly;"=
><td id=3D"layout_table_ae52bbf7908e1b736becc90beb3bd7a4455687fc" valign=3D=
"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly=
; background-color: #ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" bo=
rder=3D"0" class=3D"layout layout-table root-table" width=3D"650" style=3D"=
-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse=
: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-ta=
ble-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line-height-r=
ule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin77" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fff=
fff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=0Abo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row77" class=3D"layout layo=
ut-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding77" valign=3D"top" style=3D"mso-=
line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top=
" width=3D"650" style=3D"mso-line-height-rule: exactly;"><img src=3D"https:=
//motorcityfunding.img-us6.com/admin/mcf.png?r=3D253673060" alt=3D"" width=
=3D"300" style=3D"display: block; border: none; outline: none; width: 300px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin78" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: initial !important; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row78" class=3D"layout =
layout-row widget _widget_text style78" style=3D"mso-line-height-rule: exac=
tly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-ro=
w-padding78" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgro=
und-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"ms=
o-line-height-rule: exactly;"><td id=3D"text_div68" class=3D"td_text td_blo=
ck" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-ru=
le: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-siz=
e: 12px; font-weight: inherit; line-height: 1; text-decoration: inherit; fo=
nt-family: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; col=
or: inherit; font-size: 20px; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding:=
 0; color: #ffffff; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; text-align: center;"> <span style=3D"col=
or: #ffffff; font-size: inherit; font-weight: bold; line-height: inherit; t=
ext-decoration: inherit; font-family: arial; font-style: normal;" class=3D"=
">Economic Injury Disaster Loan, SBA 7(a), and Business Lines of Credit!</s=
pan> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-heig=
ht-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin10=
7" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color:=
 #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row107" class=3D"layout =
layout-row widget _widget_picture " align=3D"left" style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding107" valign=3D"top" style=3D"m=
so-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top=
" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"http=
s://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92a=
ec.png?id=3D7317681?r=3D1221873441" alt=3D"" width=3D"650" style=3D"display=
: block; border: none; outline: none; width: 650px; opacity: 1; max-width: =
100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin79" valign=3D"top" style=3D"mso-line-height-rule=
: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row79" class=3D"layout layout-row widget _widget_picture " align=3D"cen=
ter" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding7=
9" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" =
align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-ru=
le: exactly;"><img src=3D"https://motorcityfunding.img-us6.com/admin/unname=
d.jpg?r=3D993727335" alt=3D"" width=3D"434" style=3D"display: block; border=
: none; outline: none; width: 434px; opacity: 1; max-width: 100%;"></td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"=
mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout=
-row-margin108" valign=3D"top" style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row108" cla=
ss=3D"layout layout-row widget _widget_spacer " style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout-row-padding108" valign=3D"top" style=3D"mso-=
line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td valign=3D"top" height=3D"10" style=3D"mso-line-he=
ight-rule: exactly;"><div class=3D"spacer"=0Astyle=3D"margin: 0; outline: n=
one; padding: 0; height: 10px;"><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D=
"10" width=3D"650" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A<=
/tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; backgroun=
d-color: #ffffff;"><td id=3D"layout-row-margin81" valign=3D"top" style=3D"m=
so-line-height-rule: exactly; padding: 5px; background-color: #ffffff;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspac=
e: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row81" class=3D"layout lay=
out-row widget _widget_text style81" style=3D"mso-line-height-rule: exactly=
; margin: 0; padding: 0;"><td id=3D"layout-row-padding81" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div71"=0Aclass=
=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"=
mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color:=
 inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-decor=
ation: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: non=
e; padding: 0; color: #084b8a; font-size: 16px; font-weight: inherit; line-=
height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #084b8a; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; text-align: center;"> =
<span style=3D"color: #084b8a; font-size: inherit; font-weight: 700; line-h=
eight: inherit; text-decoration: inherit; font-family: arial; font-style: n=
ormal;" class=3D"">Premium Merchant Funding offers professional and reliabl=
e services in the financial sector, tailored to suit your individual situat=
ion. We offer in-depth consultations to understand your financial goals and=
 current situation=0Aand craft a long-term solution that is right for you.<=
/span> <br style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin=
106" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-colo=
r: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row106" class=3D"layou=
t layout-row widget _widget_picture " align=3D"left" style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-padding106" valign=3D"top" style=3D=
"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-li=
ne-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"t=
op" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"ht=
tps://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea9=
2aec.png?id=3D7317681?r=3D1772358030" alt=3D"" width=3D"650" style=3D"displ=
ay: block; border: none; outline: none; width: 650px; opacity: 1; max-width=
: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"=
><td id=3D"layout-row-margin105" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impo=
rtant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row105" class=3D"layout layout-row widget _wi=
dget_text style105" style=3D"mso-line-height-rule: exactly; margin: 0; padd=
ing: 0; background-color: #244df0;"><td id=3D"layout-row-padding105" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div90" class=3D"td_text td_block" valign=3D"top" =
align=3D"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin=
: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-weigh=
t: inherit; line-height: 1; text-decoration: inherit; font-family: arial;">=
 <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-s=
ize: 20px; font-weight: inherit; line-height: inherit; text-decoration: inh=
erit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff;=
 font-size: inherit; font-weight: inherit; line-height: inherit; text-decor=
ation: inherit; text-align: center;"> <span style=3D"color: #ffffff; font-s=
ize: inherit; font-weight: 700; line-height: inherit; text-decoration: inhe=
rit; font-family: arial; font-style: normal;" class=3D"">ECONOMIC INJURY DI=
SASTER LOAN</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"=
layout-row103" class=3D"layout layout-row clear-this " style=3D"mso-line-he=
ight-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-paddin=
g103" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-col=
or: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td id=3D"layout_table_a02782d2758e2630ab5c97801dd7f818b4b3e06d" val=
ign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table c=
ellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-tabl=
e " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td=0Aid=3D"layout-row-margin102" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row10=
2" class=3D"layout layout-row widget _widget_picture " align=3D"center" sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding102" vali=
gn=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=
=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/10/19/8657e27f-=
7004-40ca-ba8e-9b2b418af77c.png?r=3D302891209" alt=3D"" width=3D"238" style=
=3D"display: block; border: none; outline: none; width: 238px; opacity: 1; =
max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_7bbe37328bbbf1c4dd68=
60f9c6f15b3b1d89d915" valign=3D"top" width=3D"325" style=3D"mso-line-height=
-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cl=
ass=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin104" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row104" class=3D"layout layout-row widget _widget_spacer =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding104"=
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
ght-rule: exactly;"><td id=3D"layout-row-margin101" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row101" class=3D"layout layout-row widget _widget_tex=
t style101" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"=
><td id=3D"layout-row-padding101" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"text_div87" class=3D"td_text td_block" vali=
gn=3D"top" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-rule: ex=
actly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12p=
x; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fam=
ily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #0=
84b8a; font-size: 14px; font-weight: inherit; line-height: inherit; text-de=
coration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; co=
lor: #084b8a; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; padding: =
0; color: #084b8a; font-family: arial; font-style: normal; font-weight: 400=
; text-align: -webkit-left;"><li style=3D"display: list-item; line-height: =
inherit; list-style-type: disc; margin: 0; color: #084b8a; font-size: 16px;=
"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; lin=
e-height: inherit; text-decoration: inherit; font-family: arial;" class=3D"=
">Up to $500,000</span></li><li style=3D"display:=0Alist-item; line-height:=
 inherit; list-style-type: disc; margin: 0; color: #084b8a; font-size: 16px=
;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: bold; li=
ne-height: inherit; text-decoration: inherit; font-family: arial;" class=3D=
"">3.75% Interest Rate over 30 years</span></li><li style=3D"display: list-=
item; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8=
a;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: inherit=
; line-height: inherit; text-decoration: inherit; font-family: arial;" clas=
s=3D""><span style=3D"color: inherit; font-size: 16px; font-weight: inherit=
; line-height: inherit; text-decoration: inherit;" class=3D"">The EIDL was =
created by the SBA to help small business meet financial obligations and op=
erating expenses that could have been met had the disaster not occurred</sp=
an>.</span></li></ul><br style=3D"color: #084b8a;"></div>=0A </div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin100" =
valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; backgr=
ound-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
100" class=3D"layout layout-row widget _widget_text style100" style=3D"mso-=
line-height-rule: exactly; margin: 0; padding: 0; background-color: #244df0=
;"><td id=3D"layout-row-padding100" valign=3D"top" style=3D"mso-line-height=
-rule: exactly; background-color: #244df0; padding: 5px;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div86" =
class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; c=
olor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-=
decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline=
: none; padding: 0; color: #ffffff; font-size: 20px; font-weight: inherit; =
line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; =
outline: none; padding: 0; color: #ffffff; font-size: inherit; font-weight:=
 inherit; line-height: inherit; text-decoration: inherit; text-align: cente=
r;"> <span style=3D"color: #ffffff; font-size: inherit; font-weight: 700; l=
ine-height: inherit; text-decoration: inherit; font-family: arial; font-sty=
le: normal;" class=3D"">S.B.A. 7(a)</span> <br style=3D"color: #ffffff;"></=
div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A<tr id=3D"layout-row98" class=3D"layout layout-row clear-this "=
 style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-padding98" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wid=
th: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout_table_a574146e6b7c5e35e051613c5=
bb631a896ca310e" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule=
: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=
=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin99"=0Avalig=
n=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr id=3D"layout-row99" class=3D"layout layout-row widget _widget_spacer " s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding99" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=3D"=
30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" style=3D=
"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpadding=3D=
"0" cellspacing=3D"0" border=3D"0" width=3D"100%"=0Astyle=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body" =
valign=3D"top" height=3D"30" width=3D"325" style=3D"mso-line-height-rule: e=
xactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"layout-row-margin96" valign=3D"top" style=3D"mso-=
line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; =
-webkit-text-size-adjust: 100%; border-collapse: initial !important; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr id=3D"layout-row96" class=3D"layout layout-row widget _widget_text styl=
e96" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding96" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"text_div83" class=3D"td_text td_block" valign=3D"to=
p" align=3D"left"=0Awidth=3D"305" style=3D"mso-line-height-rule: exactly; m=
argin: 0; outline: none; padding: 0; color: inherit; font-size: 12px; font-=
weight: inherit; line-height: 1; text-decoration: inherit; font-family: ari=
al;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; f=
ont-size: 16px; font-weight: inherit; line-height: inherit; text-decoration=
: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #08=
4b8a; font-size: inherit; font-weight: inherit; line-height: inherit; text-=
decoration: inherit;"> <ul style=3D"margin: 0 0px 0 40px; padding: 0; color=
: #084b8a; font-family: arial; font-style: normal; font-weight: 400; text-a=
lign: -webkit-left;"><li style=3D"display: list-item; line-height: inherit;=
 list-style-type: disc; margin: 0; color: #084b8a;"><span style=3D"color: #=
084b8a; font-size: inherit; font-weight: bold; line-height: inherit; text-d=
ecoration: inherit; font-family: arial;" class=3D"">Interest Rates as Low a=
s 6%</span></li><li style=3D"display:=0Alist-item; line-height: inherit; li=
st-style-type: disc; margin: 0; color: #084b8a;"><span style=3D"color: #084=
b8a; font-size: inherit; font-weight: bold; line-height: inherit; text-deco=
ration: inherit; font-family: arial;" class=3D"">Up to $5,000,000</span></l=
i><li style=3D"display: list-item; line-height: inherit; list-style-type: d=
isc; margin: 0; color: #084b8a;"><span style=3D"color: #084b8a; font-size: =
inherit; font-weight: bold; line-height: inherit; text-decoration: inherit;=
 font-family: arial;" class=3D"">10 - 30 Year Terms</span></li><li style=3D=
"display: list-item; line-height: inherit; list-style-type: disc; margin: 0=
; color: #084b8a;"><span style=3D"color: #084b8a; font-size: inherit; font-=
weight: bold; line-height: inherit; text-decoration: inherit; font-family: =
arial;" class=3D"">Monthly Payments</span></li><li style=3D"display: list-i=
tem; line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a=
;"><span style=3D"color: #084b8a; font-size: inherit;=0Afont-weight: bold; =
line-height: inherit; text-decoration: inherit; font-family: arial;" class=
=3D"">Funds in as little as 2 weeks</span></li></ul><br style=3D"color: #08=
4b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_2beda6164794=
b58142bdbf709658ae8696d4c90a" valign=3D"top" width=3D"325" style=3D"mso-lin=
e-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margi=
n97" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr id=3D"layout-row97" class=3D"layout layout-row widget _widge=
t_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding97" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%"=0Aborder=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"325" styl=
e=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.co=
m/Rnj5K/2021/10/19/72d82e8b-4724-4459-9eff-032cd1c50677.jpeg?id=3D7317507?r=
=3D2032135960" alt=3D"" width=3D"318" style=3D"display: block; border: none=
; outline: none; width: 318px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin95" valign=3D=
"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-colo=
r: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: initial !important; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row95" class=
=3D"layout layout-row widget _widget_text style95" style=3D"mso-line-height=
-rule: exactly; margin: 0; padding: 0; background-color: #244df0;"><td id=
=3D"layout-row-padding95" valign=3D"top" style=3D"mso-line-height-rule: exa=
ctly; background-color: #244df0; padding: 5px;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=
=0Astyle=3D"mso-line-height-rule: exactly;"><td id=3D"text_div82" class=3D"=
td_text td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-=
line-height-rule: exactly; margin: 0; outline: none; padding: 0; color: inh=
erit; font-size: 12px; font-weight: inherit; line-height: 1; text-decoratio=
n: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; p=
adding: 0; color: #ffffff; font-size: 20px; font-weight: inherit; line-heig=
ht: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: =
none; padding: 0; color: #ffffff; font-size: inherit; font-weight: inherit;=
 line-height: inherit; text-decoration: inherit; text-align: center;"> <spa=
n style=3D"color: #ffffff; font-size: inherit; font-weight: 700; line-heigh=
t: inherit; text-decoration: inherit; font-family: arial; font-style: norma=
l;" class=3D"">BUSINESS LINE OF CREDIT</span> <br style=3D"color: #ffffff;"=
></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr id=3D"layout-row93" class=3D"layout layout-row clear-thi=
s " style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td=
 id=3D"layout-row-padding93" valign=3D"top" style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout_table_2ffa7ab151be4e635a4a10=
85be9611f666656c56" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin92"=0Avali=
gn=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-s=
ize: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;">=
<tr id=3D"layout-row92" class=3D"layout layout-row widget _widget_picture "=
 align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-padding92" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><ta=
ble width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td clas=
s=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"mso-l=
ine-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/=
2021/10/19/2386d3f8-90e6-4b50-a4d8-21653389cc8e.png?id=3D7317374?r=3D879899=
698" alt=3D"" width=3D"200" style=3D"display: block; border: none; outline:=
 none; width: 200px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"=
layout_table_de9244b43288c3ce96799569525193307c384bd2" valign=3D"top" width=
=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout-row-margin94" valign=3D"top" style=3D"mso-line-height-rule: =
exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row94" class=3D"layout l=
ayout-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;">=
<td id=3D"layout-row-padding94" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly;"><table width=3D"100%" border=3D"0"=0Acellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: ex=
actly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exa=
ctly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0;=
 height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" wid=
th=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"32=
5" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=
=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<=
/tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-ma=
rgin91" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row91" class=3D"layout=
 layout-row widget _widget_text style91" style=3D"mso-line-height-rule: exa=
ctly; margin: 0; padding: 0;"><td id=3D"layout-row-padding91" valign=3D"top=
" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div79" cla=
ss=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"305" style=
=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; co=
lor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-d=
ecoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline:=
 none; padding: 0; color: #084b8a; font-size: 16px; font-weight: inherit; l=
ine-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; o=
utline: none; padding: 0; color: #084b8a; font-size: inherit; font-weight: =
inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"mar=
gin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial; font-sty=
le: normal; font-weight: 400; text-align: -webkit-left;"><li style=3D"displ=
ay: list-item; line-height: inherit; list-style-type: disc; margin: 0; colo=
r: #084b8a; text-align: left;"><span style=3D"color: #084b8a; font-size: in=
herit; font-weight: bold; line-height: inherit; text-decoration: inherit; f=
ont-family: arial;" class=3D"">As low as 3.0% APR</span></li><li=0Astyle=3D=
"display: list-item; line-height: inherit; list-style-type: disc; margin: 0=
; color: #084b8a; text-align: left;"><span style=3D"color: #084b8a; font-si=
ze: inherit; font-weight: bold; line-height: inherit; text-decoration: inhe=
rit; font-family: arial;" class=3D"">2-3 Year Term Payback</span></li><li s=
tyle=3D"display: list-item; line-height: inherit; list-style-type: disc; ma=
rgin: 0; color: #084b8a; text-align: left;"><span style=3D"color: #084b8a; =
font-size: inherit; font-weight: bold; line-height: inherit; text-decoratio=
n: inherit; font-family: arial;" class=3D"">Revolving (As you pay back fund=
s they become available again)</span></li><li style=3D"display: list-item; =
line-height: inherit; list-style-type: disc; margin: 0; color: #084b8a; tex=
t-align: left;"><span style=3D"color: #084b8a; font-size: inherit; font-wei=
ght: bold; line-height: inherit; text-decoration: inherit; font-family: ari=
al;" class=3D"">Lower rates than personal credit cards</span></li></ul><br =
style=3D"color:=0A#084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background=
-color: #ffffff;"><td id=3D"layout-row-margin90" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly; padding: 5px; background-color: #ffffff;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row90" class=3D"layout layout=
-row widget _widget_text style90" style=3D"mso-line-height-rule: exactly; m=
argin: 0; padding: 0; background-color: #244df0;"><td id=3D"layout-row-padd=
ing90" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-co=
lor: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr=0Astyle=3D"mso-line=
-height-rule: exactly;"><td id=3D"text_div78" class=3D"td_text td_block" va=
lign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: ex=
actly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 12p=
x; font-weight: inherit; line-height: 1; text-decoration: inherit; font-fam=
ily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #f=
fffff; font-size: 20px; font-weight: inherit; line-height: inherit; text-de=
coration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; co=
lor: #ffffff; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; text-align: center;"> <span style=3D"color: #f=
fffff; font-size: inherit; font-weight: 700; line-height: inherit; text-dec=
oration: inherit; font-family: arial; font-style: normal;" class=3D"">BRIDG=
E LOAN</span> <br style=3D"color: #ffffff;"></div>=0A </div>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-=
row88" class=3D"layout layout-row clear-this " style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><td id=3D"layout-row-padding88" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffff=
ff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d id=3D"layout_table_bc9d27e42dc3ce87734aaf3fc89a76525d6f461d" valign=3D"to=
p" width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpaddin=
g=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td id=3D"layout-row-margin89"=0Avalign=3D"top" style=3D"mso-line-hei=
ght-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row89" class=3D=
"layout layout-row widget _widget_spacer " style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"layout-row-padding89" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-ru=
le: exactly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padd=
ing: 0; height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D=
"0" width=3D"100%"=0Astyle=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heigh=
t-rule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" wi=
dth=3D"325" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A=
</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layou=
t-row-margin86" valign=3D"top" style=3D"mso-line-height-rule: exactly; padd=
ing: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row86" class=
=3D"layout layout-row widget _widget_text style86" style=3D"mso-line-height=
-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding86" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_=
div75" class=3D"td_text td_block" valign=3D"top" align=3D"left"=0Awidth=3D"=
305" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padd=
ing: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height:=
 1; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0=
; outline: none; padding: 0; color: #084b8a; font-size: 16px; font-weight: =
inherit; line-height: inherit; text-decoration: inherit;"> <div style=3D"ma=
rgin: 0; outline: none; padding: 0; color: #084b8a; font-size: inherit; fon=
t-weight: inherit; line-height: inherit; text-decoration: inherit;"> <ul st=
yle=3D"margin: 0 0px 0 40px; padding: 0; color: #084b8a; font-family: arial=
; font-style: normal; font-weight: 400; text-align: -webkit-left;"><li styl=
e=3D"display: list-item; line-height: inherit; list-style-type: disc; margi=
n: 0; text-align: left; color: #084b8a;"><span style=3D"color: #084b8a; fon=
t-size: inherit; font-weight: bold; line-height: inherit; text-decoration: =
inherit; font-family: arial;" class=3D"">Loan Amounts up $500,000</span></l=
i><li=0Astyle=3D"display: list-item; line-height: inherit; list-style-type:=
 disc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"color: =
#084b8a; font-size: inherit; font-weight: bold; line-height: inherit; text-=
decoration: inherit; font-family: arial;" class=3D"">3mo - 1yr Terms</span>=
</li><li style=3D"display: list-item; line-height: inherit; list-style-type=
: disc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"color:=
 #084b8a; font-size: inherit; font-weight: bold; line-height: inherit; text=
-decoration: inherit; font-family: arial;" class=3D"">Interest Rates Vary</=
span></li><li style=3D"display: list-item; line-height: inherit; list-style=
-type: disc; margin: 0; text-align: left; color: #084b8a;"><span style=3D"c=
olor: #084b8a; font-size: inherit; font-weight: bold; line-height: inherit;=
 text-decoration: inherit; font-family: arial;" class=3D"">Funds in as litt=
le as 24 hours</span></li></ul><br style=3D"color: #084b8a;"></div>=0A </di=
v>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A<td id=3D"layout_table_e5133f8c3e0c818b9534991774ce8e7a4=
537b022" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactl=
y;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout=
 layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wid=
th: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-margin87" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row87" class=3D"layout layout-row widget _widget_picture " align=3D"cen=
ter" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding8=
7" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=0Awidth=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-=
td" align=3D"center" valign=3D"top" width=3D"325" style=3D"mso-line-height-=
rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/f7=
5a4ad9-80f6-4393-b275-de539fe04faf.jpeg?id=3D7317250?r=3D1084880551" alt=3D=
"" width=3D"259" style=3D"display: block; border: none; outline: none; widt=
h: 259px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color:=
 #ffffff;"><td id=3D"layout-row-margin85" valign=3D"top" style=3D"mso-line-=
height-rule: exactly; padding: 0px; background-color: #ffffff;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row85" class=3D"layout layout-row wi=
dget _widget_button style85" style=3D"mso-line-height-rule: exactly; backgr=
ound-color: #244df0;"><td id=3D"layout-row-padding85" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; background-color: #244df0; padding: 5px;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=0Aexactly;"><td=
 class=3D"td_button td_block customizable" valign=3D"top" align=3D"left" wi=
dth=3D"640" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-=
wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: center;=
">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" x=
mlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motorcityf=
unding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3d=
y5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DFdfgkPuedNcYLZCa5RLKjwt9V5yTovm3N=
hnpmoTwwnRB&iat=3D1634747091&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityf=
unding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDq=
V%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D4A8A1A=
9" style=3D"v-text-anchor:middle; width:150px; height:60px; font-weight: bo=
ld;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=
=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"fal=
se" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;=
font-family:Arial; font-size:18px; font-weight: bold;line-height: 1.1;">APP=
LY NOW</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https=
://motorcityfunding.lt.acemlnc.com/Prod/link-tracker?redirectUrl=3DaHR0cCUz=
QSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DFdfgkPuedNcYLZCa5RLK=
jwt9V5yTovm3NhnpmoTwwnRB&iat=3D1634747091&a=3D%7C%7C225362583%7C%7C&account=
=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0=
DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268=
b7&i=3D4A8A1A9" style=3D"margin: 0; outline: none; padding: 10px; color: #f=
fffff; background: #ff1414; background-color: #ff1414; border: 1px solid #B=
5B5B5; border-radius: 3px; font-family: Arial; font-size: 18px; display: in=
line-block; line-height: 1.1; text-align: center; text-decoration: none; ms=
o-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:18p=
x;font-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-=
height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-marg=
in84" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; =
background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row84" class=3D"layout layout-row widget _widget_text style84" style=3D=
"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-ro=
w-padding84" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding=
: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td id=3D"text_div73"=0Aclass=3D"td_text td_block" valign=3D"top" align=3D=
"left" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; out=
line: none; padding: 0; color: inherit; font-size: 12px; font-weight: inher=
it; line-height: 1; text-decoration: inherit; font-family: arial;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: 16p=
x; font-weight: inherit; line-height: inherit; text-decoration: inherit;"> =
<div style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-si=
ze: inherit; font-weight: inherit; line-height: inherit; text-decoration: i=
nherit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #084b8=
a; font-size: inherit; font-weight: 400; line-height: inherit; text-decorat=
ion: inherit; font-family: arial; font-style: normal; text-align: -webkit-l=
eft;"><span style=3D"color: #084b8a; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; font-family: arial;" cl=
ass=3D"">If you have any questions please do not=0Ahesitate to call. We pri=
de ourselves on always being available to our clients.</span></div>=0A<div =
style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: i=
nherit; font-weight: 400; line-height: inherit; text-decoration: inherit; f=
ont-family: arial; font-style: normal; text-align: -webkit-left;"><br style=
=3D"color: #084b8a;color: #084b8a;"></div>=0A<div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #084b8a; font-size: inherit; font-weight: 400;=
 line-height: inherit; text-decoration: inherit; font-family: arial; font-s=
tyle: normal; text-align: -webkit-left;"><span style=3D"color: #084b8a; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit; font-family: arial;" class=3D"">Sincerely,</span></div>=0A<div =
style=3D"margin: 0; outline: none; padding: 0; color: #084b8a; font-size: i=
nherit; font-weight: 400; line-height: inherit; text-decoration: inherit; f=
ont-family: arial; font-style: normal; text-align: -webkit-left;"><br style=
=3D"color: #084b8a;color: #084b8a;"></div>=0A<div style=3D"margin: 0; outli=
ne: none; padding: 0; color: #084b8a; font-size: inherit; font-weight: 400;=
 line-height: inherit; text-decoration: inherit; font-family: arial; font-s=
tyle: normal; text-align: -webkit-left;"><span style=3D"color: #084b8a; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit;" class=3D""><span style=3D"color: #084b8a; font-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; font-fam=
ily: arial;">Samuel Brugman</span><span style=3D"color: #084b8a; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit; font-family: arial;"> </span><span style=3D"color: #084b8a; font-size:=
 inherit; font-weight: bold; line-height: inherit; text-decoration: inherit=
; font-family: arial;">| </span><span style=3D"color: #084b8a; font-size: i=
nherit; font-weight: inherit; line-height: inherit; text-decoration: inheri=
t; font-family: arial;">Funding Manager</span></span></div>=0A <br style=3D=
"color: #084b8a;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row83" class=3D"layout lay=
out-row clear-this " style=3D"mso-line-height-rule: exactly; background-col=
or: #ffffff;"><td id=3D"layout-row-padding83" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_04813=
5d42bfeb0d1c87c1ebb47d6ce4e530ade25" valign=3D"top" width=3D"425" style=3D"=
mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" =
border=3D"0" class=3D"layout layout-table " width=3D"425" style=3D"-ms-text=
-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collap=
se; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row=
-margin80"=0Avalign=3D"top" style=3D"mso-line-height-rule: exactly; padding=
: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: initial !important; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row80" class=3D"l=
ayout layout-row widget _widget_text style80" style=3D"mso-line-height-rule=
: exactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"lay=
out-row-padding80" valign=3D"top" style=3D"mso-line-height-rule: exactly; b=
ackground-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"text_div70" class=3D"td_text =
td_block" valign=3D"top" align=3D"left" width=3D"405"=0Astyle=3D"mso-line-h=
eight-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; =
font-size: 12px; font-weight: inherit; line-height: 1; text-decoration: inh=
erit; font-family: arial;"> <div style=3D"margin: 0; outline: none; padding=
: 0; color: inherit; font-size: inherit; font-weight: inherit; line-height:=
 inherit; text-decoration: inherit; text-align: center;"><span style=3D"col=
or: #01df3a; font-size: 18px; font-weight: bold; line-height: inherit; text=
-decoration: inherit; font-style: normal; text-align: center; font-family: =
arial;" class=3D"">Motor City Funding</span><br><span class=3D"" style=3D"c=
olor: #ffffff; font-size: 15px; font-weight: bold; line-height: inherit; te=
xt-decoration: inherit;"><span style=3D"color: #ffffff; font-size: inherit;=
 font-weight: inherit; line-height: inherit; text-decoration: inherit; font=
-style: normal; text-align: center; font-family: arial;">3000 Town Center</=
span><br style=3D"color: #ffffff;"><span style=3D"color: #ffffff; font-size=
:=0Ainherit; font-weight: inherit; line-height: inherit; text-decoration: i=
nherit; font-style: normal; text-align: center; font-family: arial;">Southf=
ield, MI 48076</span><br style=3D"color: #ffffff;"><span style=3D"color: #f=
fffff; font-size: inherit; font-weight: inherit; line-height: inherit; text=
-decoration: inherit; font-style: normal; text-align: center; font-family: =
arial;">O: (315) 257-1195</span></span> <br></div>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=
=3D"layout_table_1d31872586fe4de41154ea98fbd2ecb2e2c53408" valign=3D"top" w=
idth=3D"225" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D=
"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"=
225" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; b=
order-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspac=
e: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;=
"><td id=3D"layout-row-margin82" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly; padding: 8px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row82" class=3D"layout layout-row widget _widget_button style82" style=
=3D"mso-line-height-rule: exactly; background-color: #244df0;"><td id=3D"la=
yout-row-padding82" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly=
; background-color: #244df0; padding: 14px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_block cus=
tomizable" valign=3D"top" align=3D"left" width=3D"181" style=3D"mso-line-he=
ight-rule: exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0; out=
line: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect =
xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-=
com:office:word" href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-t=
ext-anchor:middle; width:137px; height:60px; font-weight: bold;" arcsize=3D=
"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#57db28" o:b=
utton=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox=
 inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:Aria=
l; font-size:14px; font-weight: bold;line-height: 1.1;">CONTACT US</center>=
 </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@moto=
rcityfunding.com" style=3D"margin: 0; outline: none; padding: 12px; color: =
#ffffff; background: #57db28; background-color: #57db28; border: 1px solid =
#B5B5B5; border-radius: 3px; font-family: Arial; font-size: 14px; display: =
inline-block; line-height: 1.1; text-align: center; text-decoration: none; =
mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:1=
4px;font-weight: bold;"> CONTACT US </span> </a> </div>=0A=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcityfunding=
.lt.acemlnc.com/Prod/link-tracker?nl=3D1&c=3D4&m=3D8&s=3D0ad92c0c4a2ff86eed=
94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.com&a=3D225=
362583" border=3D"0" width=3D"1" height=3D"1" style=3D"display:block;width:=
1px!important;min-width:1px!important;max-width:1px!important;height:1px!im=
portant;border:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D"clear:b=
oth;background-color:inherit;background:inherit;min-width:100%;mso-table-ls=
pace:0pt;mso-table-rspace:0pt;padding:20px;color:#000000;font-size:11px;fon=
t-family:arial,helvetica,sans-serif;line-height:140%;line-height:1.4;text-a=
lign:center;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent to: <span s=
tyle=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:n=
ormal;text-decoration:none;outline:none;">linux1394-devel@lists.sourceforge=
.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://motorcityfu=
nding.activehosted.com/proc.php?nl=3D1&c=3D4&m=3D8&s=3D0ad92c0c4a2ff86eed94=
873b1c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helveti=
ca,sans-serif;font-weight:bold;text-decoration:underline;"><span style=3D"f=
ont-weight:bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09=
<br>=0A=09=09<br> Motor City Funding, 3000 Town Center, Southfield, United =
States=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-1658624129617041f7389745.43267076_=_--



--===============5123147265025199202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5123147265025199202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5123147265025199202==--


