Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C7A496CDE
	for <lists+linux1394-devel@lfdr.de>; Sat, 22 Jan 2022 17:27:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nBJEk-0000La-6Q; Sat, 22 Jan 2022 16:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce-2287853-100-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
 id 1nBJEh-0000LU-Tl
 for linux1394-devel@lists.sourceforge.net; Sat, 22 Jan 2022 16:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:List-Unsubscribe:Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=COgg1brAI/AxwWWTpbe5hyXg2K2/ZZxyICbtn1pF9do=; b=cvDUKJ2jYCVBvOZx5uBCai4Bry
 anBqcRk4eLh3lCqc+QsgVGK9O5iLYiHMb0SLPC+7bYktIir8C+v9e7FQ30FMsHa/Kqh0YvF10aul+
 zu80eEpw1ucINxPjnNmTO0KQxyVGpiZ8M3mPhTm/rS2XazEfz9X4iDPZSLhGonRRAtQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:List-Unsubscribe:Sender:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Date:Subject:From:To:Reply-To:Cc:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=COgg1brAI/AxwWWTpbe5hyXg2K2/ZZxyICbtn1pF9do=; b=HLzCc9OtKcx6
 1uCjPn3PABsfKBX7RQxavnl+IKutMb94CXfaxnrbwvSF3MVaOSYSsUMSAmPx0Ajcv6oZ9A5HkGwWX
 r8Gca6PVXD/GprYMTeRgKMws3Jy1d74sdkgBnmVp/FvxD9HpgAoz772GT9CDxybqBnXpa2eP1zg14
 49kKg=;
Received: from s15.avl4.acemsrvd.com ([192.92.97.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBJEd-007ZRg-8z
 for linux1394-devel@lists.sourceforge.net; Sat, 22 Jan 2022 16:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=dk;
 d=s15.avl4.acemsrvd.com; 
 h=To:From:Subject:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Sender:List-Unsubscribe:List-Unsubscribe-Post:Message-ID;
 i=motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com;
 bh=COgg1brAI/AxwWWTpbe5hyXg2K2/ZZxyICbtn1pF9do=;
 b=0x+BLRBDHotnFDrwFYsBIPx7WHyqHbSOR12c/F2L3O81B1ALlMNZ0LzkoybgriWzMh7Zhy9gOwCX
 /auPqpaDjz3CQNCLGWiVTdDbxj6fYeWDU8z4LqyTVfcpHlDRDo4XreOyHQTf3LQUTvpGaJBRmDXw
 03GQMPlZaZ9ntCb/JlM=
Received: by s15.avl4.acemsrvd.com id htgo6e2t56g0 for
 <linux1394-devel@lists.sourceforge.net>;
 Sat, 22 Jan 2022 16:27:19 +0000 (envelope-from
 <bounce-2287853-100-17611-linux1394-devel=lists.sourceforge.net@s15.avl4.acemsrvd.com>)
To: linux1394-devel@lists.sourceforge.net
From: "SBA Consulting" <sbrugman@motorcityfunding.com>
Subject: How the SBA 7(a) Grows Your Business!
Date: Sat, 22 Jan 2022 10:20:30 -0600
MIME-Version: 1.0
X-Sender: <motorcityfunding.activehosted.com@s15.avl4.acemsrvd.com>
X-Report-Abuse: Please report abuse to abuse@activecampaign.com
X-mid: bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAsIGMxMDAgLCBtMTQ5ICwgczg4
x-virtual-mta: s15.avl4.acemsrvd.com
Feedback-ID: 2287853:activecampaign
X-250ok-CID: 2287853-100
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-ID: <20220122162719.14921.946363007.swift@motorcityfunding.activehosted.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Let us show you how we can help grow your business!  ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ ‌ �
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
X-Headers-End: 1nBJEd-007ZRg-8z
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
Content-Type: multipart/mixed; boundary="===============7258184938773919367=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============7258184938773919367==
Content-Type: multipart/alternative;
 boundary="_=_swift-119393728461ec2ecec1ddc7.92355805_=_"
Content-Transfer-Encoding: 7bit


--_=_swift-119393728461ec2ecec1ddc7.92355805_=_
Content-Type: text/plain; charset=utf-8

Let us show you how we can help grow your business! 
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
http://motorcityfunding.activehosted.com/proc.php?nl=1&amp;c=100&amp;m=149&amp;s=0ad92c0c4a2ff86eed94873b1c9268b7&amp;act=unsub

Motor City Funding, 3000 Town Center, Southfield, United States
--_=_swift-119393728461ec2ecec1ddc7.92355805_=_
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
-ac-keep=3D"true"> @media only screen and (max-width: 320px) { #layout-row2=
019 img { width: 100% !important; height: auto !important; max-width: 320px=
 !important; } #layout-row2022 img { width: 100% !important; height: auto !=
important; max-width: 320px !important; } #layout-row2027 img { width: 100%=
 !important; height: auto !important; max-width: 121px !important; } #layou=
t-row2029 img { width: 100% !important; height: auto !important; max-width:=
 320px !important; } #layout-row2033 img { width: 100% !important; height: =
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
nt; }=0A}=0A@media only screen and (max-width: 375px) { #layout-row2019 img=
 { width: 100% !important; height: auto !important; max-width: 375px !impor=
tant; } #layout-row2022 img { width: 100% !important; height: auto !importa=
nt; max-width: 375px !important; } #layout-row2027 img { width: 100% !impor=
tant; height: auto !important; max-width: 121px !important; } #layout-row20=
29 img { width: 100% !important; height: auto !important; max-width: 375px =
!important; } #layout-row2033 img { width: 100% !important; height: auto !i=
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
=0A}=0A@media only screen and (max-width: 414px) { #layout-row2019 img { wi=
dth: 100% !important; height: auto !important; max-width: 414px !important;=
 } #layout-row2022 img { width: 100% !important; height: auto !important; m=
