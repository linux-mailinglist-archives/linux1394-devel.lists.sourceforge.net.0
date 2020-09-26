Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DD62798E7
	for <lists+linux1394-devel@lfdr.de>; Sat, 26 Sep 2020 14:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KkMr1A4Hk/3NO+reZSYg2d9UeBpTSPb2A6LkOBxvRK4=; b=Pi1CZEP6dkH8Q9ASFKLrmALz/k
	yyL5HgR5AqK3oW8JFuv6V0io5Mxwj438fJUon7fF1UZWG4Qg9l8fGG7LDDwbIIA/4Huu+Nb1v70wz
	ffv9ZYewXiwsgSv2dq6xGis972iLi/k3k9DgyyhQl3FLr0hAQkKMbl1BaRqkVHwbpmsU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kM9ZV-0004Mi-1P; Sat, 26 Sep 2020 12:45:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@mailing.catawiki.com>) id 1kM9ZR-0004MD-Vw
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Sep 2020 12:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Reply-To:Date:Subject:To:From:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nqFtj0GvUOBDgfywbm6LkeIQ7up8Xqo/0L3VhhDxrFs=; b=NCNfQQO3hEGgwPKGxj+9KTps1r
 2NPHDn8rjdLoXquHiWRovQlshTqibaXZ6FLHoDYENqp8pvPnw59/7YrS/Tcj1GOTpo9aeqCrDCVp2
 phjVV8NX2bGJYSP2LlwiP8ZfWRcjvIj5zRfnDWu4WKfevCPLlNjG0u7HwwuEtbA5vh3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Reply-To:
 Date:Subject:To:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nqFtj0GvUOBDgfywbm6LkeIQ7up8Xqo/0L3VhhDxrFs=; b=c
 ZvoDgUhSr3i2Ui4GTzuxPK6G52511EZWtPbOWTGtkgPjTwb/TEMUj+/zSR0MRb1P+nO1REfHGOqWE
 fuWk1NC5nSrdIaEGyx8Ozcxre51IpjPdNzlAtjAcf2BTdd62M20Dk7/BXSO2wt+rBTi+3sjJ1zYIO
 kx6YHoW0S4QLSUf8=;
Received: from webgridd171.emsecure.net ([91.230.170.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kM9ZD-0096eC-GA
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Sep 2020 12:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailing.catawiki.com; s=sim; x=1601729077;
 i=@mailing.catawiki.com; h=from:to:subject:date:reply-to:
 message-id:list-unsubscribe:list-unsubscribe-post:feedback-id:
 list-id:mime-version:content-type; bh=nqFtj0GvUOBDgfywbm6LkeIQ7u
 p8Xqo/0L3VhhDxrFs=; b=ayUMs5YQZPkfZjK4TINLMj4uH4r+6jej9d537091LX
 rR2R52wHGFVxfU5ihVJ0sordgVJKjaDikqLIk1NvY3rMDmRYoV4Ia43IKeohORK+
 spCWIfiXAmI808pl+zWreiebxI7TZUrVTSa2U57pu5+mtTxQ9XTPFXMum0/ZQfDV
 Y=
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
Subject: Magnificent Monday - no reserve prices on anything!
Date: Sat, 26 Sep 2020 12:44:37 +0000
Message-ID: <PATT3L761_20797976_sbvysfK80MmHbZMQXJU24K01eyEuwjRH41LplLC5xgsZYgi7CJGge0lszTlBj9ECPo/GwSEPHZJrHBc6Fa7sv5oFNMR32XHPKGX/nhJp9YUrq1bzvT7JqOOljBJF9RRj.8A66@webgridd171.emsecure.net>
X-GRID-REF: 8A66B7582E9A48E5AC85DC32E810B6FA.PATT3L761_20797976_sbvysfK80MmHbZMQXJU24K01eyEuwjRH41LplLC5xgsZYgi7CJGge0lszTlBj9ECPo/GwSEPHZJrHBc6Fa7sv5oFNMR32XHPKGX/nhJp9YUrq1bzvT7JqOOljBJF9RRj
X-GRID-QID: 234610
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-MA-Reference: SIM_IlHIcGkr7F9k181QDJAAU1C4swXiK2z94vlrTVyMvyF5fZfIR
X-MA-Instance: SIM_IlHIcGkr7F9k181QDJAAU1C4swXiK2z94vlrTVyMvyF5fZfIR.d1335e8a899441b0f0befbc9f697f9df
X-rpcampaign: catawiki_1011_1000300_7132
Feedback-ID: 20797976:1011:SLGNT
X-MailingID: 1011_761
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: slgnt.eu]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [91.230.170.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [91.230.170.171 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kM9ZD-0096eC-GA
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
From: Catawiki via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: noreply+en@catawiki.com
Cc: Catawiki <info@mailing.catawiki.com>
Content-Type: multipart/mixed; boundary="===============1984447827061195634=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============1984447827061195634==
Content-Type: multipart/alternative;
	boundary="_NexPart_001_"

--_NexPart_001_
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<=21-- :: Webversion --> =09 =09=09 =09=09=09=C2=A0 =09=09=09 =09=09=09=
=09 =09=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
 =09=09=09=09=09=09=09=09=09=09 Can't read the email? Go here for the o=
nline version  =09=09=09=09=09=09=09=09=09=09                          =
                                                                       =
                                                                       =
                                                                       =
                                                                       =
                                                                       =
                                                                       =
                                                                       =
                                                                       =
                                                                   =09=09=
=09=09=09=09=09=09=09=09 (https://mailing.catawiki.com/optiext/optiexte=
nsion.dll?ID=3DIabIev%2BFo8CaXG_jUCXXkAUEcwZv1QMmFy2zB3FgKbtZcBpYRP_b8g=
BJMqYARgHxNx6S%2Bf%2BUwVeyZxcjhGGZLDywpUhsi) =09=09=09=09=09=09=09=09=09=
 =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09 =09=09=
=09=09=09 =09=09=09=09 =09=09=09 =09=09=09=C2=A0 =09=09 =09 =09<=21-- :=
: End Webversion --> =09 =09<=21-- :: Top logo --> =09 =09=09 =09=09=09=
=C2=A0 =09=09=09 =09=09=09=09 =09=09=09=09=09 =09=09=09=09=09=09 =09=09=
=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09 =09=09=
=09=09 =09=09=09 =09=09=09=C2=A0 =09=09 =09 =09<=21-- :: End Top logo -=
->





<=21-- :: Footer -->  =09 =09=09=C2=A0 =09=09 =09=09=09 =09=09=09=09 =09=
=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09    <a href=3D=22https://www.catawiki.co=
m/help=22 data-link=3D=22helpcenter=22 target=3D=22_blank=22 style=3D=22=
text-decoration:none;color:=230033FF;=22>Check out our Help Centre</a> =
if you have any questions. If your answer isn=E2=80=99t there, you can =
get in touch with us via the Help Centre. =09=09=09=09=09=09=09=09 =09=09=
=09=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09 =09=09=09=09 =09=09=09=
 =09=09 =09=09=C2=A0 =09

=09=09=09=09=09  =09 =09=09=C2=A0 =09=09 =09=09=09 =09=09=09=09 =09=09=09=
=09=09 =09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=
 =09=09=09=09=09=09=09=09=09<=21-- left part --> =09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09What=
 do you think of this email? =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=
=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09=09<=21-- left part --> =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09<=21-- right part --> =09=09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawiki=
=2Ecom/optiext/optiextension.dll?ID=3DIabIbavm_qFTH0XwNfY7ghWMxk3yqSMRH=
76TANDuPGqoT6_slREVzqYdSZhESSJ6ccTy5dd9bMC9bBKqSZgpwnl0KF5LUyP6LXXucoIb=
) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09=09=
Good =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawiki.com/=
optiext/optiextension.dll?ID=3DIabIbavm_qFTH0XwNfY7ghWMxk3yqSMRH76TANDu=
PGqoT6_slREVzqYdSZhESSJ6ccTy5dd9bMC9bBKqSZgpwnl0KF5LUyP6LXXucoIb) =09=09=
=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=
=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawiki.com/optiext/=
optiextension.dll?ID=3DIabIe%2B1FM6nkusCS1R9w85MWy4I4g%2BqipA%2BmEoQFAy=
vRGAtslUcZSxj6Ce7cmjyv1T4WUfbB%2BDUVYWolKcyhzzcy5%2BgrEWrN5ltuClcw) =09=
=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=09=
=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09=09N=
ot so good =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawik=
i.com/optiext/optiextension.dll?ID=3DIabIe%2B1FM6nkusCS1R9w85MWy4I4g%2B=
qipA%2BmEoQFAyvRGAtslUcZSxj6Ce7cmjyv1T4WUfbB%2BDUVYWolKcyhzzcy5%2BgrEWr=
N5ltuClcw) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09<=21-- right=
 part --> =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=
