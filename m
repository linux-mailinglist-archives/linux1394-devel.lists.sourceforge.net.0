Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 490C2D9F22
	for <lists+linux1394-devel@lfdr.de>; Thu, 17 Oct 2019 00:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p7B+7z3bIV+L8LIjOaxjGm1y+dt2bJIDyxTWligoZHo=; b=Sfh+YJvEWVeL6bkDyUcDPGKFiF
	4V97FIM7BQ73PuZP9VxeXBREBaO0URyim8v+53FWjQ7ciQiSK3ULuaLsbElrY322qYvjKwmpsGziZ
	6stK7gAOKLQuTZ+WOHCMUxjeakxCqPPkJZR/1b5M6oHfyp7y8o/8mLBuBM5cRvGGteMA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iKrVA-00067Z-51; Wed, 16 Oct 2019 22:10:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@mailing.catawiki.com>) id 1iKrV3-00067L-23
 for linux1394-devel@lists.sourceforge.net; Wed, 16 Oct 2019 22:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Reply-To:Date:Subject:To:From:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wY9N3+geiwGCMR8IEbMOweXJC+lss4oxvX+6PXSqKAQ=; b=C9m+9BfkFppDaDI+JuKPZDR1rG
 H8pkqI3j/Fng2KsdHquG914BpEz+DyMDUGzX7OJCHgGVE0hbTl+1Ymjxf5bbkx5xMlsaDFGmn+LhC
 GSveoNYMPtsfOFdJ/8o0rQ3YGwfBaUCsFQW1yayCjoOfrdU93sey2frWExtD6AyaxsGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Reply-To:
 Date:Subject:To:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wY9N3+geiwGCMR8IEbMOweXJC+lss4oxvX+6PXSqKAQ=; b=P
 WylAdWP1p/jeSw75cys/pZhwaJPVgDeitqNkUvcfdWJRF7B4q2+aqXfyaYyocthGRMHh1oUrNlopT
 v94+H/WKxDEgoS7nQNaRT60zrOu8uZ8h7aetbio6WzGBJ/mS45Yreyha+Nr516wwcddIMmM6At2hc
 D3i00/eQauUEcICo=;
Received: from webgridb227.emsecure.net ([37.148.183.227])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKrUx-004O2O-Oo
 for linux1394-devel@lists.sourceforge.net; Wed, 16 Oct 2019 22:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailing.catawiki.com; s=sim; x=1571868621;
 i=@mailing.catawiki.com; h=from:to:subject:date:reply-to:
 message-id:list-unsubscribe:list-unsubscribe-post:feedback-id:
 list-id:mime-version:content-type; bh=wY9N3+geiwGCMR8IEbMOweXJC+
 lss4oxvX+6PXSqKAQ=; b=f16y1Xx9tNyl2pNOgc3htUdqoyIQ/LqJHIqVfUgyC9
 DocZw35v1HmeJNZZsIY/E8cxxIe/KXUn9mmkndLUlT6pzQet1LbSvOFA/jSsGlYv
 3scXhRiQQb4tsMKjHNOFI7eDBBwKQdg+4zhFqPeYzhSqBOdWaR1DqwNA7Dw1Hl7J
 4=
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
Subject: =?utf-8?B?V2XigJlyZSB1cGRhdGluZyBvdXIgVGVy?=
 =?utf-8?B?bXMgYW5kIENvbmRpdGlvbnM=?=
