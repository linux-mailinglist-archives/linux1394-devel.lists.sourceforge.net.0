Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4F3F8F96
	for <lists+linux1394-devel@lfdr.de>; Thu, 26 Aug 2021 22:21:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mJLrn-00060i-0n; Thu, 26 Aug 2021 20:20:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bounce@idemalobags.com>) id 1mJLrl-00060b-9f
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Aug 2021 20:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:
 To:Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=enqvR0D5fM9gJNCmldaWdIvvvEyQAq3I9eUhD9sWTkU=; b=Z2KQSNy3zFbIq4UiHmtLpFavE+
 bJzlyYElfyLfU+LesAVELnUbmD09QWAivBwgCju2Z3Rr2Mi32wMddruk7RIcSCJ2TCQn7tgLlzhCW
 RM/rP32pG5LOxAAv2us2yMRGe8rOgMfKOtih0Rz2XhYu3p6O3PpvfHU/VBPqZr/+Miy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:
 Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=enqvR0D5fM9gJNCmldaWdIvvvEyQAq3I9eUhD9sWTkU=; b=V
 AWVWzicnbr6BCCax2RU85yDSUmJ0/hHMJH1L0OGOC4LGdnaKMeSNPy52HVWBWwlVv0XcjeQLWhrRa
 ytO7NzWFbbD4LKuNpOqM6rkU+NALm/mDg2LitGix03OUifRgw5wMuaXLg2jSWBqDSqcIHjM1QMMU2
 J56Vbs04M1fSNquE=;
Received: from ip137.ip-193-70-95.eu ([193.70.95.137] helo=rdns0.ekaf.top)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mJLre-0027fj-Qb
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Aug 2021 20:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256;
 bh=enqvR0D5fM9gJNCmldaWdIvvvEyQAq3I9eUhD9sWTkU=; d=idemalobags.com;
 h=Message-ID: Date: Subject: From: Reply-To: To: MIME-Version: Content-Type:
 Precedence: List-Unsubscribe: List-Id: Feedback-ID; i=@idemalobags.com;
 s=mailer; c=relaxed/relaxed; t=1630009192;
 b=EtoblUl3M5hh2pgnOh2gpHqsgp+2MNkNvJPI/6dd7jFPREHzma4WGi4SRB9nsdxHre4uvtX48
 CMzO/Q+peMfcuMKlg/4wk2T6Lceiscyg89d2rZyATwWtgli/Glvub08TqLaoc0y9HK7puPfL9
 OpXE75kb7oF7FRPAeFcqnG7anOLxpNjfxZbvNTqEo9p0PnRfm64g6IQnqy5R1vvljgXg2G92G
 EuEAE7y/6UR4mZsRuUWr1FdT1GP/m7rxYa5oKisZCBxvAOwW/kso7X+F2mZIj/Z71ZwKOpdbG
 PYq9Wbn6W5LM8+pTSMo+HsVzt7Qm9Duk/uoieD9xHrt4dAjATQ==
Message-ID: <ded4bb0d244e0d8d2052c92bbdb84ff6@idemalobags.com>
Date: Thu, 26 Aug 2021 20:19:50 +0000
Subject: custom bags/cases with your logo linux1394-devel@lists.sourceforge.net
From: Allen Xiong <allen@idemalobags.com>
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
X-Vtdm-Tracking-Did: 29
X-Vtdm-Subscriber-Uid: nt302tnm20e81
X-Vtdm-Mailer: SwiftMailer - 5.4.x
X-Vtdm-EBS: http://track.idemalobags.com/lists/block-address
X-Vtdm-Delivery-Sid: 95
X-Vtdm-Customer-Uid: qs3089m3hr9bf
X-Vtdm-Customer-Gid: 4
X-Vtdm-Campaign-Uid: yk404l667vdd0
X-Sender: bounce@idemalobags.com
X-Report-Abuse: Please report abuse for this campaign here:
 http://track.idemalobags.com/campaigns/yk404l667vdd0/report-abuse/vl105lktzree6/nt302tnm20e81
