Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DD181B89E
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQK-000776-7v;
	Thu, 21 Dec 2023 13:49:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQI-00076v-8K
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=DTu5lHPzfPaqbCH7sQD2Ycx345
 YEY76iBGr54xTOx0SWy9WEof6+ztkea0FYLWuije3cnnO0F17Wl7FNrUs4eAd01RgEivrLfcmoJZk
 JMPAt0GGBuXatd7v2IDVo0VFDC5V9Ch6heOSoOfcsZKqSjFiKApenWxV98HrB+OyDixQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=RcNSHzB5IxRtbcAfxXSicHv3eI
 hiWROkQezsdJL1HjNayj69sG35J18sK2FmKUaDpAClQfcWna3UpqU/tVJWExlB0GmMbgXf+8L4C2x
 2xWwo8nu3aYdQrgozgJ/0ZOTJIAW6BrQMzjOhCprTAM/WWkqKwGjKgmXpR0SxH+7NZuA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQG-0002oB-HS for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:13 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id DFA2C5C029C;
 Thu, 21 Dec 2023 08:49:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 21 Dec 2023 08:49:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166541; x=
 1703252941; bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=Q
 pEWwwjUClDCY/mWlyTEgqpG6Wf5JltVWpF8igK0t7Z4LKpcg3imHYwTToEWhd3M7
 TsITVqpcN7OpphkT6BPvGZbpeMkCOOUXqJfmoI+uwGdyS4FYCVnfS86WKCONWhTM
 YSD/Pj4O9oRndtoI38IChTb9CagMRsC6H/W+Pa3OZeUvKL3gfPy8J5emy7Fgw23S
 I9OFGUVxCThayWyLPf3KxiHqM8YrQIBmpbHsyZZzkJ+35nGPGF2a93BDt1R2zUOb
 L9lmeHcnARon2pS0KGM/mTYK5QxoYsEYCflsgpFRDA+E3QvznGr8tZ7TDNMBJcEi
 XQMNfJJJmpKzSfWAzbMnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166541; x=
 1703252941; bh=c3+SGtxjfpRsQL1FjnGhoxDOzKY9TE2Qa/7LRiK0mv4=; b=K
 u4pvmAkydzmWA/OxvIpM6OcpgNLH7BRhnHT6568EL13zTbQmLc6/gHvEROrINTvf
 /wyV9JYIq2OPPy/xkaGrBUbIypf1gHYem4tTTYPA9pnU+05LUKDpDZkfCTgl7grL
 WQuJRBamWtrJlF1YqNILHo2yIY7ZFGR9Toy3683+Py53EIUIFZAZBz5w89N/JIQc
 w03YvFGUpicqF2rOThgrZYSjhkqSaMjQX3hie+SASE1A/4EIg7Q7HYZSEChL8O6o
 /J03huKfvbHbiWl1//4ILmzwjifcqXMRLSPS+zsp5n2qFCLDaVWuTBixhx6Ccg2A
 a1RrXpT0/PqdfsQhwB8bQ==
X-ME-Sender: <xms:TUKEZUvwam5YXN4m23t39A0gQUC09gxLHeQR44_199JHqRP3mX36ig>
 <xme:TUKEZRfOhe4CVDlM6wu19hSekujgDIJXceLFOuclyO7Od9-ySsu1vx81LwBe0UGRV
 0whTyOclS5_GciaZLk>
X-ME-Received: <xmr:TUKEZfzBtayubOyQwP238dFuG2lYsnlmgfE44WjcfOevdhU13-xfAEcq9VWZbhtLZq-3M2kQIWrSqiMkSbiYYLzIsqOosSN8PwUT19mrynUnmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:TUKEZXNs33atoJ2M_m4sJRGEr18tTluEB6ic9X5-vkjRFFP2kmP6Ng>
 <xmx:TUKEZU9D2Eg95V7uUAb5FK6pI6v2mjZ1lz3mJdNCBNCGHhEdjl5Bjw>
 <xmx:TUKEZfU-SGBaz_acAaw0o-9tyhfFtGBSPC-FDycHbemF1cPUz-MXqw>
 <xmx:TUKEZSlzHkzl9xh1SC1Vo7xCeJ4-WUR386QJMLN9pMSpoCt9k_dwvw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:49:00 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] firewire: core: detect numeric model identifier for
 legacy layout of configuration ROM
Date: Thu, 21 Dec 2023 22:48:47 +0900
Message-Id: <20231221134849.603857-7-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1rGJQG-0002oB-HS
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
