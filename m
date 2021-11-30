Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E263F46370E
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Nov 2021 15:48:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ms4Py-0002gF-M5; Tue, 30 Nov 2021 14:47:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-48-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1ms4Pw-0002g9-UP
 for linux1394-devel@lists.sourceforge.net; Tue, 30 Nov 2021 14:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AF18c7mX/Q/s+ZUAAE77BBpnqBP4chmCC8hiij+R5oE=; b=ggQIdyAvCV4yJNV0RDt7Vl56Tr
 Z1HZ9VyUQLEAJWyG49nsoStEtcHxhVOIccWD2AErVgSZ3GXxMQOhIbDvjp4cLADQuUZkCQVsD/6sZ
 9L2D8LziiiK8PLVgAPCT/yFYZ82RvZaYQz8cneXSy/xT/WQjvev8yJigRFOJy1e2xa8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=AF18c7mX/Q/s+ZUAAE77BBpnqBP4chmCC8hiij+R5oE=; b=grd33MKsuufc
 KMVUo+//c4HCSHVgR/abqK5LA7VoZ6VrOjZ5FkSMOZ07TsJb+VRpNrMFD2ssmqFXVUdziTsy+2w1W
 0vSvfjlXVMpNZeY327S61t9bqnqLGly9lEfy+PYsbOuXiEAeUDDvhslvGutgEFJK4kgRIfwZCOyuR
 2LhIQ=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms4Pr-00GA5e-0u
 for linux1394-devel@lists.sourceforge.net; Tue, 30 Nov 2021 14:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=AF18c7mX/Q/s+ZUAAE77BBpnqBP4chmCC8hiij+R5oE=;
 b=W6vxmXnP0i0+usYXW88sjD6gWT+0XZ5wia0X7Y7XL4wRDpJ7aZ6xzhfEFG2r2rnJzNiNPWazTTnK
 g0Al0nAnBFUCKzgBdaC75vGRMzPbIrt7a4DbTOhJaBXrq/Zf95jVtkvZVUxV8NlIogy0GyYod0aF
 JKNee7bMH4LsBawaJE0=
Received: by s15.avl4.acemsrvd.com id hkosnm2q274p for
 <linux1394-devel@lists.sourceforge.net>;
 Tue, 30 Nov 2021 14:36:06 +0000 (envelope-from
 <bounce-2287853-48-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Preferred Partner" <sbrugman@motorcityfunding.com>
Subject: EIDL Deadline Approaching!
Date: Tue, 30 Nov 2021 08:35:09 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM0OCAsIG03NCAsIHM0Mw
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-48
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211130143606.24196.1340197971.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  December 31st Deadline ~ Don't Miss Out!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: acemsrvd.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [192.92.97.219 listed in wl.mailspike.net]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ms4Pr-00GA5e-0u
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
Content-Type: multipart/mixed; boundary="===============2831823414442776946=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============2831823414442776946==
Content-Type: multipart/alternative;
 boundary="_=_swift-162136602361a6369d17ff24.59015401_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-162136602361a6369d17ff24.59015401_=_
Content-Type: text/plain; charset=utf-8

December 31st Deadline ~ Don't Miss Out! 
 ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌

 

The Small Business Administration has moved the deadline for all EIDL
applications to December 31st 2021 Apply before the deadline!

What is the EIDL? 

* Up to $2,000,000

* No payments for the first 24 months

* 3.75% fixed interest rate over 30 years! 

* Short for Economic Injury Disaster Loan

* Part of the CARES act passed in March of 2020 

* All US business owners can apply

* Based off of 2019 business tax returns

* Minimum FICO of 550

APPLY NOW  

If you have any questions please do not hesitate to call.  We pride
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=48&amp;m=74&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-162136602361a6369d17ff24.59015401_=_
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
@media only screen and (max-width: 320px) { #layout-row1151 { max-height: 0=
px!important; font-size: 0px!important; display: none!important; visibility=
: hidden!important; } #layout-row1152 img { width: 100% !important; height:=
 auto !important; max-width: 320px !important; } #layout-row1153 img { widt=
h: 100% !important; height: auto !important; max-width: 320px !important; }=
 #layout-row1155 img { width: 100% !important; height: auto !important; max=
