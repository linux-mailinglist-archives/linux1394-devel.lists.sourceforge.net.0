Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA41456507
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Nov 2021 22:27:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mnowL-0000Uq-5s; Thu, 18 Nov 2021 21:27:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-40-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1mnowJ-0000Uk-Gx
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Nov 2021 21:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QmIhXyJd5mkwlpkNOzmNt527K6CSscdR1am3k6+6klI=; b=RoyLWa0ss0nlsRNr25gYTrtKun
 AVN1H33DvoZF31u8+RNt2MF66bZ/65X6FUTT7e/PjB3qu4rrNDN/HV4QnYqP4TXZwuKGEqKdQDkJh
 NohVJCSAJP1sekU0WBAnQ1SBd+DgYhqPxQ8i1W+XeheL88tbZeb5XcnyIghuoUzpdQCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=QmIhXyJd5mkwlpkNOzmNt527K6CSscdR1am3k6+6klI=; b=IzYkIOkWbGqa
 zBc98Wl1UA5rgxuNRpw8CxR1nDpX3c/hrPXFg64orkRDfkzqd30num8R/d2DawCrCevYHBZgIna5/
 09ufQQdYe536/5sshqCi91HZnN5AgOWISYFA0Oj9KnTaqtQcORbubeQXBFisKYqU3OR3KoYyUvlig
 17y0s=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnowG-000LsE-Hi
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Nov 2021 21:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=QmIhXyJd5mkwlpkNOzmNt527K6CSscdR1am3k6+6klI=;
 b=pkz1zUUeafxOiA69Y+TNmrben4qPERydJfChl5KDmfDQykD0nvq0H9XsxBEgH7y5zzlC/GZVoF/+
 Sfj7mvUBeTOySU/jn8H3YKP8ZAvsWvbk46jwhyioKX4h0SC8EL+3YA2VFNCO9DZV+gqQebZuQrYw
 nm2ryEQKavwhSeJBEHg=
Received: by s15.avl4.acemsrvd.com id hir2j42q274k for
 <linux1394-devel@lists.sourceforge.net>;
 Thu, 18 Nov 2021 21:27:13 +0000 (envelope-from
 <bounce-2287853-40-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Admin" <sbrugman@motorcityfunding.com>
Subject: SBA EIDL Update!
Date: Thu, 18 Nov 2021 15:25:34 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGM0MCAsIG02NCAsIHMzNQ
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-40
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20211118212713.4004.2015162976.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  New December 31st Deadline Approaching ~ Apply Now!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
    [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1mnowG-000LsE-Hi
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
Content-Type: multipart/mixed; boundary="===============4248064640004108121=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4248064640004108121==
Content-Type: multipart/alternative;
 boundary="_=_swift-18006555216196c4ce5b5149.86747216_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-18006555216196c4ce5b5149.86747216_=_
Content-Type: text/plain; charset=utf-8

New December 31st Deadline Approaching ~ Apply Now! 
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=40&amp;m=64&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-18006555216196c4ce5b5149.86747216_=_
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
ow1039 { max-height: 0px!important; font-size: 0px!important; display: none=
!important; visibility: hidden!important; } #layout-row1040 img { width: 10=
0% !important; height: auto !important; max-width: 320px !important; } #lay=
out-row1041 img { width: 100% !important; height: auto !important; max-widt=
h: 320px !important; } #layout-row1043 img { width: 100% !important; height=
: auto !important; max-width: 320px !important; } #layout-row1051 img { wid=
th: 100% !important; height: auto !important; max-width: 320px !important; =
} table, tbody, td, .divbody { display: table !important; width: 100% !impo=
rtant; max-width: 100% !important; } .td_rss .rss-item img.iphone_large_ima=
ge { width: auto !important; } u + .body { display: table !important; width=
: 100vw !important; min-width: 100vw !important; } u + .body table { displa=
y: table !important; width: 100% !important; min-width: 100%=0A!important; =
} u + .body td { display: block !important; width: 100% !important; min-wid=
th: 100% !important; } u + .body img { display: inline-block !important; ma=
rgin: auto !important; width: auto !important; vertical-align: bottom !impo=
rtant; } u + .body center { display: block !important; margin: auto !import=
ant; width: 100% !important; min-width: 100% !important; text-align: center=
 !important; } u + .body table._ac_social_table, u + .body table._ac_social=