Date: Wed, 16 Oct 2019 21:41:18 +0000
Message-ID: <PATT3L761_18885959_kMV4t1axNt/FaK25x0/Pqg==.8A66@webgridb227.emsecure.net>
X-GRID-REF: 8A66B7582E9A48E5AC85DC32E810B6FA.PATT3L761_18885959_kMV4t1axNt/FaK25x0/Pqg==
X-GRID-QID: 233554
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-MA-Reference: SIM_8v%2B8FnyP5CVKle%2BBaiYleHRK_CT4jm%2BrqU3clV7kHiE%2BX09CD
X-MA-Instance: SIM_8v%2B8FnyP5CVKle%2BBaiYleHRK_CT4jm%2BrqU3clV7kHiE%2BX09CD.d1335e8a899441b0f0befbc9f697f9df
X-rpcampaign: catawiki_483_1000300_2352
Feedback-ID: 18885959:483:SLGNT
X-MailingID: 483_761
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [37.148.183.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iKrUx-004O2O-Oo
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
Content-Type: multipart/mixed; boundary="===============5497424388806031722=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5497424388806031722==
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
nsion.dll?ID=3D8EF8C1ZIlkefpwrnkWlz9NgvISzJj08_9%2Bblqh38osqSaxnS08A_VA=
DiICEp2uZtkZJur4WBNA_LG8gYr1Pj2J%2BvCJNe0) =09=09=09=09=09=09=09=09=09 =
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
=09=09 =09=09=09=09=09=09=09=09    Do you have any questions? You will =
find many answers in our <a href=3D=22https://www.catawiki.com/help=22 =
data-link=3D=22helpcenter=22 target=3D=22_blank=22 style=3D=22text-deco=
ration:underline;color:=239b9b9b;=22>Frequently Asked Questions</a>. If=
 your answer isn't there, you can contact our <a href=3D=22https://www.=
catawiki.com/help=22 data-link=3D=22helpcenter=22 target=3D=22_blank=22=
 style=3D=22text-decoration:underline;color:=239b9b9b;=22>Customer Supp=
ort team</a>. Please don't reply to this email because your message wil=
l not be received. =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=
=09=09=09=09 =09=09=09=09=09 =09=09=09=09 =09=09=09 =09=09 =09=09=C2=A0=
 =09  =09=09=09=09=09=09  =09 =09=09=C2=A0 =09=09 =09=09=09 =09=09=09=09=
 =09=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09=09=09<=21-- left part --> =09=09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
=09=09What do you think of this email? =09=09=09=09=09=09=09=09=09=09=09=
 =09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=
=09=09=09=09=09<=21-- left part --> =09=09=09=09=09=09=09=09 =09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09=09=09<=21-- right part --> =09=09=09=
=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing=
=2Ecatawiki.com/optiext/optiextension.dll?ID=3D8EF8zeUgkyrNm1iZA1LWYp09=
5po0kge5UtcGcm45tn0l59VSvqlgBfnh9e9Xl_5uIW7z5uVoST41V4qEEN7STOKj7tdaOLQ=
IPjQvEO8O) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=
=09=09=09=09Good =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.c=
atawiki.com/optiext/optiextension.dll?ID=3D8EF8zeUgkyrNm1iZA1LWYp095po0=
kge5UtcGcm45tn0l59VSvqlgBfnh9e9Xl_5uIW7z5uVoST41V4qEEN7STOKj7tdaOLQIPjQ=
vEO8O) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawiki=
=2Ecom/optiext/optiextension.dll?ID=3D8EF8zJnury7h54qsDApr5aDGsbYjls2QV=
fSIszLLZaeygpNSuwhHQOx6Q8ZZZRBdsAdKgzDRUmmFmF8GnHKX7Rc2Od6LiDY5PYO__w8T=
) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09=09=09=09=
Not so good =09=09=09=09=09=09=09=09=09=09=09=09(https://mailing.catawi=
ki.com/optiext/optiextension.dll?ID=3D8EF8zJnury7h54qsDApr5aDGsbYjls2QV=
fSIszLLZaeygpNSuwhHQOx6Q8ZZZRBdsAdKgzDRUmmFmF8GnHKX7Rc2Od6LiDY5PYO__w8T=
) =09=09=09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09=09 =09=09=
=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09<=21-- right part --> =
=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09 =09=09=
=09=09=09 =09=09=09=09 =09=09=09 =09=09 =09=09=C2=A0 =09  =09  =09 =09=09=
=C2=A0 =09=09 =09=09=09 =09=09=09=09 =09=09=09=09=09 =09=09=09=09=09=09=
 =09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=