=09 =09=09=09=09=09 =09=09=09=09 =09=09=09 =09=09 =09=09=C2=A0 =09

=09 =09=09=C2=A0 =09=09 =09=09=09 =09=09=09=09 =09=09=09=09=09 =09=09=09=
=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=09=09=
=09=09=09=09This email has been sent to linux1394-devel=40lists.sourcef=
orge.net on 26-09-2020 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=
=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=
=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=
=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=
=09=09=09=09=09    You've received this email because you are a registe=
red Catawiki user. Do you wish to unsubscribe from this newsletter? Cli=
ck <a href=3D=22https://www.catawiki.com/accounts/settings/notification=
s=22 data-link=3D=22unsubscribe=22 unsubscribe-link=3D=22true=22 target=
=3D=22_blank=22 style=3D=22text-decoration:none;color:=230033FF;=22>her=
e</a> to unsubscribe. =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=
=09=09=09=09=09 =09=09=09=09=09 =09=09=09=09 =09=09=09 =09=09 =09=09=C2=
=A0 =09  <=21-- :: End Footer -->

--_NexPart_001_
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22 xmlns:v=3D=22urn:schem=
as-microsoft-com:vml=22 xmlns:o=3D=22urn:schemas-microsoft-com:office:o=
ffice=22><head><meta http-equiv=3D=22Content-Type=22 content=3D=22text/=
html; charset=3Dutf-8=22 /><meta charset=3D=22utf-8=22  /><meta name=3D=
=22viewport=22  content=3D=22width=3Ddevice-width=22  /><meta http-equi=
v=3D=22X-UA-Compatible=22  content=3D=22IE=3Dedge=22  /><title>Magnific=
ent Monday - no reserve prices on anything=21</title>
      <=21--=5Bif (gte mso 9)=7C(IE)=5D><xml><o:OfficeDocumentSettings>=
<o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSet=
tings></xml><=21=5Bendif=5D-->
    <style type=3D=22text/css=22 >*=7B-ms-text-size-adjust:100%;-webkit=
-text-size-adjust:100%=7Dhtml,body=7Bpadding:0=21important;height:100%=21=
important;width:100%=21important;margin:0=21important=7Ddiv=5Bstyle*=3D=
=22margin: 16px 0=22=5D=7Bmargin:0=21important=7Dtable,td=7Bmso-table-l=
space:0=21important;mso-table-rspace:0=21important=7Dtable=7Bborder-spa=
cing:0=21important;margin:0 auto=21important=7D.yshortcuts a=7Bborder-b=
ottom:none=21important=7Da=5Bx-apple-data-detectors=5D=7Bcolor:inherit=21=
important;text-decoration:underline=21important=7D.applelinks a=7Bcolor=
:=23222;text-decoration:none=7Dth=7Bpadding:0=21important;margin:0=21im=
portant;font-weight:normal=7Dspan.MsoHyperlink=7Bmso-style-priority:99;=
color:inherit=7Dspan.MsoHyperlinkFollowed=7Bmso-style-priority:99;color=
:inherit=7D=23MessageViewBody,=23MessageWebViewDiv=7Bwidth:100%=21impor=
tant=7D=40media screen yahoo=7B*=7Boverflow:visible=21important;=7D.y-o=
verflow-hidden=7Boverflow:hidden=21important;=7D.m_show=7Bdisplay:none;=
=7D=7D.columns=7Bdisplay:inline-block;text-align:center=7D=23preheader=7B=
display:none=7D.m_show table=7Bdisplay:none=7D
=40media screen and (max-width:600px)=7B
    .quarter=7Bwidth:25%=21important;max-width:25%=21important=7D.third=
=7Bwidth:33.333%=21important;max-width:33.333%=21important=7D.second=7B=
width:50%=21important;max-width:50%=21important=7D.full=7Bwidth:100%=21=
important;max-width:100%=21important=7D.m_hide=7Bdisplay:none=21importa=
nt=7D.m_show=7Bdisplay:table=21important=7D.m_hide table=7Bdisplay:none=
=21important=7D.m_show table=7Bdisplay:table=21important=7D.geniuswrapp=
er=7Bwidth:320px=21important;padding:0=21important=7D.geniuscontainer=7B=
width:300px=21important;padding:0=21important=7D.geniusmobile=7Bwidth:3=
00px=21important;display:block=21important;padding:0=21important=7D.btn=
_table=7Bdisplay:table=21important=7D.btn_td=7Bdisplay:block=21importan=
t=7D
=7D
=40media screen and (max-width:480px)=7B
    .quarter=7Bwidth:50%=21important;max-width:50%=21important=7D.secon=
d,.third=7Bwidth:100%=21important;max-width:100%=21important=7D
=7D</style></head><body  bgcolor=3D=22=23ffffff=22  width=3D=22100%=22 =
 style=3D=22margin:0;padding:0=22 ><div style=3D=22display:none;font-si=