_table td, u + .body table._ac_social_table div, u + .body table._ac_social=
_table a { display: inline-block !important; margin: auto !important; width=
: auto !important; min-width: auto !important; text-align: center !importan=
t; } u + .body table._ac_social_table img { display: inline-block !importan=
t; margin: auto !important; width: 32px !important; min-width: 32px !import=
ant; max-width: 32px !important; }=0A}=0A@media only screen and (max-width:=
 375px) { #layout-row1039 { max-height: 0px!important; font-size: 0px!impor=
tant; display: none!important; visibility: hidden!important; } #layout-row1=
040 img { width: 100% !important; height: auto !important; max-width: 375px=
 !important; } #layout-row1041 img { width: 100% !important; height: auto !=
important; max-width: 375px !important; } #layout-row1043 img { width: 100%=
 !important; height: auto !important; max-width: 375px !important; } #layou=
t-row1051 img { width: 100% !important; height: auto !important; max-width:=
 375px !important; } table, tbody, td, .divbody { display: table !important=
; width: 100% !important; max-width: 100% !important; } .td_rss .rss-item i=
mg.iphone_large_image { width: auto !important; } u + .body { display: tabl=
e !important; width: 100vw !important; min-width: 100vw !important; } u + .=
body table { display: table !important; width: 100% !important; min-width: =
100% !important; } u + .body td { display:=0Ablock !important; width: 100% =
!important; min-width: 100% !important; } u + .body img { display: inline-b=
lock !important; margin: auto !important; width: auto !important; vertical-=
align: bottom !important; } u + .body center { display: block !important; m=
argin: auto !important; width: 100% !important; min-width: 100% !important;=
 text-align: center !important; } u + .body table._ac_social_table, u + .bo=
dy table._ac_social_table td, u + .body table._ac_social_table div, u + .bo=
dy table._ac_social_table a { display: inline-block !important; margin: aut=
o !important; width: auto !important; min-width: auto !important; text-alig=
n: center !important; } u + .body table._ac_social_table img { display: inl=
ine-block !important; margin: auto !important; width: 32px !important; min-=
width: 32px !important; max-width: 32px !important; }=0A}=0A@media only scr=
een and (max-width: 414px) { #layout-row1039 { max-height: 0px!important; f=
ont-size: 0px!important; display: none!important; visibility: hidden!import=
ant; } #layout-row1040 img { width: 100% !important; height: auto !importan=
t; max-width: 414px !important; } #layout-row1041 img { width: 100% !import=
ant; height: auto !important; max-width: 380px !important; } #layout-row104=
3 img { width: 100% !important; height: auto !important; max-width: 414px !=
important; } #layout-row1051 img { width: 100% !important; height: auto !im=
portant; max-width: 414px !important; } table, tbody, td, .divbody { displa=
y: table !important; width: 100% !important; max-width: 100% !important; } =
.td_rss .rss-item img.iphone_large_image { width: auto !important; } u + .b=
ody { display: table !important; width: 100vw !important; min-width: 100vw =
!important; } u + .body table { display: table !important; width: 100% !imp=
ortant; min-width: 100% !important; } u + .body td { display:=0Ablock !impo=
rtant; width: 100% !important; min-width: 100% !important; } u + .body img =
{ display: inline-block !important; margin: auto !important; width: auto !i=
mportant; vertical-align: bottom !important; } u + .body center { display: =
block !important; margin: auto !important; width: 100% !important; min-widt=
h: 100% !important; text-align: center !important; } u + .body table._ac_so=
cial_table, u + .body table._ac_social_table td, u + .body table._ac_social=
_table div, u + .body table._ac_social_table a { display: inline-block !imp=
ortant; margin: auto !important; width: auto !important; min-width: auto !i=
mportant; text-align: center !important; } u + .body table._ac_social_table=
 img { display: inline-block !important; margin: auto !important; width: 32=
px !important; min-width: 32px !important; max-width: 32px !important; }=0A=
}=0A@media only screen and (max-width: 667px) { #layout-row1039 { max-heigh=
t: 0px!important; font-size: 0px!important; display: none!important; visibi=
lity: hidden!important; } #layout-row1040 img { width: 100% !important; hei=
ght: auto !important; max-width: 667px !important; } #layout-row1041 img { =
width: 100% !important; height: auto !important; max-width: 380px !importan=
t; } #layout-row1043 img { width: 100% !important; height: auto !important;=
 max-width: 667px !important; } #layout-row1051 img { width: 100% !importan=