-width: 320px !important; } #layout-row1163 img { width: 100% !important; h=
eight: auto !important; max-width: 320px !important; } table, tbody, td, .d=
ivbody { display: table !important; width: 100% !important; max-width: 100%=
 !important; } .td_rss .rss-item img.iphone_large_image { width: auto !impo=
rtant; } u + .body { display: table !important; width: 100vw !important; mi=
n-width: 100vw !important; } u + .body table { display: table !important; w=
idth: 100% !important; min-width: 100%=0A!important; } u + .body td { displ=
ay: block !important; width: 100% !important; min-width: 100% !important; }=
 u + .body img { display: inline-block !important; margin: auto !important;=
 width: auto !important; vertical-align: bottom !important; } u + .body cen=
ter { display: block !important; margin: auto !important; width: 100% !impo=
rtant; min-width: 100% !important; text-align: center !important; } u + .bo=
dy table._ac_social_table, u + .body table._ac_social_table td, u + .body t=
able._ac_social_table div, u + .body table._ac_social_table a { display: in=
line-block !important; margin: auto !important; width: auto !important; min=
-width: auto !important; text-align: center !important; } u + .body table._=
ac_social_table img { display: inline-block !important; margin: auto !impor=
tant; width: 32px !important; min-width: 32px !important; max-width: 32px !=
important; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row1=
151 { max-height: 0px!important; font-size: 0px!important; display: none!im=
portant; visibility: hidden!important; } #layout-row1152 img { width: 100% =
!important; height: auto !important; max-width: 375px !important; } #layout=
-row1153 img { width: 100% !important; height: auto !important; max-width: =
375px !important; } #layout-row1155 img { width: 100% !important; height: a=
uto !important; max-width: 375px !important; } #layout-row1163 img { width:=
 100% !important; height: auto !important; max-width: 375px !important; } t=
