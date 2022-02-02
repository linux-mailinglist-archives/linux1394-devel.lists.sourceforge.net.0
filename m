Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBE54A7566
	for <lists+linux1394-devel@lfdr.de>; Wed,  2 Feb 2022 17:05:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nFI8J-0004yV-0i; Wed, 02 Feb 2022 16:05:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-108-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1nFI8H-0004yP-PD
 for linux1394-devel@lists.sourceforge.net; Wed, 02 Feb 2022 16:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i4OMKndd65bkWLi4vlb6VRb9TfCiw0Qv6g2HzElMPqQ=; b=mEhyt+bNqlWvrCdOyuTFTtg+25
 zw1h1+tLgL25w+N0s2JrLcTewH9iW3Xjpispc4DeQZIVGd15kP6sghFXDntMI65DJd3AncGU+nFv4
 YOo1cKMpYHyk1bo6ruscNgFp7Nj+/NT04sdM3nm0bbMc1bhuWCEw+WP9+ICkZ11Ap5nE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=i4OMKndd65bkWLi4vlb6VRb9TfCiw0Qv6g2HzElMPqQ=; b=HVTuzit+9XqH
 3zzu5EYkFRkbkyiILVZmXNtCRgBhfKuZ05f2nVU2e/CJw+m30Odqt3KdqtAtKzxFnmJ4v9qxkKS3l
 SI5hiSAln9Q0DbyIv5NTFH/n3DogPHmWVEGJ+uuW7Xz4eV5KoDdaxJpiTgTC/05qtbZMAxnFemzZw
 HGp0E=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFI8D-00DVWX-CD
 for linux1394-devel@lists.sourceforge.net; Wed, 02 Feb 2022 16:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=i4OMKndd65bkWLi4vlb6VRb9TfCiw0Qv6g2HzElMPqQ=;
 b=w4qd4DaMVSpeSj87PFwo1j6P+VE5PWsRkUIhc6GAWlfh/8oXbg7/2qiLNTkhF9oMVHL9z9PQDuxB
 1JSlUN4dOHtcmzmicOKyCy0sHpTV798XtZpnhcNt7Mhv2+/4JRMwrraI8i8eheF+g5CagHELjaEj
 Ku1jt88l/KVySAQRIDg=
Received: by s15.avl4.acemsrvd.com id hvalr82t56ge for
 <linux1394-devel@lists.sourceforge.net>;
 Wed, 2 Feb 2022 16:05:08 +0000 (envelope-from
 <bounce-2287853-108-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "Motor City Funding" <sbrugman@motorcityfunding.com>
Subject: SBA CARES Act is Still in Affect!
Date: Wed, 02 Feb 2022 09:54:17 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMxMDggLCBtMTU1ICwgczk0
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-108
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220202160508.6180.516766143.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  What is the Employee Retention Credit?  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌�
    [...] 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 T_MONEY_PERCENT        X% of a lot of money for you
X-Headers-End: 1nFI8D-00DVWX-CD
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
Content-Type: multipart/mixed; boundary="===============5209687190592279365=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============5209687190592279365==
Content-Type: multipart/alternative;
 boundary="_=_swift-25320930961faa929299e19.90303869_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-25320930961faa929299e19.90303869_=_
Content-Type: text/plain; charset=utf-8

What is the Employee Retention Credit? 
 ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌

 

Click Here to Get Stared  

 

**CARES ACT**: Employee retention credit - The Employee Retention Tax
Credit (ERTC) is an IRS tax credit designed to help small businesses
retain their employees during these difficult times. The credit refunds
payroll costs already spent. There is no need to pay back the ERTC, and
is in a sense, similar to the stimulus check that the everyday taxpayer
receives. Any business structure under 500 employees can potentially
qualify. This includes even non-profits and start-ups. In order to
qualify for the ERTC your business had to have been affected in one of
two ways. A decline in gross receipts over a declared quarter. Over any
declared quarter in 2020, a decline of 50% or more must be shown to
claim the credit; however the credit is capped at 

****$5,000****for the year. In 2021 the credit was expanded for
businesses who only experienced a 20% reduction in revenue. For each
individual quarter in 2021 businesses can be eligible for up to 

**$7,000**in credits per employee.

**We are here to maximize ERC dollars for your company.**

Through 

**CARES Act*** No restrictions on what you can use the capital for

* Non-Taxable

* Can not file for claim during PPP period (whatever billing period used
Q1-Q4)

* But you can get both, just not for the period paid out from PPP loan

* Ended after Q3 of 2021

* Company has 3 years to amend for ERC

* No cap on funding amount

**Eligibility: Must be W-2 employees**
* Revenue Reduction must have 50% reduction per quarter in 2020 vs 2019

* Revenue Reduction must have 20% reduction per quarter in 2021 vs 2020

* Can be eligible for multiple quarters of payroll and can bounce back
and forth between quarters

**Partial Government Shutdown: Must be W-2 employees**
* If there was an ordinance on business that did not allow you to have
in person

* gatherings that affect business operations. You are eligible for that
period.

* Only eligible for period of shutdown

* Has to come from the government shutdown ordinance, not per owner of
the business

* At least 5% of staff has to have been not eligible for work

* If you have 3 companies and 1 company suffered a loss, you are
eligible for all employees.

In 2020 the max you can get per employee is 50% of paid payroll up to
$10,000 ( net $5,000 per employee)
In 2021 the max you can get per employee is 70% of paid payroll for
Q1-Q3 up to $10,000
(net $7,000) ERC is closed for Q4 of 2021

**You are going to get back the money that you've already paid out to
your employees from taxes.**

Click Here to Get Started  

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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=108&amp;m=155&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-25320930961faa929299e19.90303869_=_
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
@media only screen and (max-width: 320px) { #layout-row2122 img { width: 10=
0% !important; height: auto !important; max-width: 320px !important; } #lay=
out-row2124 { max-height: 0px!important; font-size: 0px!important; display:=
 none!important; visibility: hidden!important; } #layout-row2132 img { widt=
h: 100% !important; height: auto !important; max-width: 121px !important; }=
 div.divbody { padding: 20px !important; } table, tbody, td, .divbody { dis=
play: table !important; width: 100% !important; max-width: 100% !important;=
 } .td_rss .rss-item img.iphone_large_image { width: auto !important; } u +=
 .body { display: table !important; width: 100vw !important; min-width: 100=
vw !important; } u + .body table { display: table !important; width: 100% !=
important; min-width: 100% !important; } u + .body td { display: block !imp=
ortant; width: 100% !important; min-width: 100% !important; } u + .body img=
 { display: inline-block !important; margin:=0Aauto !important; width: auto=
 !important; vertical-align: bottom !important; } u + .body center { displa=
y: block !important; margin: auto !important; width: 100% !important; min-w=
idth: 100% !important; text-align: center !important; } u + .body table._ac=
_social_table, u + .body table._ac_social_table td, u + .body table._ac_soc=
ial_table div, u + .body table._ac_social_table a { display: inline-block !=
important; margin: auto !important; width: auto !important; min-width: auto=
 !important; text-align: center !important; } u + .body table._ac_social_ta=