ze:0px;color:=23999999;line-height:0px;max-height:0px;max-width:0px;opa=
city:0;overflow:hidden;=22>Unique objects, selected by our experts =7C<=
/div><div style=3D=22display:none;max-height:0px;overflow:hidden;=22>&n=
bsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&=
nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;=
&nbsp;&zwnj;&nbsp;</div><img width=3D=221=22 height=3D=221=22 src=3D=22=
https://gridinbound.blob.core.windows.net/gic/g.png?h=3D45ed391b342e4e2=
0bdacae84ca5ec4c1=22 style=3D=22display:none; margin:0; padding:0; visi=
bility:hidden; overflow:hidden; max-height:0;width:0px;height:0px;font-=
size:0;color:=23FFFFFF;mso-hide:all;float: left;line-height:0;=22 alt=3D=
=22=22><img width=3D=221=22 height=3D=221=22 src=3D=22https://mailing.c=
atawiki.com/optiext/optiextension.dll?ID=3DIabIg6STQN_FeR8VxieiNpRcOL9w=
bv6tI7Gn%2Buknqf%2BoPwAskZfoR0KmPfcakJv8WUQ0w7kUheuJZ1w0fiPSyMR4bMfRKbd=
IdSvFBwcO=22 style=3D=22display:none; margin:0; padding:0; visibility:h=
idden; overflow:hidden; max-height:0;width:0px;height:0px;font-size:0;c=
olor:=23FFFFFF;mso-hide:all;float: left;line-height:0;=22 alt=3D=22=22>=
<table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  =
width=3D=22100%=22  role=3D=22presentation=22  bgcolor=3D=22=23ffffff=22=
 ><tr><td class=3D=22m_hide=22  style=3D=22font-size:0; line-height:1px=
; height:1px;=22  height=3D=221=22 >&nbsp;</td><td bgcolor=3D=22=23f6f6=
f6=22  valign=3D=22top=22  style=3D=22width:600px;text-align:left;word-=
wrap:break-word;word-break:normal=22 ><=21-- :: Webversion --> <table c=
ellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=
=22100%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr>=
 <td class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;heigh=
t:1px;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  s=
tyle=3D=22width:600px;=22 > <table bgcolor=3D=22=23FFFFFF=22  cellpaddi=
ng=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22=
  role=3D=22presentation=22 > <tr> <td class=3D=22mobile_padding_10=22 =
 style=3D=22padding: 10px 45px 10px 45px;=22 > <table cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td style=3D=22text-align:center; font-fam=
ily:arial; font-size:12px; mso-line-height-rule:exactly; line-height:12=
px; color:=23222222;max-height: 999999px; word-wrap: break-word; word-b=
reak: break-word;=22  align=3D=22center=22 > <a href=3D=22https://maili=
ng.catawiki.com/optiext/optiextension.dll?ID=3DIabIev%2BFo8CaXG_jUCXXkA=
UEcwZv1QMmFy2zB3FgKbtZcBpYRP_b8gBJMqYARgHxNx6S%2Bf%2BUwVeyZxcjhGGZLDywp=
Uhsi=22  target=3D=22_blank=22  style=3D=22color:=239b9b9b;text-decorat=
ion:underline;=22 >
 Can't read the email? Go here for the online version=20

                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
                                          =20
 </a> </td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_=
hide=22  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=
=221=22 >&nbsp;</td> </tr> </table> <=21-- :: End Webversion --> <=21--=
 :: Top logo --> <table cellpadding=3D=220=22  cellspacing=3D=220=22  b=
order=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22  bgcolor=
=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22  style=3D=22font-siz=
e:0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> <td c=
lass=3D=22m_wrapper=22  style=3D=22width:600px;=22 > <table bgcolor=3D=22=
=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=22=
0=22  width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td class=3D=
=22mobile_padding_10=22  style=3D=22padding: 0px 45px 30px 45px;=22 > <=
table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  w=
idth=3D=22100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22text=
-align:left;=22  valign=3D=22top=22  align=3D=22left=22 > <img src=3D=22=
https://catawiki.slgnt.eu/images//Templates/Newsletter/Logo.png=22  bor=
der=3D=220=22  style=3D=22display:block;=22  alt=3D=22alt=22  /> </td> =
</tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22  sty=
le=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22 >&=
nbsp;</td> </tr> </table> <=21-- :: End Top logo --></td><td class=3D=22=
m_hide=22  style=3D=22font-size:0; line-height:1px; height:1px;=22  hei=
ght=3D=221=22 >&nbsp;</td></tr></table><table cellpadding=3D=220=22  ce=
llspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pr=
esentation=22  bgcolor=3D=22=23ffffff=22 ><tr><td class=3D=22m_hide=22 =
 style=3D=22font-size:0; line-height:1px; height:1px;=22  height=3D=221=
=22 >&nbsp;</td><td bgcolor=3D=22=23f6f6f6=22  valign=3D=22top=22  styl=
e=3D=22width:600px;text-align:left;word-wrap:break-word;word-break:norm=
al=22 ><=21-- :: Full width image  --> <table cellpadding=3D=220=22  ce=
llspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pr=
esentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22 >=
 <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=
=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22=
 > <tr> <td style=3D=22padding: 0px 50px 24px 50px;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td valign=3D=22top=22 > <table =
cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  role=3D=
=22presentation=22  width=3D=22100%=22 ><tr><td align=3D=22center=22 ><=
a href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D=
IabIg9hK7uA1rNRZzo60BPcOSxYOcLge2_deFtZN8TQqG3Lskasbtu0TA7zBgL8c_PzHCF0=
H%2BJsLwjOxIhaNZckufuPDadV2c2StPGcp=22  rel=3D=22noopener noreferrer=22=
  target=3D=22_blank=22  style=3D=22text-decoration:none;cursor:default=
=22 ><img id=3D=22OWATemporaryImageDivContainer1=22  src=3D=22https://m=
ailing.catawiki.com/Portal/resourcehandler/resource/Adhoc/NORP/Magnific=
ent%20Monday%20500px%20EN%20date.png=22  alt=3D=22=22  border=3D=220=22=
  width=3D=22500=22  style=3D=22display:block;width:500px;max-width:100=
%=22 /></a></td></tr></table> </td> </tr> </table> </td> </tr> </table>=
 </td> <td class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px=
;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> </table> <=21-- ::=
 End Full width image --><=21-- :: Normal paragraph --> <table cellpadd=
ing=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=
=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td cl=
ass=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px;=22=
  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22=
width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22=
  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22 > <tr> <td style=3D=22padding: 0px 45px 15px 45px;=22 >=
 <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22te=
xt-align:left; font-family:arial; font-size:14px; mso-line-height-rule:=
exactly; line-height:20px; color:=23222222;max-height: 999999px; word-w=
rap: break-word; word-break: break-word;=22  valign=3D=22top=22  align=3D=
=22left=22 >
Hi Ardell,
