ax-width: 414px !important; } #layout-row2027 img { width: 100% !important;=
 height: auto !important; max-width: 121px !important; } #layout-row2029 im=
g { width: 100% !important; height: auto !important; max-width: 414px !impo=
rtant; } #layout-row2033 img { width: 100% !important; height: auto !import=
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
@media only screen and (max-width: 667px) { #layout-row2019 img { width: 10=
0% !important; height: auto !important; max-width: 667px !important; } #lay=
out-row2022 img { width: 100% !important; height: auto !important; max-widt=
h: 667px !important; } #layout-row2027 img { width: 100% !important; height=
: auto !important; max-width: 121px !important; } #layout-row2029 img { wid=
th: 100% !important; height: auto !important; max-width: 667px !important; =
} #layout-row2033 img { width: 100% !important; height: auto !important; ma=
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
ght:1px; mso-hide:all;">=0A=09=09=09Let us show you how we can help grow yo=
ur business!=0A=09=09=09<div style=3D"display: none; max-height: 0px; overf=
low: hidden;">=0A=09=09=09=09&nbsp;=E2=80=8C&nbsp;=E2=80=8C&nbsp;=E2=80=
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
actly;"><td id=3D"layout_table_5873fb1fc4827c275c80c0ba56df7e8b378438af" va=
lign=3D"top" align=3D"center" width=3D"650" style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" class=3D"layout layout-table root-table" width=3D"650" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt; background-color: #ffffff;"><tr style=3D"mso-line=
-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-mar=
gin2019" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0;=
 background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-=
size-adjust: 100%; border-collapse: initial !important; font-size: 14px; mi=
n-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"lay=
out-row2019"=0Aclass=3D"layout layout-row widget _widget_picture style2019"=
 align=3D"center" style=3D"mso-line-height-rule: exactly; background-color:=
 #f7f9ff;"><td id=3D"layout-row-padding2019" valign=3D"top" style=3D"mso-li=
ne-height-rule: exactly; background-color: #f7f9ff; padding: 20px 0 20px 0p=
x;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0p=
t; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=
 class=3D"image-td" align=3D"center" valign=3D"top" width=3D"650" style=3D"=
mso-line-height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj=
5K/2021/11/08/5ed7148d-1798-4506-a900-35ec4edba52c.png?r=3D1409889283" alt=
=3D"" width=3D"230" style=3D"display: block; border: none; outline: none; w=
idth: 230px; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: ex=
actly; background-color: #ffffff;"><td id=3D"layout-row-margin2033" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" st=
yle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-c=
ollapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt;=
 mso-table-rspace: 0pt;"><tr id=3D"layout-row2033" class=3D"layout layout-r=
ow widget _widget_picture " align=3D"left" style=3D"mso-line-height-rule: e=
xactly;"><td id=3D"layout-row-padding2033" valign=3D"top" style=3D"mso-line=
-height-rule: exactly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-=
adjust: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; =
mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-line-height=
-rule: exactly;"><td class=3D"image-td" align=3D"left" valign=3D"top" width=
=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img src=3D"https://con=
tent.app-us1.com/Rnj5K/2021/10/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?=
r=3D1276038782" alt=3D"" width=3D"650" style=3D"display: block; border: non=
e; outline: none; width: 650px; opacity: 1; max-width: 100%;"></td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin2018" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding:=
 5px; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: initial !important; font-size: 14p=
x; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=
=3D"layout-row2018" class=3D"layout layout-row widget _widget_text style201=
8" style=3D"mso-line-height-rule: exactly; margin: 0; padding: 0; backgroun=
d-color: #ffffff;"><td id=3D"layout-row-padding2018" valign=3D"top" style=
=3D"mso-line-height-rule: exactly; background-color: #ffffff; padding: 20px=
 5px 20px 5px;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: =
100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-tabl=
e-lspace: 0pt;=0Amso-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule:=
 exactly;"><td id=3D"text_div1717" class=3D"td_text td_block" valign=3D"top=
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
line=3D"false"> #text_div1717, #text_div1717 div { line-height: 140% !impor=
tant; };=0A</style>=0A<![endif]--></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; b=
ackground-color: #ffffff;"><td id=3D"layout-row-margin2021" valign=3D"top" =
style=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #ff=
ffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bor=
der-collapse: initial !important; font-size: 14px; min-width: 100%; mso-tab=
le-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2021" class=3D"=
layout layout-row widget _widget_button style2021" style=3D"mso-line-height=
-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-padding202=
1" valign=3D"top" style=3D"mso-line-height-rule: exactly; background-color:=
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
=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2yrW9371K=
ZPnt9kpEJBuUoQUdLPZeBronFFQKmTvfQ6u&iat=3D1642868839&a=3D%7C%7C225362583%7C=
%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyf=
pj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed9=
4873b1c9268b7&i=3D100A149A1A356" style=3D"v-text-anchor:middle; width:189px=
; height:64px; font-weight: bold;" arcsize=3D"6%" strokecolor=3D"#B5B5B5" s=
trokeweight=3D"1pt" fillcolor=3D"#244df0" o:button=3D"true" o:allowincell=
=3D"true" o:allowoverlap=3D"false" > <v:textbox inset=3D"2px,2px,2px,2px"> =
<center style=3D"color:#ffffff;font-family:georgia, times new roman; font-s=
ize:14px; font-weight: bold;line-height: 1.1;">Click Here to Apply</center>=
 </v:textbox> </v:roundrect>=0A<![endif]--> <a href=3D"https://motorcityfun=
ding.lt.acemlnd.com/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5=
wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2yrW9371KZPnt9kpEJBuUoQUdLPZeBronFF=
QKmTvfQ6u&iat=3D1642868839&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfun=
ding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%=
2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D100A149A=
1A356" style=3D"margin: 0; outline: none; padding: 14px; color: #ffffff; ba=
ckground: #244df0; background-color: #244df0; border: 1px solid #B5B5B5; bo=
rder-radius: 3px; font-family: georgia, times new roman; font-size: 14px; d=
isplay: inline-block; line-height: 1.1; text-align: center; text-decoration=
: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia, =
times new roman;font-size:14px;font-weight: bold;"> Click Here to Apply </s=
pan> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-c=
olor: #ffffff;"><td id=3D"layout-row-margin2024" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly; background-color: #ffffff;"><table width=3D"10=
0%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr id=3D"layout-row2024" class=3D"layout layout-row widget _widget_sp=
acer " style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-paddin=
g2024" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table width=
=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-tex=
t-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: colla=
pse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rsp=
ace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td valign=3D"top" =
height=3D"30" style=3D"mso-line-height-rule: exactly;"><div=0Aclass=3D"spac=
er" style=3D"margin: 0; outline: none; padding: 0; height: 30px;"><table ce=
llpadding=3D"0" cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-=
text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: co=
llapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-=
rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"spa=
cer-body" valign=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-heig=
ht-rule: exactly;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=
=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-l=
ine-height-rule: exactly; background-color: #ffffff;"><td id=3D"layout-row-=
margin2022" valign=3D"top" style=3D"mso-line-height-rule: exactly; backgrou=
nd-color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adju=
st: 100%; border-collapse: collapse; font-size: 14px; min-width: 100%; mso-=
table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2022" class=
=3D"layout layout-row widget _widget_picture " align=3D"left" style=3D"mso-=
line-height-rule: exactly;"><td id=3D"layout-row-padding2022" valign=3D"top=
" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=
=3D"mso-line-height-rule: exactly;"><td class=3D"image-td" align=3D"left" v=
align=3D"top" width=3D"650"=0Astyle=3D"mso-line-height-rule: exactly;"><img=
 src=3D"https://content.app-us1.com/Rnj5K/2022/01/03/2a2d3efc-e79f-4c80-886=