X-Receiver: linux1394-devel@lists.sourceforge.net
Precedence: bulk
Feedback-ID: yk404l667vdd0:nt302tnm20e81:vl105lktzree6:qs3089m3hr9bf
X-Spam-Score: 5.3 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linux1394-devel, We, iDemalo Bags,
 produce custom bags/cases
 with logo for global customers from 2005. As a 10+ years' bags/cases
 manufacturer, 
 we always assuring you high quality and good price. If you are in need of
 any custom bags/cases, please feel free to contact us for a quote. 
 Content analysis details:   (5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: idemalobags.com]
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: idemalobags.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: idemalobags.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.70.95.137 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.0 RAND_MKTG_HEADER       Has partially-randomized marketing/tracking
 header(s)
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-Headers-End: 1mJLre-0027fj-Qb
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Allen Xiong <allen@idemalobags.com>
Content-Type: multipart/mixed; boundary="===============3766179709947368357=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3766179709947368357==
Content-Type: multipart/alternative;
 boundary="_=_swift_v4_1630009190_5034f1f70d4a238db4f698d8c9a5c46e_=_"


--_=_swift_v4_1630009190_5034f1f70d4a238db4f698d8c9a5c46e_=_
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Linux1394-devel,=20
=20
We, iDemalo Bags, produce custom bags/cases with=
 logo for global
customers from 2005.=20
=20
As a 10+ years' bags/cases m=
anufacturer, we always assuring you high
quality and good price.
If you=
 are in need of any custom bags/cases, please feel free to
contact us for=
 a quote.=20
=20
Custom sample bags/cases with your logo can be supplied on=
ce you
reply this email.
=20
Thanks in advance,
Allen (Co-owner & Sal=
es Manager)
-------------------------------------------------------------=
-------
iDemalo Bags Co.,Ltd.(China)
Add|No.8, Caotang, Zhuyuan Village=
, Liaobu, Dongguan, China
=20
_Please consider the environment before pri=
nting this email_
=20
Unsubscribe
http://track.idemalobags.com/lists/vl=
105lktzree6/unsubscribe/nt302tnm20e81/yk404l667vdd0

--_=_swift_v4_1630009190_5034f1f70d4a238db4f698d8c9a5c46e_=_
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
<head><meta charset=3D"utf-8"/>
=09<title></ti=
tle>
</head>
<body><span style=3D"font-size:12px;"><span style=3D"font-=
family:Arial,Helvetica,sans-serif;">Hi Linux1394-devel, <br />
 <br />
=
We, iDemalo Bags, produce<font color=3D"#003366"> <font color=3D"blue"><str=
ong>custom </strong></font><font color=3D"blue"><strong>bags/cases</strong>=
</font> </font>with logo for global customers from 2005. <br />
<br />
=
<font color=3D"#003366"> </font><br />
As a 10+ years' bags/cases manufac=
turer, we always assuring you high quality and good price.<br />
<br />=

<br />
If you are in need of any custom bags/cases, please feel free t=
o contact us for a quote. <br />
<br />
<br />
 <br />
Custom <font=
 color=3D"blue"><strong>sample bags/cases</strong></font> with your logo ca=
n be supplied<font color=3D"#0000ff"><b> </b></font>once you reply this ema=
il.</span><br />
<br />
<br />
 </span>
<p><span style=3D"font-size=
:12px;"><span style=3D"font-family:Arial"><span style=3D"font-style:normal"=
><span style=3D"font-variant-ligatures:normal"><span style=3D"font-variant-=
caps:normal"><span style=3D"font-weight:400"><span style=3D"letter-spacing:=
normal"><span style=3D"orphans:2"><span style=3D"text-transform:none"><span=
 style=3D"white-space:normal"><span style=3D"widows:2"><span style=3D"word-=