ble img { display: inline-block !important; margin: auto !important; width:=
 32px !important; min-width: 32px !important; max-width: 32px !important; }=
=0A}=0A@media only screen and (max-width: 375px) { #layout-row2122 img { wi=
dth: 100% !important; height: auto !important; max-width: 375px !important;=
 } #layout-row2124 { max-height: 0px!important; font-size: 0px!important; d=
isplay: none!important; visibility: hidden!important; } #layout-row2132 img=
 { width: 100% !important; height: auto !important; max-width: 121px !impor=
tant; } div.divbody { padding: 20px !important; } table, tbody, td, .divbod=
y { display: table !important; width: 100% !important; max-width: 100% !imp=
ortant; } .td_rss .rss-item img.iphone_large_image { width: auto !important=
; } u + .body { display: table !important; width: 100vw !important; min-wid=
th: 100vw !important; } u + .body table { display: table !important; width:=
 100% !important; min-width: 100% !important; } u + .body td { display: blo=
ck !important; width: 100% !important; min-width: 100% !important; } u + .b=
ody img { display: inline-block !important; margin: auto !important; width:=
 auto=0A!important; vertical-align: bottom !important; } u + .body center {=
 display: block !important; margin: auto !important; width: 100% !important=
; min-width: 100% !important; text-align: center !important; } u + .body ta=
ble._ac_social_table, u + .body table._ac_social_table td, u + .body table.=
_ac_social_table div, u + .body table._ac_social_table a { display: inline-=
block !important; margin: auto !important; width: auto !important; min-widt=
h: auto !important; text-align: center !important; } u + .body table._ac_so=
cial_table img { display: inline-block !important; margin: auto !important;=
 width: 32px !important; min-width: 32px !important; max-width: 32px !impor=
tant; }=0A}=0A@media only screen and (max-width: 414px) { #layout-row2122 i=
mg { width: 100% !important; height: auto !important; max-width: 414px !imp=
ortant; } #layout-row2124 { max-height: 0px!important; font-size: 0px!impor=
tant; display: none!important; visibility: hidden!important; } #layout-row2=
132 img { width: 100% !important; height: auto !important; max-width: 121px=
 !important; } div.divbody { padding: 20px !important; } table, tbody, td, =
.divbody { display: table !important; width: 100% !important; max-width: 10=
0% !important; } .td_rss .rss-item img.iphone_large_image { width: auto !im=
portant; } u + .body { display: table !important; width: 100vw !important; =
min-width: 100vw !important; } u + .body table { display: table !important;=
 width: 100% !important; min-width: 100% !important; } u + .body td { displ=
ay: block !important; width: 100% !important; min-width: 100% !important; }=
 u + .body img { display: inline-block !important; margin: auto !important;=
 width: auto=0A!important; vertical-align: bottom !important; } u + .body c=