6-1c85b0f01fda.jpeg?r=3D2002554216" alt=3D"" width=3D"650" style=3D"display=
: block; border: none; outline: none; width: 650px; opacity: 1; max-width: =
100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=
=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;">=
<td id=3D"layout-row-margin2025" valign=3D"top" style=3D"mso-line-height-ru=
le: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -=
webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; =
min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"l=
ayout-row2025" class=3D"layout layout-row widget _widget_spacer " style=3D"=
mso-line-height-rule: exactly;"><td id=3D"layout-row-padding2025" valign=3D=
"top" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td valign=3D"top" height=3D"30" st=
yle=3D"mso-line-height-rule: exactly;"><div=0Aclass=3D"spacer" style=3D"mar=
gin: 0; outline: none; padding: 0; height: 30px;"><table cellpadding=3D"0" =
cellspacing=3D"0" border=3D"0" width=3D"100%" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r style=3D"mso-line-height-rule: exactly;"><td class=3D"spacer-body" valign=
=3D"top" height=3D"30" width=3D"650" style=3D"mso-line-height-rule: exactly=
;">=C2=A0</td>=0A</tr>=0A</table>=0A</div>=0A</td>=0A</tr>=0A</table>=0A</t=
d>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><td id=3D"layout-row-margin2020" valig=
n=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px; background-=
color: #ffffff;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust:=
 100%; border-collapse: initial !important; font-size: 14px; min-width: 100=
%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2020"=
 class=3D"layout layout-row widget _widget_button style2020" style=3D"mso-l=
ine-height-rule: exactly;"><td id=3D"layout-row-padding2020" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"td_button td_=
block=0Acustomizable" valign=3D"top" align=3D"left" width=3D"630" style=3D"=
mso-line-height-rule: exactly;"> <div class=3D"button-wrapper" style=3D"mar=
gin: 0; outline: none; padding: 0; text-align: center;">=0A<!--[if mso]> <v=
:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:w=3D"urn:schemas=
-microsoft-com:office:word" href=3D"https://motorcityfunding.lt.acemlnd.com=
/Prod/link-tracker?redirectUrl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYn=
J1Z21hbg=3D=3D&sig=3D2yrW9371KZPnt9kpEJBuUoQUdLPZeBronFFQKmTvfQ6u&iat=3D164=
2868839&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted=
%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6Ak=
IVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D100A149A1A356" style=3D"v-t=
ext-anchor:middle; width:191px; height:66px; font-weight: bold;" arcsize=3D=
"6%" strokecolor=3D"#244df0" strokeweight=3D"1pt" fillcolor=3D"#244df0" o:b=
utton=3D"true" o:allowincell=3D"true" o:allowoverlap=3D"false" > <v:textbox=
 inset=3D"2px,2px,2px,2px"> <center style=3D"color:#ffffff;font-family:geor=
gia, times new roman; font-size:14px; font-weight: bold;line-height: 1.1;">=
Click Here to Apply</center> </v:textbox> </v:roundrect>=0A<![endif]--> <a =
href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?redirectU=
rl=3DaHR0cCUzQSUyRiUyRnd3dy5wbWZ1cy5jb20lMkZzYnJ1Z21hbg=3D=3D&sig=3D2yrW937=
1KZPnt9kpEJBuUoQUdLPZeBronFFQKmTvfQ6u&iat=3D1642868839&a=3D%7C%7C225362583%=
7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQU=
yfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86ee=
d94873b1c9268b7&i=3D100A149A1A356" style=3D"margin: 0; outline: none; paddi=
ng: 16px; color: #ffffff; background: #244df0; background-color: #244df0; b=
order-radius: 3px; font-family: georgia, times new roman; font-size: 14px; =
display: inline-block; line-height: 1.1; text-align: center; text-decoratio=
n: none; mso-hide: all;"> <span style=3D"color:#ffffff;font-family:georgia,=
 times new roman;font-size:14px;font-weight: bold;"> Click Here to Apply </=
span> </a> </div>=0A=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=
=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; background-c=
olor: #ffffff;"><td id=3D"layout-row-margin2023" valign=3D"top" style=3D"ms=
o-line-height-rule: exactly; padding: 5px; background-color: #ffffff;"><tab=
le width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collaps=
e: initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: =
0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2023" class=3D"layout layo=
ut-row widget _widget_text style2023" style=3D"mso-line-height-rule: exactl=
y; margin: 0; padding: 0;"><td id=3D"layout-row-padding2023" valign=3D"top"=
 style=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100=