able, tbody, td, .divbody { display: table !important; width: 100% !importa=
nt; max-width: 100% !important; } .td_rss .rss-item img.iphone_large_image =
{ width: auto !important; } u + .body { display: table !important; width: 1=
00vw !important; min-width: 100vw !important; } u + .body table { display: =
table !important; width: 100% !important; min-width: 100% !important; } u +=
 .body td { display:=0Ablock !important; width: 100% !important; min-width:=
 100% !important; } u + .body img { display: inline-block !important; margi=
n: auto !important; width: auto !important; vertical-align: bottom !importa=
nt; } u + .body center { display: block !important; margin: auto !important=
; width: 100% !important; min-width: 100% !important; text-align: center !i=
mportant; } u + .body table._ac_social_table, u + .body table._ac_social_ta=
ble td, u + .body table._ac_social_table div, u + .body table._ac_social_ta=
ble a { display: inline-block !important; margin: auto !important; width: a=
uto !important; min-width: auto !important; text-align: center !important; =
} u + .body table._ac_social_table img { display: inline-block !important; =
margin: auto !important; width: 32px !important; min-width: 32px !important=
; max-width: 32px !important; }=0A}=0A@media only screen and (max-width: 41=
4px) { #layout-row1151 { max-height: 0px!important; font-size: 0px!importan=
t; display: none!important; visibility: hidden!important; } #layout-row1152=
 img { width: 100% !important; height: auto !important; max-width: 414px !i=
mportant; } #layout-row1153 img { width: 100% !important; height: auto !imp=
ortant; max-width: 380px !important; } #layout-row1155 img { width: 100% !i=
mportant; height: auto !important; max-width: 414px !important; } #layout-r=
ow1163 img { width: 100% !important; height: auto !important; max-width: 41=
4px !important; } table, tbody, td, .divbody { display: table !important; w=
idth: 100% !important; max-width: 100% !important; } .td_rss .rss-item img.=
iphone_large_image { width: auto !important; } u + .body { display: table !=
important; width: 100vw !important; min-width: 100vw !important; } u + .bod=
y table { display: table !important; width: 100% !important; min-width: 100=
% !important; } u + .body td { display:=0Ablock !important; width: 100% !im=
portant; min-width: 100% !important; } u + .body img { display: inline-bloc=
k !important; margin: auto !important; width: auto !important; vertical-ali=
gn: bottom !important; } u + .body center { display: block !important; marg=
in: auto !important; width: 100% !important; min-width: 100% !important; te=
xt-align: center !important; } u + .body table._ac_social_table, u + .body =
table._ac_social_table td, u + .body table._ac_social_table div, u + .body =
table._ac_social_table a { display: inline-block !important; margin: auto !=
important; width: auto !important; min-width: auto !important; text-align: =
center !important; } u + .body table._ac_social_table img { display: inline=
-block !important; margin: auto !important; width: 32px !important; min-wid=
th: 32px !important; max-width: 32px !important; }=0A}=0A@media only screen=
 and (max-width: 667px) { #layout-row1151 { max-height: 0px!important; font=
-size: 0px!important; display: none!important; visibility: hidden!important=
; } #layout-row1152 img { width: 100% !important; height: auto !important; =
max-width: 667px !important; } #layout-row1153 img { width: 100% !important=
; height: auto !important; max-width: 380px !important; } #layout-row1155 i=
mg { width: 100% !important; height: auto !important; max-width: 667px !imp=
ortant; } #layout-row1163 img { width: 100% !important; height: auto !impor=
tant; max-width: 667px !important; } table, tbody, td, .divbody { display: =
table !important; width: 100% !important; max-width: 100% !important; } .td=
_rss .rss-item img.iphone_large_image { width: auto !important; } u + .body=
 { display: table !important; width: 100vw !important; min-width: 100vw !im=
portant; } u + .body table { display: table !important; width: 100% !import=
ant; min-width: 100% !important; } u + .body td { display:=0Ablock !importa=
nt; width: 100% !important; min-width: 100% !important; } u + .body img { d=
isplay: inline-block !important; margin: auto !important; width: auto !impo=
rtant; vertical-align: bottom !important; } u + .body center { display: blo=
ck !important; margin: auto !important; width: 100% !important; min-width: =
100% !important; text-align: center !important; } u + .body table._ac_socia=
l_table, u + .body table._ac_social_table td, u + .body table._ac_social_ta=
ble div, u + .body table._ac_social_table a { display: inline-block !import=
ant; margin: auto !important; width: auto !important; min-width: auto !impo=
rtant; text-align: center !important; } u + .body table._ac_social_table im=
g { display: inline-block !important; margin: auto !important; width: 32px =
!important; min-width: 32px !important; max-width: 32px !important; }=0A} <=
/style><!--[if !mso]><!-- webfonts --><!--<![endif]--><!--[if lt mso 12]> <=
![endif]--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocumentSettings> <o:AllowP=
NG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocumentSettings>=0A</=
xml>=0A<![endif]--></head><body id=3D"ac-designer" class=3D"body" style=3D"=
font-family: Arial; line-height: 1.1; margin: 0px; background-color: #FFFFF=
F; width: 100%; text-align: center;">=09=09<div style=3D"display: none !imp=
ortant; padding: 0; height: 1px; font-size: 1px; background-color: inherit =
!important; opacity: 0; color: transparent; mso-line-height-rule: exactly; =
line-height:1px; mso-hide:all;">=0A=09=09=09December 31st Deadline ~ Don't =
Miss Out!=0A=09=09=09<div style=3D"display: none; max-height: 0px; overflow=
: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbs=
p;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C=0A=09=09=09</div>=0A=0A=09=09</di=
v>=0A<div class=3D"divbody" style=3D"margin: 0px; outline: none; padding: 0=
px; color: #000000; font-family: arial; line-height: 1.1; width: 100%; back=
ground-color: #FFFFFF; background: #FFFFFF; text-align: center;"><table cla=
ss=3D"template-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" widt=
h=3D"100%" align=3D"left" style=3D"-ms-text-size-adjust: auto; -webkit-text=
-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: =
auto; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFF=
FF; background: #FFFFFF;"><tr style=3D"mso-line-height-rule: exactly;"><td =
align=3D"center" valign=3D"top" width=3D"100%" style=3D"mso-line-height-rul=
e: exactly;"><table class=3D"template-table" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" width=3D"650" bgcolor=3D"#FFFFFF" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt; max-width: 650px;"><tr=0Astyle=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout_table_9a8fd31d2a4667a70bda8357a9aa449afa3c0cf3" valign=3D"top" =
align=3D"center" width=3D"650" style=3D"mso-line-height-rule: exactly;"><ta=
ble cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout=
-table root-table" width=3D"650" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-margin1151" valign=3D"to=
p" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row1151" class=3D"layout layout-row widget _widget_spacer " styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1151" vali=
gn=3D"top"=0Astyle=3D"mso-line-height-rule: exactly;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=3D=
"30" style=3D"mso-line-height-rule: exactly;"><div class=3D"spacer" style=
=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body"=
 valign=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-height-rule: =
exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-margin1152" valign=3D"top" style=3D"m=
so-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1=
152" class=3D"layout layout-row widget _widget_picture " align=3D"center" s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1152" v=
align=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fon=
t-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt=
;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" alig=
n=3D"center" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: ex=
actly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/08/5ed7148d=
-1798-4506-a900-35ec4edba52c.png?r=3D2044879227" alt=3D"" width=3D"325" sty=
le=3D"display: block; border: none; outline: none; width: 325px; opacity: 1=
; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layou=
t-row-margin1150" valign=3D"top" style=3D"mso-line-height-rule: exactly; pa=
dding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: initial !important; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1150" class=
=3D"layout layout-row widget _widget_text style1150" style=3D"mso-line-heig=
ht-rule: exactly; margin: 0; padding: 0; background-color: #244df0;"><td id=
=3D"layout-row-padding1150" valign=3D"top" style=3D"mso-line-height-rule: e=
xactly; background-color: #244df0; padding: 0;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div979"=0Aclass=3D"=
td_text td_block" valign=3D"top" align=3D"left" width=3D"650" style=3D"line=
-height: 140%; mso-line-height-rule: exactly; margin: 0; outline: none; pad=
ding: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height=
: 1.4; text-decoration: inherit; font-family: arial;"> <div style=3D"line-h=
eight: 140%; margin: 0; outline: none; padding: 0; color: #ffffff; font-siz=
e: 18px; font-weight: inherit; line-height: 1.4; text-decoration: inherit; =
mso-line-height-rule: exactly;" data-line-height=3D"1.4"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: #ffffff; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit; text-alig=
n: center;"><span style=3D"color: #ffffff; font-size: inherit; font-weight:=
 bold; line-height: inherit; text-decoration: inherit;" class=3D""><span st=
yle=3D"color: #ffffff; font-size: inherit; font-weight: inherit; line-heigh=
t: inherit; text-decoration: inherit; text-align: inherit;">The Small Busin=
ess Administration=0Ahas moved the deadline for all EIDL </span><span style=
=3D"color: #ffffff; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; text-align: inherit;">applications</span=
><span style=3D"color: #ffffff; font-size: inherit; font-weight: inherit; l=
ine-height: inherit; text-decoration: inherit; text-align: inherit;"> to De=
cember 31st 2021 Apply before the deadline!</span></span></div>=0A </div>=
=0A<!--[if (gte mso 12)&(lte mso 15) ]>=0A<style data-ac-keep=3D"true" data=
-ac-inline=3D"false"> #text_div979, #text_div979 div { line-height: 140% !i=
mportant; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly=
;"><td id=3D"layout-row-margin1163" valign=3D"top" style=3D"mso-line-height=
-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1163" class=3D"=
layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout-row-padding1163" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -we=
bkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"=
mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" valig=
n=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=
=3D"https://content.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7=
bdcea92aec.png?r=3D1486836679" alt=3D"" width=3D"650" style=3D"display: blo=
ck; border: none; outline: none; width: 650px; opacity: 1; max-width: 100%;=
"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr=
 style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1153" =
valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr id=3D"layout-row1153" class=3D"layout layout-row widget _widget_pic=
ture " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"=
layout-row-padding1153" valign=3D"top" style=3D"mso-line-height-rule: exact=
ly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"=
 style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; borde=
r-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0=
pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><t=
d class=3D"image-td" align=3D"center" valign=3D"top" width=3D"650" style=3D=
"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/=
Rnj5K/2021/11/08/8db24c11-71e7-459f-ab55-2957448b054e.jpeg?r=3D277207200" a=
lt=3D"" width=3D"380" style=3D"display: block; border: none; outline: none;=
 width: 380px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: =