t; height: auto !important; max-width: 667px !important; } table, tbody, td=
, .divbody { display: table !important; width: 100% !important; max-width: =
100% !important; } .td_rss .rss-item img.iphone_large_image { width: auto !=
important; } u + .body { display: table !important; width: 100vw !important=
; min-width: 100vw !important; } u + .body table { display: table !importan=
t; width: 100% !important; min-width: 100% !important; } u + .body td { dis=
play:=0Ablock !important; width: 100% !important; min-width: 100% !importan=
t; } u + .body img { display: inline-block !important; margin: auto !import=
ant; width: auto !important; vertical-align: bottom !important; } u + .body=
 center { display: block !important; margin: auto !important; width: 100% !=
important; min-width: 100% !important; text-align: center !important; } u +=
 .body table._ac_social_table, u + .body table._ac_social_table td, u + .bo=
dy table._ac_social_table div, u + .body table._ac_social_table a { display=
: inline-block !important; margin: auto !important; width: auto !important;=
 min-width: auto !important; text-align: center !important; } u + .body tab=
le._ac_social_table img { display: inline-block !important; margin: auto !i=
mportant; width: 32px !important; min-width: 32px !important; max-width: 32=
px !important; }=0A} </style><!--[if !mso]><!-- webfonts --><!--<![endif]--=
><!--[if lt mso 12]> <![endif]--><!--[if gte mso 9]>=0A<xml> <o:OfficeDocum=
entSettings> <o:AllowPNG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:Office=
DocumentSettings>=0A</xml>=0A<![endif]--></head><body id=3D"ac-designer" cl=
ass=3D"body" style=3D"font-family: Arial; line-height: 1.1; margin: 0px; ba=
ckground-color: #FFFFFF; width: 100%; text-align: center;">=09=09<div style=
=3D"display: none !important; padding: 0; height: 1px; font-size: 1px; back=
ground-color: inherit !important; opacity: 0; color: transparent; mso-line-=
height-rule: exactly; line-height:1px; mso-hide:all;">=0A=09=09=09New Decem=
ber 31st Deadline Approaching ~ Apply Now!=0A=09=09=09<div style=3D"display=
: none; max-height: 0px; overflow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=
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
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=
=E2=80=8C=0A=09=09=09</div>=0A=0A=09=09</div>=0A<div class=3D"divbody" styl=
e=3D"margin: 0px; outline: none; padding: 0px; color: #000000; font-family:=
 arial; line-height: 1.1; width: 100%; background-color: #FFFFFF; backgroun=
d: #FFFFFF; text-align: center;"><table class=3D"template-table" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" align=3D"left" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: auto; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt; background-color: #FFFFFF; background: #FFFFFF;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td align=3D"center" valign=3D"top"=
 width=3D"100%" style=3D"mso-line-height-rule: exactly;"><table class=3D"te=
mplate-table" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"650=
" bgcolor=3D"#FFFFFF" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: auto=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt; max-width: 650px;"><tr=0Ast=
yle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_cc88153f4aaa0=
3fcdc7cf18265338fa2ddc27045" valign=3D"top" align=3D"center" width=3D"650" =
style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspaci=
ng=3D"0" border=3D"0" class=3D"layout layout-table root-table" width=3D"650=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td id=3D"layout-row-margin1039" valign=3D"top" style=3D"mso-line-height-rul=
e: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1039" class=3D"layo=
ut layout-row widget _widget_spacer " style=3D"mso-line-height-rule: exactl=
y;"><td id=3D"layout-row-padding1039" valign=3D"top"=0Astyle=3D"mso-line-he=
ight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adj=
ust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso=
-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-ru=
le: exactly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rul=
e: exactly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; paddi=
ng: 0; height: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"=
0" width=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-r=
ule: exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=
=3D"650" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</t=
able>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td=
>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-r=
ow-margin1040" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-t=
able-rspace: 0pt;"><tr id=3D"layout-row1040" class=3D"layout layout-row wid=
get _widget_picture " align=3D"center" style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"layout-row-padding1040" valign=3D"top" style=3D"mso-line-hei=
ght-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rul=
e: exactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" width=
=3D"650" style=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://con=
tent.app-us1.com/Rnj5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?=
r=3D79183668" alt=3D"" width=3D"325" style=3D"display: block; border: none;=
 outline: none; width: 325px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-margin1038" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 0;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !import=