</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table> <=21-- :: End Normal paragraph --><table c=
ellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  role=3D=22=
presentation=22  width=3D=22100%=22 ><tr><td style=3D=22font-family:Ari=
al;font-size:14px;color:=23222222;font-weight:normal;word-wrap:break-wo=
rd;word-break:break-word;line-height:20px;padding-top:0px;padding-right=
:0px;padding-bottom:0px;padding-left:00px;background-color:transparent;=
text-align:left=22 ><h2 style=3D=22font-family:Arial;font-size:14px;col=
or:=23222222;word-wrap:break-word;word-break:normal;line-height:20px;fo=
nt-weight:normal;padding-top:0px;padding-right:45px;padding-bottom:12px=
;padding-left:45px;background-color:=23f6f6f6=22 ><span style=3D=22colo=
r:=23000000;=22 >Time to get a little adventurous=21 On Monday, 28th Se=
ptember all objects auctioned on Catawiki will close without a minimum =
price. Giving you even more opportunities to find something special. Re=
ady to start bidding?</span></h2></td></tr></table><=21-- :: Button -->=
 <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 width=3D=22100%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22=
 > <tr> <td class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1p=
x;height:1px;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrappe=
r=22  style=3D=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  ce=
llpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22=
100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding: 0px 4=
5px 10px 45px;font-size:0;text-align:left=22 > <table class=3D=22btn_ta=
ble=22  cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 role=3D=22presentation=22  style=3D=22display:inline-block;=22 > <tr> =
<td class=3D=22btn_td=22  bgcolor=3D=22=23ff7c19=22  style=3D=22padding=
:10px 20px 10px 20px;text-align:center;font-family: arial; font-size: 1=
4px; mso-line-height-rule: exactly; line-height: 20px;max-height: 99999=
9px; border-radius: 25px;font-weight:bold;=22 > <a class=3D=22btn=22  h=
ref=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3DIa=
bIagemX3Y6wzUPa1b1YaYMrAKNzJWAZG6hng1epfe1leusk233BDzzxpANKJPY3j6v7nNUv=
zHrts66BqpTfNmzhn_6u3R509vBihcV=22  target=3D=22_blank=22  rel=3D=22noo=
pener noreferrer=22  style=3D=22color:=23FFFFFF;text-decoration:none;fo=
nt-weight:bold;=22 >
Celebrate Magnificent Monday
</a> </td> </tr> </table> </td> </tr>  </table> </td> <td class=3D=22m_=
hide=22  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=
=221=22 >&nbsp;</td> </tr> </table> <=21-- :: End Button --><table cell=
padding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  role=3D=22p=
resentation=22  width=3D=22100%=22 ><tr><td style=3D=22font-family:Aria=
l;font-size:14px;color:=23222222;font-weight:normal;word-wrap:break-wor=
d;word-break:break-word;line-height:20px;padding-top:0px;padding-right:=
0px;padding-bottom:0px;padding-left:00px;background-color:transparent;t=
ext-align:left=22 ><h2 style=3D=22font-family:Arial;font-size:14px;colo=
r:=23222222;word-wrap:break-word;word-break:normal;line-height:20px;fon=
t-weight:normal;padding-top:0px;padding-right:45px;padding-bottom:24px;=
padding-left:45px;background-color:=23f6f6f6=22 ><span style=3D=22color=
:=23000000;=22 >These are just some of the objects that could be yours:=
</span></h2></td></tr></table><table cellpadding=3D=220=22 cellspacing=3D=
=220=22 border=3D=220=22 width=3D=22100%=22 role=3D=22presentation=22><=
tr><td  bgcolor=3D=22=23f6f6f6=22  valign=3D=22top=22  style=3D=22font-=
family:Tahoma;color:=23000000;text-align:left;font-weight:normal;word-w=
rap:break-word;word-break:normal;padding:0px=22 ><table cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 ><tr><td bgcolor=3D=22=23f6f6f6=22  valign=3D=22t=
op=22  style=3D=22width:600px;text-align:left;word-wrap:break-word;word=
-break:normal=22 ><style type=3D=22text/css=22 >=40media screen and (ma=
x-width: 600px) =7B
=2Em_show_inline_table =7Bdisplay: inline-table =21important;=7D
=2Emobile_padding_10 =7B padding-left: 10px =21important;padding-right:=
 10px =21important;=7D
=7D
=40media screen and (max-width: 480px) =7B
=2Ebtn_table =7Bwidth: 100% =21important; display: table =21important;=7D=

=2Ebtn_td =7Bpadding:0 =21important; display:block =21important; font-s=
ize:14px =21important; font-weight:bold =21important; padding:6px 4px 8=
px 4px =21important; line-height:18px =21important;  border-radius:25px=
 =21important; margin:10px auto; width:70% =21important; text-align:cen=
ter; text-decoration:none; text-shadow:=23EEEEEE 1px 0 0; =7D
=7D</style> <=21-- :: Example auction image left side --> <table cellpa=
dding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=2210=
0%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td =
class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px=
;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=
=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td class=3D=22mobile_padding_10=22  dir=3D=
=22ltr=22  style=3D=22font-size:0;padding:0px 50px 24px 50px;=22 > <tab=
le cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  widt=
h=3D=22100%=22  style=3D=22text-align:center;background-color:=23FFFFFF=
;border-bottom: 1px solid =23d8d8d8;=22  bgcolor=3D=22=23FFFFFF=22  rol=
e=3D=22presentation=22 > <tr> <th class=3D=22columns full=22  dir=3D=22=
ltr=22  valign=3D=22top=22  align=3D=22left=22  style=3D=22text-align:l=
eft;width:100%;max-width:100%;display:inline-block;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px;width=
:128px;=22  width=3D=22128=22  valign=3D=22top=22  align=3D=22left=22 >=
 <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td align=3D=22le=
ft=22  valign=3D=22top=22 > <a href=3D=22https://mailing.catawiki.com/o=
ptiext/optiextension.dll?ID=3DIabIbToreSGzcSAM77kxr9y1o2pkM61AwMnaeZjlB=
GcarotYlId1IuJvpjc%2B9YLlRtlm1XPX4qbx7S2iyxFiTxuXQ5t5bCB6KUaBNccn=22  t=
arget=3D=22_blank=22  rel=3D=22noopener noreferrer=22  style=3D=22text-=
decoration:none;cursor:default;=22 > <img src=3D=22https://assets.cataw=
iki.nl/assets/2020/9/4/d/0/c/thumb5_d0cca330-e126-4f80-b8f2-62526ea296a=
5.jpg=22  alt=3D=22Lamborghini - Jalpa P350 3.5L V8 Targa - NO RESERVE =
- 1984=22  border=3D=220=22  width=3D=22128=22  style=3D=22width:128px;=
 max-width:128px; min-width:128px; display:block;=22  /> </a> </td> </t=
