Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EE5483644
	for <lists+linux1394-devel@lfdr.de>; Mon,  3 Jan 2022 18:39:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n4RIl-0007Db-OU; Mon, 03 Jan 2022 17:39:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-76-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1n4RIj-0007DV-NP
 for linux1394-devel@lists.sourceforge.net; Mon, 03 Jan 2022 17:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xZnTVY0M6Sa8Y/QQMe0uOZtvqFdIhop3eFmpzc/VKe8=; b=N38X8Hjg/VccEH33ECfqiXd9Al
 7vi6wZGNu3+DrCWLuE8i8O+QCPUj9EtbyWfX/yljkADKOMjshCDuOFziNi6nx+PgUxKZnHoDU7wri
 tBKC3BJZOmfhfIOp8vujSrYNgyrp0ku2YIhU2Sew0oI7tE+2ECCtuClO+GpDs+sOCKWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=xZnTVY0M6Sa8Y/QQMe0uOZtvqFdIhop3eFmpzc/VKe8=; b=O189tYDnWf18
 uNsftLJJlgYjhVNHjT5vpZQQAdrJBY8xEJcKd7pEZQIo6s9xGFkyGymNZm+ZqR5huOapIHTThmeb0
 AsgP7D/Pp0GbRxXk/AEXqDUyXBWrV1NTIyth24Hr05pMreJ/PrOemK2vxDS48A0vgW/ffTR6P26Ai
 GbMeY=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n4RIi-0011fW-Sh
 for linux1394-devel@lists.sourceforge.net; Mon, 03 Jan 2022 17:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=xZnTVY0M6Sa8Y/QQMe0uOZtvqFdIhop3eFmpzc/VKe8=;
 b=VsDOIM/cT+VDAe5LY9SmY2XLw/Qc1PxuhsCJzoitp7QLKgDwVLdnPUp1qmJ2SFlqi+Y9BmLJjJfC
 MecRob1c2ly/K+IecqCm/G1HnPZrUPdOPC4HOHxmkVFS+obcYttf6/ag2kuZnGXBivtiA02UtiPh
 HqVy0UVB0z7onos88QA=
Received: by s15.avl4.acemsrvd.com id hqcqbm2q274p for
 <linux1394-devel@lists.sourceforge.net>;
 Mon, 3 Jan 2022 17:39:07 +0000 (envelope-from
 <bounce-2287853-76-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: What's Next After the EIDL?
Date: Mon, 03 Jan 2022 11:31:28 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM3NiAsIG0xMTQgLCBzNjg
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-76
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220103173907.17255.1180677682.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The SBA 7(a) is ready to FUND!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1n4RIi-0011fW-Sh
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
Content-Type: multipart/mixed; boundary="===============0674264372320629724=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============0674264372320629724==
Content-Type: multipart/alternative;
 boundary="_=_swift-56550659461d332f091a0d7.34411178_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-56550659461d332f091a0d7.34411178_=_
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=76&amp;m=114&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-56550659461d332f091a0d7.34411178_=_
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
539 img { width: 100% !important; height: auto !important; max-width: 320px=
 !important; } #layout-row1543 img { width: 100% !important; height: auto !=
important; max-width: 320px !important; } #layout-row1551 img { width: 100%=
 !important; height: auto !important; max-width: 121px !important; } #layou=
t-row1567 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row1572 img { width: 100% !important; height: =
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
nt; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row1539 img=
 { width: 100% !important; height: auto !important; max-width: 375px !impor=
tant; } #layout-row1543 img { width: 100% !important; height: auto !importa=
nt; max-width: 375px !important; } #layout-row1551 img { width: 100% !impor=
tant; height: auto !important; max-width: 121px !important; } #layout-row15=
67 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row1572 img { width: 100% !important; height: auto !i=
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
=0A}=0A@media only screen and (max-width: 414px) { #layout-row1539 img { wi=
dth: 100% !important; height: auto !important; max-width: 414px !important;=
 } #layout-row1543 img { width: 100% !important; height: auto !important; m=
ax-width: 414px !important; } #layout-row1551 img { width: 100% !important;=
 height: auto !important; max-width: 121px !important; } #layout-row1567 im=
