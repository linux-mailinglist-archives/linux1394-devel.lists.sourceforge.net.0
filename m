Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 107DA8197A5
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2Z-0000AO-K4;
	Wed, 20 Dec 2023 04:18:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2Y-0000AE-GN
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=Q1RC+MH+eeO98q+VwleOTAEAQV
 +5AMKQatcj1vZGEAPx7wEH5/0AduJnptmDU0KtPlt7Yz6Bow3LkyWTSLp4OULpTpACSlUegSw8Oqr
 cyym5Jcv1Ft36Lpe/TSc9NDnXqs7T8TdZHXqeTkTtHDWeFBd1oxfhBrxbm6Bmdsm6dDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=kXq4IjYFNTKH0p0zYXvT39Oj/h
 2/YW9+asFnWBTehUv1V2bwP4cUzdKHwteHYdAZXQ/qX2fOJZW49pO15SHPeKMy6h64/DVLRG9ZihN
 +yP6HlG4TMbs19NkywoX59nwvKbRmztdHOMUk056QUojI5DNoZ0Ah00ObjbJd5uUTLRo=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2X-0008VP-JM for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:38 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 73E503200A42;
 Tue, 19 Dec 2023 23:18:26 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 19 Dec 2023 23:18:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045905; x=
 1703132305; bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=Y
 ZGUBHA+BS4rceFHcaTt2zTVU1hIf/h2EUr6tdWZJrjxx/4RwiorOEWklm50yx5E+
 IkfeiajrfICK3MSkK5zwRzoun8OMRLY+ClQuPGgaQO3o+t6Pm470+/MY+m6pr/FK
 AoHI+Wzf3MqQrfFL7DHx1fkKWHt9dFTRXnjmTCAUtU7y2jTK/G5oTX0UdPBqwjyS
 sYM4hlnuqFgQq8O5DMDGp5f214gAzBhGpUgANrXQRdBc5vp9qdbmwoBMY0GBB87F
 nmgh+EibfpUZF/goCzZNdqwWsO2SClp6AZkQfDXZO2ZufhXTt6cuKdrMbdWa7t67
 CXyyEJOeZzDQZdsxsFegg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045905; x=
 1703132305; bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=2
 gaFEYINbMBcPoiMMHdpkAgNz1Y2C4IjALTUUhE30HKao+gAV/VX3ewe1frVi20t7
 UpLCjM6/Ms6HkdOffbW7jFFmsYP4Au+oQUVOwgmAKUOoVyw1goE38JYOle3jM3IV
 OCGdKutYvMNTZiftVOE/efkBjcuwl8SI77RoBo+Nrr1cRj+Bghpx2kcoBpzBJUeL
 /42qmSPZ7lNCIbP4QMyvvlQYp2glI0iO3HTbSrp7MiY+LnYNODJT2cLzNWNhcsFW
 +nra8i6KgrmGl8R8RRwp8nER8Z9yi2PIiwfo0KpTeJftVGjHKOn4vC37dswwXR0J
 OD4x9mviXDdlVe3MydS2w==
X-ME-Sender: <xms:EWuCZQBNudKjWUBiwtKGMwViaSkzz3xJKY0cIzS_V7K60AT68ezzcw>
 <xme:EWuCZSjlCXisNfwAgVk4J3GdQ0Nb8Sz9hD4DSJldZAUI6rMNEJ8xPXOLtQ17bA-MZ
 JdG6kz-vGEz48IxuXw>
X-ME-Received: <xmr:EWuCZTnaWOhVzl2-qRr0pCy8ZfFRDNdDKR4gq0Ekn5XY0bLaqRHVrqSVwJVEOD48gXf506trMIk0Z3W6mEhXTWW5ogFhbPQXgWcL7DPN-88KdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvefhff
 dugeetkeektdegheejheegteegffeihfevvefggfeuueekvdeffeehfeenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvgdrughirhgvtghtohhrhienucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:EWuCZWyMU6Ejs0qRXpAnIND4UfguzbjO5I4I6nfXLi-KF7-AKM9XeA>
 <xmx:EWuCZVSWjxhEeBYGumCmBWcYDyfki00vqXcA-5cOgCB1rQCpkZBcbA>
 <xmx:EWuCZRYWiWTXK1wQua_cQ-5fSiO5rmqzwKpUOnAkvlPP3tRV02cHgg>
 <xmx:EWuCZUI57yo3WdyiU0RMO58mPq-dfC5vMSe6K4KpryR-9fdDIrItxw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:24 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] firewire: test: add test of device attributes for legacy
 AV/C device