enter { display: block !important; margin: auto !important; width: 100% !im=
portant; min-width: 100% !important; text-align: center !important; } u + .=
body table._ac_social_table, u + .body table._ac_social_table td, u + .body=
 table._ac_social_table div, u + .body table._ac_social_table a { display: =
inline-block !important; margin: auto !important; width: auto !important; m=
in-width: auto !important; text-align: center !important; } u + .body table=
._ac_social_table img { display: inline-block !important; margin: auto !imp=
ortant; width: 32px !important; min-width: 32px !important; max-width: 32px=
 !important; }=0A}=0A@media only screen and (max-width: 667px) { #layout-ro=
w2122 img { width: 100% !important; height: auto !important; max-width: 667=
px !important; } #layout-row2124 { max-height: 0px!important; font-size: 0p=
x!important; display: none!important; visibility: hidden!important; } #layo=
ut-row2132 img { width: 100% !important; height: auto !important; max-width=
: 121px !important; } div.divbody { padding: 20px !important; } table, tbod=
y, td, .divbody { display: table !important; width: 100% !important; max-wi=
dth: 100% !important; } .td_rss .rss-item img.iphone_large_image { width: a=
uto !important; } u + .body { display: table !important; width: 100vw !impo=
rtant; min-width: 100vw !important; } u + .body table { display: table !imp=
ortant; width: 100% !important; min-width: 100% !important; } u + .body td =
{ display: block !important; width: 100% !important; min-width: 100% !impor=
tant; } u + .body img { display: inline-block !important; margin: auto !imp=
ortant; width: auto=0A!important; vertical-align: bottom !important; } u + =
.body center { display: block !important; margin: auto !important; width: 1=
00% !important; min-width: 100% !important; text-align: center !important; =
} u + .body table._ac_social_table, u + .body table._ac_social_table td, u =
+ .body table._ac_social_table div, u + .body table._ac_social_table a { di=
splay: inline-block !important; margin: auto !important; width: auto !impor=
tant; min-width: auto !important; text-align: center !important; } u + .bod=
y table._ac_social_table img { display: inline-block !important; margin: au=
to !important; width: 32px !important; min-width: 32px !important; max-widt=
h: 32px !important; }=0A} </style><!--[if !mso]><!-- webfonts --><!--<![end=
if]--><!--[if lt mso 12]> <![endif]--><!--[if gte mso 9]>=0A<xml> <o:Office=
DocumentSettings> <o:AllowPNG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:O=
fficeDocumentSettings>=0A</xml>=0A<![endif]--></head><body id=3D"ac-designe=
r" class=3D"body" style=3D"font-family: Arial; line-height: 1.1; margin: 0p=
x; background-color: #ffffff; width: 100%; text-align: center;">=09=09<div =
style=3D"display: none !important; padding: 0; height: 1px; font-size: 1px;=
 background-color: inherit !important; opacity: 0; color: transparent; mso-=
line-height-rule: exactly; line-height:1px; mso-hide:all;">=0A=09=09=09What=
 is the Employee Retention Credit?=0A=09=09=09<div style=3D"display: none; =
max-height: 0px; overflow: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=
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
=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=8C=0A=09=
=09=09</div>=0A=0A=09=09</div>=0A<div class=3D"divbody" style=3D"margin: 0p=
x; outline: none; padding: 0px; color: #000000; font-family: arial; line-he=
ight: 1.1; width: 100%; background-color: #ffffff; background: #ffffff; tex=
t-align: center;"><table class=3D"template-table" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%" align=3D"left" style=3D"-ms-text-si=
ze-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse;=
 font-size: 14px; min-width: auto; mso-table-lspace: 0pt; mso-table-rspace:=
 0pt; background-color: #ffffff; background: #ffffff;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td align=3D"center" valign=3D"top" width=3D"100%"=
 style=3D"mso-line-height-rule: exactly;"><table class=3D"template-table" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"650" bgcolor=3D"#f=
fffff" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%;=
 border-collapse: collapse; font-size: 14px; min-width: auto; mso-table-lsp=
ace: 0pt; mso-table-rspace: 0pt; max-width: 650px;"><tr=0Astyle=3D"mso-line=
-height-rule: exactly;"><td id=3D"layout_table_f31a586a38424a80a532e26c5eb2=
d93fd972d146" valign=3D"top" align=3D"center" width=3D"650" style=3D"mso-li=
ne-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" class=3D"layout layout-table root-table" width=3D"650" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout=
-row-margin2124" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><t=
able width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row2124" class=3D"layout layout-row =
widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><td id=3D"=
layout-row-padding2124" valign=3D"top"=0Astyle=3D"mso-line-height-rule: exa=
ctly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace:=
 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;">=
<td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exactly;"><=
div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0; height:=
 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"10=
0%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"650" style=
=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<t=
r style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2122"=
 valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row2122" class=3D"layout layout-row widget _widget_pi=
cture " align=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D=
"layout-row-padding2122" valign=3D"top" style=3D"mso-line-height-rule: exac=
tly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0=
" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bord=
er-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><=
td class=3D"image-td" align=3D"center" valign=3D"top" width=3D"650" style=
=3D"mso-line-height-rule: exactly;"><img=0Asrc=3D"https://content.app-us1.c=
om/Rnj5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D338120390"=
 alt=3D"" width=3D"325" style=3D"display: block; border: none; outline: non=
e; width: 325px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A<=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"layout-row-margin2125" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" =
cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -w=
ebkit-text-size-adjust: 100%; border-collapse: initial !important; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row2125" class=3D"layout layout-row widget _widget_button st=
yle2125" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-padd=
ing2125" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"td_button td_block customizable" valign=3D"top" align=3D"left" wi=
dth=3D"630"=0Astyle=3D"mso-line-height-rule: exactly;"> <div class=3D"butto=
n-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: cente=
r;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml"=
 xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://motorcit=
yfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd=
3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D7uA2pdieb7xEtZTGeWz2TXDB2E9ZfDt=
GDzDw69WpsdcT&iat=3D1643817908&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcit=
yfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rh=
DqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D108A=
155A1A384" style=3D"v-text-anchor:middle; width:260px; height:66px; " arcsi=
ze=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#244df0=
" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:te=
xtbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family=
:georgia, times new roman; font-size:20px; line-height: 1.1;">Click Here to=
 Get Stared</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"=
https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR=
0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D7uA2pdieb7xEtZT=
GeWz2TXDB2E9ZfDtGDzDw69WpsdcT&iat=3D1643817908&a=3D%7C%7C225362583%7C%7C&ac=
count=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMw=
BdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1=
c9268b7&i=3D108A155A1A384" style=3D"margin: 0; outline: none; padding: 12px=
; color: #ffffff; background: #244df0; background-color: #244df0; border: 1=
px solid #B5B5B5; border-radius: 3px; font-family: georgia, times new roman=
; font-size: 20px; display: inline-block; line-height: 1.1; text-align: cen=
ter; text-decoration: none; mso-hide: all;"> <span style=3D"color:#ffffff;f=
ont-family:georgia, times new roman;font-size:20px;"> Click Here to Get Sta=
red </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin2123" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2123" class=3D"layout la=
yout-row widget _widget_spacer " style=3D"mso-line-height-rule: exactly;"><=
td id=3D"layout-row-padding2123" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 10=
0%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exa=
ctly;"><td valign=3D"top" height=3D"30" style=3D"mso-line-height-rule: exac=
tly;"><div class=3D"spacer" style=3D"margin: 0; outline: none; padding: 0;=
=0Aheight: 30px;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" w=
idth=3D"100%" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust=
: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-ta=
ble-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=
 exactly;"><td class=3D"spacer-body" valign=3D"top" height=3D"30" width=3D"=
650" style=3D"mso-line-height-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table=
>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A=
</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-m=
argin2121" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table w=
idth=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms=
-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: c=
ollapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table=
-rspace: 0pt;"><tr id=3D"layout-row2121" class=3D"layout layout-row widget =
_widget_text " style=3D"mso-line-height-rule: exactly; margin: 0; padding: =
0;"><td id=3D"layout-row-padding2121" valign=3D"top" style=3D"mso-line-heig=
ht-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cel=
lspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjus=
t: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-t=
able-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule=
: exactly;"><td id=3D"text_div1806" class=3D"td_text td_block" valign=3D"to=
p" align=3D"left" width=3D"650" style=3D"line-height: 140%;=0Amso-line-heig=
ht-rule: exactly; margin: 0; outline: none; padding: 0; color: inherit; fon=
t-size: 12px; font-weight: inherit; line-height: 1.4; text-decoration: inhe=
rit; font-family: arial;"> <div style=3D"line-height: 140%; margin: 0; outl=
ine: none; padding: 0; color: inherit; font-size: inherit; font-weight: inh=
erit; line-height: 1.4; text-decoration: inherit; mso-line-height-rule: exa=
ctly;" data-line-height=3D"1.4"> <div dir=3D"ltr" style=3D"margin: 0; outli=
ne: none; padding: 0; color: #000000; font-size: 14px; font-weight: 400; li=
ne-height: inherit; text-decoration: inherit; font-style: normal; text-alig=
n: -webkit-left;"><span style=3D'color: inherit; font-size: inherit; font-w=
eight: inherit; line-height: inherit; text-decoration: inherit; font-family=
: georgia, "times new roman";' class=3D""><b style=3D"margin: 0; outline: n=
one; padding: 0;">CARES ACT</b>: <span style=3D"color: inherit; font-size: =
inherit; font-weight: 700; line-height: inherit; text-decoration:=0Ainherit=
;">Employee retention credit - </span><span style=3D"color: #000000; font-s=
ize: inherit; font-weight: inherit; line-height: inherit; text-decoration: =
inherit;">The Employee Retention Tax Credit (ERTC) is an IRS tax credit des=
igned to help small businesses retain their employees during these difficul=
t times. The credit refunds payroll costs already spent. There is no need t=
o pay back the ERTC, and is in a sense, similar to the stimulus check that =
the everyday taxpayer receives. Any business structure under 500 employees =
can potentially qualify. This includes even non-profits and start-ups. In o=
rder to qualify for the ERTC your business had to have been affected in one=
 of two ways. A decline in gross receipts over a declared quarter. Over any=
 declared quarter in 2020, a decline of 50% or more must be shown to claim =
the credit; however the credit is capped at <i style=3D"margin: 0; outline:=
 none; padding: 0;"><b style=3D"margin: 0; outline: none; padding: 0;">$5,0=
00=0A</b></i>for the year. In 2021 the credit was expanded for businesses w=
ho only experienced a 20% reduction in revenue. For each individual quarter=
 in 2021 businesses can be eligible for up to <b style=3D"margin: 0; outlin=
