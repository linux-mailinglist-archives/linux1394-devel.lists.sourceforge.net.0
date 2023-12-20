Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A108197A7
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2d-000633-C9;
	Wed, 20 Dec 2023 04:18:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2a-00062g-TA
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MqOifYCucTPnKbf3hkszGvdZNwn7ZENwvdLMF39HtZM=; b=ZqUIihjClDgSo1ucPEJ/NCbK7M
 Grl3bzgtTs8JlMgJM2J6ppAr3/pZktuDAlKfSSJ7xdlxzJNyWZMU3jfeup37n+daSCxj3hoPim75w
 F4Z1JkgozGZaZX/FApK6uyAMN5LnheghVdBiJxLgD615Mkk0ZQNOn8COoaaAw3lk+Brc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MqOifYCucTPnKbf3hkszGvdZNwn7ZENwvdLMF39HtZM=; b=SxcczwwnmWs23FF1laDEiTUHxH
 xj1H//7xBckeGkoIir68cCMeZsFz4DJH1vLH+Uh5Mq9XVMnYOcR3gbUcu5Up5Z0E9lxQG/JqOvSA7
 5JQ7b5MTMjmLaNjk49vg63MmGL/c0w7rfuw/MqsrXmWNYIGdtSZuWI6Woy9xFVjj+jFg=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2a-0008Vh-LU for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:41 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id E5C0B3200A34;
 Tue, 19 Dec 2023 23:18:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 19 Dec 2023 23:18:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045914; x=
 1703132314; bh=MqOifYCucTPnKbf3hkszGvdZNwn7ZENwvdLMF39HtZM=; b=v
 6ohUlE+Lfs0BtQd+J/Z313mMYLUgyZwsby8e4D0A90VohPRi8dR4wLE6aO1RlD+4
 ppF7X5iGNBrHCE+7vAWvCMnelbMMbSYaBATQOtwcLvGOkXYdWsHcg984M6ulM2dJ
 KzuF9cLnvydouP8HcdtqftYKJ7k6qJ86fq9ep5oGZGwdwGMHSSFWvTesTg4xtuSJ
 Gz5fdiUzwMJu4+gmn4+Laezw5G5kLc+f20BvDem2MHupZHJpR0Sp0ENRlKzWpKyk
 5/BEj8ZdljsGIYih0RMls+fF2cyAtmWxY2KGBEALE30WNPqV8mGi0Ok7DHYhs64i
 NlNLDBPiCReuUzsCH7T+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045914; x=
 1703132314; bh=MqOifYCucTPnKbf3hkszGvdZNwn7ZENwvdLMF39HtZM=; b=t
 UVNVZekYdYMrbFmliSodW1ZOQjUVtaJxkaqFT+qeoRCV5hPPBTGjPF1vuKTbZX8s
 nBfS6rsLEyZVVvVz5+YYF2f1Cvb9W3DyomCrfBJ1BxIRJf8RB63tCRP1V1DDh3aM
 msuiz1HoXUvYn/UWXZGelfvw2kB/JMFdyDWWS3gd5bbivxihJWEpWIc/e/g5rSEi
 vNxG+ZW3bRsSgqdldXPaj0KNjZH3MPMfM4aFyASoGzl1xIwPV5Jmh7/vRCE8cVaf
 lSqwTjYptnm+NozdscOqDawpJ8pPWdOLEHIhBey1c2Fn/9e4WCJ2JM6unh2QrU9t
 +R4vCOdgx+AaFKvL4Jqgw==
X-ME-Sender: <xms:GmuCZRDfLWBXbF9Cf7aJqgazisdkgRHgkWgz3YQNduF9PGHFHaN2mA>
 <xme:GmuCZfh1pvRg2mCcRMbaHL2B_9xHGcallZ-QqwkRheMQZOJwB95DHKokvQ5cp-E8H
 SJElIbowwyWBZg-BDc>