exactly;"><td id=3D"layout-row-margin1154" valign=3D"top" style=3D"mso-line=
-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" ce=
llpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -web=
kit-text-size-adjust: 100%; border-collapse: initial !important; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
id=3D"layout-row1154" class=3D"layout layout-row widget _widget_text style1=
154" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; backgro=
und-color: #244df0;"><td id=3D"layout-row-padding1154" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; background-color: #244df0; padding: 5px;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
=0Aid=3D"text_div983" class=3D"td_text td_block" valign=3D"top" align=3D"le=
ft" width=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outlin=
e: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit;=
 line-height: 1; text-decoration: inherit; font-family: arial;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: 18px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit;"> <div style=3D"margin: 0; outline: none; padding: 0; color: #ffffff; =
font-size: inherit; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit; text-align: center;"><span style=3D"color: #ffffff; font-siz=
e: inherit; font-weight: bold; line-height: inherit; text-decoration: inher=
it;" class=3D"">What is the EIDL? </span></div>=0A </div>=0A </div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"=
layout-row1158" class=3D"layout layout-row clear-this " style=3D"mso-line-h=
eight-rule: exactly;"><td id=3D"layout-row-padding1158" valign=3D"top" styl=
e=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout_table_efd2c5096ca15f1f78b67f=
231d069267798ebca0" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1155" vali=
gn=3D"top" style=3D"mso-line-height-rule:=0Aexactly;"><table width=3D"100%"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-ad=
just: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row1155" class=3D"layout layout-row widget _widget_pictu=
re " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"la=
yout-row-padding1155" valign=3D"top" style=3D"mso-line-height-rule: exactly=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td =
class=3D"image-td" align=3D"center" valign=3D"top" width=3D"325" style=3D"m=
so-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5=
K/2021/10/19/8657e27f-7004-40ca-ba8e-9b2b418af77c.png?r=3D1976391175" alt=
=3D"" width=3D"203"=0Astyle=3D"display: block; border: none; outline: none;=
 width: 203px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout=
_table_68d007aae04c629bd4206b1aaf2f3c0eb532f21c" valign=3D"top" width=3D"32=
5" style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellsp=
acing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin1156" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: initial !important; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row=
1156" class=3D"layout layout-row widget _widget_text style1156" style=3D"ms=
o-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-p=
adding1156" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; paddin=
g: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"text_div985" class=3D"td_text td_block" valign=3D"top" align=
=3D"left" width=3D"305" style=3D"mso-line-height-rule: exactly; margin: 0; =
outline: none; padding: 0; color: inherit; font-size: 12px; font-weight: in=
herit; line-height: 1; text-decoration: inherit; font-family: arial;"> <div=
 style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: =
15px; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
"> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; font=
-size: inherit; font-weight: inherit; line-height: inherit; text-decoration=
: inherit;"><ul style=3D"margin: 0 0 0 40px; padding: 0;"><li=0Astyle=3D"di=
splay: list-item; line-height: inherit; list-style-type: disc; margin: 0 0 =
0 3px;"><span style=3D"color: #244df0; font-size: inherit; font-weight: bol=
d; line-height: inherit; text-decoration: inherit; text-align: inherit;" cl=
ass=3D"">Up to $2,000,000</span></li><li style=3D"display: list-item; line-=
height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"=
color: #244df0; font-size: inherit; font-weight: bold; line-height: inherit=
; text-decoration: inherit; text-align: inherit;" class=3D"">No payments fo=
r the first 24 months</span></li><li style=3D"display: list-item; line-heig=
ht: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"colo=
r: #244df0; font-size: inherit; font-weight: bold; line-height: inherit; te=
xt-decoration: inherit; text-align: inherit;" class=3D"">3.75% fixed intere=
st rate over 30 years! </span></li><li style=3D"display: list-item; line-he=
ight: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"co=
lor: #244df0;=0Afont-size: inherit; font-weight: bold; line-height: inherit=
; text-decoration: inherit; text-align: inherit;" class=3D"">Short for Econ=
omic Injury Disaster Loan</span></li><li style=3D"display: list-item; line-=
height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"=
" style=3D"color: #244df0; font-size: inherit; font-weight: bold; line-heig=
ht: inherit; text-decoration: inherit; text-align: inherit;">Part of the CA=
RES act passed in March of 2020 </span></li><li style=3D"display: list-item=
; line-height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span cl=
ass=3D"" style=3D"color: #244df0; font-size: inherit; font-weight: bold; li=
ne-height: inherit; text-decoration: inherit; text-align: inherit;">All US =
business owners can apply</span></li><li style=3D"display: list-item; line-=
height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D"=
" style=3D"color: #244df0; font-size: inherit; font-weight: bold; line-heig=
ht: inherit; text-decoration: inherit;=0Atext-align: inherit;">Based off of=
 2019 business tax returns</span></li><li style=3D"display: list-item; line=