e: none; padding: 0;"><i style=3D"margin: 0; outline: none; padding: 0;">$7=
,000 </i></b>in credits per employee.<br><br><br><div style=3D"margin: 0; o=
utline: none; padding: 0; color: inherit; font-size: inherit; font-weight: =
inherit; line-height: inherit; text-decoration: inherit; text-align: center=
;"><b class=3D"" style=3D"margin: 0; outline: none; padding: 0; text-decora=
tion: inherit;">We are here to maximize ERC dollars for your company.</b></=
div>=0A</span></span></div>=0A<div style=3D"margin: 0 0px 0 40px; outline: =
none; padding: 0; color: #000000; font-size: 14px; font-weight: 400; line-h=
eight: inherit; text-decoration: inherit; font-style: normal; text-align: -=
webkit-left;"><div style=3D"margin: 0 0px 0 40px; outline: none; padding: 0=
; color: inherit; font-size: inherit; font-weight: inherit; line-height: in=
herit; text-decoration: inherit;"><div style=3D"margin: 0 0px 0 40px; outli=
ne: none; padding: 0; color: inherit; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit;"><div style=3D"margin:=
 0 0px 0 40px; outline: none; padding: 0; color: inherit; font-size: inheri=
t; font-weight: inherit; line-height: inherit; text-decoration: inherit;"><=
div style=3D"margin: 0 0px 0 40px; outline: none; padding: 0; color: inheri=
t; font-size: inherit; font-weight: inherit; line-height: inherit; text-dec=
oration: inherit;"><div style=3D"margin: 0 0px 0 40px; outline: none; paddi=
ng: 0; color: inherit; font-size: inherit;=0Afont-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit;"><div style=3D"margin: 0 0px 0 40px=
; outline: none; padding: 0; color: inherit; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit;"><br style=3D'f=
ont-family: georgia, "times new roman";'></div>=0A</div>=0A</div>=0A</div>=
=0A</div>=0A</div>=0A</div>=0A<div dir=3D"ltr" style=3D"margin: 0; outline:=
 none; padding: 0; color: #000000; font-size: 14px; font-weight: 400; line-=
height: inherit; text-decoration: inherit; font-style: normal; text-align: =
-webkit-left;"><span style=3D'color: #000000; font-size: inherit; font-weig=
ht: inherit; line-height: inherit; text-decoration: inherit; font-family: g=
eorgia, "times new roman";' class=3D""><span style=3D"color: #000000; font-=
size: inherit; font-weight: inherit; line-height: inherit; text-decoration:=
 inherit;"><br>Through <b style=3D"margin: 0; outline: none; padding: 0;">C=
ARES Act</b></span><ul style=3D"margin: 0 0 0 40px; padding: 0; color: #000=
000;"><li style=3D"display: list-item; line-height: inherit; list-style-typ=
e: disc; margin: 0 0 0 15px;">No restrictions on what you can use the capit=
al for</li><li style=3D"display: list-item; line-height: inherit; list-styl=
e-type: disc; margin: 0 0 0 15px;">Non-Taxable</li><li style=3D"display: li=
st-item; line-height: inherit; list-style-type: disc;=0Amargin: 0 0 0 15px;=
">Can not file for claim during PPP period (whatever billing period used Q1=
-Q4)</li><li style=3D"display: list-item; line-height: inherit; list-style-=
type: disc; margin: 0 0 0 15px;">But you can get both, just not for the per=
iod paid out from PPP loan</li><li style=3D"display: list-item; line-height=
: inherit; list-style-type: disc; margin: 0 0 0 15px;">Ended after Q3 of 20=
21</li><li style=3D"display: list-item; line-height: inherit; list-style-ty=
pe: disc; margin: 0 0 0 15px;">Company has 3 years to amend for ERC</li><li=
 style=3D"display: list-item; line-height: inherit; list-style-type: disc; =
margin: 0 0 0 15px;">No cap on funding amount</li></ul><b style=3D"margin: =
0; outline: none; padding: 0; color: #000000;">Eligibility: Must be W-2 emp=
loyees</b><br><ul style=3D"margin: 0 0 0 40px; padding: 0; color: #000000;"=
><li style=3D"display: list-item; line-height: inherit; list-style-type: di=
sc; margin: 0 0 0 15px;">Revenue Reduction must have 50% reduction per=0Aqu=
arter in 2020 vs 2019</li><li style=3D"display: list-item; line-height: inh=
erit; list-style-type: disc; margin: 0 0 0 15px;">Revenue Reduction must ha=
ve 20% reduction per quarter in 2021 vs 2020</li><li style=3D"display: list=
-item; line-height: inherit; list-style-type: disc; margin: 0 0 0 15px;">Ca=
n be eligible for multiple quarters of payroll and can bounce back and fort=
h between quarters</li></ul><b style=3D"margin: 0; outline: none; padding: =
0; color: #000000;">Partial Government Shutdown: Must be W-2 employees</b><=
br><ul style=3D"margin: 0 0 0 40px; padding: 0; color: #000000;"><li style=
=3D"display: list-item; line-height: inherit; list-style-type: disc; margin=
: 0 0 0 15px;">If there was an ordinance on business that did not allow you=
 to have in person</li><li style=3D"display: list-item; line-height: inheri=
t; list-style-type: disc; margin: 0 0 0 15px;">gatherings that affect busin=
ess operations. You are eligible for that period.</li><li style=3D"display:=
 list-item;=0Aline-height: inherit; list-style-type: disc; margin: 0 0 0 15=