ant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr id=3D"layout-row1038" class=3D"layout layout-row widget _wid=
get_text style1038" style=3D"mso-line-height-rule: exactly; margin: 0; padd=
ing: 0; background-color: #244df0;"><td id=3D"layout-row-padding1038" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #244df0=
; padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 1=
00%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table=
-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"text_div883"=0Aclass=3D"td_text td_block" valign=3D"top" =
align=3D"left" width=3D"650" style=3D"line-height: 140%; mso-line-height-ru=
le: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-siz=
e: 12px; font-weight: inherit; line-height: 1.4; text-decoration: inherit; =
font-family: arial;"> <div style=3D"line-height: 140%; margin: 0; outline: =
none; padding: 0; color: #ffffff; font-size: 18px; font-weight: inherit; li=
ne-height: 1.4; text-decoration: inherit; mso-line-height-rule: exactly;" d=
ata-line-height=3D"1.4"> <div style=3D"margin: 0; outline: none; padding: 0=
; color: #ffffff; font-size: inherit; font-weight: inherit; line-height: in=
herit; text-decoration: inherit; text-align: center;"><span style=3D"color:=
 #ffffff; font-size: inherit; font-weight: bold; line-height: inherit; text=
-decoration: inherit;" class=3D""><span style=3D"color: #ffffff; font-size:=
 inherit; font-weight: inherit; line-height: inherit; text-decoration: inhe=
rit; text-align: inherit;">The Small Business Administration=0Ahas moved th=
e deadline for all EIDL </span><span style=3D"color: #ffffff; font-size: in=
herit; font-weight: inherit; line-height: inherit; text-decoration: inherit=
; text-align: inherit;">applications</span><span style=3D"color: #ffffff; f=
ont-size: inherit; font-weight: inherit; line-height: inherit; text-decorat=
ion: inherit; text-align: inherit;"> to December 31st 2021 Apply before the=
 deadline!</span></span></div>=0A </div>=0A<!--[if (gte mso 12)&(lte mso 15=
) ]>=0A<style data-ac-keep=3D"true" data-ac-inline=3D"false"> #text_div883,=
 #text_div883 div { line-height: 140% !important; };=0A</style>=0A<![endif]=
--></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1051"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1051" class=3D"layout layout-row widget _widget_pi=
cture " align=3D"left" style=3D"mso-line-height-rule: exactly;"><td id=3D"l=
ayout-row-padding1051" valign=3D"top" style=3D"mso-line-height-rule: exactl=
y;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"image-td" align=3D"left" valign=3D"top" width=3D"650" style=3D"ms=
o-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.com/Rnj=
5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D1646225914" alt=
=3D"" width=3D"650" style=3D"display: block; border: none; outline: none; w=
idth: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly;"><td id=3D"layout-row-margin1041" valign=3D"top" style=3D"mso-line-h=
eight-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1041" clas=
s=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding1041" valign=3D"=
top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"cen=
ter" valign=3D"top" width=3D"650" style=3D"mso-line-height-rule: exactly;">=
<img=0Asrc=3D"https://content.app-us1.com/Rnj5K/2021/11/08/8db24c11-71e7-45=
9f-ab55-2957448b054e.jpeg?r=3D15580330" alt=3D"" width=3D"380" style=3D"dis=
play: block; border: none; outline: none; width: 380px; opacity: 1; max-wid=
th: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-mar=
gin1042" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1042" class=3D"lay=
out layout-row widget _widget_text style1042" style=3D"mso-line-height-rule=
: exactly; margin: 0; padding: 0; background-color: #244df0;"><td id=3D"lay=
out-row-padding1042" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
 background-color: #244df0; padding: 5px;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"text_div887" class=3D"td_te=
