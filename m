Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF9E815E7A
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPs-0007zG-54;
	Sun, 17 Dec 2023 10:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPq-0007yy-KH
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T7D+9jTfh4ZrMx7I02CJXosQOWU8TluFcGjtBl8VhDs=; b=WQ7DjSybf697Ed30xa1bC19N8P
 1L3iVU6muxwLU4y1QFAObAE9IzUS+6iSu9SKGX3tWi9twjh7rHJsV/om5C1AuWs3M1mB7On7D9J9u
 JhnW1Z/rEBNYn9AY2tGHZXSbYvasd8da+IbW1cxcBNDxW9uyZ6XqynTZaNEy0miWilMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T7D+9jTfh4ZrMx7I02CJXosQOWU8TluFcGjtBl8VhDs=; b=k7dtr4UCvJsmssaQKg1bAop2Vr
 sTCtrbkTxQAsQTjlPniD0Vr8jkxLBUdt60BP3cGDha5WCisBAUNWpjie9pQO2a+/13lu4ckm6OSpo
 6esU5gHcAMc6NSOOkgXbXuuCVdYr3ylJ1KkVQ+QKEg/xaiVyStkbBc+A149RhcRR0nIM=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPq-000481-73 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:35 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 9ED9D5C00C6;
 Sun, 17 Dec 2023 05:30:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 17 Dec 2023 05:30:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809023; x=
 1702895423; bh=T7D+9jTfh4ZrMx7I02CJXosQOWU8TluFcGjtBl8VhDs=; b=K
 vG2nBiKk2O9qeipWIanfaFHA65T25As644TAUB71MEr76M3ki+M9mqVfYo40vL+9
 DU/al48z3VKklj/mLtcn6D9Fb7gqRuaFpV/aQejkR4U8Yql0NIZhLhly2UOw9Z10
 V54QAcbPCJtEgvp07jvnS+Jkk3ceOzf9pLAUTWWjrMM4YMUFgYVzqkGnr3q4jM7M
 faK0/SwJsnwz5wz6eunimhRkVFYRfLy4dKzXK3pVQAU8ELq5asJzi7oo7obGJVP/
 KirHXtG5uDD1Pgfk3dVF985vrJCgz792IJu02Xvj6AHMRt8ZndcF32xZWbmwTDb2
 2Dap6MrM1i9Y9qrEvvGBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809023; x=
 1702895423; bh=T7D+9jTfh4ZrMx7I02CJXosQOWU8TluFcGjtBl8VhDs=; b=c
 85hszWKzviDPrRcb3vbezT6Uxt5adx534SWWdRDtBqISCPloy2A3l8GZQbF9mA0m
 EFXLuv+lJhX4qEZ+2Rw4/jnsC59pDGFocbt7CNvKtsg33fd3Q15CBShiaKT9aSeq
 bNSSM4XS7tE4KS//Haca4hAJZ0KLHul4/NiOL9rpwHYoMwUSwRWm1SzSof1dO0JF
 rTthzPjaHNkiOVx01815koz5pfmH+zME1X+yumSBE9ZZiPy47soJ0iwAxP1o+WzM
 Esw3UXGQzwPbt78BDjcoN8lzvjmpzzY/3077Jw2XsDyNvadgMJQ/hg3WV9RG7sus
 LygReovFILCiGRscwGjeA==
X-ME-Sender: <xms:v81-ZcKD_F0duTTvL-xwmBtHUJfeuMdwNSMUTmuG3hM2WfhG-Kup9Q>
 <xme:v81-ZcKBst1jt8Bh2FRIuk0y_mM0-GoE_StLo2tJVaocl4TS1Hn7oPbgzhTRGa_rb
 bmKN0_ExF8N-u7eAI8>
X-ME-Received: <xmr:v81-ZcvjzZdU7BnFFBTiQPiqHQnA78WKqGr_n4ElmRXuCuO4Kmc3TJHCiDG3GeJWeIGWD3L7-SI9rkm0oSmPfY9WaiewXiICwBHfCCzmXlT8LCo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvefhff
 dugeetkeektdegheejheegteegffeihfevvefggfeuueekvdeffeehfeenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvgdrughirhgvtghtohhrhienucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:v81-ZZbLWeuUEIqn6DyxHFs20hUQaspWYRPhBqNpCzm3uzsY-QVbeA>
 <xmx:v81-ZTY3sODinZNmiiatwmdofsPlSvajXqw2oocrTAre-4Nl-ingFg>
 <xmx:v81-ZVCiUDfztoK_Cvq_ABq1vtdvLDI0xwj5O53fAsHCd-9mTzKnMg>
 <xmx:v81-ZaxzCs5ns6sGGS3cy5ViaNmud5DBlp3f9S9MRnNeoy2F5JEWgA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:22 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/8] firewire: test: add test of CSR API for simple AV/C
 device
Date: Sun, 17 Dec 2023 19:30:07 +0900
Message-Id: <20231217103012.41273-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  At present,
 core function can handle node which has configuration
 ROM similar to AV/C device somehow. The standard layout of configuration
 ROM for AV/C device is described in the following document. - Configuration
 ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading Association) 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rEoPq-000481-73
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
similar to AV/C device somehow. The standard layout of configuration ROM
for AV/C device is described in the following document.

- Configuration ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading
  Association)

This commit adds a KUnit test for this case. The following output is the
parse result by config-rom-pretty-printer in linux-firewire-utils
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
 drivers/firewire/csr-api-test.c | 119 ++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/drivers/firewire/csr-api-test.c b/drivers/firewire/csr-api-test.c
index a76d767373e9..d91852825efc 100644
--- a/drivers/firewire/csr-api-test.c
+++ b/drivers/firewire/csr-api-test.c
@@ -8,7 +8,126 @@
 
 #include <kunit/test.h>
 
+// Configuration ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading Association)
+// Annex C:Configuration ROM example(informative)
+// C.1 Simple AV/C device
+//
+// Copied from the documentation.
+static const u32 simple_avc_device[] = {
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
+	0x0005c915, // leaf.
+	0x00000000,
+	0x00000000,
+	0x56656e64,
+	0x6f72204e,
+	0x616d6500,
+	0x00057f16, // leaf.
+	0x00000000,
+	0x00000000,
+	0x4d6f6465,
+	0x6c204e61,
+	0x6d650000,
+};
+
+static void csr_api_simple_avc_device(struct kunit *test)
+{
+	static const struct fw_device node = {
+		.device = {
+			.type = &fw_device_type,
+		},
+		.config_rom = simple_avc_device,
+		.config_rom_length = sizeof(simple_avc_device),
+	};
+	static const struct fw_unit unit0 = {
+		.device = {
+			.type = &fw_unit_type,
+			.parent = (struct device *)&node.device,
+		},
+		.directory = &simple_avc_device[12],
+	};
+	struct device *node_dev = (struct device *)&node.device;
+	struct device *unit0_dev = (struct device *)&unit0.device;
+	static const int unit_expected_ids[] = {0x00ffffff, 0x00ffffff, 0x0000a02d, 0x00010001};
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
+	// Descriptor leaf entry for model is not found.
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
+	KUNIT_EXPECT_MEMEQ(test, ids, unit_expected_ids, sizeof(ids));
+}
+
 static struct kunit_case csr_api_test_cases[] = {
+	KUNIT_CASE(csr_api_simple_avc_device),
 	{}
 };
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