px;">Only eligible for period of shutdown</li><li style=3D"display: list-it=
em; line-height: inherit; list-style-type: disc; margin: 0 0 0 15px;">Has t=
o come from the government shutdown ordinance, not per owner of the busines=
s</li><li style=3D"display: list-item; line-height: inherit; list-style-typ=
e: disc; margin: 0 0 0 15px;">At least 5% of staff has to have been not eli=
gible for work</li><li style=3D"display: list-item; line-height: inherit; l=
ist-style-type: disc; margin: 0 0 0 15px;">If you have 3 companies and 1 co=
mpany suffered a loss, you are eligible for all employees.</li></ul><span s=
tyle=3D"color: #000000; font-size: inherit; font-weight: inherit; line-heig=
ht: inherit; text-decoration: inherit;" class=3D"">In 2020 the max you can =
get per employee is 50% of paid payroll up to $10,000 ( net $5,000 per empl=
oyee)</span><br><span style=3D"color: #000000; font-size: inherit; font-wei=
ght: inherit; line-height:=0Ainherit; text-decoration: inherit;">In 2021 th=
e max you can get per employee is 70% of paid payroll for Q1-Q3 up to $10,0=
00</span><br><span style=3D"color: #000000; font-size: inherit; font-weight=
: inherit; line-height: inherit; text-decoration: inherit;">(net $7,000) ER=
C is closed for Q4 of 2021</span><br><br><b style=3D"margin: 0; outline: no=
ne; padding: 0; color: #000000;">You are going to get back the money that y=
ou've already paid out to your employees from taxes.</b></span><br></div>=
=0A </div>=0A<!--[if (gte mso 12)&(lte mso 15) ]>=0A<style data-ac-keep=3D"=
true" data-ac-inline=3D"false"> #text_div1806, #text_div1806 div { line-hei=
ght: 140% !important; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-=
rule: exactly;"><td id=3D"layout-row-margin2126" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D=
"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: initial !important; font=
-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;=
"><tr id=3D"layout-row2126" class=3D"layout layout-row widget _widget_butto=
n style2126" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-=
padding2126" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding=
: 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"=
><td class=3D"td_button td_block customizable" valign=3D"top" align=3D"left=
" width=3D"630"=0Astyle=3D"mso-line-height-rule: exactly;"> <div class=3D"b=
utton-wrapper" style=3D"margin: 0; outline: none; padding: 0; text-align: c=
enter;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:=
vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://moto=
rcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiU=
yRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D7uA2pdieb7xEtZTGeWz2TXDB2E9=
ZfDtGDzDw69WpsdcT&iat=3D1643817908&a=3D%7C%7C225362583%7C%7C&account=3Dmoto=
rcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSP=
K6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D=
108A155A1A384" style=3D"v-text-anchor:middle; width:266px; height:66px; " a=
rcsize=3D"6%" strokecolor=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#24=
4df0" o:button=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <=
v:textbox inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-fa=
mily:georgia, times new roman; font-size:20px; line-height: 1.1;">Click Her=
e to Get Started</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a hre=
f=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D7uA2pdieb=
7xEtZTGeWz2TXDB2E9ZfDtGDzDw69WpsdcT&iat=3D1643817908&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D108A155A1A384" style=3D"margin: 0; outline: none; padding=
: 12px; color: #ffffff; background: #244df0; background-color: #244df0; bor=
der: 1px solid #B5B5B5; border-radius: 3px; font-family: georgia, times new=
 roman; font-size: 20px; display: inline-block; line-height: 1.1; text-alig=
n: center; text-decoration: none; mso-hide: all;"> <span style=3D"color:#ff=
ffff;font-family:georgia, times new roman;font-size:20px;"> Click Here to G=
et Started </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr=
>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly;"=
><td id=3D"layout-row-margin2127" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 0;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row2127" class=3D"layout layout-row widget _widget_text style2127" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; padding: 0;"><td id=3D"layou=
t-row-padding2127" valign=3D"top" style=3D"mso-line-height-rule: exactly; p=
adding: 0;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%=
; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-ls=
pace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exact=
ly;"><td id=3D"text_div1812" class=3D"td_text td_block" valign=3D"top" alig=
n=3D"left"=0Awidth=3D"650" style=3D"line-height: 140%; mso-line-height-rule=
: exactly; margin: 0; outline: none; padding: 0; color: inherit; font-size:=
 12px; font-weight: inherit; line-height: 1.4; text-decoration: inherit; fo=