r> </table> </td> <td valign=3D=22middle=22  align=3D=22left=22  style=3D=
=22width:100%;min-width:100%;max-width:100%;=22  width=3D=22100%=22 > <=
table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  w=
idth=3D=22100%=22  role=3D=22presentation=22 > <tr> <td valign=3D=22top=
=22  align=3D=22left=22  style=3D=22padding:15px 15px 15px 15px;text-al=
ign:left; font-family:arial; font-size:16px; mso-line-height-rule:exact=
ly; line-height:16px; color:=23222222;max-height: 999999px; word-wrap: =
break-word; word-break: break-word; font-weight: bold;=22 > <a class=3D=
=22btn=22  href=3D=22https://mailing.catawiki.com/optiext/optiextension=
=2Edll?ID=3DIabIbToreSGzcSAM77kxr9y1o2pkM61AwMnaeZjlBGcarotYlId1IuJvpjc=
%2B9YLlRtlm1XPX4qbx7S2iyxFiTxuXQ5t5bCB6KUaBNccn=22  target=3D=22_blank=22=
  rel=3D=22noopener noreferrer=22  style=3D=22font-family:arial; font-s=
ize:16px; mso-line-height-rule:exactly; line-height:16px; color:=232222=
22;max-height: 999999px; word-wrap: break-word; word-break: break-word;=
 font-weight: bold;text-decoration:none;=22 >
Lamborghini - Jalpa P350 3.5L V8 Targa - NO RESERVE - 1984
</a> </td> </tr> </table> </td> </tr> </table> </th> </tr> </table> </t=
d> </tr> </table> </td> <td class=3D=22m_hide=22  style=3D=22font-size:=
0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> <=
/table> <=21-- :: End Example auction image left side --></td></tr></ta=
ble></td></tr><tr><td  bgcolor=3D=22=23f6f6f6=22  valign=3D=22top=22  s=
tyle=3D=22font-family:Tahoma;color:=23000000;text-align:left;font-weigh=
t:normal;word-wrap:break-word;word-break:normal;padding:0px=22 ><table =
cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=
=22100%=22  role=3D=22presentation=22 ><tr><td bgcolor=3D=22=23f6f6f6=22=
  valign=3D=22top=22  style=3D=22width:600px;text-align:left;word-wrap:=
break-word;word-break:normal=22 ><style type=3D=22text/css=22 >=40media=
 screen and (max-width: 600px) =7B
=2Em_show_inline_table =7Bdisplay: inline-table =21important;=7D
=2Emobile_padding_10 =7B padding-left: 10px =21important;padding-right:=
 10px =21important;=7D
=7D
=40media screen and (max-width: 480px) =7B
=2Ebtn_table =7Bwidth: 100% =21important; display: table =21important;=7D=

=2Ebtn_td =7Bpadding:0 =21important; display:block =21important; font-s=
ize:14px =21important; font-weight:bold =21important; padding:6px 4px 8=
px 4px =21important; line-height:18px =21important;  border-radius:25px=
 =21important; margin:10px auto; width:70% =21important; text-align:cen=
ter; text-decoration:none; text-shadow:=23EEEEEE 1px 0 0; =7D
=7D</style> <=21-- :: Example auction image left side --> <table cellpa=
dding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=2210=
0%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td =
class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px=
;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=
=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td class=3D=22mobile_padding_10=22  dir=3D=
=22ltr=22  style=3D=22font-size:0;padding:0px 50px 24px 50px;=22 > <tab=
le cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  widt=
h=3D=22100%=22  style=3D=22text-align:center;background-color:=23FFFFFF=
;border-bottom: 1px solid =23d8d8d8;=22  bgcolor=3D=22=23FFFFFF=22  rol=
e=3D=22presentation=22 > <tr> <th class=3D=22columns full=22  dir=3D=22=
ltr=22  valign=3D=22top=22  align=3D=22left=22  style=3D=22text-align:l=
eft;width:100%;max-width:100%;display:inline-block;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px;width=
:128px;=22  width=3D=22128=22  valign=3D=22top=22  align=3D=22left=22 >=
 <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td align=3D=22le=
ft=22  valign=3D=22top=22 > <a href=3D=22https://mailing.catawiki.com/o=
ptiext/optiextension.dll?ID=3DIabIbToreSGzcSAM77kxr9y1o2pkM61AwMnaeZjlB=
GcarotYlId1IuJvpjc%2B9YLlRtlm1XPX4qoFGe2iyxFiTxuXQ5t5bCB6KfKZi_I7=22  t=
arget=3D=22_blank=22  rel=3D=22noopener noreferrer=22  style=3D=22text-=
decoration:none;cursor:default;=22 > <img src=3D=22https://assets.cataw=
iki.nl/assets/2020/9/10/9/e/8/thumb5_9e828061-2d91-42e2-8cef-78ffad2460=
dc.jpg=22  alt=3D=22House Of R&D - 14 kt. White gold - Necklace - 46.00=
 ct Unheated Burma Ruby - 8.80 ct Diamonds - No Reserve Price=22  borde=
r=3D=220=22  width=3D=22128=22  style=3D=22width:128px; max-width:128px=
; min-width:128px; display:block;=22  /> </a> </td> </tr> </table> </td=
> <td valign=3D=22middle=22  align=3D=22left=22  style=3D=22width:100%;=
min-width:100%;max-width:100%;=22  width=3D=22100%=22 > <table cellpadd=
ing=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=
=22  role=3D=22presentation=22 > <tr> <td valign=3D=22top=22  align=3D=22=
left=22  style=3D=22padding:15px 15px 15px 15px;text-align:left; font-f=
amily:arial; font-size:16px; mso-line-height-rule:exactly; line-height:=
16px; color:=23222222;max-height: 999999px; word-wrap: break-word; word=
-break: break-word; font-weight: bold;=22 > <a class=3D=22btn=22  href=3D=
=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3DIabIbTor=
eSGzcSAM77kxr9y1o2pkM61AwMnaeZjlBGcarotYlId1IuJvpjc%2B9YLlRtlm1XPX4qoFG=
e2iyxFiTxuXQ5t5bCB6KfKZi_I7=22  target=3D=22_blank=22  rel=3D=22noopene=
r noreferrer=22  style=3D=22font-family:arial; font-size:16px; mso-line=
-height-rule:exactly; line-height:16px; color:=23222222;max-height: 999=
999px; word-wrap: break-word; word-break: break-word; font-weight: bold=
;text-decoration:none;=22 >
House Of R&D - 14 kt. White gold - Necklace - 46.00 ct Unheated Burma .=
=2E.
</a> </td> </tr> </table> </td> </tr> </table> </th> </tr> </table> </t=
d> </tr> </table> </td> <td class=3D=22m_hide=22  style=3D=22font-size:=
0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> <=
/table> <=21-- :: End Example auction image left side --></td></tr></ta=
ble></td></tr><tr><td  bgcolor=3D=22=23f6f6f6=22  valign=3D=22top=22  s=
tyle=3D=22font-family:Tahoma;color:=23000000;text-align:left;font-weigh=
t:normal;word-wrap:break-word;word-break:normal;padding:0px=22 ><table =
cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=
=22100%=22  role=3D=22presentation=22 ><tr><td bgcolor=3D=22=23f6f6f6=22=
  valign=3D=22top=22  style=3D=22width:600px;text-align:left;word-wrap:=