%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-=
adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; fo=
nt-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0p=
t;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"text_div1722" =
class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"630" styl=
e=3D"mso-line-height-rule: exactly; margin: 0; outline: none; padding: 0; c=
olor: inherit; font-size: 12px; font-weight: inherit; line-height: 1; text-=
decoration: inherit; font-family: arial;"> <div style=3D"margin: 0; outline=
: none; padding: 0; color: #000000; font-size: 14px; font-weight: inherit; =
line-height: inherit; text-decoration: inherit;"> <div style=3D"margin: 0; =
outline: none; padding: 0; color: #000000; font-size: inherit; font-weight:=
 inherit; line-height: inherit; text-decoration: inherit;"> <ul style=3D"ma=
rgin: 0 0 0 40px; padding: 0; font-style: normal; text-align: left; color: =
#000000;"><li style=3D"display: list-item; line-height: inherit; list-style=
-type: disc; margin: 0 0 0 15px; color: #000000;"><span style=3D'color: #00=
0000; font-size: inherit; font-weight: bold; line-height: inherit; text-dec=
oration: inherit; font-family: georgia, "times new roman";' class=3D"">Unde=
r the=0Aprogram, small businesses (generally those with fewer than 500 empl=
oyees) who are unable to get traditional financing through banks can apply =
for funds that can then be used for anything from buying a business, purcha=
sing real estate, or for working capital. These multi-purpose SBA loan prog=
rams offer the most flexible and longest-term loans.</span></li><li style=
=3D"display: list-item; line-height: inherit; list-style-type: disc; margin=
: 0 0 0 15px; color: #000000;"><span style=3D'color: #000000; font-size: in=
herit; font-weight: bold; line-height: inherit; text-decoration: inherit; f=
ont-family: georgia, "times new roman";' class=3D"">To qualify for this loa=
n you <a href=3D"https://motorcityfunding.lt.acemlnd.com/Prod/link-tracker?=
redirectUrl=3DaHR0cHMlM0ElMkYlMkZ3d3cuc2JhLmdvdiUyRmZlZGVyYWwtY29udHJhY3Rpb=
mclMkZjb250cmFjdGluZy1ndWlkZSUyRmJhc2ljLXJlcXVpcmVtZW50cyUyM3NlY3Rpb24taGVh=
ZGVyLTY=3D&sig=3DFYjhNAW8ivhhXRNDzdKm731WkBFLu3iBwS8NKkUfZtyk&iat=3D1642868=
839&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding%2Eactivehosted%2Ec=
om&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUXVt3QtV0xSM9W6AkIVKs=
Af&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D100A149A1A357"=0Adata-ac-defaul=
t-color=3D"1" style=3D"margin: 0; outline: none; padding: 0; color: #045fb4=
; text-decoration: underline;"><span style=3D"color: ; font-size: inherit; =
font-weight: inherit; line-height: inherit; text-decoration: inherit;">must=
 have fewe</span></a>r than 500 employees or less than $20.5 million in ave=
rage annual receipts. You must operate as a for-profit business, be based i=
n the United States, and not be delinquent on any debt (such as taxes) owed=
 to the government.</span></li></ul><br style=3D"color: #000000;"></div>=0A=
 </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</t=
r>=0A<tr style=3D"mso-line-height-rule: exactly; background-color: #ffffff;=
"><td id=3D"layout-row-margin2029" valign=3D"top" style=3D"mso-line-height-=
rule: exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
 -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px=
; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D=
"layout-row2029" class=3D"layout layout-row widget _widget_picture " align=
=3D"center" style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-p=
adding2029" valign=3D"top" style=3D"mso-line-height-rule: exactly;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-tabl=
e-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td class=3D"i=
mage-td" align=3D"center" valign=3D"top" width=3D"650"=0Astyle=3D"mso-line-=
height-rule: exactly;"><img src=3D"https://content.app-us1.com/Rnj5K/2021/1=
0/19/efc7c4bf-daad-4389-a62e-b7bdcea92aec.png?r=3D348727207" alt=3D"" width=
=3D"650" style=3D"display: block; border: none; outline: none; width: 650px=
; opacity: 1; max-width: 100%;"></td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A<tr style=3D"mso-line-height-rule: exactly; back=
ground-color: #ffffff;"><td id=3D"layout-row-margin2030" valign=3D"top" sty=
le=3D"mso-line-height-rule: exactly; padding: 5px; background-color: #fffff=
f;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border=
-collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-=
lspace: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2030" class=3D"lay=
out layout-row widget _widget_text style2030" style=3D"mso-line-height-rule=
: exactly; margin: 0; padding: 0;"><td id=3D"layout-row-padding2030" valign=
=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table widt=
h=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-te=
xt-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: coll=
apse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rs=
pace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"text_d=
iv1728" class=3D"td_text td_block" valign=3D"top" align=3D"left" width=3D"6=
30" style=3D"mso-line-height-rule: exactly; margin: 0; outline: none; paddi=
ng: 0; color: inherit; font-size: 12px; font-weight: inherit; line-height: =
1; text-decoration: inherit; font-family: arial;"> <div style=3D"margin: 0;=
 outline: none; padding: 0; color: #000000; font-size: 12px; font-weight: i=
nherit; line-height: inherit; text-decoration: inherit;"> <div style=3D"mar=
gin: 0; outline: none; padding: 0; color: #000000; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit;"> <div st=
yle=3D"margin: 0; outline: none; padding: 0; color: #000000; font-size: inh=
erit; font-weight: inherit; line-height: inherit; text-decoration: inherit;=
 text-align: justify; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--=
tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --t=
w-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparen=
t;=0A--tw-ring-shadow: 0 0 transparent; font-style: normal;"><span style=3D=
'color: #000000; font-size: inherit; font-weight: bold; line-height: inheri=
t; text-decoration: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset:=
 var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #f=
ff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 tra=
nsparent; --tw-ring-shadow: 0 0 transparent; font-family: georgia, "times n=
ew roman";' class=3D"">If you have any questions please do not hesitate to =
call.=C2=A0 We pride ourselves on always being available to our clients.</s=
pan></div>=0A<div style=3D"margin: 0; outline: none; padding: 0; color: #00=
0000; font-size: inherit; font-weight: inherit; line-height: inherit; text-=
decoration: inherit; text-align: justify; --tw-shadow: 0 0 transparent; --t=
w-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-off=
set-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ring-offset-sh=
adow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-style: norma=
l;"><br style=3D'font-weight: bold;color: #000000; font-family: georgia, "t=
imes new roman";color: #000000;'></div>=0A<div style=3D"margin: 0; outline:=
 none; padding: 0; color: #000000; font-size: inherit; font-weight: inherit=
; line-height: inherit; text-decoration: inherit; text-align: justify; --tw=
-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-off=
set-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,=
246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 t=
ransparent; font-style: normal;"><span style=3D'color: #000000; font-size: =
inherit; font-weight: bold; line-height: inherit; text-decoration: inherit;=
 --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-rin=
g-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59=
,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: =
0 0 transparent; font-family: georgia, "times new roman";' class=3D"">Since=
rely,<br></span></div>=0A<div style=3D"margin: 0; outline: none; padding: 0=
; color: #000000; font-size: inherit; font-weight: inherit; line-height: in=
herit; text-decoration: inherit; text-align: justify; --tw-shadow: 0 0 tran=
sparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; -=
-tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-ri=
ng-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; font-=
style: normal;"><br style=3D'font-weight: bold;color: #000000; font-family:=
 georgia, "times new roman";color: #000000;'></div>=0A<div style=3D"margin:=
 0; outline: none; padding: 0; color: #000000; font-size: inherit; font-wei=
ght: inherit; line-height: inherit; text-decoration: inherit; text-align: j=
ustify; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); -=
-tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: =
rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-s=
hadow: 0 0 transparent; font-style: normal;"><span style=3D'color: #000000;=
 font-size: inherit; font-weight: bold; line-height: inherit; text-decorati=