xt td_block" valign=3D"top" align=3D"left" width=3D"630" style=3D"mso-line-=
height-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit;=
 font-size: 12px; font-weight: inherit; line-height: 1; text-decoration: in=
herit; font-family: arial;"> <div style=3D"margin: 0; outline: none; paddin=
g: 0; color: inherit; font-size: 18px; font-weight: inherit; line-height: i=
nherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none;=
 padding: 0; color: #ffffff; font-size: inherit; font-weight: inherit; line=
-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outl=
ine: none; padding: 0; color: #ffffff; font-size: inherit; font-weight: inh=
erit; line-height: inherit; text-decoration: inherit; text-align: center;">=
<span style=3D"color: #ffffff; font-size: inherit; font-weight: bold; line-=
height: inherit; text-decoration: inherit;" class=3D"">What is the EIDL? </=
span></div>=0A </div>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layout-row1046" class=3D"layout lay=
out-row clear-this " style=3D"mso-line-height-rule: exactly;"><td id=3D"lay=
out-row-padding1046" valign=3D"top" style=3D"mso-line-height-rule: exactly;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td i=
d=3D"layout_table_7bb9c89ab6d64ad143a1167e3f4170b1545ed4d3" valign=3D"top" =
width=3D"325" style=3D"mso-line-height-rule: exactly;"><table cellpadding=
=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-table " width=
=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100=
%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exac=
tly;"><td id=3D"layout-row-margin1043" valign=3D"top" style=3D"mso-line-hei=
ght-rule:=0Aexactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-ad=
just: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; ms=
o-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1043" clas=
s=3D"layout layout-row widget _widget_picture " align=3D"center" style=3D"m=
so-line-height-rule: exactly;"><td id=3D"layout-row-padding1043" valign=3D"=
top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"cen=
ter" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;">=
<img src=3D"https://content.app-us1.com/Rnj5K/2021/10/19/8657e27f-7004-40ca=
-ba8e-9b2b418af77c.png?r=3D2067523847" alt=3D"" width=3D"203"=0Astyle=3D"di=
splay: block; border: none; outline: none; width: 203px; opacity: 1; max-wi=
dth: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<=
/tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_38c3e8951210bd1ffeaac3d15f=
a18ea840606661" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule:=
 exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D=
"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin1044" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row1044" class=3D"layout layout-row =
widget _widget_text style1044" style=3D"mso-line-height-rule: exactly; marg=
in: 0; padding: 0;"><td id=3D"layout-row-padding1044" valign=3D"top"=0Astyl=
e=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjus=
t: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-si=
ze: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><=
tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div889" class=3D=
"td_text td_block" valign=3D"top" align=3D"left" width=3D"305" style=3D"mso=
-line-height-rule: exactly; margin: 0; outline: none; padding: 0; color: in=
herit; font-size: 12px; font-weight: inherit; line-height: 1; text-decorati=
on: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; =
padding: 0; color: inherit; font-size: 15px; font-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline:=
 none; padding: 0; color: inherit; font-size: inherit; font-weight: inherit=
; line-height: inherit; text-decoration: inherit;"><ul style=3D"margin: 0 0=
 0 40px; padding: 0;"><li=0Astyle=3D"display: list-item; line-height: inher=
it; list-style-type: disc; margin: 0 0 0 3px;"><span style=3D"color: #244df=
0; font-size: inherit; font-weight: bold; line-height: inherit; text-decora=
tion: inherit; text-align: inherit;" class=3D"">Up to $2,000,000</span></li=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0 0 0 3px;"><span style=3D"color: #244df0; font-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; text-ali=
gn: inherit;" class=3D"">No payments for the first 24 months</span></li><li=
 style=3D"display: list-item; line-height: inherit; list-style-type: disc; =
