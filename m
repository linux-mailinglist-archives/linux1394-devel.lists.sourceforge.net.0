Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10A48197A1
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2U-00009j-3l;
	Wed, 20 Dec 2023 04:18:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2R-00009Y-NL
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+JyhqIbPXo2UEHWmNxjsb67UTphTfDWfW8T3FHbJGc8=; b=JP7HwdG11spgDBpR9V8RgYFThE
 RtjmGLD7nm59H5kNdguXMdAFegSm4LhlUe0hX8KrTda1ASENqIQePdnYrKzSWntfMXEIo8sxQr66b
 T2OM5MyrlXOrYaNMH7Sq2n3ZPx7K3St7XpnllJiWOG+ASGIK+JU1TzapHP+5oYpcUjuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+JyhqIbPXo2UEHWmNxjsb67UTphTfDWfW8T3FHbJGc8=; b=KjhrRoT7lKtZjBQLJl/pCoSIFL
 71xMNCycc8POKa2sfWe4qWXBb0ULYwXmqDq7qssF5oUU9Uhy8PM03bmSnSb1oaMsumVxMdYqBgLNK
 zu72cR2bTidWznK/fCznmfJoE3oZPhyiSsfojRApMi+4QY3+6QPtkYWapnsK6cQweRIw=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2Q-0008Uf-S7 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:31 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id ADE493200A30;
 Tue, 19 Dec 2023 23:18:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 19 Dec 2023 23:18:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045903; x=
 1703132303; bh=+JyhqIbPXo2UEHWmNxjsb67UTphTfDWfW8T3FHbJGc8=; b=D
 fhZvYrXgZwNcBoIhcUbxBK/PFjEhqHX95MyKh8RsjUdqaru0PKOXy5byllI9axPx
 cJ5Yh4ULSX+eo8VizAPtU4FLv+bGfk46MIl16tb0n9Az+SIsPxzS4076fYr2Xn6W
 HkPCNMM9l+LkhxobvLLfCXNBB+FoSIyNCJK0KjlyavObm/p5/nhPi3lNGCbyceE8
 tG1Blffdk6CubLZJlzZ+GnzgHasY2m9WjZ8QSpgbcq9wFE9Gqjrk6555PFaIfwlR
 85Q8PaPzW/4LT8cypb4hcoDYjgFfhq8kSpLuNVTeASPlzBKz2mgZx9TrTq6o+9cR
 ynaOyjLqe/TUc0RZ/1Okw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045903; x=
 1703132303; bh=+JyhqIbPXo2UEHWmNxjsb67UTphTfDWfW8T3FHbJGc8=; b=V
 YZMzaF/tFFZ5plIUh1Nu0Hb7CpKLJcI5ZwyFNLdgFwCcOujgTI5lwv1DM/g54Ru8
 u2tGG/iHp6ee2giGux95Bkg5yYNAtX1dP43ifsBeay8+KBrTTKKLlh5vgbhYNrLQ
 jRHdL3SuPu8NCZrIPTuytQe5nyRolF6MV0i5EZ7JX+lpD+TCoBIhl928/XqGmIWr
 kjqeIZrpB+KlyVAUgS9galWhgYIUnfY7d5VKiIM+cy9QNvem8fwoaO5nm1vB1ucW
 Zyxe3akWhPll91MknefFM4Ai2YoV6mghT1ETFPGOpaEB1+IZwp4/cQYC63AiOkJx
 f48vsDFRSY/qY0DtUKsrw==
X-ME-Sender: <xms:D2uCZT7I3J-Cjl9Nl83JhjxypJlpyjYBlFEM2WwgdKSasJqe4PoDWw>
 <xme:D2uCZY4SBxLp2BvpDpSxzz41m9FiGNxjOHtucNGVqSInvq06GfsyAu1bqvBqeJ6er
 6A7HWkkcaIO12bwsHI>