-height: inherit; list-style-type: disc; margin: 0 0 0 3px;"><span class=3D=
"" style=3D"color: #244df0; font-size: inherit; font-weight: bold; line-hei=
ght: inherit; text-decoration: inherit; text-align: inherit;">Minimum FICO =
of 550</span></li></ul></div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-margin1157" valign=3D"top" style=3D"mso-line-height-rule: exactly=
; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: initial !important; font-size: 14px; min-width: 100=
%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1157"=
 class=3D"layout layout-row widget _widget_button style1157" style=3D"mso-l=
ine-height-rule: exactly; background-color: #244df0;"><td id=3D"layout-row-=
padding1157" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgro=
und-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"0" cellp=
adding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit=
-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wi=
dth: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-=
line-height-rule: exactly;"><td class=3D"td_button td_block=0Acustomizable"=
 valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-height-rule:=
 exactly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outline: none=
; padding: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D=
"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office=
:word" href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?re=
directUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D=
5vzTBDd2x73Uk6ygAtmuFrndSUyK5VkW1XJmWV9icWTC&iat=3D1638282966&a=3D%7C%7C225=
362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACf=
XAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a=
2ff86eed94873b1c9268b7&i=3D48A74A1A141" style=3D"v-text-anchor:middle; widt=
h:130px; height:60px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5=
B5B5" strokeweight=3D"1pt" fillcolor=3D"#ff1414" o:button=3D"true" o:allowi=
ncell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2=
px"> <center style=3D"color:#ffffff;font-family:Arial; font-size:14px; font=
-weight: bold;line-height: 1.1;">APPLY NOW</center> </v:textbox> </v:roundr=
ect>=0A<![endif]--> <a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod=
/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21=
hbg=3D=3D&sig=3D5vzTBDd2x73Uk6ygAtmuFrndSUyK5VkW1XJmWV9icWTC&iat=3D16382829=
66&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Eco=
m&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsA=
f&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D48A74A1A141" style=3D"margin: 0;=
 outline: none; padding: 12px; color: #ffffff; background: #ff1414; backgro=
und-color: #ff1414; border: 1px solid #B5B5B5; border-radius: 3px; font-fam=
ily: Arial; font-size: 14px; display: inline-block; line-height: 1.1; text-=
align: center; text-decoration: none; mso-hide: all;"> <span style=3D"color=
:#ffffff;font-family:Arial;font-size:14px;font-weight: bold;"> APPLY NOW </=
span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-margin1159" valign=3D"top" style=3D"mso-line-height-rule: exactly=
; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: initial !important; font-size: 14px; min-width: 100=
%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1159"=
 class=3D"layout layout-row widget _widget_text style1159" style=3D"mso-lin=
e-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-paddin=
g1159" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"text_div987" class=3D"td_text td_block" valign=3D"top" align=3D"left"=
=0Awidth=3D"630" style=3D"mso-line-height-rule: exactly; margin: 0; outline=
: none; padding: 0; color: inherit; font-size: 12px; font-weight: inherit; =
line-height: 1; text-decoration: inherit; font-family: arial;"> <div style=
=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: 14px; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;"> <di=
v style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit;"> <span style=3D"color: #244df0; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;" class=3D""><br><span =
style=3D"color: inherit; font-size: inherit; font-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit; margin: 0;"><div style=3D"margin: 0=
; outline: none; padding: 0; color: inherit; font-size: inherit; font-weigh=
t: 400; line-height: inherit; text-decoration: inherit; font-family: arial;=
 font-style: normal;=0Atext-align: -webkit-left;"><span style=3D"color: inh=