=09This email has been sent to linux1394-devel=40lists.sourceforge.net =
on 17-10-2019 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=
=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=
=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=
=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=
=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09=
=09 =09=09=09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=09=09=
=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09=09=09 =09=09=09=09=09=09=
=09=09    You've received this email because you are a registered Cataw=
iki user. Do you wish to unsubscribe from this newsletter? Click <a hre=
f=3D=22https://www.catawiki.com/accounts/settings/notifications=22 data=
-link=3D=22unsubscribe=22 target=3D=22_blank=22 style=3D=22text-decorat=
ion:underline;color:=239b9b9b;=22>here</a> to unsubscribe. =09=09=09=09=
=09=09=09=09 =09=09=09=09=09=09=09 =09=09=09=09=09=09 =09=09=09=09=09 =09=
=09=09=09 =09=09=09 =09=09 =09=09=C2=A0 =09  <=21-- :: End Footer -->

--_NexPart_001_
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22 xmlns:v=3D=22urn:schem=
as-microsoft-com:vml=22 xmlns:o=3D=22urn:schemas-microsoft-com:office:o=
ffice=22><head><meta http-equiv=3D=22Content-Type=22 content=3D=22text/=
html; charset=3Dutf-8=22 /><meta charset=3D=22utf-8=22  /><meta name=3D=
=22viewport=22  content=3D=22width=3Ddevice-width=22  /><meta http-equi=
v=3D=22X-UA-Compatible=22  content=3D=22IE=3Dedge=22  /><title>We=E2=80=
=99re updating our Terms and Conditions</title>
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
display:none=7D.m_show table=7Bdisplay:none=7D=40media screen and (max-=
width:600px)=7B.quarter=7Bwidth:25%=21important;max-width:25%=21importa=
nt=7D.third=7Bwidth:33.333%=21important;max-width:33.333%=21important=7D=
=2Esecond=7Bwidth:50%=21important;max-width:50%=21important=7D.full=7Bw=
idth:100%=21important;max-width:100%=21important=7D.m_hide=7Bdisplay:no=
ne=21important=7D.m_show=7Bdisplay:table=21important=7D.m_hide table=7B=
display:none=21important=7D.m_show table=7Bdisplay:table=21important=7D=
=2Egeniuswrapper=7Bwidth:320px=21important;padding:0=21important=7D.gen=
iuscontainer=7Bwidth:300px=21important;padding:0=21important=7D.geniusm=
obile=7Bwidth:300px=21important;display:block=21important;padding:0=21i=
mportant=7D=7D=40media screen and (max-width:480px)=7B.btn_table=7Bdisp=
lay:table=21important=7D.btn_td=7Bdisplay:block=21important=7D.quarter=7B=
width:50%=21important;max-width:50%=21important=7D.second,.third=7Bwidt=
h:100%=21important;max-width:100%=21important=7D=7D</style></head><body=
  bgcolor=3D=22=23ffffff=22  width=3D=22100%=22  style=3D=22margin:0;pa=
dding:0=22 ><div style=3D=22display:none;font-size:0px;color:=23999999;=
line-height:0px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;=
=22>Unique objects, selected by our experts =7C</div><img width=3D=221=22=
 height=3D=221=22 src=3D=22https://gridinbound.blob.core.windows.net/gi=
c/g.png?h=3Dfa97d1447a7645999bd586a9fe4a980b=22 style=3D=22display:none=
; margin:0; padding:0; visibility:hidden; overflow:hidden; max-height:0=
;width:0px;height:0px;font-size:0;color:=23FFFFFF;mso-hide:all;float: l=
eft;line-height:0;=22 alt=3D=22=22><img width=3D=221=22 height=3D=221=22=
 src=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D8=