g { width: 100% !important; height: auto !important; max-width: 414px !impo=
rtant; } #layout-row1572 img { width: 100% !important; height: auto !import=
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
@media only screen and (max-width: 667px) { #layout-row1539 img { width: 10=
0% !important; height: auto !important; max-width: 667px !important; } #lay=
out-row1543 img { width: 100% !important; height: auto !important; max-widt=
h: 667px !important; } #layout-row1551 img { width: 100% !important; height=
: auto !important; max-width: 121px !important; } #layout-row1567 img { wid=
th: 100% !important; height: auto !important; max-width: 667px !important; =
} #layout-row1572 img { width: 100% !important; height: auto !important; ma=
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
le_3b2cc96d311952067d56b6f0cffb06668fc4a68d" valign=3D"top" align=3D"center=
" width=3D"650" style=3D"mso-line-height-rule: exactly; background-color: #=
ffffff;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"l=
ayout layout-table root-table" width=3D"650" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size=
: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt; back=
ground-color: #ffffff;"><tr style=3D"mso-line-height-rule: exactly; backgro=
und-color: #ffffff;"><td id=3D"layout-row-margin1539" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 0; background-color: #ffffff;">=
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" styl=
e=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-col=
lapse: initial !important; font-size: 14px; min-width: 100%; mso-table-lspa=
ce: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1539"=0Aclass=3D"layou=
t layout-row widget _widget_picture style1539" align=3D"center" style=3D"ms=
o-line-height-rule: exactly; background-color: #f7f9ff;"><td id=3D"layout-r=
ow-padding1539" valign=3D"top" style=3D"mso-line-height-rule: exactly; back=
ground-color: #f7f9ff; padding: 20px 0 20px 0px;"><table width=3D"100%" bor=
der=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"=
center" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly=
;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4=
506-a900-35ec4edba52c.png?r=3D1692760235" alt=3D"" width=3D"230" style=3D"d=
isplay: block; border: none; outline: none; width: 230px; opacity: 1; max-w=
idth: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffff=
ff;"><td id=3D"layout-row-margin1572" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly; background-color: #ffffff;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr i=
d=3D"layout-row1572" class=3D"layout layout-row widget _widget_picture " al=
ign=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding1572" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table=
 width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-=
ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse:=
 collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"=
image-td" align=3D"left" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-h=
eight-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/10=
/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D844001365" alt=3D"" width=
=3D"650" style=3D"display: block; border: none; outline: none; width: 650px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin1538" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1538" class=3D"lay=
out layout-row widget _widget_text style1538" style=3D"mso-line-height-rule=
: exactly; margin: 0; padding: 0; background-color: #ffffff;"><td id=3D"lay=
out-row-padding1538" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 background-color: #ffffff; padding: 20px 5px 20px 5px;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=0Amso-table-rspace:=
 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1312"=
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
=0A<style data-ac-keep=3D"true" data-ac-inline=3D"false"> #text_div1312, #t=
ext_div1312 div { line-height: 140% !important; };=0A</style>=0A<![endif]--=
></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr =
style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=
=3D"layout-row-margin1542" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px; background-color: #ffffff;"><table width=3D"100%" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust:=
 auto; -webkit-text-size-adjust: 100%; border-collapse: initial !important;=
 font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt;"><tr id=3D"layout-row1542" class=3D"layout layout-row widget _widget_=