erit; font-size: inherit; font-weight: inherit; line-height: inherit; text-=
decoration: inherit; font-family: arial;">If you have any questions please =
do not hesitate to call.=C2=A0 We pride ourselves on always being available=
 to our clients.</span></div>=0A<div style=3D"margin: 0; outline: none; pad=
ding: 0; color: inherit; font-size: inherit; font-weight: 400; line-height:=
 inherit; text-decoration: inherit; font-family: arial; font-style: normal;=
 text-align: -webkit-left;"><br style=3D""></div>=0A<div style=3D"margin: 0=
; outline: none; padding: 0; color: inherit; font-size: inherit; font-weigh=
t: 400; line-height: inherit; text-decoration: inherit; font-family: arial;=
 font-style: normal; text-align: -webkit-left;"><span style=3D"color: inher=
it; font-size: inherit; font-weight: inherit; line-height: inherit; text-de=
coration: inherit; font-family: arial;">Sincerely,</span></div>=0A<div styl=
e=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: inher=
it; font-weight: 400; line-height: inherit; text-decoration: inherit; font-=
family: arial; font-style: normal; text-align: -webkit-left;"><br style=3D"=
"></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: inher=
it; font-size: inherit; font-weight: 400; line-height: inherit; text-decora=
tion: inherit; font-family: arial; font-style: normal; text-align: -webkit-=
left;"><span style=3D"color: inherit; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;"><span style=3D"color:=
 inherit; font-size: inherit; font-weight: bold; line-height: inherit; text=
-decoration: inherit; font-family: arial;">Samuel Brugman</span><span style=
=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;"> </span><span style=
=3D"color: inherit; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; font-family: arial;">| </span><span style=
=3D"color: inherit; font-size: inherit; font-weight: inherit; line-height: =
inherit; text-decoration: inherit; font-family: arial;">Funding Manager</sp=
an></span></div>=0A</span></span></div>=0A </div>=0A</td>=0A</tr>=0A</table=
>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row1162" cl=
ass=3D"layout layout-row clear-this " style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"layout-row-padding1162" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout_table_3a0a026c5a505af0a4003c2578707991cbe1696d=
" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><ta=
ble cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout=
-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-si=
ze-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100=
%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-hei=
ght-rule: exactly;"><td id=3D"layout-row-margin1160" valign=3D"top" style=
=3D"mso-line-height-rule:=0Aexactly; padding: 5px;"><table width=3D"100%" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adju=
st: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !importa=
nt; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspa=
ce: 0pt;"><tr id=3D"layout-row1160" class=3D"layout layout-row widget _widg=
et_text style1160" style=3D"mso-line-height-rule: exactly; margin: 0; paddi=
ng: 0; background-color: #244df0;"><td id=3D"layout-row-padding1160" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0;=
 padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"text_div988" class=3D"td_text td_block" valign=3D"top" a=
lign=3D"left" width=3D"305" style=3D"mso-line-height-rule: exactly; margin:=
 0;=0Aoutline: none; padding: 0; color: inherit; font-size: 12px; font-weig=
ht: inherit; line-height: 1; text-decoration: inherit; font-family: arial;"=
> <div style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-=
size: inherit; font-weight: inherit; line-height: inherit; text-decoration:=
 inherit;"><div style=3D"margin: 0; outline: none; padding: 0; color: inher=
it; font-size: 16px; font-weight: inherit; line-height: inherit; text-decor=
ation: inherit; text-align: center;"><span style=3D"color: #53ff14; font-si=
ze: inherit; font-weight: bold; line-height: inherit; text-decoration: inhe=
rit; font-family: arial; text-align: inherit;" class=3D"">Motor City Fundin=
g</span></div>=0A <div style=3D"margin: 0; outline: none; padding: 0; color=
: inherit; font-size: 14px; font-weight: inherit; line-height: inherit; tex=
t-decoration: inherit; text-align: center;"><span style=3D"color: #ffffff; =
font-size: inherit; font-weight: inherit; line-height: inherit; text-decora=
tion: inherit; font-family: arial; text-align: inherit;" class=3D"">3000 To=
wn Center</span></div>=0A<span style=3D"color: #ffffff; font-size: 14px; fo=
nt-weight: inherit; line-height: inherit; text-decoration: inherit; font-fa=
mily: arial; font-style: normal;" class=3D""><div style=3D"margin: 0; outli=
ne: none; padding: 0; color: inherit; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; text-align: center;"><=
span style=3D"color: inherit; font-size: inherit; font-weight: inherit; lin=
e-height: inherit; text-decoration: inherit; font-family: arial; text-align=
: inherit;">Southfield, MI 48076</span></div>=0A<div style=3D"margin: 0; ou=
tline: none; padding: 0; color: inherit; font-size: inherit; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit; font-style: normal;=
 font-family: arial; text-align: center;"><span style=3D"color: inherit; fo=
