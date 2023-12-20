Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6FC8197A8
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2f-0001T9-Oh;
	Wed, 20 Dec 2023 04:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2d-0001Ss-8M
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sjjjefL0YuZeCDEla/9R8UiAeKIsBwn7UqHFh3/lofs=; b=ggQrt+Z0D0/qtjh0TUxV1tBarr
 s5Qn2niG8JUfn15TQLqKzhqiUM97bRPzUEfuBlIhoeUiiWss+Rl6cnKEwBTn0h4H3lSCXwYuqpW7x
 GKbFINZzJ36ccoOSGaTK+QYvn0y2kRtnY0ja1kQ272gnthkFplbbzTqLMpU4PaWV6MQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sjjjefL0YuZeCDEla/9R8UiAeKIsBwn7UqHFh3/lofs=; b=UasOZlz7tSzuyKt1xqyhKrdg/x
 VZATeVtLVQHljDtQzoqVtMz3Uv7w8hkF2KACFba2A6PC7nMvZ2Uwm6+C/CyZlGJuBWvAMPkB5TLdw
 eecfAUHnzP2gHBHj1i9UFZWAuA5JMWo8ApWXVMY4ppRjkiqy+/cXc0hOzAvulWjlSIpc=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2c-0008Vl-Tv for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:43 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 2F3D13200A30;
 Tue, 19 Dec 2023 23:18:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Tue, 19 Dec 2023 23:18:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045911; x=
 1703132311; bh=sjjjefL0YuZeCDEla/9R8UiAeKIsBwn7UqHFh3/lofs=; b=W
 225XQu2m6vWAYoKRd4NM++hCM4eASw9S6K3Fx3778pgZM5Ll0utI3UamMcJ/XNcl
 wrngppSs3+p2T4kD0YEggkwEpmrFWmRXgxD9T3E5HKb6nlBLY3FgDeMrrYKIIZHW
 anTxlzQzDinS68G7M8+8jwQGGioR28MMormZjIicM+e8dy/4eiekfLAoEbiUd2xT
 Uj1mGxnjeu02kebSP8bmNNLPnAlBcYMkFM+/iBgzo/2qahn6x8oUUsl8BntYwlwj
 kj1MfDVFTLOoZ9CTE1RxIJVH4UOHDfv0TIpx+Gr0trQsltbZN7T275+tNmViR1pa
 p1i5xjHaVsHqG/XQGmcug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045911; x=
 1703132311; bh=sjjjefL0YuZeCDEla/9R8UiAeKIsBwn7UqHFh3/lofs=; b=j
 DImt9U64mM2RRxEIRNkLbo9qw7T0r2fGxcz+ZXYAqmu/jvs8YuOGH69RYWjjuEDW
 1fu77sdhyx0sukoz5Tco6vWgMd7QFvhjzqf3dkLydFREeIgKcnFlYWx/vFCmEe5S
 0BRI/E142dpqMC0m3rPas1W25eIf1ofhHEYrzpCQ0HrqOjlLekiQZupY9OWvzqEn
 +3UENhDgBrqsS0Y1rdmnI5XqjPg8CkzDp7YdR+c8HM8YUV4Bw1fJ9CkpTB6zrOrl
 kd3QRd27Cd+eM+ZTKHdEpR2r9ZEnhyANNMYASkGu4U8mMBOqgd4QvSdcpLQuun0Q
 l9ShV9yHn7RctKmjiowVA==
X-ME-Sender: <xms:F2uCZS8gpikRo1Gr9BiRHPU69S3P1c-q5smNRA7kPySsN0YNdpT9YQ>
 <xme:F2uCZSsK8LGNE3l2ZxTYYQe5ROMWL295mqqY-14X6dTFDQSThXhOnQLQbYHfvw_zu
 iSzc3EFRMoyoUpe7WQ>