Date: Wed, 20 Dec 2023 13:18:03 +0900
Message-Id: <20231220041806.39816-6-o-takashi@sakamocchi.jp>
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
 Content preview: Some legacy devices have configuration ROM against standard
 AV/C device. They have vendor directory to store model identifier. It is
 described in annex of the following document. - Configuration ROM for AV/C
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
X-Headers-End: 1rFo2X-0008VP-JM
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

Some legacy devices have configuration ROM against standard AV/C device.
They have vendor directory to store model identifier. It is described in
annex of the following document.

- Configuration ROM for AV/C Devices 1.0 (Dec. 12, 2000, 1394 Trading
  Association)

In the case, current implementation of core function does not detect the
model identifier, thus device attributes and modalias of unit have lack of
it. Another KUnit test is required for the case, and this commit is for
the purpose.

The following output is the parse result for the hard-coded data, by
config-rom-pretty-printer in linux-firewire-utils
(https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/).
The data is written by my hand.

$ config-rom-pretty-printer < /tmp/rom.img
               ROM header and bus information block
               -----------------------------------------------------------------
1024  04199fe7  bus_info_length 4, crc_length 25, crc 40935
1028  31333934  bus_name "1394"
1032  e0644000  irmc 1, cmc 1, isc 1, bmc 0, cyc_clk_acc 100, max_rec 4 (32)
1036  00112233  company_id 001122     |
1040  44556677  device_id 220189779575  | EUI-64 4822678189205111

               root directory
               -----------------------------------------------------------------
1044  0005dace  directory_length 5, crc 56014
1048  03012345  vendor
1052  0c0083c0  node capabilities: per IEEE 1394
1056  8d000009  --> eui-64 leaf at 1092
1060  d1000002  --> unit directory at 1068
1064  c3000004  --> vendor directory at 1080

               unit directory at 1068
               -----------------------------------------------------------------
1068  0002e107  directory_length 2, crc 57607
1072  12abcdef  specifier id
1076  13543210  version

               vendor directory at 1080
               -----------------------------------------------------------------
1080  0002cb73  directory_length 2, crc 52083
1084  17fedcba  model
1088  81000004  --> descriptor leaf at 1104

               eui-64 leaf at 1092
               -----------------------------------------------------------------
1092  00026dc1  leaf_length 2, crc 28097
1096  00112233  company_id 001122     |
1100  44556677  device_id 220189779575  | EUI-64 4822678189205111

               descriptor leaf at 1104
               -----------------------------------------------------------------
1104  00050e84  leaf_length 5, crc 3716
1108  00000000  textual descriptor
1112  00000000  minimal ASCII
1116  41424344  "ABCD"
1120  45464748  "EFGH"
1124  494a0000  "IJ"

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/device-attribute-test.c | 111 +++++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
index e2c5587d0757..495af65c33b5 100644
--- a/drivers/firewire/device-attribute-test.c
+++ b/drivers/firewire/device-attribute-test.c
@@ -45,6 +45,40 @@ static const u32 simple_avc_config_rom[] = {
 	0x6d650000,
 };
 