nt-size: inherit; font-weight: inherit; line-height: inherit; text-decorati=
on: inherit; font-family: arial; text-align: inherit;">O: (315) 257-1195</s=
pan></div>=0A</span></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_d60a477d6=
5332b1a0a9962eeea10ec92f569c5b9" valign=3D"top" width=3D"325" style=3D"mso-=
line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bord=
er=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-mar=
gin1161" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 8p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1161" class=3D"lay=
out layout-row widget _widget_button style1161" style=3D"mso-line-height-ru=
le: exactly; background-color: #244df0;"><td id=3D"layout-row-padding1161" =
valign=3D"top"=0Astyle=3D"mso-line-height-rule: exactly; background-color: =
#244df0; padding: 14px;"><table width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size=
-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%;=
 mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heigh=
t-rule: exactly;"><td class=3D"td_button td_block customizable" valign=3D"t=
op" align=3D"left" width=3D"281" style=3D"mso-line-height-rule: exactly;"> =
<div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padding: 0=
; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas=
-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=
=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-text-anchor:middle; wi=
dth:135px; height:58px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#=
57db28" strokeweight=3D"1pt" fillcolor=3D"#57db28" o:button=3D"true" o:allo=
wincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px=
,2px"> <center style=3D"color:#ffffff;font-family:Arial; font-size:14px; fo=
nt-weight: bold;line-height: 1.1;">CONTACT US</center> </v:textbox> </v:rou=
ndrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@motorcityfunding.com" sty=
le=3D"margin: 0; outline: none; padding: 12px; color: #ffffff; background: =
#57db28; background-color: #57db28; border-radius: 3px; font-family: Arial;=
 font-size: 14px; display: inline-block; line-height: 1.1; text-align: cent=
er; text-decoration: none; mso-hide: all;"> <span style=3D"color:#ffffff;fo=
nt-family:Arial;font-size:14px;font-weight: bold;"> CONTACT US </span> </a>=
 </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</=
td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</div>=0A<img src=3D"ht=
tps://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?nl=3D1&c=3D48&m=3D7=
4&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&account=3Dmotorcityfunding.=
activehosted.com&a=3D225362583" border=3D"0" width=3D"1" height=3D"1" style=
=3D"display:block;width:1px!important;min-width:1px!important;max-width:1px=
!important;height:1px!important;border:0;overflow:hidden;" /><div id=3D"ac-=
footer" style=3D"clear:both;background-color:inherit;background:inherit;min=
-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;padding:20px;color:#0=
00000;font-size:11px;font-family:arial,helvetica,sans-serif;line-height:140=
%;line-height:1.4;text-align:center;box-sizing:border-box;">=0A=09<center>=
=0A=09=09Sent to: <span style=3D"font-size:11px;font-family:arial,helvetica=
,sans-serif;font-weight:normal;text-decoration:none;outline:none;">linux139=
4-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a h=
ref=3D"http://motorcityfunding.activehosted.com/proc.php?nl=3D1&c=3D48&m=3D=
74&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" style=3D"font-size:11p=
x;font-family:arial,helvetica,sans-serif;font-weight:bold;text-decoration:u=
nderline;"><span style=3D"font-weight:bold;text-decoration:underline;">Unsu=
bscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor City Funding, 3000 Town =
Center, Southfield, United States=0A=09</center>=0A</div>=0A<br clear=3D"al=
l" /></body>=0A</html>
--_=_swift-162136602361a6369d17ff24.59015401_=_--



--===============2831823414442776946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2831823414442776946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2831823414442776946==--