spacing:0px"><span style=3D"background-color:#ffffff"><span style=3D"text-d=
ecoration-style:initial"><span style=3D"text-decoration-color:initial"><spa=
n style=3D"line-height:23px"><span style=3D"clear:both"><span style=3D"back=
ground-color:window">Thanks in advance,</span></span></span></span></span><=
/span></span></span></span></span></span></span></span></span></span></span=
></span><br />
<span style=3D"font-family:Arial"><span style=3D"font-styl=
e:normal"><span style=3D"font-variant-ligatures:normal"><span style=3D"font=
-variant-caps:normal"><span style=3D"font-weight:400"><span style=3D"letter=
-spacing:normal"><span style=3D"orphans:2"><span style=3D"text-transform:no=
ne"><span style=3D"white-space:normal"><span style=3D"widows:2"><span style=
=3D"word-spacing:0px"><span style=3D"background-color:#ffffff"><span style=
=3D"text-decoration-style:initial"><span style=3D"text-decoration-color:ini=
tial"><span style=3D"line-height:23px"><span style=3D"clear:both"><span sty=
le=3D"border:0px; margin:0px; padding:0px; outline:0px">Allen (Co-owner & S=
ales Manager)</span></span></span></span></span></span></span></span></span=
></span></span></span></span></span></span></span></span><br />
<span sty=
le=3D"color:#003366"><span style=3D"font-family:Arial"><span style=3D"font-=
style:normal"><span style=3D"font-variant-ligatures:normal"><span style=3D"=
font-variant-caps:normal"><span style=3D"font-weight:400"><span style=3D"le=
tter-spacing:normal"><span style=3D"orphans:2"><span style=3D"text-transfor=
m:none"><span style=3D"white-space:normal"><span style=3D"widows:2"><span s=
tyle=3D"word-spacing:0px"><span style=3D"background-color:#ffffff"><span st=
yle=3D"text-decoration-style:initial"><span style=3D"text-decoration-color:=
initial"><span style=3D"line-height:23px"><span style=3D"clear:both"><span =
style=3D"border:0px; margin:0px; padding:0px; outline:0px">----------------=
----------------------------------------------------</span></span></span></=
span></span></span></span></span></span></span></span></span></span></span>=
</span></span></span></span><br />
<span style=3D"font-family:Arial"><spa=
n style=3D"font-style:normal"><span style=3D"font-variant-ligatures:normal"=
><span style=3D"font-variant-caps:normal"><span style=3D"font-weight:400"><=
span style=3D"letter-spacing:normal"><span style=3D"orphans:2"><span style=
=3D"text-transform:none"><span style=3D"white-space:normal"><span style=3D"=
widows:2"><span style=3D"word-spacing:0px"><span style=3D"background-color:=
#ffffff"><span style=3D"text-decoration-style:initial"><span style=3D"text-=
decoration-color:initial"><span style=3D"line-height:23px"><span style=3D"c=
lear:both"><b>iDemalo Bags Co.,Ltd.(China)</b></span></span></span></span><=
/span></span></span></span></span></span></span></span></span></span></span=
></span><br />
<span style=3D"font-style:normal"><span style=3D"font-vari=
ant-ligatures:normal"><span style=3D"font-variant-caps:normal"><span style=
=3D"font-weight:400"><span style=3D"letter-spacing:normal"><span style=3D"o=
rphans:2"><span style=3D"text-transform:none"><span style=3D"white-space:no=
rmal"><span style=3D"widows:2"><span style=3D"word-spacing:0px"><span style=
=3D"background-color:#ffffff"><span style=3D"text-decoration-style:initial"=
><span style=3D"text-decoration-color:initial"><span style=3D"line-height:n=
ormal"><span style=3D"font-family:Helvetica, &quot;Trebuchet MS&quot;, Aria=
l, sans-serif"><span style=3D"min-height:20px"><b>Add</b>|<span style=3D"li=
ne-height:23px"><span style=3D"font-family:Arial"><span style=3D"background=
-color:window">No.8, Caotang, Zhuyuan Village, Liaobu, Dongguan, China</spa=
n></span></span></span></span></span></span></span></span></span></span></s=
pan></span></span></span></span></span></span></span></span><br />
<br />=

 </p>

<div style=3D"text-align:start; -webkit-text-stroke-width:0px=
; margin-bottom:0.3em"><span style=3D"font-size:10px;"><span style=3D"color=
:#27ae60;"><b><i><span style=3D"background-color:#ffffff;">Please consider =
the environment before printing this email</span></i></b></span></span><br =
/>
<br />
<br />
<br />
 </div>
<br />
<a href=3D"http://track.=
idemalobags.com/lists/vl105lktzree6/unsubscribe/nt302tnm20e81/yk404l667vdd0=
">Unsubscribe</a>
<img width=3D"1" height=3D"1" src=3D"http://track.idema=
lobags.com/campaigns/yk404l667vdd0/track-opening/nt302tnm20e81" alt=3D"" />=

</body>
</html>

--_=_swift_v4_1630009190_5034f1f70d4a238db4f698d8c9a5c46e_=_--



--===============3766179709947368357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3766179709947368357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3766179709947368357==--