+// Ibid.
+// Annex A:Consideration for configuration ROM reader design (informative)
+// A.1 Vendor directory
+//
+// Written by hand.
+static const u32 legacy_avc_config_rom[] = {
+	0x04199fe7,
+	0x31333934,
+	0xe0644000,
+	0x00112233,
+	0x44556677,
+	0x0005dace, // root directory.
+	0x03012345,
+	0x0c0083c0,
+	0x8d000009,
+	0xd1000002,
+	0xc3000004,
+	0x0002e107, // unit 0 directory.
+	0x12abcdef,
+	0x13543210,
+	0x0002cb73, // vendor directory.
+	0x17fedcba,
+	0x81000004,
+	0x00026dc1, // leaf for EUI-64.
+	0x00112233,
+	0x44556677,
+	0x00050e84, // leaf for textual descriptor.
+	0x00000000,
+	0x00000000,
+	0x41424344,
+	0x45464748,
+	0x494a0000,
+};
+
 static void device_attr_simple_avc(struct kunit *test)
 {
 	static const struct fw_device node = {
@@ -126,8 +160,85 @@ static void device_attr_simple_avc(struct kunit *test)
 	KUNIT_EXPECT_MEMEQ(test, ids, unit0_expected_ids, sizeof(ids));
 }
 
+static void device_attr_legacy_avc(struct kunit *test)
+{
+	static const struct fw_device node = {
+		.device = {
+			.type = &fw_device_type,
+		},
+		.config_rom = legacy_avc_config_rom,
+		.config_rom_length = sizeof(legacy_avc_config_rom),
+	};
+	static const struct fw_unit unit0 = {
+		.device = {
+			.type = &fw_unit_type,
+			.parent = (struct device *)&node.device,
+		},
+		.directory = &legacy_avc_config_rom[11],
+	};
+	struct device *node_dev = (struct device *)&node.device;
+	struct device *unit0_dev = (struct device *)&unit0.device;
+	static const int unit0_expected_ids[] = {0x00012345, 0x00000000, 0x00abcdef, 0x00543210};
+	char *buf = kunit_kzalloc(test, PAGE_SIZE, GFP_KERNEL);
+	int ids[4] = {0, 0, 0, 0};
+
+	// Ensure associations for node and unit devices.
+
+	KUNIT_ASSERT_TRUE(test, is_fw_device(node_dev));
+	KUNIT_ASSERT_FALSE(test, is_fw_unit(node_dev));
+	KUNIT_ASSERT_PTR_EQ(test, fw_device((node_dev)), &node);
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
+	KUNIT_EXPECT_STREQ(test, buf, "0x012345\n");
+
+	// Model immediate entry is not found.
+	KUNIT_EXPECT_LT(test, show_immediate(node_dev, &config_rom_attributes[4].attr, buf), 0);
+
+	// Descriptor leaf entry for vendor is not found.
+	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[5].attr, buf), 0);
+
+	// Descriptor leaf entry for model is not found.
+	KUNIT_EXPECT_LT(test, show_text_leaf(node_dev, &config_rom_attributes[6].attr, buf), 0);
+
+	// For entries in unit 0 directory.
+
+	// Vendor immediate entry is not found.
+	KUNIT_EXPECT_LT(test, show_immediate(unit0_dev, &config_rom_attributes[0].attr, buf), 0);
+
+	// Model immediate entry is not found.
+	KUNIT_EXPECT_LT(test, show_immediate(unit0_dev, &config_rom_attributes[4].attr, buf), 0);
+
+	// Descriptor leaf entry for vendor is not found.
+	KUNIT_EXPECT_LT(test, show_text_leaf(unit0_dev, &config_rom_attributes[5].attr, buf), 0);
+
+	// Descriptor leaf entry for model is not found.
+	KUNIT_EXPECT_LT(test, show_text_leaf(unit0_dev, &config_rom_attributes[6].attr, buf), 0);
+
+	// Specifier_ID immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(unit0_dev, &config_rom_attributes[2].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0xabcdef\n");
+
+	// Version immediate entry is found.
+	KUNIT_EXPECT_GT(test, show_immediate(unit0_dev, &config_rom_attributes[3].attr, buf), 0);
+	KUNIT_EXPECT_STREQ(test, buf, "0x543210\n");
+
+	kunit_kfree(test, buf);
+
+	get_modalias_ids(&unit0, ids);
+	KUNIT_EXPECT_MEMEQ(test, ids, unit0_expected_ids, sizeof(ids));
+}
+
 static struct kunit_case device_attr_test_cases[] = {
 	KUNIT_CASE(device_attr_simple_avc),
+	KUNIT_CASE(device_attr_legacy_avc),
 	{}
 };
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