X-ME-Received: <xmr:F2uCZYBOWw1s03IucCg7U0ModYZ7zIpnX3dyyGiSiZFFm6K7gJBlMFjm9OCFs7_B7ALzueOC90_RiIWUZsOoQ6LDYLmgJhhn82Klikre3mESBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:F2uCZafYSltlZKOasMRtT980mGLnBgmBmTuDfb_qi-ws1H39jYUccw>
 <xmx:F2uCZXMNvOWyOrC9_wns-HEFmnWn8Xj5nOJq2o-_wpHlpGaJuBg-Mw>
 <xmx:F2uCZUmoEWYIduSVzuGcmbgNG6qga9i7FsF41NKTm7VaZDHFBVdhFA>
 <xmx:F2uCZd2xr2WZbvQsDbM7qJp4bbbuDyL78Dtf7Z_ryfLdMPOU-NXSNA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:30 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] firewire: core: detect model name for legacy layout of
 configuration ROM
Date: Wed, 20 Dec 2023 13:18:05 +0900
Message-Id: <20231220041806.39816-8-o-takashi@sakamocchi.jp>
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
 Content preview:  As the part of support for legacy layout of configuration
 ROM, this commit traverses vendor directory as well as root directory when
 showing device attribute for node device. This change expects 'mode [...]
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
X-Headers-End: 1rFo2c-0008Vl-Tv
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

As the part of support for legacy layout of configuration ROM, this
commit traverses vendor directory as well as root directory when showing
device attribute for node device. This change expects 'model_name'
attribute appears in node device, however it is probable to see the other
types of descriptor leaf if the vendor directory includes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c           | 31 ++++++++++++++++++------
 drivers/firewire/device-attribute-test.c |  5 ++--
 2 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index d0ce583b93c4..2bc6c874e89c 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -317,17 +317,29 @@ static ssize_t show_text_leaf(struct device *dev,
 {
 	struct config_rom_attribute *attr =
 		container_of(dattr, struct config_rom_attribute, attr);
-	const u32 *dir;
+	const u32 *directories[] = {NULL, NULL};
 	size_t bufsize;
 	char dummy_buf[2];
-	int ret;
+	int i, ret;
 
 	down_read(&fw_device_rwsem);
 
-	if (is_fw_unit(dev))
-		dir = fw_unit(dev)->directory;
-	else
-		dir = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+	if (is_fw_unit(dev)) {
+		directories[0] = fw_unit(dev)->directory;
+	} else {
+		const u32 *root_directory = fw_device(dev)->config_rom + ROOT_DIR_OFFSET;
+		const u32 *vendor_directory = search_directory(root_directory, CSR_VENDOR);
+
+		if (!vendor_directory) {
+			directories[0] = root_directory;
+		} else {
+			// Legacy layout of configuration ROM described in Annex 1 of
+			// 'Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
+			// Trading Association, TA Document 1999027)'.
+			directories[0] = root_directory;
+			directories[1] = vendor_directory;
+		}
+	}
 
 	if (buf) {
 		bufsize = PAGE_SIZE - 1;
@@ -336,7 +348,12 @@ static ssize_t show_text_leaf(struct device *dev,
 		bufsize = 1;
 	}
 
-	ret = fw_csr_string(dir, attr->key, buf, bufsize);
+	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
+		int result = fw_csr_string(directories[i], attr->key, buf, bufsize);
+		// Detected.
+		if (result >= 0)
+			ret = result;
+	}
 
 	if (ret >= 0) {
 		/* Strip trailing whitespace and add newline. */
diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
index 689115433425..da2a4a09bf84 100644
--- a/drivers/firewire/device-attribute-test.c
+++ b/drivers/firewire/device-attribute-test.c
@@ -206,8 +206,9 @@ static void device_attr_legacy_avc(struct kunit *test)
 	// Descriptor leaf entry for vendor is not found.
 	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
 
-	// Descriptor leaf entry for model is not found.
-	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+	// Descriptor leaf entry for model is found.
+	KUNIT_EXPECT_GT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "ABCDEFGHIJ\n");
 
 	// For entries in unit 0 directory.
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