on: inherit; --tw-shadow: 0 0 transparent; --tw-ring-inset: var(--tw-empty,=
 ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-co=
lor: rgba(59,130,246,0.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-r=
ing-shadow: 0 0 transparent; font-family: georgia, "times new roman";' clas=
s=3D""><span style=3D"color: #000000; font-size: inherit; font-weight: inhe=
rit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0=0A0 tra=
nsparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; =
--tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); --tw-r=
ing-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;">Sam=
uel Brugman</span><span style=3D"color: #000000; font-size: inherit; font-w=
eight: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow=
: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-wid=
th: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5=
); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transpar=
ent;"> </span><span style=3D"color: #000000; font-size: inherit; font-weigh=
t: inherit; line-height: inherit; text-decoration: inherit; --tw-shadow: 0 =
0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: =
0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0.5); -=
-tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent;=
">|=0AAccount</span><span style=3D"color: #000000; font-size: inherit; font=
-weight: inherit; line-height: inherit; text-decoration: inherit; --tw-shad=
ow: 0 0 transparent; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-w=
idth: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,0=
.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transp=
arent;"> Manager</span></span></div>=0A <br style=3D"color: #000000;"></div=
>=0A </div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=
=0A</tr>=0A<tr id=3D"layout-row2028" class=3D"layout layout-row clear-this =
" style=3D"mso-line-height-rule: exactly; background-color: #ffffff;"><td i=
d=3D"layout-row-padding2028" valign=3D"top" style=3D"mso-line-height-rule: =
exactly; background-color: #ffffff;"><table width=3D"100%" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webk=
it-text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-=
width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout_table_e4566bde00fb8e50a89e0c=
4f215e2a6f7bd89d0a" valign=3D"top" width=3D"325" style=3D"mso-line-height-r=
ule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" clas=
s=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust: aut=
o; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: 14=
px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr sty=
le=3D"mso-line-height-rule: exactly;"><td=0Aid=3D"layout-row-margin2026" va=
lign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 5px;"><table =
width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-m=
s-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: =
initial !important; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt=
; mso-table-rspace: 0pt;"><tr id=3D"layout-row2026" class=3D"layout layout-=
row widget _widget_text style2026" style=3D"mso-line-height-rule: exactly; =
margin: 0; padding: 0;"><td id=3D"layout-row-padding2026" valign=3D"top" st=
yle=3D"mso-line-height-rule: exactly; padding: 5px;"><table width=3D"100%" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adj=
ust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-=
size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"=
><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"text_div1725" class=
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
vcmNpdHlmdW5kaW5nLmNvbQ=3D=3D&sig=3D6qY3Q16hNunfpYnHbws5CVJGvFSFgNur7ogRbNW=
edbap&iat=3D1642868839&a=3D%7C%7C225362583%7C%7C&account=3Dmotorcityfunding=
%2Eactivehosted%2Ecom&email=3DrcnACfXAw2TQUyfpj7YMwBdIU0DsLaDSPK6rhDqV%2BUX=
Vt3QtV0xSM9W6AkIVKsAf&s=3D0ad92c0c4a2ff86eed94873b1c9268b7&i=3D100A149A1A35=
8" data-ac-default-color=3D"1" style=3D"margin: 0; outline: none; padding: =
0; color: #045fb4; text-decoration: underline;"><span style=3D"color: ; fon=
t-size: inherit; font-weight: inherit; line-height: inherit; text-decoratio=
n: inherit;">Motor City Funding</span></a><br></span><span style=3D"color: =
inherit; font-size: inherit; font-weight: bold; line-height: inherit;=0Atex=
t-decoration: inherit;" class=3D"">O: (315) 257-1195</span></span><br></div=
>=0A </span></div>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A=
</td>=0A</tr>=0A</table>=0A</td>=0A<td id=3D"layout_table_a57b0c11c5222b7f2=
622ce06467edf38abbe7d04" valign=3D"top" width=3D"325" style=3D"mso-line-hei=
ght-rule: exactly;"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0"=
 class=3D"layout layout-table " width=3D"325" style=3D"-ms-text-size-adjust=
: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-siz=
e: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><t=
r id=3D"layout-row2032" class=3D"layout layout-row clear-this " style=3D"ms=
o-line-height-rule: exactly;"><td id=3D"layout-row-padding2032" valign=3D"t=
op" style=3D"mso-line-height-rule: exactly;"><table width=3D"100%" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: a=
uto; -webkit-text-size-adjust: 100%; border-collapse: collapse; font-size: =
14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr s=
tyle=3D"mso-line-height-rule: exactly;"><td id=3D"layout_table_a25d9f8f7297=
3b8c99014268afb75c666295fcb4" valign=3D"top" width=3D"150" style=3D"mso-lin=
e-height-rule:=0Aexactly;"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" class=3D"layout layout-table " width=3D"150" style=3D"-ms-text-size=
-adjust: auto; -webkit-text-size-adjust: 100%; border-collapse: collapse; f=
ont-size: 14px; min-width: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0=
pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=3D"layout-row-marg=
in2031" valign=3D"top" style=3D"mso-line-height-rule: exactly; padding: 0px=
;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" s=
tyle=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-=
collapse: initial !important; font-size: 14px; min-width: 100%; mso-table-l=
space: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2031" class=3D"layo=
ut layout-row widget _widget_button style2031" style=3D"mso-line-height-rul=
e: exactly;"><td id=3D"layout-row-padding2031" valign=3D"top" style=3D"mso-=
line-height-rule: exactly; padding: 5px;"><table width=3D"100%" border=3D"0=
" cellpadding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto;=
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
able_dd290e1f328e6e02985ee29095b3be063f1bb4a9" valign=3D"top" width=3D"175"=
 style=3D"mso-line-height-rule: exactly;"><table cellpadding=3D"0" cellspac=