EF8DpRiDegX5LvvuNY2JirFx7gI8FQA%2BJeAX5rsi0RSs1QSu4uajVI8cQVSWFdV1OhQu_=
B0GcCJ198TH07W5z1d7vN04ZQfP8RU2M8o=22 style=3D=22display:none; margin:0=
; padding:0; visibility:hidden; overflow:hidden; max-height:0;width:0px=
;height:0px;font-size:0;color:=23FFFFFF;mso-hide:all;float: left;line-h=
eight:0;=22 alt=3D=22=22><table cellpadding=3D=220=22  cellspacing=3D=22=
0=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22  =
bgcolor=3D=22=23ffffff=22 ><tr><td class=3D=22m_hide=22  style=3D=22fon=
t-size:0; line-height:1px; height:1px;=22  height=3D=221=22 >&nbsp;</td=
><td bgcolor=3D=22=23f6f6f6=22  valign=3D=22top=22  style=3D=22width:60=
0px;text-align:left;word-wrap:break-word;word-break:normal=22 ><=21-- :=
: Webversion --> <table cellpadding=3D=220=22  cellspacing=3D=220=22  b=
order=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22  bgcolor=
=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22  style=3D=22font-siz=
e:0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</td> <td c=
lass=3D=22m_wrapper=22  style=3D=22width:600px;=22 > <table bgcolor=3D=22=
=23FFFFFF=22  cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=22=
0=22  width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td class=3D=
=22mobile_padding_10=22  style=3D=22padding: 10px 45px 10px 45px;=22 > =
<table cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  =
width=3D=22100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22tex=
t-align:center; font-family:arial; font-size:12px; mso-line-height-rule=
:exactly; line-height:12px; color:=23222222;max-height: 999999px; word-=
wrap: break-word; word-break: break-word;=22  align=3D=22center=22 > <a=
 href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D=
8EF8C1ZIlkefpwrnkWlz9NgvISzJj08_9%2Bblqh38osqSaxnS08A_VADiICEp2uZtkZJur=
4WBNA_LG8gYr1Pj2J%2BvCJNe0=22  target=3D=22_blank=22  style=3D=22color:=
=239b9b9b;text-decoration:underline;=22 >
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
al=22 ><=21-- :: Normal paragraph --> <table cellpadding=3D=220=22  cel=
lspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pre=
sentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22 >=
 <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=
=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22=
 > <tr> <td style=3D=22padding: 0px 45px 15px 45px;=22 > <table cellpad=
ding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100=
%=22  role=3D=22presentation=22 > <tr> <td style=3D=22text-align:left; =
font-family:arial; font-size:14px; mso-line-height-rule:exactly; line-h=
eight:20px; color:=23222222;max-height: 999999px; word-wrap: break-word=
; word-break: break-word;=22  valign=3D=22top=22  align=3D=22left=22 >
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
nt-weight:normal;padding-top:0px;padding-right:45px;padding-bottom:0px;=
padding-left:45px;background-color:=23f6f6f6=22 >We=E2=80=99ve adjusted=
 our Terms and Conditions to make them even clearer. <br /></h2></td></=
tr></table><=21-- :: Arbitrary card --> <table cellpadding=3D=220=22  c=
ellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22p=
resentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22 >=
 <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=3D=
=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22=
 > <tr> <td style=3D=22padding: 0px 50px 24px 50px;=22 > <table bgcolor=
=3D=22=23ffffff=22  style=3D=22border-bottom: 1px solid =23d8d8d8;=22  =
cellpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=
=22100%=22  role=3D=22presentation=22 >  <tr> <td style=3D=22padding:5p=
x 18px;text-align:left; font-family:arial; font-size:14px; mso-line-hei=
ght-rule:exactly; line-height:20px; color:=23222222;max-height: 999999p=
x; word-wrap: break-word; word-break: break-word;=22  valign=3D=22top=22=
  align=3D=22left=22 > <table cellpadding=3D=220=22  cellspacing=3D=220=
=22  border=3D=220=22  role=3D=22presentation=22  width=3D=22100%=22 ><=
tr><td style=3D=22font-family:Arial;font-size:14px;color:=23222222;font=
-weight:normal;word-wrap:break-word;word-break:break-word;line-height:2=
0px;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0=
0px;background-color:transparent;margin-block-start:0px =21important;ma=
rgin-block-end:0px =21important=22 ><p style=3D=22font-family:Arial;fon=
t-size:14px;color:=23222222;font-weight:normal;word-wrap:break-word;wor=
d-break:break-word;line-height:20px;padding-top:0px;padding-right:0px;p=
adding-bottom:0px;padding-left:00px;background-color:transparent=22 ><s=
trong>What=E2=80=99s changed?</strong></p><ul style=3D=22font-family:Ar=
ial;font-size:14px;color:=23222222;font-weight:normal;word-wrap:break-w=
ord;word-break:break-word;line-height:20px;padding-top:0px;padding-righ=
t:0px;padding-bottom:0px;padding-left:00px;background-color:transparent=
;margin-left:10px=22 ><li>We=E2=80=99ve split them neatly into 3 sectio=
ns. We encourage you to read the terms that apply to you:</li><li style=
=3D=22margin-left:40px;=22 >(i) General Terms of Use: these apply to ev=
eryone using our online marketplace.</li><li style=3D=22margin-left:40p=
x;=22 >(ii) Buyer Terms: these apply to bidders and buyers.</li><li sty=
le=3D=22margin-left:40px;=22 >(iii) Seller Terms: these apply to users =
who submit and sell lots.</li><li>We will now refer to all of our terms=
 and policies collectively as =E2=80=98Terms of Use=E2=80=99 instead of=
 =E2=80=98Terms and Conditions=E2=80=99.</li><li>We=E2=80=99ve adjusted=
 the layout and wording to make them easier to read.</li><li>We've clar=