break-word;word-break:normal=22 ><style type=3D=22text/css=22 >=40media=
 screen and (max-width: 600px) =7B
=2Em_show_inline_table =7Bdisplay: inline-table =21important;=7D
=2Emobile_padding_10 =7B padding-left: 10px =21important;padding-right:=
 10px =21important;=7D
=7D
=40media screen and (max-width: 480px) =7B
=2Ebtn_table =7Bwidth: 100% =21important; display: table =21important;=7D=

=2Ebtn_td =7Bpadding:0 =21important; display:block =21important; font-s=
ize:14px =21important; font-weight:bold =21important; padding:6px 4px 8=
px 4px =21important; line-height:18px =21important;  border-radius:25px=
 =21important; margin:10px auto; width:70% =21important; text-align:cen=
ter; text-decoration:none; text-shadow:=23EEEEEE 1px 0 0; =7D
=7D</style> <=21-- :: Example auction image left side --> <table cellpa=
dding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=2210=
0%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td =
class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px=
;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=
=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td class=3D=22mobile_padding_10=22  dir=3D=
=22ltr=22  style=3D=22font-size:0;padding:0px 50px 24px 50px;=22 > <tab=
le cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  widt=
h=3D=22100%=22  style=3D=22text-align:center;background-color:=23FFFFFF=
;border-bottom: 1px solid =23d8d8d8;=22  bgcolor=3D=22=23FFFFFF=22  rol=
e=3D=22presentation=22 > <tr> <th class=3D=22columns full=22  dir=3D=22=
ltr=22  valign=3D=22top=22  align=3D=22left=22  style=3D=22text-align:l=
eft;width:100%;max-width:100%;display:inline-block;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px;width=
:128px;=22  width=3D=22128=22  valign=3D=22top=22  align=3D=22left=22 >=
 <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22 =
 width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td align=3D=22le=
ft=22  valign=3D=22top=22 > <a href=3D=22https://mailing.catawiki.com/o=
ptiext/optiextension.dll?ID=3DIabIbToreSGzcSAM77kxr9y1o2pkM61AwMnaeZjlB=
GcarotYlId1IuJvpjc%2B9YLlRtlm1XPX4qyh0W2iyxFiTxuXQ5t5bCB6LWk_ttIM=22  t=
arget=3D=22_blank=22  rel=3D=22noopener noreferrer=22  style=3D=22text-=
decoration:none;cursor:default;=22 > <img src=3D=22https://assets.cataw=
iki.nl/assets/2020/9/14/8/4/6/thumb5_846962d8-fe71-4e69-96ae-c9e1b2ea45=
fe.jpg=22  alt=3D=22Laudy, Jacques - Couverture originale - La l=C3=A9g=
ende des quatre fils Aymon - Tintin hebdomadaire N=C2=B0 7 - (1946)=22 =
 border=3D=220=22  width=3D=22128=22  style=3D=22width:128px; max-width=
:128px; min-width:128px; display:block;=22  /> </a> </td> </tr> </table=
> </td> <td valign=3D=22middle=22  align=3D=22left=22  style=3D=22width=
:100%;min-width:100%;max-width:100%;=22  width=3D=22100%=22 > <table ce=
llpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22=
100%=22  role=3D=22presentation=22 > <tr> <td valign=3D=22top=22  align=
=3D=22left=22  style=3D=22padding:15px 15px 15px 15px;text-align:left; =
font-family:arial; font-size:16px; mso-line-height-rule:exactly; line-h=
eight:16px; color:=23222222;max-height: 999999px; word-wrap: break-word=
; word-break: break-word; font-weight: bold;=22 > <a class=3D=22btn=22 =
 href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D=
IabIbToreSGzcSAM77kxr9y1o2pkM61AwMnaeZjlBGcarotYlId1IuJvpjc%2B9YLlRtlm1=
XPX4qyh0W2iyxFiTxuXQ5t5bCB6LWk_ttIM=22  target=3D=22_blank=22  rel=3D=22=
noopener noreferrer=22  style=3D=22font-family:arial; font-size:16px; m=
so-line-height-rule:exactly; line-height:16px; color:=23222222;max-heig=
ht: 999999px; word-wrap: break-word; word-break: break-word; font-weigh=
t: bold;text-decoration:none;=22 >
Laudy, Jacques - Couverture originale - La l=C3=A9gende des quatre fils=
 Aym...
</a> </td> </tr> </table> </td> </tr> </table> </th> </tr> </table> </t=
d> </tr> </table> </td> <td class=3D=22m_hide=22  style=3D=22font-size:=
0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> <=
/table> <=21-- :: End Example auction image left side --></td></tr></ta=
ble></td></tr></table><style type=3D=22text/css=22 >=40media screen and=
 (max-width: 600px) =7B
=2Em_show_inline_table =7Bdisplay: inline-table =21important;=7D
=2Emobile_padding_10 =7B padding-left: 10px =21important;padding-right:=
 10px =21important;=7D
=7D
=40media screen and (max-width: 480px) =7B
=2Ebtn_table =7Bwidth: 100% =21important; display: table =21important;=7D=

=2Ebtn_td =7Bpadding:0 =21important; display:block =21important; font-s=
ize:14px =21important; font-weight:bold =21important; padding:6px 4px 8=
px 4px =21important; line-height:18px =21important;  border-radius:25px=
 =21important; margin:10px auto; width:70% =21important; text-align:cen=
