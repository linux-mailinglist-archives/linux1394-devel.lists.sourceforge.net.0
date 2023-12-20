Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 948C08197A0
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2S-0001pL-Iq;
	Wed, 20 Dec 2023 04:18:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2O-0001pD-Vv
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XR6dDe9SdLViul/VkLKU8KFtzdmbcDDwaOcUEYOSNO8=; b=d51uaWtRvWHicfAdhH+KrgmkNe
 IGy53f4VeOtGrNaFZxesKZWgLnLBAI/KhwUc2pfT7Ej6Rg9lSHGcthElcksQZBMXqvAbUhjeqF0eR
 WEITQD4acspy14Kin14Q2JynIBpKjvfPs4jmea3ZlsIv8lSr8CGv1t0QO7+5afQNfoGA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XR6dDe9SdLViul/VkLKU8KFtzdmbcDDwaOcUEYOSNO8=; b=V
 eHJj4kqQ5N60UYAky6w6lvpb5HWVurvQ1V/Pv9mu2lvbQLu25TLozpXdr4dDrUMTygdMD3WZ3HWoM
 OdrRFOfizbMeLIC1j3d4r3+q12sRKgC4DdUQda2M8AlTGS4c5xzif3i+6uYU4s8axICFCaJ0gZBUG
 Dp6dE0YAwGz5XuQI=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2L-0008UU-UP for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 9304E3200A48;
 Tue, 19 Dec 2023 23:18:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 19 Dec 2023 23:18:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1703045892; x=1703132292; bh=XR6dDe9SdL
 Viul/VkLKU8KFtzdmbcDDwaOcUEYOSNO8=; b=tHtRqaZ99J5AIwISQrc7f9TcXj
 7OrcfI3GJKy/hzIUbQ2a0hJqBgJ+bofWvUuhnhI9TdSTfawP8Vlsq2h/3DeL+Xu8
 /52E3BJ6aPk0lFwqArm1hu/8NPklYoNt4ZnxDvuqrfYzlA+akQ1Vrdubwke1e56R
 R6YDTypOh7WFGNU2QwXDqD2uyCo323WqdOlGYT6GV89TE3pT1RwuqCQDApvzxG4i
 OU7b5+hgJbyMPFdSNW/zoyKfVNWw66wZjpDVaRUWZUliG/tCDIs9JhjYkpLAOQi6
 M1964CdmjlukOk4mlM7mNRnE4TSt+TpIxGbbz0+ZGQzoxhdN7xXDTG+cGqqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703045892; x=1703132292; bh=XR6dDe9SdLViul/VkLKU8KFtzdmb
 cDDwaOcUEYOSNO8=; b=DOe8Cv2ulwMcqqbBx0m4EgDw2T5pSJFbYNQeF/T/Awi2
 CdpxfWY4MgIOzNNXVOqThrXYg2Q9Kug8kh3uYY/8jtmOIuEJsVG7T+hxeSno3BT+
 gW7PMJ8ghcNbh98PyRZLSW4B2bPSk9kbwQc3wUBg7D9sknrWZgnaORbkQrDGEY28
 MsV+2b9t7VeAL2UP/fiQKMk1ESxpOrk6laBhB6jHfeiH/3T6eKPR3UOwIUNP0V10
 Jyrj3jGfg9rFHufH0n2XMyQtFTnTg7X9PFLLHKzxmIKTkTbN8xUZvqa3vXy6cb9b
 r5eY2UlcUwBmDvcwDTYFn9aqtrrNjhmo8x3KAaMtjA==
X-ME-Sender: <xms:A2uCZYaNH3UGDjYiAwUgu-C8EJVrrXkCk259jquKIKMc7PcVji79Dw>
 <xme:A2uCZTbCEyvFdjD0FkyAGfZPDkunwXhTckoSFPui8QzMHsbJvEFvnvelxbecXbIYO
 XXXj4FBZ5qiURq1IWU>