nt-family: arial;"> <div style=3D"line-height: 140%; margin: 0; outline: no=
ne; padding: 0; color: inherit; font-size: 14px; font-weight: inherit; line=
-height: 1.4; text-decoration: inherit; mso-line-height-rule: exactly;" dat=
a-line-height=3D"1.4"> <div style=3D"margin: 0; outline: none; padding: 0; =
color: inherit; font-size: inherit; font-weight: inherit; line-height: inhe=
rit; text-decoration: inherit;"> <span style=3D'color: inherit; font-size: =
inherit; font-weight: inherit; line-height: inherit; text-decoration: inher=
it; font-family: georgia, "times new roman";' class=3D""><br><span style=3D=
"color: inherit; font-size: inherit; font-weight: inherit; line-height: inh=
erit; text-decoration: inherit; margin: 0;" class=3D""><span style=3D"color=
: inherit; font-size: inherit;=0Afont-weight: inherit; line-height: inherit=
; text-decoration: inherit;">If you have any questions please do not hesita=
te to call.=C2=A0 We pride ourselves on always being available to our clien=
ts.</span><br><br><span style=3D"color: inherit; font-size: inherit; font-w=
eight: inherit; line-height: inherit; text-decoration: inherit;">Sincerely,=
</span><br><br><span style=3D"color: inherit; font-size: inherit; font-weig=
ht: bold; line-height: inherit; text-decoration: inherit;" class=3D"">Samue=
l Brugman | Account Manager</span></span></span><br style=3D"font-weight: b=
old;"><br></div>=0A </div>=0A<!--[if (gte mso 12)&(lte mso 15) ]>=0A<style =
data-ac-keep=3D"true" data-ac-inline=3D"false"> #text_div1812, #text_div181=
2 div { line-height: 140% !important; };=0A</style>=0A<![endif]--></td>=0A<=
/tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr id=3D"layo=
ut-row2131" class=3D"layout layout-row clear-this " style=3D"mso-line-heigh=
t-rule: exactly;"><td id=3D"layout-row-padding2131" valign=3D"top" style=3D=
"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-t=
ext-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-widt=
h: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-li=
ne-height-rule: exactly;"><td id=3D"layout_table_28b9bbfd77e94be6c01873cf4a=
5eb1e557ca1a6a" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule:=
 exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D=
"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2128" valign=
=3D"top" style=3D"mso-line-height-rule:=0Aexactly; padding: 0;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: init=
ial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr id=3D"layout-row2128" class=3D"layout layout-row =
widget _widget_text style2128" style=3D"mso-line-height-rule: exactly; marg=
in: 0; padding: 0;"><td id=3D"layout-row-padding2128" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; padding: 0;"><table width=3D"100%" borde=
r=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: =
auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size:=
 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr =
style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1813" class=3D"t=
d_text td_block" valign=3D"top" align=3D"left" width=3D"325" style=3D"mso-l=
ine-height-rule: exactly; margin: 0; outline: none; padding: 0; color: inhe=
rit; font-size:=0A12px; font-weight: inherit; line-height: 1; text-decorati=
on: inherit; font-family: arial;"> <div style=3D"margin: 0; outline: none; =
padding: 0; color: inherit; font-size: 14px; font-weight: inherit; line-hei=
ght: inherit; text-decoration: inherit;"> <br style=3D'font-family: georgia=
, "times new roman";'><div style=3D"margin: 0; outline: none; padding: 0; c=
olor: inherit; font-size: inherit; font-weight: inherit; line-height: inher=
it; text-decoration: inherit; text-align: center;"><a href=3D"https://motor=
cityfunding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUy=
Rnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3DBxRsHVEGUwbwyB5ThoGh1ncEWPRz=
8YiYZjf5d9Vjy1jE&iat=3D1643817908&a=3D%7C%7C225362583%7C%7C&account=3Dmotor=
cityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK=
6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D1=
08A155A1A385" target=3D"_blank"=0Adata-saferedirecturl=3D"https://www.googl=
e.com/url?q=3Dhttps://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?red=
irectUrl%3DaHR0cCUzQSUyRiUyRnd3dy5tb3RvcmNpdHlmdW5kaW5nLmNvbQ%3D%3D%26sig%3=
D516LAVULGnbJK7k7d3efYjxHGfh7ZUk5jNjjWtZKCfk8%26iat%3D1641911438%26a%3D%257=
C%257C225362583%257C%257C%26account%3Dmotorcityfunding%252Eactivehosted%252=
Ecom%26email%3DMiaf5VkGfx%252BcD4q5u2IElitkAjPv3Bu2XnpRNFkRdAg%253D%26s%3D7=
57d06d6095fd89c9c5bca4c0ceece4e%26i%3D84A126A1A262&source=3Dgmail&ust=3D164=
3322847700000&usg=3DAOvVaw3zlf04PLVzZEr0LhyN1dZC" data-ac-default-color=3D"=
1" style=3D'margin: 0; outline: none; padding: 0; color: #045fb4; text-deco=
ration: underline; font-weight: 700; text-align: inherit; font-family: geor=
gia, "times new roman";' class=3D""><span style=3D"color: ; font-size: inhe=
rit; font-weight: inherit; line-height: inherit; text-decoration: inherit;"=
>Motor City Funding</span></a></div>=0A<div style=3D"margin: 0; outline: no=
ne; padding: 0; color: #000000; font-size: inherit; font-weight: 700; line-=
height: inherit; text-decoration: inherit; text-align: center;"><span style=
=3D'color: #000000; font-size: inherit; font-weight: bold; line-height: inh=
erit; text-decoration: inherit; text-align: inherit; font-family: georgia, =
"times new roman";' class=3D"">O: (315) 257-1195</span></div>=0A<br><br></d=
iv>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A<td id=3D"layout_table_749eaffcabe7970ced9d315d75146e=
d3c9a13d8e" valign=3D"top" width=3D"325" style=3D"mso-line-height-rule: exa=
ctly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=3D"lay=
out layout-table " width=3D"325" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layou=
t-row2133" class=3D"layout layout-row clear-this " style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding2133" valign=3D"top" style=3D"=
mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-te=
xt-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width=
: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-lin=
e-height-rule: exactly;"><td id=3D"layout_table_f774372470defb6e998fe5d9c34=
4c6b5d6d34236" valign=3D"top" width=3D"163" style=3D"mso-line-height-rule:=
=0Aexactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" class=
=3D"layout layout-table " width=3D"163" style=3D"-ms-text-size-adjust: auto=
; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr styl=
e=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-margin2130" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: ini=
tial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; m=
so-table-rspace: 0pt;"><tr id=3D"layout-row2130" class=3D"layout layout-row=
 widget _widget_button style2130" style=3D"mso-line-height-rule: exactly;">=