button style1542" style=3D"mso-line-height-rule: exactly; background-color:=
 #ffffff;"><td id=3D"layout-row-padding1542" valign=3D"top" style=3D"mso-li=
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
jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH7XoS4akezBxibirR7cLLK7hw8ghzhRqwza4SM2GUkA=
o&iat=3D1641231547&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Ea=
ctivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3Q=
tV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D76A114A1A225" st=
yle=3D"v-text-anchor:middle; width:189px; height:64px; font-weight: bold;" =
arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#2=
44df0" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > =
<v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-f=
amily:georgia, times new roman; font-size:14px; font-weight: bold;line-heig=
ht: 1.1;">Click Here to Apply</center> </v:textbox> </v:roundrect>=0A<![end=
if]--> <a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker=
?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=
=3DH7XoS4akezBxibirR7cLLK7hw8ghzhRqwza4SM2GUkAo&iat=3D1641231547&a=3D%7C%7C=
225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3Drcn=
ACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0=
c4a2ff86eed94873b1c9268b7&i=3D76A114A1A225" style=3D"margin: 0; outline: no=
ne; padding: 14px; color: #ffffff; background: #244df0; background-color: #=
244df0; border: 1px solid #B5B5B5; border-radius: 3px; font-family: georgia=
, times new roman; font-size: 14px; display: inline-block; line-height: 1.1=
; text-align: center; text-decoration: none; mso-hide: all;"> <span style=
=3D"color:#ffffff;font-family:georgia, times new roman;font-size:14px;font-=
weight: bold;"> Click Here to Apply </span> </a> </div>=0A=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin1545" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgrou=
nd-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1545" class=
=3D"layout layout-row widget _widget_spacer " style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-padding1545" valign=3D"top" style=3D"mso-l=
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
d-color: #ffffff;"><td id=3D"layout-row-margin1543" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; background-color: #ffffff;"><table width=3D=
"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-s=
ize-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse=
; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace=
: 0pt;"><tr id=3D"layout-row1543" class=3D"layout layout-row widget _widget=
_picture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding1543" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=3D"650"=0Ast=
yle=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.=
com/Rnj5K/2022/01/03/2a2d3efc-e79f-4c80-8866-1c85b0f01fda.jpeg?r=3D30230138=
" alt=3D"" width=3D"650" style=3D"display: block; border: none; outline: no=
ne; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin1547" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fff=
fff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1547" class=3D"layout layo=
ut-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td=
 id=3D"layout-row-padding1547" valign=3D"top" style=3D"mso-line-height-rule=
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
f;"><td id=3D"layout-row-margin1541" valign=3D"top" style=3D"mso-line-heigh=
t-rule: exactly; padding: 5px; background-color: #ffffff;"><table width=3D"=
100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !=
important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tab=
le-rspace: 0pt;"><tr id=3D"layout-row1541" class=3D"layout layout-row widge=
t _widget_button style1541" style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-padding1541" valign=3D"top" style=3D"mso-line-height-rule: e=
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
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH7XoS4ake=
zBxibirR7cLLK7hw8ghzhRqwza4SM2GUkAo&iat=3D1641231547&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D76A114A1A225" style=3D"v-text-anchor:middle; width:191px;=
 height:66px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#244df0" st=
rokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"true" o:allowincell=3D=
"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <ce=
nter style=3D"color:#ffffff;font-family:georgia, times new roman; font-size=
:14px; font-weight: bold;line-height: 1.1;">Click Here to Apply</center> </=
v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfundin=
g.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbW=
Z1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DH7XoS4akezBxibirR7cLLK7hw8ghzhRqwza4SM=
2GUkAo&iat=3D1641231547&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfundin=
g%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BU=
XVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D76A114A1A22=
5" style=3D"margin: 0; outline: none; padding: 16px; color: #ffffff; backgr=
ound: #244df0; background-color: #244df0; border-radius: 3px; font-family: =
georgia, times new roman; font-size: 14px; display: inline-block; line-heig=
ht: 1.1; text-align: center; text-decoration: none; mso-hide: all;"> <span =
style=3D"color:#ffffff;font-family:georgia, times new roman;font-size:14px;=
font-weight: bold;"> Click Here to Apply </span> </a> </div>=0A=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"m=
so-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-=
row-margin1544" valign=3D"top" style=3D"mso-line-height-rule: exactly; padd=
ing: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: initial !important; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
id=3D"layout-row1544" class=3D"layout layout-row widget _widget_text style1=
544" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding1544" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td=0Aid=3D"text_div1318" class=3D"td_text td_block" valign=
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
c2ljLXJlcXVpcmVtZW50cyUyM3NlY3Rpb24taGVhZGVyLTY=3D&sig=3DywRDtQ2nPuxBm9DPWp=
YHtcXwKTYrWrSccLoLQYs1W6A&iat=3D1641231547&a=3D%7C%7C225362583%7C%7C&accoun=
t=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU=
0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c926=
8b7&i=3D76A114A1A226"=0Adata-ac-default-color=3D"1" style=3D"margin: 0; out=
line: none; padding: 0; color: #045fb4; text-decoration: underline;"><span =
style=3D"color: ; font-size: inherit; font-weight: inherit; line-height: in=
herit; text-decoration: inherit;">must have fewe</span></a>r than 500 emplo=
yees or less than $20.5 million in average annual receipts. You must operat=
e as a for-profit business, be based in the United States, and not be delin=
quent on any debt (such as taxes) owed to the government.</span></li></ul><=
br style=3D"color: #000000;"></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rul=
e: exactly; background-color: #ffffff;"><td id=3D"layout-row-margin1567" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #fff=
fff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1567" class=3D"layout layo=
ut-row widget _widget_picture " align=3D"center" style=3D"mso-line-height-r=
ule: exactly;"><td id=3D"layout-row-padding1567" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-=
height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"to=
p" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"htt=
ps://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92=
aec.png?r=3D1127310112" alt=3D"" width=3D"650" style=3D"display: block; bor=
der: none; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=
=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td id=3D"la=
yout-row-margin1568" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 padding: 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: initial !important; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row1568" class=3D"layout layout-row widget _widget_text s=
tyle1568" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><=
td id=3D"layout-row-padding1568" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 1=
00%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-h=
eight-rule: exactly;"><td=0Aid=3D"text_div1338" class=3D"td_text td_block" =
valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule: =
exactly; margin: 0; outline: none; padding: 0; color: inherit; font-size: 1=
2px; font-weight: inherit; line-height: 1; text-decoration: inherit; font-f=
amily: arial;"> <div style=3D"margin: 0; outline: none; padding: 0; color: =
#000000; font-size: 12px; font-weight: inherit; line-height: inherit; text-=
decoration: inherit;"> <div style=3D"margin: 0; outline: none; padding: 0; =
color: #000000; font-size: inherit; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none; pa=
dding: 0; color: #000000; font-size: inherit; font-weight: inherit; line-he=
ight: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw=
-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offs=
et-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-sha=
dow: 0 0 transparent; --tw-ring-shadow: 0 0=0Atransparent; font-style: norm=
al; text-align: -webkit-left;"><span style=3D'color: #000000; font-size: in=
herit; font-weight: inherit; line-height: inherit; text-decoration: inherit=
; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ri=
ng-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(5=
9,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow:=
 0 0 transparent; font-family: georgia, "times new roman";' class=3D"">If y=
ou have any questions please do not hesitate to call.=C2=A0 We pride oursel=
ves on always being available to our clients.</span></div>=0A<div style=3D"=
margin: 0; outline: none; padding: 0; color: #000000; font-size: inherit; f=
ont-weight: inherit; line-height: inherit; text-decoration: inherit; --tw-s=
hadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offse=
t-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,24=
6,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 tra=
nsparent; font-style: normal; text-align: -webkit-left;"><br style=3D'color=
: #000000; font-family: georgia, "times new roman";color: #000000;'></div>=
=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #000000; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, )=
; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-colo=
r: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-rin=
g-shadow: 0 0 transparent; font-style: normal; text-align: -webkit-left;"><=
span style=3D'color: #000000; font-size: inherit; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 transparent; =
--tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-=
offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset=
-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-family: g=
eorgia, "times new roman";' class=3D"">Sincerely,<br></span></div>=0A<div s=
tyle=3D"margin: 0; outline: none; padding: 0; color: #000000; font-size: in=
herit; font-weight: inherit; line-height: inherit; text-decoration: inherit=
; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ri=
ng-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(5=
9,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow:=
 0 0 transparent; font-style: normal; text-align: -webkit-left;"><br style=
=3D'color: #000000; font-family: georgia, "times new roman";color: #000000;=
'></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #0000=
00; font-size: inherit; font-weight: inherit; line-height: inherit; text-de=
coration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-=
empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-r=
ing-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; =
--tw-ring-shadow: 0 0 transparent; font-style: normal; text-align: -webkit-=
left;"><span style=3D'color: #000000; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 0 trans=
parent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --=
tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-rin=
g-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-f=
amily: georgia, "times new roman";' class=3D""><span style=3D"color: #00000=
0; font-size: inherit; font-weight: inherit; line-height: inherit; text-dec=
oration: inherit;=0A--tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw=
-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-=
ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent;=
 --tw-ring-shadow: 0 0 transparent;">Samuel Brugman</span><span style=3D"co=
lor: #000000; font-size: inherit; font-weight: inherit; line-height: inheri=
t; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset:=
 var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #f=
ff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tra=
nsparent; --tw-ring-shadow: 0 0 transparent;"> </span><span style=3D"color:=
 #000000; font-size: inherit; font-weight: inherit; line-height: inherit; t=
ext-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var=
(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; =
--tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transpa=
rent; --tw-ring-shadow: 0 0=0Atransparent;">| Account</span><span style=3D"=
color: #000000; font-size: inherit; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inse=
t: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: =
#fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 t=
ransparent; --tw-ring-shadow: 0 0 transparent;"> Manager</span></span></div=
>=0A <br style=3D"color: #000000;"></div>=0A </div>=0A</td>=0A</tr>=0A</tab=
le>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row1552" =
class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exac=
tly; background-color: #ffffff;"><td id=3D"layout-row-padding1552" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout_table_5eedac2aac0effc0f3117b5da47bbb52e6c762bf" valign=3D"top" =
width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td=0Aid=3D"layout-row-margin1550" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webki=
t-text-size-adjust: 100%; border-collapse: initial !important; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1550" class=3D"layout layout-row widget _widget_text style155=
0" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=
=3D"layout-row-padding1550" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-a=
djust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; m=
so-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"text_div1323" class=3D"td_text td_block" valign=
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
=3D&sig=3DDy8poekispdq5zhMD9babAiQ4mWwtrdKRxQ4ndbfn1oD&iat=3D1641231547&a=
=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&em=
ail=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=
=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D76A114A1A227" data-ac-default-color=
=3D"1" style=3D"margin: 0; outline: none; padding: 0; color: #045fb4; text-=
decoration: underline;"><span style=3D"color: ; font-size: inherit; font-we=
ight: inherit; line-height: inherit; text-decoration: inherit;">Motor City =
Funding</span></a><br></span><span style=3D"color: inherit; font-size: inhe=
rit; font-weight: bold; line-height: inherit;=0Atext-decoration: inherit;" =
class=3D"">O: (315) 257-1195</span></span><br></div>=0A </span></div>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A<td id=3D"layout_table_f9c60fe125f953d415a2123276de05618eeddd74"=
 valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1571" =
class=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exac=
tly;"><td id=3D"layout-row-padding1571" valign=3D"top" style=3D"mso-line-he=
ight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td id=3D"layout_table_a41a0ef06147e2222d355585ec9a74007a5b97=
2c" valign=3D"top" width=3D"150" style=3D"mso-line-height-rule:=0Aexactly;"=
><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout la=
yout-table " width=3D"150" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout-row-margin1570" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 0px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !importa=
nt; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr id=3D"layout-row1570" class=3D"layout layout-row widget _widg=
et_button style1570" style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-padding1570" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
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
>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_6ef52ab0b423a014cdad8=
01ddc3c03b5650c5de2" valign=3D"top" width=3D"175" style=3D"mso-line-height-=
rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" cla=
ss=3D"layout layout-table " width=3D"175" style=3D"-ms-text-size-adjust: au=
to; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 1=
4px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr st=
yle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1551" val=
ign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr id=3D"layout-row1551" class=3D"layout layout-row widget _widget_pictur=
e " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-padding1551" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"image-td" align=3D"center" valign=3D"top" width=3D"175" style=3D"=
mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj=
5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D371479369" alt=
=3D"" width=3D"121" style=3D"display: block; border: none; outline: none; w=
idth: 121px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</=
table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<im=
g src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=
=3D76&m=3D114&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotor=
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
1&c=3D76&m=3D114&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D=
"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:bold;tex=
t-decoration:underline;"><span style=3D"font-weight:bold;text-decoration:un=
derline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Fundi=
ng, 3000 Town Center, Southfield, United States=0A=09</center>=0A</div>=0A<=
br clear=3D"all" /></body>=0A</html>
--_=_swift-56550659461d332f091a0d7.34411178_=_--



--===============0674264372320629724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0674264372320629724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0674264372320629724==--


