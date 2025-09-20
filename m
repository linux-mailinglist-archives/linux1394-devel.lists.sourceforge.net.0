Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B251B8BDB6
	for <lists+linux1394-devel@lfdr.de>; Sat, 20 Sep 2025 04:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OuVfu9znJRc2NSrWVzPMnTwEeJdTlBZ1iC3N7lwacvw=; b=m/jDlyUaf+RZ89xAHkdk+ZjQjs
	x8VwCUiBxZ1+CwkY4j0n/w4NwKwggUyo5jUvg02VBa5ZweAWRNpk/7x2rYfHKI6XQzyOXVgvpiBBO
	OBoO/JxA/k8mozQ3l2TnSkb1PYTmJzhd7CzXv720s1xTNbTNiJOe5vsEKqFLygJfAVFg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uznhk-0000BJ-9E;
	Sat, 20 Sep 2025 02:52:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uznhj-0000BB-7O
 for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Sep 2025 02:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xf9/YYuF53HW6Ufjrarn7wTcw0/FDn9NhhmiveWm2rk=; b=d+9oeNDuwYPefn8CmhxEcEy6vm
 6fU6CDpECAOFBQgHz5YOtFOv0e2UJ2z4fj0ynrQLMLxUVX6Divq1HwQaLzLitMvKIO6pB+Swpufyj
 Gp9Zp9xmoPtDy/etNmkCCU6jDVbozQKWOUpDJ3v60gyOLEizucGiOMtZ8xre8zKt7U8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xf9/YYuF53HW6Ufjrarn7wTcw0/FDn9NhhmiveWm2rk=; b=N
 ZUxO2ihXWfi3JNf28SzqkG69I2emfCu+AljW/KRF92GcqC9a2jxtqJK5ZIPwWJXjWRfqutxkre7PH
 fU3nTbWX3w0HZKmSKFILAUKOxEt8tOo5/uHr+CMf+XVPU4Fkp+1w73O/JQAd5dEadGtWpRnpcVzVm
 nNOmbrkhNtksY/u4=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uznhi-0003as-Mq for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Sep 2025 02:52:03 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 0D3EDEC00D6;
 Fri, 19 Sep 2025 22:51:52 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Fri, 19 Sep 2025 22:51:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1758336712; x=1758423112; bh=xf9/YYuF53
 HW6Ufjrarn7wTcw0/FDn9NhhmiveWm2rk=; b=EtIQTZXPG8TRY7jhGPe7Ky0Ern
 kZ3cgKKCfg+6Oj4/pC85jRB3Q877KY8U7Wwn/pX9t6UDPbWlZ4kK0fI3oq1dv1tZ
 6e9wkiBlarKGjwpO6BpaOYyRTPQwlahOPirMCnZQxb3U8y0y1Idk6yDTPVJZh+F0
 fwdOzccC07rQ+yt8SvdJjl80JNmqGV+R4daSCajnIBpPVdNdppZIqjAyw+4TtG0k
 zyJbXTwFWHudqYLhyibJpdU3g+oSNRftzQI6ge2JMIB+URDEtz5DggoProqF0Vs+
 bLgapVHeKNz4PdPAe/ZPdZEpfd2TMWsKkEJiL0Gi3V3DHeAKk9Gqra8ThQsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758336712; x=1758423112; bh=xf9/YYuF53HW6Ufjrarn7wTcw0/FDn9Nhhm
 iveWm2rk=; b=BemXBZ2njUpZtnLxAtOFKYj26KFNpEnsIHgcmdgjOJja7ogoNdI
 3GRLpM/jJNw7p68zA8OQUu2CxcVk5houdBDKQMMboVxC4FzL3HokO8wnJ+uIfvsa
 I03KLFRR3S7Wa+t9255Dn0PVjbS5q4UBwdg8wE9/wdAMqw+nwkTVn7gxxRhhKAAD
 3mhbNmYeP9gm9EQGohfablnS8shavp6iiW+jeC/sEgg+VsDwYqFiQ5pKYuFmaCtu
 fe12YbxvcufUWSJUl73HoPuzW5MATduarp1DFQnmtJtNNwyHfPuzm6t7xrAgsqZ2
 znbiEc1GTdxCQ/Kf0oja9Ay5e3f6Td5+Sjg==
X-ME-Sender: <xms:xxbOaPCCUe1j4Dsrdb7C7mi3W9Ido8yIbykZ2WVk_nk9Qq-qiOcA-w>
 <xme:xxbOaOfdXga96UbBIy-oM0eKn3PFvBCvosq96Iu9ZJP7RoFI9PT8oiSPsMMLDw1im
 8VC_XiJTbZZHwsw1WE>
X-ME-Received: <xmr:xxbOaMjwTXJCWEbtDxn5FM7PtavYP8vgb97STK6TL8pt2T0QEAIvVFsnEPV8VEgY0dQhHie1WclDFfe9RU-qQmS-mru6uBVMBzhZ6HP3Tg76gQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehtdelgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhf
 etjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmh
 hotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:xxbOaOrnd_UMEebUUGSkoJ20x64K_K5O8zYH9njVDUcKNyR2mf9oOQ>
 <xmx:xxbOaEHy86eqyCFKjfLrx9rqGEDPre2_5Msh5-c7EKGitrN0Z84VkA>
 <xmx:xxbOaAmU7pTbGZ1S3_Ny3jFEePhKF9mS66JxTRX9SMLQlfHldgEQwg>
 <xmx:xxbOaHmhq_GoZp8j18986JusG3yjb3nHGFRPaIaMNC0pILcc47o_Qw>
 <xmx:yBbOaKGRRI98OX17ccjtWtel5aLaepG88z_gwHP50v1D5IQba15ml2Yg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 19 Sep 2025 22:51:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix overlooked update of subsystem ABI version
Date: Sat, 20 Sep 2025 11:51:48 +0900
Message-ID: <20250920025148.163402-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In kernel v6.5,
 several functions were added to the cdev layer.
 This required updating the default version of subsystem ABI up to 6, but
 this requirement was overlooked. This commit updates the version accordingly.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uznhi-0003as-Mq
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In kernel v6.5, several functions were added to the cdev layer. This
required updating the default version of subsystem ABI up to 6, but
this requirement was overlooked.

This commit updates the version accordingly.

Fixes: 6add87e9764d ("firewire: cdev: add new version of ABI to notify time stamp at request/response subaction of transaction#")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 78b10c6ef7fe..2e93189d7142 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -41,7 +41,7 @@
 /*
  * ABI version history is documented in linux/firewire-cdev.h.
  */
-#define FW_CDEV_KERNEL_VERSION			5
+#define FW_CDEV_KERNEL_VERSION			6
 #define FW_CDEV_VERSION_EVENT_REQUEST2		4
 #define FW_CDEV_VERSION_ALLOCATE_REGION_END	4
 #define FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW	5

base-commit: f83ec76bf285bea5727f478a68b894f5543ca76e
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