X-ME-Received: <xmr:GmuCZcli3YDy1-Zl7XS4xyba2GibsNxqJ3q-F7_Yz06lNs0WQJ0SfhYzog22WFzKDYOzMeu3tbNNtd4-o0B5V61-3STcWXvOWijFvu22qp1LbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:GmuCZbwRM2kgWYKvqzxtjuvPQHMafBe9A6I0NmCu2UhtEO5ylpCG7g>
 <xmx:GmuCZWQ5QUo-OLazhoEAojtk--suB69TV-mJUtpfivVi7PPFMak7uQ>
 <xmx:GmuCZebja1hlzaGGniQKCx2Y-FAq_evRpS-Cl6UurUv8S58nPaVeoA>
 <xmx:GmuCZZIYHLezGkzcFKcXzBtu9bvfe1DOr--h79BNV1CR-pNid8yhhg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:32 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] firewire: core: change modalias of unit device with
 backward incompatibility
Date: Wed, 20 Dec 2023 13:18:06 +0900
Message-Id: <20231220041806.39816-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
References: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As the last part of support for legacy layout of
 configuration
 ROM, this commit traverses vendor directory as well as root directory when
 constructing modalias for unit device. The change brings loss [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFo2a-0008Vh-LU
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

As the last part of support for legacy layout of configuration ROM, this
commit traverses vendor directory as well as root directory when
constructing modalias for unit device. The change brings loss of backward
compatibility since it can fill model field ('mo') which is 0 at current
implementation in the case. However, we can be optimistic against
regression for unit drivers in kernel, due to some points:

1. ALSA drivers for audio and music units use the model fields to match
   device, however all of supported devices does not have such legacy
   layout.
2. the other unit drivers (e.g. sbp2) does not use the model field to
   match device.

The rest of concern is user space application. The most of applications
just take care of node device and does not use the modalias of unit
device, thus the change does not affect to them. But systemd project is
known to get affects from the change since it includes hwdb to take udev
to configure fw character device conveniently. I have a plan to work for
systemd so that the access permission of character device could be kept
across the change.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c           | 21 +++++++++++++++++++--
 drivers/firewire/device-attribute-test.c |  2 +-
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 2bc6c874e89c..abcb0f036fcd 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -153,8 +153,25 @@ static void get_ids(const u32 *directory, int *id)
 
 static void get_modalias_ids(const struct fw_unit *unit, int *id)
 {
-	get_ids(&fw_parent_device(unit)->config_rom[ROOT_DIR_OFFSET], id);
-	get_ids(unit->directory, id);
+	const u32 *root_directory = &fw_parent_device(unit)->config_rom[ROOT_DIR_OFFSET];
+	const u32 *directories[] = {NULL, NULL, NULL};
+	const u32 *vendor_directory;
+	int i;
+
+	directories[0] = root_directory;
+
+	// Legacy layout of configuration ROM described in Annex 1 of 'Configuration ROM for AV/C
+	// Devices 1.0 (December 12, 2000, 1394 Trading Association, TA Document 1999027)'.
+	vendor_directory = search_directory(root_directory, CSR_VENDOR);
+	if (!vendor_directory) {
+		directories[1] = unit->directory;
+	} else {
+		directories[1] = vendor_directory;
+		directories[2] = unit->directory;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i)
+		get_ids(directories[i], id);
 }
 
 static bool match_ids(const struct ieee1394_device_id *id_table, int *id)
diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
index da2a4a09bf84..2f123c6b0a16 100644
--- a/drivers/firewire/device-attribute-test.c
+++ b/drivers/firewire/device-attribute-test.c
@@ -178,7 +178,7 @@ static void device_attr_legacy_avc(struct kunit *test)
 	};
 	struct device *node_dev = (struct device *)&node.device;
 	struct device *unit0_dev = (struct device *)&unit0.device;
-	static const int unit0_expected_ids[] = {0x00012345, 0x00000000, 0x00abcdef, 0x00543210};
+	static const int unit0_expected_ids[] = {0x00012345, 0x00fedcba, 0x00abcdef, 0x00543210};
 	char *buf = kunit_kzalloc(test, PAGE_SIZE, GFP_KERNEL);
 	int ids[4] = {0, 0, 0, 0};
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