ified what we do to keep Catawiki safe and secure.</li></ul><p style=3D=
=22font-family:Arial;font-size:14px;color:=23222222;font-weight:normal;=
word-wrap:break-word;word-break:break-word;line-height:20px;padding-top=
:0px;padding-right:0px;padding-bottom:0px;padding-left:00px;background-=
color:transparent=22 ><strong>What hasn=E2=80=99t changed?</strong></p>=
<ul style=3D=22font-family:Arial;font-size:14px;color:=23222222;font-we=
ight:normal;word-wrap:break-word;word-break:break-word;line-height:20px=
;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:00px=
;background-color:transparent;margin-left:10px=22 ><li>The contents of =
our Terms of Use hasn=E2=80=99t changed. So we haven=E2=80=99t made any=
 changes to policies or information included in the Terms of Use.</li><=
/ul></td></tr></table> </td> </tr> </table> </td> </tr> </table> </td> =
<td class=3D=22m_hide=22  style=3D=22font-size:0;line-height:1px;height=
:1px;=22  height=3D=221=22 >&nbsp;</td> </tr> </table> <=21-- :: End Ar=
bitrary card --><table cellpadding=3D=220=22  cellspacing=3D=220=22  bo=
rder=3D=220=22  role=3D=22presentation=22  width=3D=22100%=22 ><tr><td =
style=3D=22font-family:Arial;font-size:14px;color:=23222222;font-weight=
:normal;word-wrap:break-word;word-break:break-word;line-height:20px;pad=
ding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:00px;bac=
kground-color:transparent;text-align:left=22 ><h2 style=3D=22font-famil=
y:Arial;font-size:14px;color:=23222222;word-wrap:break-word;word-break:=
normal;line-height:20px;font-weight:normal;padding-top:0px;padding-righ=
t:45px;padding-bottom:24px;padding-left:45px;background-color:=23f6f6f6=
=22 ><span style=3D=22color:=23000000;=22 >Our new </span><a href=3D=22=
https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D8EF8EqiGoB2=
YnKcu22co2b0iWSY1lUja7B8YzeHYk3UfvGBSvzBevM0YM6Jr8DDd_hE1JdSyEoemE0IrAo=
EP_MpnktcBc9t9WY6%2B46Ck=22  style=3D=22color:=2300aeef;=22 >Terms of U=
se</a><span style=3D=22color:=23000000;=22 > will be effective from 1st=
 November 2019. By continuing to use our marketplace after this date, y=
ou agree to them.</span><br /><br /><span style=3D=22color:=23000000;=22=
 >If you have any questions, please feel free to </span><a href=3D=22ht=
tps://mailing.catawiki.com/optiext/optiextension.dll?ID=3D8EF8Bl0T3QBM0=
W3bd_3vZKcvSwF2%2B7MxCZdxOOykSCifYeCmv2WoF2_Fo7gAqFVEsUuD1LCos8Q8Gqri19=
vdLg8AIvxJBKymq7eC9wCm=22  style=3D=22color:=2300aeef;=22 >contact us</=
a><span style=3D=22color:=23000000;=22 >.</span><br /><br /><span style=
=3D=22color:=23000000;=22 >Kind regards, </span><br /><span style=3D=22=
color:=23000000;=22 >The Catawiki team</span></h2></td></tr></table></t=
d><td class=3D=22m_hide=22  style=3D=22font-size:0; line-height:1px; he=
ight:1px;=22  height=3D=221=22 >&nbsp;</td></tr></table><table cellpadd=
ing=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=
=22  role=3D=22presentation=22  bgcolor=3D=22=23ffffff=22 ><tr><td clas=
s=3D=22m_hide=22  style=3D=22font-size:0; line-height:1px; height:1px;=22=
  height=3D=221=22 >&nbsp;</td><td bgcolor=3D=22=23f6f6f6=22  valign=3D=
