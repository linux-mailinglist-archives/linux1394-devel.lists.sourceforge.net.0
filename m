Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3664BAFB5
	for <lists+linux1394-devel@lfdr.de>; Fri, 18 Feb 2022 03:33:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nKt59-0003Ck-Fv; Fri, 18 Feb 2022 02:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounce+42376b.b90a1-linux1394-devel=lists.sourceforge.net@mg.surplusrecord.com>)
 id 1nKt58-0003Ce-Jm
 for linux1394-devel@lists.sourceforge.net; Fri, 18 Feb 2022 02:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:Message-Id:
 To:From:Subject:Mime-Version:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yInmNXIpOW1WQNATftQo9sbzL2Hn9Q2x9wralAQFQ1Y=; b=PXjgPbIZ33KO8m4pNjx4d1IFrV
 56Ic9oL5uRPyfiJ8HxGq8kn8dpiZre33Vr2Jjh5s7Ltlq07SmrfUZdHpbdc4X/pk+3xIFGMEVTuZc
 wU4q6SPZrEPu8Wnlp8IYkFZTSNUNXnLeV7EjDyRUfTttLY5zr17sKaqgBscs1rmKNVps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:Message-Id:To:From:Subject:
 Mime-Version:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yInmNXIpOW1WQNATftQo9sbzL2Hn9Q2x9wralAQFQ1Y=; b=OwJgc8Mbqa3JrIDpMf6BG6D4/4
 UkP4T4lkJ85A6ybjyJxfiilOh1fzrNyJhx3zNOyM9Ay0pkDMKM3vSKQqWHwYAbqAuVBRPslahI5HG
 1K6+l+xINzrc03gl7c5hKH2cNj8gjHntbigujO1DriijuBonvwgXQPPGD3469mZbJR+8=;
Received: from m43-8.mailgun.net ([69.72.43.8])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nKt55-005WeM-40
 for linux1394-devel@lists.sourceforge.net; Fri, 18 Feb 2022 02:33:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.surplusrecord.com; 
 q=dns/txt; s=krs; t=1645151591; h=Content-Type:
 Content-Transfer-Encoding: Message-Id: To: From: Subject: Mime-Version:
 Date: Sender; bh=yInmNXIpOW1WQNATftQo9sbzL2Hn9Q2x9wralAQFQ1Y=;
 b=c5Wbp3xfcf8LNfMIRa1JFBv0VpxUjt/pFIY+6f6AVZYZpwU9usx5uVkC7GkSx9mOzb+dOARe
 mqfbWAOy33lxLRRQCAPgrUp6niFNtVIxjW9woXCb6nelt27ytCd5rCPS73FTyyX9yqnz6FTa
 sR14fySSjE/HNFMQOxKuSBf7waM=
X-Mailgun-Sending-Ip: 69.72.43.8
X-Mailgun-Sid: WyJjNzJlMCIsICJsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0IiwgImI5MGExIl0=
Received: from <unknown> (<unknown> []) by
 api-n26.prod.us-east-1.postgun.com with HTTP id 620eff743047cf1c0aad378a;
 Fri, 18 Feb 2022 02:07:48 GMT
Date: Fri, 18 Feb 2022 02:07:48 +0000
Mime-Version: 1.0
Subject: =?UTF-8?q?Surplus_Record_Copy_of_Inquiry_=E2=80=93_10&quot; _x_31&quot;
 _Ci?=
 =?UTF-8?q?ncinnati_Milacron_#R77,_centertype_production_universal_cylindr?=
 =?UTF-8?q?ical_grinder,_1976?=
From: "no-reply@surplusrecord.com" <no-reply@surplusrecord.com>
To: linux1394-devel@lists.sourceforge.net
X-Mailgun-Track-Clicks: false
X-Mailgun-Track-Opens: false
Message-Id: <20220218020748.fbd248c82c77ff37@mg.surplusrecord.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Surplus Record Copy of Inquiry – 10" x 31" Cincinnati Milacron
    #R77, centertype production universal cylindrical grinder, 1976 Here is the
    copy of the inquiry relating to the following listing from the Surplus Record
    website: 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.72.43.8 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.72.43.8 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1nKt55-005WeM-40
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
Content-Type: multipart/mixed; boundary="===============6707832060773155054=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============6707832060773155054==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html>
	<head>
		<title>Surplus Record Copy of Inquiry =E2=80=93 10&quot; x 31&quot; Cinci=
nnati Milacron #R77, centertype production universal cylindrical grinder, 1=
976</title>
	</head>
	<body>
		<p class=3D"p1">Here is the copy of the inquiry relating to the following=
 listing from the Surplus Record website:</p><br />
<strong>Category:</strong> Grinders, Cylindrical, Universal<br />
<strong>Listing:</strong> 10&quot; x 31&quot; Cincinnati Milacron #R77, cen=
tertype production universal cylindrical grinder, 1976<br />
<strong>Listing Link:</strong> https://surplusrecord.com/listing/10-x-31-ci=
ncinnati-milacron-r77-centertype-production-universal-cylindrical-grinder-1=
976-273429/<br />
<br />
This request has been submitted to the listing dealer who should follow up =
with you shortly. For your record, their contact information is below. If y=
ou do follow up directly with them, remember to tell them Surplus Record se=
nt you.<br />
<br />
<strong>Dealer:</strong> Machinery Central<br />
<strong>Dealer Contact:</strong> Denis Frankenberger<br />
<strong>Dealer Phone:</strong> 502-219-7311<br />
<strong>Dealer Email:</strong> linux1394-devel@lists.sourceforge.net<br />
<em><strong>This email was generated via a request from <a href=3D"https://=
surplusrecord.com">https://surplusrecord.com</a>. If you did not submit thi=
s request, please delete and disregard the email.</strong></em><br />
<br />
<strong><em>-----</em></strong><br />
<br />
<strong><em>"The Leading Online Marketplace for Used &amp; Surplus Industri=
al Machinery &amp; Equipment"</em></strong><br />
<br />
<strong>Surplus Record</strong><br />
<strong>20 N. Wacker Dr., Suite 2400</strong><br />
<strong>Chicago, IL 60606</strong><br />
<strong>Tel: 312-372-9077 </strong><br />
<strong><a href=3D"mailto:surplus@surplusrecord.com">surplus@surplusrecord.=
com</a></strong><br />
<strong><a href=3D"https://surplusrecord.com">https://surplusrecord.com</a>=
</strong>
	</body>
</html>


--===============6707832060773155054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6707832060773155054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6707832060773155054==--
