Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD4881B8A1
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQK-0005eP-Pz;
	Thu, 21 Dec 2023 13:49:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQJ-0005eC-GB
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yHE5zsgLceNpgxeFsHAo6tPr0eHvDlNHIX4N5QhXKMY=; b=M4tifqxg6nsDobjTgZFS6e7OlV
 VHLh/WYQBUfo0zSrUMJ6o54uguu3IOQnxetG2taVXAZBY6gwWu8EJIpu7ScHKnozUucaO0v5uZDWa
 ezQJU1VpWWhNZ39xU8QOO7IbQLWFT8OIgHW/QF/mrlZeul5ixpPM6NG1hoPLuhneIiIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yHE5zsgLceNpgxeFsHAo6tPr0eHvDlNHIX4N5QhXKMY=; b=cO6FyOsv3uDXlrtGBC5jCF1CLl
 l+hUK3CtaU4yZGlZNzvRPCmNV8If5Hdj5tvKzNQfBspRoOefhdYw7eZTMDsSEHNks9giLdSB3epop
 VyECF7XVfEsCWZ1ukd2ZWDzeldPpsE0Zk2FaHMRC/LjtmvfhXWAlQxy5Zm7uC6hj1g5I=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQI-0002oO-PX for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:15 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 4C9E65C029E;
 Thu, 21 Dec 2023 08:49:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 21 Dec 2023 08:49:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166543; x=
 1703252943; bh=yHE5zsgLceNpgxeFsHAo6tPr0eHvDlNHIX4N5QhXKMY=; b=g
 n9/+T1zm0r7rE6Wj3SfL8zPH8MMsqPXuA8ftkHIqPT6T0OFnuhh/znjP8H6a0ZcC
 +BMmB+zsl0VRM+tsmd8H67kbT/O69QWyMkUkJREyXbt2Pe7vAAEELZLYh6vF9oQb
 3/d9jRrz8fd49YP4FTFFPyVOvp3LNL5//UQtTE6ZxVEQyh9viAvl7Cp2R8eQsy9g
 6+QYe/hG/A4M4QeMYOU7yWtX7ICKyryAd/+GHcvtAK0sL9rDzHl2o8cchAbFARKj
 Je062iCyzPj8+a8OpdfIo/J8nOCY5FvgyiuBiqVe78pU+9+jPKzU/cxJXsF1GyeL
 yUsG/zUEMtL1CnSgTjhlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166543; x=
 1703252943; bh=yHE5zsgLceNpgxeFsHAo6tPr0eHvDlNHIX4N5QhXKMY=; b=n
 bXav1BGEfSrsh2PhdbzbS5sPp2C04K6cvOj+fyfrPHImsvK5bPWFA0ln5oqvjNKJ
 zYtFeAFBlC3lyJbGLUV2mD4ohwKIu6jaGsvpSlZbhNrn7GclxrY8j9/gWxRXJdtA
 wBlrLeIENDDG408cjEQWMnNM9F3IeQI9KNfYBtelj5AFV32tPntUGx5PsCwWydKz
 oNyMBVEYMCaQLpdkVoWOaEhE0pQFkU7ZJ+V7bBf5Ly0fYGv2LcdJFaWXmKP7c81k
 QuqNkqVqpJOdRqr4DGCEmGeM+WeKnV4cD9gQbQyD6dpkDr2WjhC/eL1ganptIrRk
 7JU59jmz918sWTIwZ/BjQ==
X-ME-Sender: <xms:T0KEZaj3lT0pkUJ1b_GCypYN72mtv1QtvpohiPjZIJShp7PEHOS5og>
 <xme:T0KEZbB-MTxounrR6GqqVlqPcSrQuiGp1A9yU_qx48WY75lHScQQn9KwK1jxghwTk
 G4xKXDX4m3GqQaQVzM>
X-ME-Received: <xmr:T0KEZSFphXp4fU152s1WCJgwYGBq7hnC_2LQ3QeCacP2LfkcA1d7lxim21_eOg8WCmx31DRZyAQJPvPhSAgvnyu3RWGpr8gBfL07QL1nwkNnzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:T0KEZTTVkNSPky-Zz3n4ta7cXUvJ5h1UuIQSKiXxB-YvFVtChhKOXA>
 <xmx:T0KEZXxDa4HVPoItj60j5W1VczVsvXIA7nyliG8ap_rYxxWpw3rslg>
 <xmx:T0KEZR7Ag7iqONV5eBFA8BG1dMRV7XxiIC52lLVgckLoHLN9w44UlQ>
 <xmx:T0KEZQrT8ZJWknlsc37BN1-Zfevu6FWyJHNou4mvmKYrE5UH_w5w_w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:49:02 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/8] firewire: core: detect model name for legacy layout of
 configuration ROM
Date: Thu, 21 Dec 2023 22:48:48 +0900
Message-Id: <20231221134849.603857-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGJQI-0002oO-PX
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
index d0ce583b93c4..029ba0ff7083 100644
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
+	int i, ret = -ENOENT;
 
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
