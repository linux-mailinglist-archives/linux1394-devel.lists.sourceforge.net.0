Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B211AA78190
	for <lists+linux1394-devel@lfdr.de>; Tue,  1 Apr 2025 19:35:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tzfWA-0003Zy-Bg;
	Tue, 01 Apr 2025 17:35:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1tzfW8-0003Zq-Qt
 for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Apr 2025 17:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1sTFzCIUjY3ylMXnoTX9QSktmU9dCvQD1hxFf7SkrpA=; b=eM+9Yfusqk4LfnrtVN6C7cOR54
 QzZ5vhMsML5DfpoeX9qfncrr02aPj7wD7lLbX0AoDLbBLvd2aS4PVKH+tdjYtK4QEA0mcH41ucRm4
 h+BiW0+VrS87x3fxuUZTGdx/+JconH+kKayZ8w9SJblB8T4t2q7ycSxcmrFbO3B9TIz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1sTFzCIUjY3ylMXnoTX9QSktmU9dCvQD1hxFf7SkrpA=; b=N
 4FU6matcFRRgMJRVmlNaM7rPkgRmUZoV0lBPCpNB7I/ohmQI88K0NNDSvLQeMUpKP6ZGGGCKwhEat
 Zzljd32n63Zb9FFfyz6lb2w/6jNu7lfganNbj5toPT7NgOsuRbxhpz6pXiAU7deu350FyIIn0/SlR
 3/VV4QlzsjzhInjY=;
Received: from devianza.investici.org ([198.167.222.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzfVr-0007sq-9q for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Apr 2025 17:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1743527768;
 bh=1sTFzCIUjY3ylMXnoTX9QSktmU9dCvQD1hxFf7SkrpA=;
 h=Date:From:To:Subject:From;
 b=H3UVi1x93bFBLTE/YMJD3PTpWjX4vKE6R5h+VwmDH3CVFEZRz/65nXtSMd395x79q
 F8Ih2yWVsQE7yCBsjuJZbeohKJZPx5G1O/RrTq+/sI6zFSjoOE1RNw34AbtVvdpmcU
 QrGbwRRKeynUWOzB6KLQRdbWK/8HQumhKfJqzSUE=
Received: from mx2.investici.org (unknown [127.0.0.1])
 by devianza.investici.org (Postfix) with ESMTP id 4ZRvm872Bxz6v8h
 for <linux1394-devel@lists.sourceforge.net>;
 Tue,  1 Apr 2025 17:16:08 +0000 (UTC)
Received: from [198.167.222.108] (mx2.investici.org [198.167.222.108])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4ZRvm85gQFz6v61
 for <linux1394-devel@lists.sourceforge.net>;
 Tue,  1 Apr 2025 17:16:08 +0000 (UTC)
Date: Tue, 01 Apr 2025 17:12:26 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: New Vendor PHY device ID: Ricoh Controller
Message-ID: <27A478E0-A18C-43DC-A490-8C8FA34E18D4@paranoici.org>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Takashi, hi other maintainers if any, I wanted to report
 another PHY device IDs. But commands failed with timeout. Willing to build
 and test in case of changes. Its Ricoh controller integrated with OHCI
 controller
 on one chip: FireWire (IEEE 1394): Ricoh Co Ltd R5C832 PCIe IEEE 1394
 Controller (rev 04) [1180:e832] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.167.222.108 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.167.222.108 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [198.167.222.108 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tzfVr-0007sq-9q
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
From: AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: AreYouLoco? <areyouloco@paranoici.org>
Content-Type: multipart/mixed; boundary="===============2271187246085412091=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2271187246085412091==
Content-Type: multipart/alternative;
 boundary=----18JL8KQNZ07WW4XSOOKXFRGEC90Z6X
Content-Transfer-Encoding: 7bit

------18JL8KQNZ07WW4XSOOKXFRGEC90Z6X
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Takashi, hi other maintainers if any,

I wanted to report another PHY device IDs=2E But commands failed with time=
out=2E Willing to build and test in case of changes=2E

Its Ricoh controller integrated with OHCI controller on one chip:
FireWire (IEEE 1394): Ricoh Co Ltd R5C832 PCIe IEEE 1394 Controller (rev 0=
4) [1180:e832]

Target having it is Lenovo Thinkpad T420=2E And other models as well=2E

# lsfirewirephy
timeout

$ lsfirewire -v
device fw0:
  vendor ID: 0x001f11
  model ID: 0x023901
  vendor: Linux Firewire
  model: Juju
  guid: 0x0021cc20060f508e

So its submitted to:
<https://ieee1394=2Edocs=2Ekernel=2Eorg/en/latest/phy=2Ehtml#phy-device-id=
s>

Cheers
------18JL8KQNZ07WW4XSOOKXFRGEC90Z6X
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><body><div dir=3D"auto">Hi Takashi, hi other maintaine=
rs if any,<br><br>I wanted to report another PHY device IDs=2E But commands=
 failed with timeout=2E Willing to build and test in case of changes=2E<br>=
<br>Its Ricoh controller integrated with OHCI controller on one chip:<br>Fi=
reWire (IEEE 1394): Ricoh Co Ltd R5C832 PCIe IEEE 1394 Controller (rev 04) =
[1180:e832]<br><br>Target having it is Lenovo Thinkpad T420=2E And other mo=
dels as well=2E<br><br># lsfirewirephy<br>timeout<br><br>$ lsfirewire -v<br=
>device fw0:<br>=C2=A0 vendor ID: 0x001f11<br>=C2=A0 model ID: 0x023901<br>=
=C2=A0 vendor: Linux Firewire<br>=C2=A0 model: Juju<br>=C2=A0 guid: 0x0021c=
c20060f508e<br><br>So its submitted to:<br>&lt;<a href=3D"https://ieee1394=
=2Edocs=2Ekernel=2Eorg/en/latest/phy=2Ehtml#phy-device-ids">https://ieee139=
4=2Edocs=2Ekernel=2Eorg/en/latest/phy=2Ehtml#phy-device-ids</a>&gt;<br><br>=
Cheers</div></body></html>
------18JL8KQNZ07WW4XSOOKXFRGEC90Z6X--


--===============2271187246085412091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2271187246085412091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2271187246085412091==--

