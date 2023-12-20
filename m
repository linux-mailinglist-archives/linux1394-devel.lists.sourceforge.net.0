Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A208197A6
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2b-0001Sb-FQ;
	Wed, 20 Dec 2023 04:18:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2a-0001ST-G5
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=D1Zzn6+ACT/j2GfV1ov4QBOw3r
 AOUg8nFvaSZKJ++TP5n8ssolj5F457XfLr7lZe2uLqATrIUlsDCAnWBkbLplY9Eo7UBqNUNCwU+U9
 Fz+HHy8A9+3m7gNECsjTDNb5iCjW/hln4g02ZrVt+vnB//DHEZuNLZXCQQjwtpBoanVg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=B7myifHppq1mXEASTI9KVijzBw
 UzWbvDESE5ot1Qywn76WNu38wRHwEgOP9/6zSygdbJyXCXk/p2I8h+QnDsxfQmPGTgp+SIVRVGf12
 3RjeQdNpIFD7rSI0/5guJkxv4+dCeLdMUL7EghWoMP+RadVi07JGAWgpJZr2ZyyYXbY4=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2a-0008Vc-4b for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:40 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 648083200A67;
 Tue, 19 Dec 2023 23:18:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 19 Dec 2023 23:18:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045908; x=
 1703132308; bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=C
 IOcsm5ugynM8OL3LKR1xwwjtPCfU8Q+5MjrUOaNf4M2r80AAfEfsdIMq8kmovzLD
 ZM44Azii7yw8a53MULbqKbz64vKIFfQKvnOklve0evDGNE5lVy6ABIcK5BOGRYot
 GFyuZqo5FFvzpclVczbkZ816qSKFRpGPjiefj7Y44My7wOT6F9auJeJqIbhSPxrQ
 5DpknCYSoUYmJU/zid6ZjEGVvZzK2U1CZ/QbJduvd78gQnhQZzajaNPpYz+6DfVF
 mnQerTd9a41HWPnKZE5r5AJ54Cveb50Hknu2wTQBlqKGYdCLg0P3BiyHoTRxjw09
 /icjFgRSZdc9fvsetovug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045908; x=
 1703132308; bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=X
 EhUat448cPzNYwNNCNU4IKW8CN5zoB0sPbITqj7gIzBppf3RU101axu0eKX2vHtj
 SYDGbIMnjAvjO3unsGs7g1CBzQ2Vo531b/A06IKgCFumi8Ran2j4yYIXIJ4DZ28t
 hPhIJ5zkyZRQNAzMmbtBkhyhFmA7JmLAFU3hen6ypfddhc+kqkEAH/KbSER6yTgN
 OW2GF9e3qjcqQ0qV6aJkKlXAvG8Zj5dCwwSzBukS628h1plyJgQHMv9yGekPxydd
 Puj02Wo8jHtLeLKZWBGOgMBtFT7X5wc5WecmICgRi3m6ISTRAMZGhT7r0r8dSBk4
 zOZxOmApYuxcZlZPmXN3Q==
X-ME-Sender: <xms:FGuCZeBGR5L8WJFEV3fHIihXu_WfbPZxlwZ9EhZvKKr3G_YQxUyDcw>
 <xme:FGuCZYiJfDCK4nBMuW1zZ6iONs2AEa-SwVsbGMNSQ3QnFTiu8r-1u2gmBSd29JsFw
 hy5FcR9PRwPl4i1D-Y>