X-ME-Received: <xmr:D2uCZafS9j1Bt_RJrrIOT4K0sDD_yk_Fow34n2kaCmm4z7WBtEeLgEd_BwwhvaTQcAMmYc0fIaOzXmcalbQMZhD-KQ11NKkpghpQL6FqifIUJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvefhff
 dugeetkeektdegheejheegteegffeihfevvefggfeuueekvdeffeehfeenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvgdrughirhgvtghtohhrhienucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:D2uCZUInMWxKTxN3tDM7Iq190nCmTrrmgPbtlA_XBDuUkpVVUA2M7A>
 <xmx:D2uCZXLHTuNUibQdimbmI1dnkU9nId2IbwIKrfLKQ2nZKGT1uqHdZw>
 <xmx:D2uCZdzzucnbDIc5HgxcA1O8l_ql4d6r8ialonF5k7Oyv4a8wiadEQ>
 <xmx:D2uCZdgYmT_GGrQoVeq7HTxNnQvCsPfiw_meZMpz_uggHTy_oMcdEg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:21 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] firewire: test: add test of device attributes for simple
 AV/C device
Date: Wed, 20 Dec 2023 13:18:02 +0900
Message-Id: <20231220041806.39816-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
References: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  At present,
 core function can handle node which has configuration
 ROM similar to standard AV/C device somehow. The standard layout of
 configuration
 ROM is described in the following document. - Configuration ROM for AV/C
 Devices 1.0 (Dec. 12, 2000, 1394 Trading Association) 
 Content analysis details:   (-0.9 points, 6.0 required)
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
X-Headers-End: 1rFo2Q-0008Uf-S7
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

At present, core function can handle node which has configuration ROM
similar to standard AV/C device somehow. The standard layout of
configuration ROM is described in the following document.

- Configuration ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading
  Association)

This commit adds a KUnit test for the above case.

The following output is the parse result for the hard-coded data, by
config-rom-pretty-printer in linux-firewire-utils
(https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/).

$ config-rom-pretty-printer < /tmp/rom.img
               ROM header and bus information block
               -----------------------------------------------------------------
1024  0404eabf  bus_info_length 4, crc_length 4, crc 60095
1028  31333934  bus_name "1394"
1032  e0646102  irmc 1, cmc 1, isc 1, bmc 0, cyc_clk_acc 100, max_rec 6 (128)
1036  ffffffff  company_id ffffff     |
1040  ffffffff  device_id 1099511627775  | EUI-64 18446744073709551615

               root directory
               -----------------------------------------------------------------
1044  00063287  directory_length 6, crc 12935
1048  03ffffff  vendor
1052  8100000a  --> descriptor leaf at 1092
1056  17ffffff  model
1060  8100000e  --> descriptor leaf at 1116
1064  0c0083c0  node capabilities: per IEEE 1394
1068  d1000001  --> unit directory at 1072

               unit directory at 1072
               -----------------------------------------------------------------
1072  0004442d  directory_length 4, crc 17453
1076  1200a02d  specifier id
1080  13010001  version
1084  17ffffff  model
1088  81000007  --> descriptor leaf at 1116

               descriptor leaf at 1092
               -----------------------------------------------------------------
1092  0005c915  leaf_length 5, crc 51477
1096  00000000  textual descriptor
1100  00000000  minimal ASCII
1104  56656e64  "Vend"
1108  6f72204e  "or N"
1112  616d6500  "ame"

               descriptor leaf at 1116
               -----------------------------------------------------------------
1116  00057f16  leaf_length 5, crc 32534
1120  00000000  textual descriptor
1124  00000000  minimal ASCII
1128  4d6f6465  "Mode"
1132  6c204e61  "l Na"
1136  6d650000  "me"

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/device-attribute-test.c | 119 +++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
index 87cfdf97c898..e2c5587d0757 100644
--- a/drivers/firewire/device-attribute-test.c
+++ b/drivers/firewire/device-attribute-test.c
@@ -8,7 +8,126 @@
 
 #include <kunit/test.h>
 