ter; text-decoration:none; text-shadow:=23EEEEEE 1px 0 0; =7D
=7D</style> <=21-- :: Example auction image left side --> <table cellpa=
dding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=2210=
0%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td =
class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px=
;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=
=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td class=3D=22mobile_padding_10=22  dir=3D=
=22ltr=22  style=3D=22font-size:0;padding:0px 50px 24px 50px;=22 > <tab=
le cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  widt=
h=3D=22100%=22  style=3D=22text-align:center;background-color:=23FFFFFF=
;border-bottom: 1px solid =23d8d8d8;=22  bgcolor=3D=22=23FFFFFF=22  rol=
e=3D=22presentation=22 > <tr> <th class=3D=22columns full=22  dir=3D=22=
ltr=22  valign=3D=22top=22  align=3D=22left=22  style=3D=22text-align:l=
eft;width:100%;max-width:100%;display:inline-block;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px;width=
:128px;min-width: 128px;=22  width=3D=22128=22  min-width=3D=22128=22  =
valign=3D=22top=22  align=3D=22left=22 > <table cellpadding=3D=220=22  =
cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22 > <tr> <td align=3D=22left=22  valign=3D=22top=22 > <a =
href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3DI=
abIhY9OIF4kBuFma4wubOIADmCxPXouWrhS3TwQyjoHblMsls5TDPr1vDHd_oUYngwPgHda=
TsPMlKjpJU5NHpcpGpUF%2BDeC_iBEw6cG=22  target=3D=22_blank=22  rel=3D=22=
noopener noreferrer=22  style=3D=22text-decoration:none;cursor:default;=
=22 > <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=22=
0=22  role=3D=22presentation=22  width=3D=22100%=22 ><tr><td align=3D=22=
center=22 ><a href=3D=22https://mailing.catawiki.com/optiext/optiextens=
ion.dll?ID=3DIabIfLLzEBe9k2nizOZRFAaEYXsdo2NociQCbZDfwsuECkIYlDFgmqfydo=
ocWIBqJuVaywsNrg66fhUZ5WWG8kOCgAsy2HZxtkdCHIcv=22  rel=3D=22noopener no=
referrer=22  target=3D=22_blank=22  style=3D=22text-decoration:none;cur=
sor:default=22 ><img id=3D=22OWATemporaryImageDivContainer1=22  src=3D=22=
https://mailing.catawiki.com/Portal/resourcehandler/resource/Adhoc/NORP=
/unnamed%20(1).jpg=22  alt=3D=22=22  border=3D=220=22  width=3D=22128=22=
  style=3D=22display:block;width:128px;max-width:100%;min-width:128px=22=
 /></a></td></tr></table> </a> </td> </tr> </table> </td> <td valign=3D=
=22middle=22  align=3D=22left=22  style=3D=22width:100%;min-width:100%;=
max-width:100%;=22  width=3D=22100%=22 > <table cellpadding=3D=220=22  =
cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22 > <tr> <td valign=3D=22top=22  align=3D=22left=22  styl=
e=3D=22padding:15px 15px 15px 15px;text-align:left; font-family:arial; =
font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:=23=
222222;max-height: 999999px; word-wrap: break-word; word-break: break-w=
ord; font-weight: bold;=22 > <a class=3D=22btn=22  href=3D=22https://ma=
iling.catawiki.com/optiext/optiextension.dll?ID=3DIabIhY9OIF4kBuFma4wub=
OIADmCxPXouWrhS3TwQyjoHblMsls5TDPr1vDHd_oUYngwPgHdaTsPMlKjpJU5NHpcpGpUF=
%2BDeC_iBEw6cG=22  target=3D=22_blank=22  rel=3D=22noopener noreferrer=22=
  style=3D=22font-family:arial; font-size:16px; mso-line-height-rule:ex=
actly; line-height:16px; color:=23222222;max-height: 999999px; word-wra=
p: break-word; word-break: break-word; font-weight: bold;text-decoratio=
n:none;=22 >
Aiiroh - Spraying Robot (original painting)=20
</a> </td> </tr> </table> </td> </tr> </table> </th> </tr> </table> </t=
d> </tr> </table> </td> <td class=3D=22m_hide=22  style=3D=22font-size:=
0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> <=
/table> <=21-- :: End Example auction image left side --><=21-- :: Norm=
al paragraph --> <table cellpadding=3D=220=22  cellspacing=3D=220=22  b=
order=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22  bgcolor=
=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22  style=3D=22font-siz=
e:0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> <td c=
lass=3D=22m_wrapper=22  style=3D=22width:600px;=22 > <table bgcolor=3D=22=
=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=22=
0=22  width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td style=3D=
=22padding: 0px 45px 24px 45px;=22 > <table cellpadding=3D=220=22  cell=
spacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pres=
entation=22 > <tr> <td style=3D=22text-align:left; font-family:arial; f=
ont-size:14px; mso-line-height-rule:exactly; line-height:20px; color:=23=
222222;max-height: 999999px; word-wrap: break-word; word-break: break-w=
ord;=22  valign=3D=22top=22  align=3D=22left=22 >
Kind regards,<br />Catawiki
















</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table> <=21-- :: End Normal paragraph --></td><td=
 class=3D=22m_hide=22  style=3D=22font-size:0; line-height:1px; height:=
1px;=22  height=3D=221=22 >&nbsp;</td></tr></table><table cellpadding=3D=
=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  r=
ole=3D=22presentation=22  bgcolor=3D=22=23ffffff=22 ><tr><td class=3D=22=
m_hide=22  style=3D=22font-size:0; line-height:1px; height:1px;=22  hei=
ght=3D=221=22 >&nbsp;</td><td bgcolor=3D=22=23f6f6f6=22  valign=3D=22to=
p=22  style=3D=22width:600px;text-align:left;word-wrap:break-word;word-=
break:normal=22 ><=21-- :: Footer --> <table cellpadding=3D=220=22  cel=
lspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pre=
sentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22 >=
 <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=
=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22=
 > <tr> <td style=3D=22padding: 0px 50px 0px 50px;=22 > <table cellpadd=
ing=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=
=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px 0px 10=
px 0px;text-align:left; font-family:arial; font-size:12px; mso-line-hei=
ght-rule:exactly; line-height:14px; color:=239b9b9b;max-height: 999999p=
x; word-wrap: break-word; word-break: break-word;=22  valign=3D=22top=22=
  align=3D=22left=22 >
    <a href=3D=22https://www.catawiki.com/help=22 data-link=3D=22helpce=
nter=22 target=3D=22_blank=22 style=3D=22text-decoration:none;color:=23=
0033FF;=22>Check out our Help Centre</a> if you have any questions. If =
your answer isn=E2=80=99t there, you can get in touch with us via the H=
elp Centre.
</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table>  <table cellpadding=3D=220=22  cellspacing=
=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentatio=
n=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22  style=3D=
=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;=
</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22  align=3D=
=22center=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22 =
 cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22 > <tr> <td class=3D=22mobile_padding_2=22  style=3D=22f=
ont-size:0;padding: 0px 42px 24px 42px;=22 > <table cellpadding=3D=220=22=
  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  style=3D=
=22text-align:center;=22  role=3D=22presentation=22 > <tr> <th class=3D=
=22block_294 columns full=22  style=3D=22text-align:center; min-width:2=
94px; width:57%; max-width:100%; min-width:-webkit-calc(57%); min-width=
:calc(57%); display:inline-block; width:-webkit-calc(230400px - 48000%)=
; width:calc(230400px - 48000%);=22  valign=3D=22top=22 > <=21-- left p=
art --> <table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=22=
0=22  width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td style=3D=
=22padding:0px 10px 0px 0px;=22  valign=3D=22middle=22  align=3D=22left=
=22  width=3D=2230=22 > <img height=3D=2230=22  width=3D=2230=22  borde=
r=3D=220=22  src=3D=22https://catawiki.slgnt.eu/images/Templates/Newsle=
tter/feedback.png=22  style=3D=22display:block;vertical-align:middle;=22=
  /> </td> <td style=3D=22padding:0px 10px 0px 0px;text-align:left; fon=