=22top=22  style=3D=22width:600px;text-align:left;word-wrap:break-word;=
word-break:normal=22 ><=21-- :: Footer --> <table cellpadding=3D=220=22=
  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=
=22  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=22=
1=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22=
 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=
=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentatio=
n=22 > <tr> <td style=3D=22padding: 0px 50px 0px 50px;=22 > <table cell=
padding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22=
100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px 0p=
x 10px 0px;text-align:left; font-family:arial; font-size:12px; mso-line=
-height-rule:exactly; line-height:14px; color:=239b9b9b;max-height: 999=
999px; word-wrap: break-word; word-break: break-word;=22  valign=3D=22t=
op=22  align=3D=22left=22 >
    Do you have any questions? You will find many answers in our <a hre=
f=3D=22https://www.catawiki.com/help=22 data-link=3D=22helpcenter=22 ta=
rget=3D=22_blank=22 style=3D=22text-decoration:underline;color:=239b9b9=
b;=22>Frequently Asked Questions</a>. If your answer isn't there, you c=
an contact our <a href=3D=22https://www.catawiki.com/help=22 data-link=3D=
=22helpcenter=22 target=3D=22_blank=22 style=3D=22text-decoration:under=
line;color:=239b9b9b;=22>Customer Support team</a>. Please don't reply =
to this email because your message will not be received.
</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table> <table cellpadding=3D=220=22  cellspacing=3D=
=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentation=22=
  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=22  style=3D=22=
font-size:0;line-height:1px;height:1px;=22  height=3D=221=22 >&nbsp;</t=
d> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22  align=3D=22=
center=22 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  ce=
llspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22pr=
esentation=22 > <tr> <td class=3D=22mobile_padding_2=22  style=3D=22fon=
t-size:0;padding: 0px 42px 24px 42px;=22 > <table cellpadding=3D=220=22=
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
https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D8EF8zeUgkyr=
Nm1iZA1LWYp095po0kge5UtcGcm45tn0l59VSvqlgBfnh9e9Xl_5uIW7z5uVoST41V4qEEN=
7STOKj7tdaOLQIPjQvEO8O=22  style=3D=22font-family:arial;color:=239B9B9B=
; text-decoration:none; text-decoration:none;font-size:12px;=22 > <img =
height=3D=2230=22  width=3D=2230=22  border=3D=220=22  src=3D=22https:/=
/catawiki.slgnt.eu/images/Templates/Newsletter/thumbs_up.png=22  style=3D=
=22display:block;vertical-align:middle;=22  /> </a> </td> <td style=3D=22=
padding:0px 10px 0px 0px;text-align:left; font-family:arial; font-size:=
12px; mso-line-height-rule:exactly; line-height:14px; color:=239B9B9B;m=
ax-height: 999999px; word-wrap: break-word; word-break: break-word;=22 =
> <a href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?I=
D=3D8EF8zeUgkyrNm1iZA1LWYp095po0kge5UtcGcm45tn0l59VSvqlgBfnh9e9Xl_5uIW7=
z5uVoST41V4qEEN7STOKj7tdaOLQIPjQvEO8O=22  style=3D=22font-family:arial;=
color:=239B9B9B; text-decoration:none; text-decoration:none;font-size:1=
2px;=22 > <strong>Good</strong> </a> </td> <td style=3D=22padding:0 10p=
x 0 0;=22  valign=3D=22middle=22  align=3D=22left=22  width=3D=2230=22 =
> <a href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?I=
D=3D8EF8zJnury7h54qsDApr5aDGsbYjls2QVfSIszLLZaeygpNSuwhHQOx6Q8ZZZRBdsAd=
KgzDRUmmFmF8GnHKX7Rc2Od6LiDY5PYO__w8T=22  style=3D=22font-family:arial;=
color:=239B9B9B; text-decoration:none; text-decoration:none;font-size:1=
2px;=22 > <img height=3D=2230=22  width=3D=2230=22  border=3D=220=22  s=
rc=3D=22https://catawiki.slgnt.eu/images/Templates/Newsletter/thumbs_do=
wn.png=22  style=3D=22display:block;vertical-align:middle;=22  /> </a> =
</td> <td style=3D=22text-align:left; font-family:arial; font-size:12px=
; mso-line-height-rule:exactly; line-height:14px; color:=239B9B9B;max-h=
eight: 999999px; word-wrap: break-word; word-break: break-word;=22 > <a=
 href=3D=22https://mailing.catawiki.com/optiext/optiextension.dll?ID=3D=