ing=3D"0" border=3D"0" class=3D"layout layout-table " width=3D"175" style=
=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; border-coll=
apse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace: 0pt; ms=
o-table-rspace: 0pt;"><tr style=3D"mso-line-height-rule: exactly;"><td id=
=3D"layout-row-margin2027" valign=3D"top" style=3D"mso-line-height-rule: ex=
actly;"><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" style=3D"-ms-text-size-adjust: auto; -webkit-text-size-adjust: 100%; bo=
rder-collapse: collapse; font-size: 14px; min-width: 100%; mso-table-lspace=
: 0pt; mso-table-rspace: 0pt;"><tr id=3D"layout-row2027" class=3D"layout la=
yout-row widget _widget_picture " align=3D"center" style=3D"mso-line-height=
-rule: exactly;"><td id=3D"layout-row-padding2027" valign=3D"top" style=3D"=
mso-line-height-rule: exactly;"><table=0Awidth=3D"100%" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"-ms-text-size-adjust: auto; -webkit-=
text-size-adjust: 100%; border-collapse: collapse; font-size: 14px; min-wid=
th: 100%; mso-table-lspace: 0pt; mso-table-rspace: 0pt;"><tr style=3D"mso-l=
ine-height-rule: exactly;"><td class=3D"image-td" align=3D"center" valign=
=3D"top" width=3D"175" style=3D"mso-line-height-rule: exactly;"><img src=3D=
"https://content.app-us1.com/Rnj5K/2022/01/03/194ddceb-ebc7-4f2c-a7d9-e7558=
12b75d6.png?r=3D1530082137" alt=3D"" width=3D"121" style=3D"display: block;=
 border: none; outline: none; width: 121px; opacity: 1; max-width: 100%;"><=
/td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</tabl=
e>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A=
</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</tr>=0A</table>=0A</td>=0A</=
tr>=0A</table>=0A</div>=0A<img src=3D"https://motorcityfunding.lt.acemlnd.c=
om/Prod/link-tracker?nl=3D1&c=3D100&m=3D149&s=3D0ad92c0c4a2ff86eed94873b1c9=
268b7&l=3Dopen&account=3Dmotorcityfunding.activehosted.com&a=3D225362583" b=
order=3D"0" width=3D"1" height=3D"1" style=3D"display:block;width:1px!impor=
tant;min-width:1px!important;max-width:1px!important;height:1px!important;b=
order:0;overflow:hidden;" /><div id=3D"ac-footer" style=3D"clear:both;backg=
round-color:inherit;background:inherit;min-width:100%;mso-table-lspace:0pt;=
mso-table-rspace:0pt;padding:20px;color:#000000;font-size:11px;font-family:=
arial,helvetica,sans-serif;line-height:140%;line-height:1.4;text-align:cent=
er;box-sizing:border-box;">=0A=09<center>=0A=09=09Sent to: <span style=3D"f=
ont-size:11px;font-family:arial,helvetica,sans-serif;font-weight:normal;tex=
t-decoration:none;outline:none;">linux1394-devel@lists.sourceforge.net</spa=
n>=0A=09=09<br>=0A=09=09<br>=0A=09=09<a href=3D"http://motorcityfunding.act=
ivehosted.com/proc.php?nl=3D1&c=3D100&m=3D149&s=3D0ad92c0c4a2ff86eed94873b1=
c9268b7&act=3Dunsub" style=3D"font-size:11px;font-family:arial,helvetica,sa=
ns-serif;font-weight:bold;text-decoration:underline;"><span style=3D"font-w=
eight:bold;text-decoration:underline;">Unsubscribe</span></a>=0A=09=09<br>=
=0A=09=09<br> Motor City Funding, 3000 Town Center, Southfield, United Stat=
es=0A=09</center>=0A</div>=0A<br clear=3D"all" /></body>=0A</html>
--_=_swift-119393728461ec2ecec1ddc7.92355805_=_--



--===============7258184938773919367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7258184938773919367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7258184938773919367==--