<td id=3D"layout-row-padding2130" valign=3D"top" style=3D"mso-line-height-r=
ule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=0A-webkit-tex=
t-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-width:=
 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line=
-height-rule: exactly;"><td class=3D"td_button td_block customizable" valig=
n=3D"top" align=3D"left" width=3D"143" style=3D"mso-line-height-rule: exact=
ly;"> <div class=3D"button-wrapper" style=3D"margin: 0; outline: none; padd=
ing: 0; text-align: center;">=0A<!--[if mso]> <v:roundrect xmlns:v=3D"urn:s=
chemas-microsoft-com:vml" xmlns:w=3D"urn:schemas-microsoft-com:office:word"=
 href=3D"mailto:sbrugman@motorcityfunding.com" style=3D"v-text-anchor:middl=
e; width:137px; height:60px; font-weight: bold;" arcsize=3D"6%" strokecolor=
=3D"#B5B5B5" strokeweight=3D"1pt" fillcolor=3D"#FFFFFF" o:button=3D"true" o=
:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2p=
x,2px,2px"> <center style=3D"color:#000000;font-family:georgia, times new r=
oman; font-size:14px; font-weight: bold;line-height: 1.1;">Contact Now</cen=
ter> </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"mailto:sbrugman@=
motorcityfunding.com" style=3D"margin: 0; outline: none; padding: 12px; col=
or: #000000; background: #FFFFFF; background-color: #FFFFFF; border: 1px so=
lid #B5B5B5; border-radius: 3px; font-family: georgia, times new roman; fon=
t-size: 14px; display: inline-block; line-height: 1.1; text-align: center; =
text-decoration: none; mso-hide: all;"> <span style=3D"color:#000000;font-f=
amily:georgia, times new roman;font-size:14px;font-weight: bold;"> Contact =
Now </span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</t=
able>=0A</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_4e994ce4f=
c53a8712ce03caa636b244820149b59" valign=3D"top" width=3D"162" style=3D"mso-=
line-height-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" bord=
er=3D"0" class=3D"layout layout-table " width=3D"162" style=3D"-ms-text-siz=
e-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; =
font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: =
0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-mar=
gin2132" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table wid=
th=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-t=
ext-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: col=
lapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-r=
space: 0pt;"><tr id=3D"layout-row2132" class=3D"layout layout-row widget _w=
idget_picture " align=3D"center" style=3D"mso-line-height-rule: exactly;"><=
td id=3D"layout-row-padding2132" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly;"><table=0Awidth=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: e=
xactly;"><td class=3D"image-td" align=3D"center" valign=3D"top" width=3D"16=
2" style=3D"mso-line-height-rule: exactly;"><img src=3D"https://content.app=
-us1.com/Rnj5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e755812b75d6.png?r=3D5030=
91284" alt=3D"" width=3D"121" style=3D"display: block; border: none; outlin=
e: none; width: 121px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</di=
v>=0A<img src=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?=
nl=3D1&c=3D108&m=3D155&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&l=3Dopen&accoun=
t=3Dmotorcityfunding.activehosted.com&a=3D225362583" border=3D"0" width=3D"=
1" height=3D"1" style=3D"display:block;width:1px!important;min-width:1px!im=
portant;max-width:1px!important;height:1px!important;border:0;overflow:hidd=
en;" /><div id=3D"ac-footer" style=3D"clear:both;background-color:inherit;b=
ackground:inherit;min-width:100%;mso-table-lspace:0pt;mso-table-rspace:0pt;=
padding:20px;color:#000000;font-size:11px;font-family:arial,helvetica,sans-=
serif;line-height:140%;line-height:1.4;text-align:center;box-sizing:border-=
box;">=0A=09<center>=0A=09=09Sent to: <span style=3D"font-size:11px;font-fa=
mily:arial,helvetica,sans-serif;font-weight:normal;text-decoration:none;out=
line:none;">linux1394-devel@lists.sourceforge.net</span>=0A=09=09<br>=0A=09=
=09<br>=0A=09=09<a href=3D"http://motorcityfunding.activehosted.com/proc.ph=
p?nl=3D1&c=3D108&m=3D155&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&act=3Dunsub" =
style=3D"font-size:11px;font-family:arial,helvetica,sans-serif;font-weight:=
bold;text-decoration:underline;"><span style=3D"font-weight:bold;text-decor=
ation:underline;">Unsubscribe</span></a>=0A=09=09<br>=0A=09=09<br> Motor Ci=
ty Funding, 3000 Town Center, Southfield, United States=0A=09</center>=0A</=
div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-25320930961faa929299e19.90303869_=_--



--===============5209687190592279365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5209687190592279365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5209687190592279365==--