t-family:arial; font-size:12px; mso-line-height-rule:exactly; line-heig=
ht:14px; color:=239B9B9B;max-height: 999999px; word-wrap: break-word; w=
ord-break: break-word;=22  valign=3D=22middle=22  align=3D=22left=22 > =
<strong>What do you think of this email?</strong> </td> </tr> </table> =
<=21-- left part --> </th> <th class=3D=22block_222 columns full=22  st=
yle=3D=22text-align:center; min-width:222px; width:43%; max-width:100%;=
 min-width:-webkit-calc(43%); min-width:calc(43%); display:inline-block=
; width:-webkit-calc(230400px - 48000%); width:calc(230400px - 48000%);=
=22  valign=3D=22top=22 > <=21-- right part --> <table cellpadding=3D=22=
0=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=
=3D=22presentation=22 > <tr> <td style=3D=22padding:0 10px 0 0;=22  val=
ign=3D=22middle=22  align=3D=22left=22  width=3D=2230=22 > <a href=3D=22=
https://mailing.catawiki.com/optiext/optiextension.dll?ID=3DIabIbavm_qF=
TH0XwNfY7ghWMxk3yqSMRH76TANDuPGqoT6_slREVzqYdSZhESSJ6ccTy5dd9bMC9bBKqSZ=
gpwnl0KF5LUyP6LXXucoIb=22  style=3D=22font-family:arial;color:=239B9B9B=
; text-decoration:none; text-decoration:none;font-size:12px;=22 > <img =
height=3D=2230=22  width=3D=2230=22  border=3D=220=22  src=3D=22https:/=
/catawiki.slgnt.eu/images/Templates/Newsletter/thumbs_up.png=22  style=3D=
=22display:block;vertical-align:middle;=22  /> </a> </td> <td style=3D=22=
padding:0px 10px 0px 0px;text-align:left; font-family:arial; font-size:=
12px; mso-line-height-rule:exactly; line-height:14px; color:=239B9B9B;m=
ax-height: 999999px; word-wrap: break-word; word-break: break-word;=22 =
> <a href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?I=
D=3DIabIbavm_qFTH0XwNfY7ghWMxk3yqSMRH76TANDuPGqoT6_slREVzqYdSZhESSJ6ccT=
y5dd9bMC9bBKqSZgpwnl0KF5LUyP6LXXucoIb=22  style=3D=22font-family:arial;=
color:=239B9B9B; text-decoration:none; text-decoration:none;font-size:1=
2px;=22 > <strong>Good</strong> </a> </td> <td style=3D=22padding:0 10p=
x 0 0;=22  valign=3D=22middle=22  align=3D=22left=22  width=3D=2230=22 =
> <a href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?I=
D=3DIabIe%2B1FM6nkusCS1R9w85MWy4I4g%2BqipA%2BmEoQFAyvRGAtslUcZSxj6Ce7cm=
jyv1T4WUfbB%2BDUVYWolKcyhzzcy5%2BgrEWrN5ltuClcw=22  style=3D=22font-fam=
ily:arial;color:=239B9B9B; text-decoration:none; text-decoration:none;f=
ont-size:12px;=22 > <img height=3D=2230=22  width=3D=2230=22  border=3D=
=220=22  src=3D=22https://catawiki.slgnt.eu/images/Templates/Newsletter=
/thumbs_down.png=22  style=3D=22display:block;vertical-align:middle;=22=
  /> </a> </td> <td style=3D=22text-align:left; font-family:arial; font=
-size:12px; mso-line-height-rule:exactly; line-height:14px; color:=239B=
9B9B;max-height: 999999px; word-wrap: break-word; word-break: break-wor=
d;=22 > <a href=3D=22https://mailing.catawiki.com/optiext/optiextension=
=2Edll?ID=3DIabIe%2B1FM6nkusCS1R9w85MWy4I4g%2BqipA%2BmEoQFAyvRGAtslUcZS=
xj6Ce7cmjyv1T4WUfbB%2BDUVYWolKcyhzzcy5%2BgrEWrN5ltuClcw=22  style=3D=22=
font-family:arial;color:=239B9B9B; text-decoration:none; text-decoratio=
n:none;font-size:12px;=22 > <strong>Not so good</strong> </a> </td> </t=
r> </table> <=21-- right part --> </th> </tr> </table> </td> </tr> </ta=
ble> </td> <td class=3D=22m_hide=22  style=3D=22font-size:0;line-height=
:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> </table>  <tab=
le cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  widt=
h=3D=22100%=22  role=3D=22presentation=22  bgcolor=3D=22=23FFFFFF=22 > =
<tr> <td class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;h=
eight:1px;=22  height=3D=221=22 >&nbsp;</td> <td class=3D=22m_wrapper=22=
  style=3D=22width:600px;=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpa=
dding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=2210=
0%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding: 0px 50p=
x 24px 50px;=22 > <table cellpadding=3D=220=22  cellspacing=3D=220=22  =
border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22 > <tr> =
<td style=3D=22padding:0px 0px 20px 0px;text-align:left; font-family:ar=
ial; font-size:12px; mso-line-height-rule:exactly; line-height:14px; co=
lor:=239b9b9b;max-height: 999999px; word-wrap: break-word; word-break: =
break-word;=22  valign=3D=22top=22  align=3D=22left=22 >
This email has been sent to linux1394-devel=40lists.sourceforge.net on =
26-09-2020
















</td> </tr> <tr> <td style=3D=22padding:0px 0px 30px 0px;text-align:lef=
t; font-family:arial; font-size:12px; mso-line-height-rule:exactly; lin=
e-height:14px; color:=239b9b9b;max-height: 999999px; word-wrap: break-w=
ord; word-break: break-word;=22  valign=3D=22top=22  align=3D=22left=22=
 >
    You've received this email because you are a registered Catawiki us=
er. Do you wish to unsubscribe from this newsletter? Click <a href=3D=22=
https://www.catawiki.com/accounts/settings/notifications=22 data-link=3D=
=22unsubscribe=22 unsubscribe-link=3D=22true=22 target=3D=22_blank=22 s=
tyle=3D=22text-decoration:none;color:=230033FF;=22>here</a> to unsubscr=
ibe.
</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table> <=21-- :: End Footer --></td><td class=3D=22=
m_hide=22  style=3D=22font-size:0; line-height:1px; height:1px;=22  hei=
ght=3D=221=22 >&nbsp;</td></tr></table></body></html>

--_NexPart_001_--



--===============1984447827061195634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1984447827061195634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1984447827061195634==--