X-ME-Received: <xmr:FGuCZRkXVzmVMw1e7OUuNQuxLGogCZRmdfuLpodlib8NVTdLVFrnLCMdORwER47_18MbvAVdC3V1pLOiacSDDsuJR0UQstW80m9Ft4WHWSQBpA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:FGuCZcy3xObAPoVSvokwPodCHA4SH1fb-mkI9gXed8XHAmTndNNl0Q>
 <xmx:FGuCZTRON5PLYuB-25bgGcKGUkuFzO-tkvf19qDq_ZmP2RIRKHwC9Q>
 <xmx:FGuCZXagpQ_y4vtBLibyOiyf6_acELadHkh-qL1ezgspIBrJd8S20Q>
 <xmx:FGuCZaJwVk3PKbSZcmTDMnIfcIBPZW4AUGYbyn42UHymFfodNx5RJg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:27 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/8] firewire: core: detect numeric model identifier for
 legacy layout of configuration ROM
Date: Wed, 20 Dec 2023 13:18:04 +0900
Message-Id: <20231220041806.39816-7-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1rFo2a-0008Vc-4b
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
device attribute for node device. This change expects 'model' attribute
appears in node device, however it is probable to see the other types of
immediate values if the vendor directory includes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c           | 59 ++++++++++++++++++------
 drivers/firewire/device-attribute-test.c |  5 +-
 2 files changed, 49 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index fe1e64df476c..d0ce583b93c4 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -49,6 +49,22 @@ int fw_csr_iterator_next(struct fw_csr_iterator *ci, int *key, int *value)
 }
 EXPORT_SYMBOL(fw_csr_iterator_next);
 
+static const u32 *search_directory(const u32 *directory, int search_key)
+{
+	struct fw_csr_iterator ci;
+	int key, value;
+
+	search_key |= CSR_DIRECTORY;
+
+	fw_csr_iterator_init(&ci, directory);
+	while (fw_csr_iterator_next(&ci, &key, &value)) {
+		if (key == search_key)
+			return ci.p - 1 + value;
+	}
+
+	return NULL;
+}
+
 static const u32 *search_leaf(const u32 *directory, int search_key)
 {
 	struct fw_csr_iterator ci;
@@ -253,27 +269,44 @@ static ssize_t show_immediate(struct device *dev,
 	struct config_rom_attribute *attr =
 		container_of(dattr, struct config_rom_attribute, attr);
 	struct fw_csr_iterator ci;
-	const u32 *dir;
-	int key, value, ret = -ENOENT;
+	const u32 *directories[] = {NULL, NULL};
+	int i, value = -1;
 
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
 
-	fw_csr_iterator_init(&ci, dir);
-	while (fw_csr_iterator_next(&ci, &key, &value))
-		if (attr->key == key) {
-			ret = snprintf(buf, buf ? PAGE_SIZE : 0,
-				       "0x%06x\n", value);
-			break;
+		if (!vendor_directory) {
+			directories[0] = root_directory;
+		} else {
+			// Legacy layout of configuration ROM described in Annex 1 of
+			// 'Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394 Trading
+			// Association, TA Document 1999027)'.
+			directories[0] = vendor_directory;
+			directories[1] = root_directory;
+		}
+	}
+
+	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
+		int key, val;
+
+		fw_csr_iterator_init(&ci, directories[i]);
+		while (fw_csr_iterator_next(&ci, &key, &val)) {
+			if (attr->key == key)
+				value = val;
 		}
+	}
 
 	up_read(&fw_device_rwsem);
 
-	return ret;
+	if (value < 0)
+		return -ENOENT;
+
+	return snprintf(buf, buf ? PAGE_SIZE : 0, "0x%06x\n", value);
 }
 
 #define IMMEDIATE_ATTR(name, key)				\
diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
index 495af65c33b5..689115433425 100644
--- a/drivers/firewire/device-attribute-test.c
+++ b/drivers/firewire/device-attribute-test.c
@@ -199,8 +199,9 @@ static void device_attr_legacy_avc(struct kunit *test)
 	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[0].attr, buf), 0);
 	KUNIT_EXPECT_STREQ(test, buf, "0x012345\n");
 
-	// Model immediate entry is not found.
-	KUNIT_EXPECT_LT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+	// Model immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xfedcba\n");
 
 	// Descriptor leaf entry for vendor is not found.
 	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