margin: 0 0 0 3px;"><span style=3D"color: #244df0; font-size: inherit; font=
-weight: bold; line-height: inherit; text-decoration: inherit; text-align: =
inherit;" class=3D"">3.75% fixed interest rate over 30 years! </span></li><=
li style=3D"display: list-item; line-height: inherit; list-style-type: disc=
; margin: 0 0 0 3px;"><span style=3D"color: #244df0;=0Afont-size: inherit; =
font-weight: bold; line-height: inherit; text-decoration: inherit; text-ali=
gn: inherit;" class=3D"">Short for Economic Injury Disaster Loan</span></li=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size=
: inherit; font-weight: bold; line-height: inherit; text-decoration: inheri=
t; text-align: inherit;">Part of the CARES act passed in March of 2020 </sp=
an></li><li style=3D"display: list-item; line-height: inherit; list-style-t=
ype: disc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; fo=
nt-size: inherit; font-weight: bold; line-height: inherit; text-decoration:=
 inherit; text-align: inherit;">All US business owners can apply</span></li=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-size=
: inherit; font-weight: bold; line-height: inherit; text-decoration: inheri=
t;=0Atext-align: inherit;">Based off of 2019 business tax returns</span></l=
i><li style=3D"display: list-item; line-height: inherit; list-style-type: d=
isc; margin: 0 0 0 3px;"><span class=3D"" style=3D"color: #244df0; font-siz=
e: inherit; font-weight: bold; line-height: inherit; text-decoration: inher=
it; text-align: inherit;">Minimum FICO of 550</span></li></ul></div>=0A </d=
iv>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-margin1045" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%=
" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-a=
djust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !impo=
rtant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row1045" class=3D"layout layout-row widget _w=
idget_button style1045" style=3D"mso-line-height-rule: exactly; background-=
color: #244df0;"><td id=3D"layout-row-padding1045" valign=3D"top" style=3D"=
mso-line-height-rule: exactly; background-color: #244df0; padding: 5px;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td clas=
s=3D"td_button td_block=0Acustomizable" valign=3D"top" align=3D"left" width=
=3D"630" style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wra=
pper" style=3D"margin: 0; outline: none; padding: 0; text-align: center;">=
=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xml=
ns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motorcityfun=
ding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5=
wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DCemtRNj7atNaLYEmpWy3nhC5JDcsfzfypwa=
1vDft7XUN&iat=3D1637270833&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfun=
ding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%=
2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D40A64A1A=
117" style=3D"v-text-anchor:middle; width:130px; height:60px; font-weight: =
bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolo=
r=3D"#ff1414" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"fa=
lse" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff=
;font-family:Arial; font-size:14px; font-weight: bold;line-height: 1.1;">AP=
PLY NOW</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"http=
s://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCU=
zQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3DCemtRNj7atNaLYEmpWy=
3nhC5JDcsfzfypwa1vDft7XUN&iat=3D1637270833&a=3D%7C%7C225362583%7C%7C&accoun=
t=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU=
0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c926=
8b7&i=3D40A64A1A117" style=3D"margin: 0; outline: none; padding: 12px; colo=
r: #ffffff; background: #ff1414; background-color: #ff1414; border: 1px sol=
id #B5B5B5; border-radius: 3px; font-family: Arial; font-size: 14px; displa=
y: inline-block; line-height: 1.1; text-align: center; text-decoration: non=
e; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-siz=
e:14px;font-weight: bold;"> APPLY NOW </span> </a> </div>=0A=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-=
line-height-rule: exactly;"><td id=3D"layout-row-margin1047" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: initial !imp=
ortant; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr id=3D"layout-row1047" class=3D"layout layout-row widget _=
widget_text style1047" style=3D"mso-line-height-rule: exactly; margin: 0; p=
adding: 0;"><td id=3D"layout-row-padding1047" valign=3D"top" style=3D"mso-l=
ine-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"text_div891" class=3D"td_text=
 td_block" valign=3D"top" align=3D"left"=0Awidth=3D"630" style=3D"mso-line-=
height-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit;=
 font-size: 12px; font-weight: inherit; line-height: 1; text-decoration: in=
herit; font-family: arial;"> <div style=3D"margin: 0; outline: none; paddin=
g: 0; color: inherit; font-size: 14px; font-weight: inherit; line-height: i=
nherit; text-decoration: inherit;"> <div style=3D"margin: 0; outline: none;=
 padding: 0; color: inherit; font-size: inherit; font-weight: inherit; line=