X-ME-Received: <xmr:A2uCZS-NDu1D7Z6mF_HeMltSQlpaG2CVUZWQP31VX5QFtg_rLlW9i8OBDVsLAlrPml1FjI7S1k77jqO2Xv_wkIQlbQOWf6mnx86ApkybTKbprA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
 cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepuddvleetteefledttefhvddtteelkedtgffguddvudev
 teeuhedvveejleetgedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdprghrtghhih
 hvvgdrohhrghdpudefleegthgrrdhorhhgpdhsohhurhgtvghfohhrghgvrdhnvghtnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkh
 grshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:A2uCZSrDQTCrFjry8Rf1Y0IaGNw61Y5V7qQCf8ymc0W4A7l9wP7eRw>
 <xmx:A2uCZTqZUzQhNGmEJTLS5q63nxV4MC3cCMtv_Pz1NgYXlLD7JrwcMQ>
 <xmx:A2uCZQT2oHG1UySlI4U3uDRHxG7dmgU8LPj1iOmKrFW9Q-TsCrhZXQ>
 <xmx:BGuCZcBJGnfhwnj72v_2vOPXk5eMgtVoL6mioJlguGDqQFbPed2vXg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:09 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] firewire: core: support legacy layout of configuration
 ROM for AV/C device
Date: Wed, 20 Dec 2023 13:17:58 +0900
Message-Id: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This series of change is to update my previous post for
 RFC[1], and for merge. Current core function of Linux FireWire subsystem
 has support for legacy layout of configuration ROM, described in annex of
 1394TA document[2]. However, in a point of device attributes (e.g. nodes in
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFo2L-0008UU-UP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

This series of change is to update my previous post for RFC[1], and for
merge.

Current core function of Linux FireWire subsystem has support for legacy
layout of configuration ROM, described in annex of 1394TA document[2].
However, in a point of device attributes (e.g. nodes in sysfs), there
are differences between devices with the legacy and standard layout of
configuration ROM. The differences bring some inconveniences to users[3].
The series includes changes to solve them.

The series includes changes relevant to driver matching procedure and
notification to user space, thus could easily bring functional regression.
For safe, the series includes some KUnit applications to test the change.

However, backward incompatibility is inevitable due to change of modalias
for device corresponding to unit. As long as I investigated, any unit
drivers in kernel are not affected by the change. Additionally, less
applications in user space are not as well. I think we can be optimistic
to the regression.

Changes from RFC:
* rename file and KUnit tests so that they are related to device
  attributes
* fix traverse failure when detecting textual descriptor
* remove redundant indication for CSR key type

[1] [RFC PATCH 0/8] firewire: core: support legacy layout of configuration
    ROM for AV/C device
https://lore.kernel.org/lkml/20231217103012.41273-1-o-takashi@sakamocchi.jp/
[2] Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
    Trading Association, TA Document 1999027)
https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
[3] [PATCH] Fix missing sysfs vendor/model entries for some devices
https://sourceforge.net/p/linux1394/mailman/message/55802731/


Takashi Sakamoto (8):
  firewire: core: adds constant qualifier for local helper functions
  firewire: core: replace magic number with macro
  firewire: test: add KUnit test for device attributes
  firewire: test: add test of device attributes for simple AV/C device
  firewire: test: add test of device attributes for legacy AV/C device
  firewire: core: detect numeric model identifier for legacy layout of
    configuration ROM
  firewire: core: detect model name for legacy layout of configuration
    ROM
  firewire: core: change modalias of unit device with backward
    incompatibility

 drivers/firewire/.kunitconfig            |   1 +
 drivers/firewire/Kconfig                 |  16 ++
 drivers/firewire/core-device.c           | 127 +++++++++---
 drivers/firewire/device-attribute-test.c | 251 +++++++++++++++++++++++
 4 files changed, 368 insertions(+), 27 deletions(-)
 create mode 100644 drivers/firewire/device-attribute-test.c

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