+// Configuration ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading Association)
+// Annex C:Configuration ROM example(informative)
+// C.1 Simple AV/C device
+//
+// Copied from the documentation.
+static const u32 simple_avc_config_rom[] = {
+	0x0404eabf,
+	0x31333934,
+	0xe0646102,
+	0xffffffff,
+	0xffffffff,
+	0x00063287, // root directory.
+	0x03ffffff,
+	0x8100000a,
+	0x17ffffff,
+	0x8100000e,
+	0x0c0083c0,
+	0xd1000001,
+	0x0004442d, // unit 0 directory.
+	0x1200a02d,
+	0x13010001,
+	0x17ffffff,
+	0x81000007,
+	0x0005c915, // leaf for textual descriptor.
+	0x00000000,
+	0x00000000,
+	0x56656e64,
+	0x6f72204e,
+	0x616d6500,
+	0x00057f16, // leaf for textual descriptor.
+	0x00000000,
+	0x00000000,
+	0x4d6f6465,
+	0x6c204e61,
+	0x6d650000,
+};
+
+static void device_attr_simple_avc(struct kunit *test)
+{
+	static const struct fw_device node = {
+		.device = {
+			.type = &fw_device_type,
+		},
+		.config_rom = simple_avc_config_rom,
+		.config_rom_length = sizeof(simple_avc_config_rom),
+	};
+	static const struct fw_unit unit0 = {
+		.device = {
+			.type = &fw_unit_type,
+			.parent = (struct device *)&node.device,
+		},
+		.directory = &simple_avc_config_rom[12],
+	};
+	struct device *node_dev = (struct device *)&node.device;
+	struct device *unit0_dev = (struct device *)&unit0.device;
+	static const int unit0_expected_ids[] = {0x00ffffff, 0x00ffffff, 0x0000a02d, 0x00010001};
+	char *buf = kunit_kzalloc(test, PAGE_SIZE, GFP_KERNEL);
+	int ids[4] = {0, 0, 0, 0};
+
+	// Ensure associations for node and unit devices.
+
+	KUNIT_ASSERT_TRUE(test, is_fw_device(node_dev));
+	KUNIT_ASSERT_FALSE(test, is_fw_unit(node_dev));
+	KUNIT_ASSERT_PTR_EQ(test, fw_device(node_dev), &node);
+
+	KUNIT_ASSERT_FALSE(test, is_fw_device(unit0_dev));
+	KUNIT_ASSERT_TRUE(test, is_fw_unit(unit0_dev));
+	KUNIT_ASSERT_PTR_EQ(test, fw_parent_device((&unit0)), &node);
+	KUNIT_ASSERT_PTR_EQ(test, fw_unit(unit0_dev), &unit0);
+
+	// For entries in root directory.
+
+	// Vendor immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[0].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xffffff\n");
+
+	// Model immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xffffff\n");
+
+	// Descriptor leaf entry for vendor is found.
+	KUNIT_EXPECT_GT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "Vendor Name\n");
+
+	// Descriptor leaf entry for model is found.
+	KUNIT_EXPECT_GT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "Model Name\n");
+
+	// For entries in unit 0 directory.
+
+	// Vendor immediate entry is not found.
+	KUNIT_EXPECT_LT(test, show_immediate(unit0_dev, &config_rom_attributes[0].attr, buf), 0);
+
+	// Model immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(unit0_dev, &config_rom_attributes[4].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xffffff\n");
+
+	// Descriptor leaf entry for vendor is not found.
+	KUNIT_EXPECT_LT(test, show_text_leaf(unit0_dev, &config_rom_attributes[5].attr, buf), 0);
+
+	// Descriptor leaf entry for model is found.
+	KUNIT_EXPECT_GT(test, show_text_leaf(unit0_dev, &config_rom_attributes[6].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "Model Name\n");
+
+	// Specifier_ID immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(unit0_dev, &config_rom_attributes[2].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0x00a02d\n");
+
+	// Version immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(unit0_dev, &config_rom_attributes[3].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0x010001\n");
+
+	kunit_kfree(test, buf);
+
+	get_modalias_ids(&unit0, ids);
+	KUNIT_EXPECT_MEMEQ(test, ids, unit0_expected_ids, sizeof(ids));
+}
+
 static struct kunit_case device_attr_test_cases[] = {
+	KUNIT_CASE(device_attr_simple_avc),
 	{}
 };
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