-height: inherit; text-decoration: inherit;"> <span style=3D"color: #244df0=
; font-size: inherit; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit;" class=3D""><br><span style=3D"color: inherit; font-size: =
inherit; font-weight: inherit; line-height: inherit; text-decoration: inher=
it; margin: 0;"><div style=3D"margin: 0; outline: none; padding: 0; color: =
inherit; font-size: inherit; font-weight: 400; line-height: inherit; text-d=
ecoration: inherit; font-family: arial; font-style: normal;=0Atext-align: -=
webkit-left;"><span style=3D"color: inherit; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit; font-family: ar=
ial;">If you have any questions please do not hesitate to call.=C2=A0 We pr=
ide ourselves on always being available to our clients.</span></div>=0A<div=
 style=3D"margin: 0; outline: none; padding: 0; color: inherit; font-size: =
inherit; font-weight: 400; line-height: inherit; text-decoration: inherit; =
font-family: arial; font-style: normal; text-align: -webkit-left;"><br styl=
e=3D""></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: =
inherit; font-size: inherit; font-weight: 400; line-height: inherit; text-d=
ecoration: inherit; font-family: arial; font-style: normal; text-align: -we=
bkit-left;"><span style=3D"color: inherit; font-size: inherit; font-weight:=
 inherit; line-height: inherit; text-decoration: inherit; font-family: aria=
l;">Sincerely,</span></div>=0A<div style=3D"margin: 0; outline: none; paddi=
ng: 0; color: inherit; font-size: inherit; font-weight: 400; line-height: i=
nherit; text-decoration: inherit; font-family: arial; font-style: normal; t=
ext-align: -webkit-left;"><br style=3D""></div>=0A<div style=3D"margin: 0; =
outline: none; padding: 0; color: inherit; font-size: inherit; font-weight:=
 400; line-height: inherit; text-decoration: inherit; font-family: arial; f=
ont-style: normal; text-align: -webkit-left;"><span style=3D"color: inherit=
; font-size: inherit; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit;"><span style=3D"color: inherit; font-size: inherit; font-w=
eight: bold; line-height: inherit; text-decoration: inherit; font-family: a=
rial;">Samuel Brugman</span><span style=3D"color: inherit; font-size: inher=
it; font-weight: inherit; line-height: inherit; text-decoration: inherit; f=
ont-family: arial;"> </span><span style=3D"color: inherit; font-size: inher=
it; font-weight: bold; line-height: inherit; text-decoration: inherit; font=
-family: arial;">| </span><span style=3D"color: inherit; font-size: inherit=
; font-weight: inherit; line-height: inherit; text-decoration: inherit; fon=
t-family: arial;">Funding Manager</span></span></div>=0A</span></span></div=
>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr id=3D"layout-row1050" class=3D"layout layout-row clear-this =
" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padding1050=
" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"1=
00%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_e=
1328cf7993ba5dd6448b6a3f28b52847d736cc7" valign=3D"top" width=3D"325" style=
=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0" class=3D"layout layout-table " width=3D"325" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin1048" valign=3D"top" style=3D"mso-line-height-rule:=0Aexactly; p=
adding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: initial !important; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row1048" cl=
ass=3D"layout layout-row widget _widget_text style1048" style=3D"mso-line-h=
eight-rule: exactly; margin: 0; padding: 0; background-color: #244df0;"><td=
 id=3D"layout-row-padding1048" valign=3D"top" style=3D"mso-line-height-rule=