8EF8zJnury7h54qsDApr5aDGsbYjls2QVfSIszLLZaeygpNSuwhHQOx6Q8ZZZRBdsAdKgzD=
RUmmFmF8GnHKX7Rc2Od6LiDY5PYO__w8T=22  style=3D=22font-family:arial;colo=
r:=239B9B9B; text-decoration:none; text-decoration:none;font-size:12px;=
=22 > <strong>Not so good</strong> </a> </td> </tr> </table> <=21-- rig=
ht part --> </th> </tr> </table> </td> </tr> </table> </td> <td class=3D=
=22m_hide=22  style=3D=22font-size:0;line-height:1px;height:1px;=22  he=
ight=3D=221=22 >&nbsp;</td> </tr> </table> <table cellpadding=3D=220=22=
  cellspacing=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22=
presentation=22  bgcolor=3D=22=23FFFFFF=22 > <tr> <td class=3D=22m_hide=
=22  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=22=
1=22 >&nbsp;</td> <td class=3D=22m_wrapper=22  style=3D=22width:600px;=22=
 > <table bgcolor=3D=22=23f6f6f6=22  cellpadding=3D=220=22  cellspacing=
=3D=220=22  border=3D=220=22  width=3D=22100%=22  role=3D=22presentatio=
n=22 > <tr> <td style=3D=22padding: 0px 50px 24px 50px;=22 > <table cel=
lpadding=3D=220=22  cellspacing=3D=220=22  border=3D=220=22  width=3D=22=
100%=22  role=3D=22presentation=22 > <tr> <td style=3D=22padding:0px 0p=
x 20px 0px;text-align:left; font-family:arial; font-size:12px; mso-line=
-height-rule:exactly; line-height:14px; color:=239b9b9b;max-height: 999=
999px; word-wrap: break-word; word-break: break-word;=22  valign=3D=22t=
op=22  align=3D=22left=22 >
This email has been sent to linux1394-devel=40lists.sourceforge.net on =
17-10-2019
















</td> </tr> <tr> <td style=3D=22padding:0px 0px 30px 0px;text-align:lef=
t; font-family:arial; font-size:12px; mso-line-height-rule:exactly; lin=
e-height:14px; color:=239b9b9b;max-height: 999999px; word-wrap: break-w=
ord; word-break: break-word;=22  valign=3D=22top=22  align=3D=22left=22=
 >
    You've received this email because you are a registered Catawiki us=
er. Do you wish to unsubscribe from this newsletter? Click <a href=3D=22=
https://www.catawiki.com/accounts/settings/notifications=22 data-link=3D=
=22unsubscribe=22 target=3D=22_blank=22 style=3D=22text-decoration:unde=
rline;color:=239b9b9b;=22>here</a> to unsubscribe.
</td> </tr> </table> </td> </tr> </table> </td> <td class=3D=22m_hide=22=
  style=3D=22font-size:0;line-height:1px;height:1px;=22  height=3D=221=22=
 >&nbsp;</td> </tr> </table> <=21-- :: End Footer --></td><td class=3D=22=
m_hide=22  style=3D=22font-size:0; line-height:1px; height:1px;=22  hei=
ght=3D=221=22 >&nbsp;</td></tr></table></body></html>

--_NexPart_001_--



--===============5497424388806031722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5497424388806031722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5497424388806031722==--


