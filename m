Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D4D81B8A0
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQH-0006AC-So;
	Thu, 21 Dec 2023 13:49:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQF-00069Y-OT
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=kb2wZGJBaiMD4mPj0hfzUxZDPb
 gMkIysol5l251IBM7u3OfAr0EybJua1kaAmfF9Y7O1ffBx4EX7KR+rjmVMIxgpivH4chbRjYmdJOw
 WMUIBYTnjNup/Y+hKXUTS3HkSk41foB9kNBShKM+jB0yotZ0aQoMurWvhzw0K1Bx1Ev4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=L9kduCVMZIKG9mGnXO4JagZc/M
 otDz4NLOVNCIpxGE0a7Lxw20gDR8r1zUJ30en9o2WJJd81HGEWW9EP1g+Y/OBdUk1Qb45KxInUr+k
 QLewO7i3Xza6SPciW9elb1+XU03/ME2UTnYsvzlq81da7IMLaYA1EhA6X87VTWAWd23k=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQF-0002o8-Dr for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 5160C5C0297;
 Thu, 21 Dec 2023 08:49:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 21 Dec 2023 08:49:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166540; x=
 1703252940; bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=j
 teC3OlcSZp7DWYnmvMUCzJwViMIdUt3B3DUSCxyYV67REqbtnOCO59oXKeRY9eOv
 1Rd13daI+weZgSYaGRSJyzAyNzkhek6IO7aeNZtfqZEDUq/yTqJRUSsLv3fsEFzR
 bkefIBGHZGc2/ucszO2VR79N1zduZqbCIwCYFquIjlu/kFi4nOWNHcG9v+dag3Nn
 +i+2AuugkFpGE663kN7+wDcYhMYF22uisgPI04IsgRcPkOtK1JDuaXyBN3pQ/o+S
 Zl3gJpSkH/OuUKq+CVmddr7ecd+u7tG9YNcwpLB2Mft38F3lvAVh7p/hFRsHgWtB
 UrImDIl2t0rSj/LCj1t3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166540; x=
 1703252940; bh=3EzlJFfSkML/ta9lyeEKf9o6eumBFTgrZNdRmkxbQEo=; b=Q
 BJ6jDRJjAe1xJnUsI6aHfSY728ddOMU1uynIMQ3B7kE91HH1bHOc1P4ub9ayNIY7
 xa10ThrpFJz3o1hSPJDpM3avU4bymJD4NFQyvohIae1jEbOOS+NGzb3kt6HJ2/ud
 /3rnFlDs+xS70YVJ8ONu6Ce/JPKtQ3AsqCAr4oEhAbXVqYAXbkw6m5UdTmdepBAn
 Vvd6+X5GFEI3qF1MqeDo9WdT7v/cJF9zzQZjtK7VyIZFB0X+R8dom8PJl+KHdEV1
 7CIHs8B1RgwG+bov2Y1lS7JLDj9YEJll4puFam9mglmn8rxIEGj7mYjOzL7c4xHC
 pCluntaoKTDcr6ZC1wxYw==
X-ME-Sender: <xms:TEKEZXsQuIEDIPjygnZ_aNfMddqNr85DohAE778P7O2adsNWODMEkA>
 <xme:TEKEZYeih7364V1ylOUafdTn-B8TAjmcisjTasU5-8Qbe8pvWjQn7TVXdFqa_zlY8
 CkXWUyLyzHvyhmue0g>
X-ME-Received: <xmr:TEKEZazVmWy_9yJ6GkfJo6jm4kIMJ56KzkQalb46dDBr2er0TgpO7nVn4zIfAurWo2JnobCFH6IqVtCWD7uPDpHkZeZM2OdaCnYDN_fpNG_dWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvefhff
 dugeetkeektdegheejheegteegffeihfevvefggfeuueekvdeffeehfeenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgpdguvghvihgtvgdrughirhgvtghtohhrhienucevlhhush
 htvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:TEKEZWPu69rZRZRKiagqHakYqk4-0YfxUdTdIDI1yrN4fySVCjGc5w>
 <xmx:TEKEZX82KQgtXiVJJBjJuxOPgy2w3cBbHigAsW1P2kaTQB7I9cDcVA>
 <xmx:TEKEZWXqfGClBCBYR34xC1cvecMT6p8HVdnj5UxrLXWgwpW_bch63g>
 <xmx:TEKEZRlDH84kSd0mYuCMUt5rluwIBt4O5guKuptkaM-fYp3fYN2-aw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:48:58 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] firewire: test: add test of device attributes for
 legacy AV/C device
Date: Thu, 21 Dec 2023 22:48:46 +0900
Message-Id: <20231221134849.603857-6-o-takashi@sakamocchi.jp>
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
 Content preview: Some legacy devices have configuration ROM against standard
 AV/C device. They have vendor directory to store model identifier. It is
 described in annex of the following document. - Configuration ROM for AV/C
 Devices 1.0 (Dec. 12, 2000, 1394 Trading Association) 
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
X-Headers-End: 1rGJQF-0002o8-Dr
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