: exactly; background-color: #244df0; padding: 5px;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div892" class=
=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"305" style=3D"=
mso-line-height-rule: exactly; margin: 0;=0Aoutline: none; padding: 0; colo=
r: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-dec=
oration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: n=
one; padding: 0; color: inherit; font-size: inherit; font-weight: inherit; =
line-height: inherit; text-decoration: inherit;"><div style=3D"margin: 0; o=
utline: none; padding: 0; color: inherit; font-size: 16px; font-weight: inh=
erit; line-height: inherit; text-decoration: inherit; text-align: center;">=
<span style=3D"color: #53ff14; font-size: inherit; font-weight: bold; line-=
height: inherit; text-decoration: inherit; font-family: arial; text-align: =
inherit;" class=3D"">Motor City Funding</span></div>=0A <div style=3D"margi=
n: 0; outline: none; padding: 0; color: inherit; font-size: 14px; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; text-align: ce=
nter;"><span style=3D"color: #ffffff; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; font-family: arial; te=
xt-align: inherit;" class=3D"">3000 Town Center</span></div>=0A<span style=
=3D"color: #ffffff; font-size: 14px; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; font-family: arial; font-style: normal;" cl=
ass=3D""><div style=3D"margin: 0; outline: none; padding: 0; color: inherit=
; font-size: inherit; font-weight: inherit; line-height: inherit; text-deco=
ration: inherit; text-align: center;"><span style=3D"color: inherit; font-s=
ize: inherit; font-weight: inherit; line-height: inherit; text-decoration: =
inherit; font-family: arial; text-align: inherit;">Southfield, MI 48076</sp=
an></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size: inherit; font-weight: inherit; line-height: inherit; text-d=
ecoration: inherit; font-style: normal; font-family: arial; text-align: cen=
ter;"><span style=3D"color: inherit; font-size: inherit; font-weight: inher=
it; line-height: inherit; text-decoration: inherit; font-family: arial; tex=
t-align: inherit;">O: (315) 257-1195</span></div>=0A</span></div>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A<td id=3D"layout_table_118a983c6ec418ef1046cc6092f1942394ea3a2b"=
 valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exactly;"><tab=
le cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"layout layout-=
table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webkit-text-siz=
e-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%=
; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-heig=
ht-rule: exactly;"><td id=3D"layout-row-margin1049" valign=3D"top" style=3D=
"mso-line-height-rule: exactly; padding: 8px;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: initial !important; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row1049" class=3D"layout layout-row widget _widget_bu=
tton style1049" style=3D"mso-line-height-rule: exactly; background-color: #=
244df0;"><td id=3D"layout-row-padding1049" valign=3D"top"=0Astyle=3D"mso-li=
ne-height-rule: exactly; background-color: #244df0; padding: 14px;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"t=
d_button td_block customizable" valign=3D"top" align=3D"left" width=3D"281"=
 style=3D"mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" st=
yle=3D"margin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[i=
f mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"u=
rn:schemas-microsoft-com:office:word" href=3D"mailto:sbrugman@motorcityfund=
ing.com" style=3D"v-text-anchor:middle; width:135px; height:58px; font-weig=
ht: bold;" arcsize=3D"6%" strokecolor=3D"#57db28" strokeweight=3D"1pt" fill=
color=3D"#57db28" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=
=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#=
ffffff;font-family:Arial; font-size:14px; font-weight: bold;line-height: 1.=
1;">CONTACT US</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=
=3D"mailto:sbrugman@motorcityfunding.com" style=3D"margin: 0; outline: none=
; padding: 12px; color: #ffffff; background: #57db28; background-color: #57=
db28; border-radius: 3px; font-family: Arial; font-size: 14px; display: inl=
ine-block; line-height: 1.1; text-align: center; text-decoration: none; mso=
-hide: all;"> <span style=3D"color:#ffffff;font-family:Arial;font-size:14px=
;font-weight: bold;"> CONTACT US </span> </a> </div>=0A=0A</td>=0A</tr>=0A<=
/table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcityfunding.lt.acem=
lnd.com/Prod/link-tracker?nl=3D1&c=3D40&m=3D64&s=3D0ad92c0c4a2ff86eed94873b=
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
g.activehosted.com/proc.php?nl=3D1&c=3D40&m=3D64&s=3D0ad92c0c4a2ff86eed9487=
3b1c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helvetica=
,sans-serif;font-weight:bold;text-decoration:underline;"><span style=3D"fon=
t-weight:bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09<b=
r>=0A=09=09<br> Motor City Funding, 3000 Town Center, Southfield, United St=
ates=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-18006555216196c4ce5b5149.86747216_=_--



--===============4248064640004108121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4248064640004108121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4248064640004108121==--


