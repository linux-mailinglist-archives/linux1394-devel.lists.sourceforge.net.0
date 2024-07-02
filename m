Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5F924B82
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jul 2024 00:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sOlrs-0008Aa-15;
	Tue, 02 Jul 2024 22:20:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sOlrq-0008AO-JV
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NtOsPI/vL3wkycVVvPccbjCj69PvW3xTQTZrO5lK/Gg=; b=KbXCyhnzTEz1q2tlZtLsN0ajuv
 wButH4gwug5/gkH/Qdd0CF+DFVmg2HmcjGItWKg+MabKStps/baELoWXw7XskO9n8pVD9peU/CIhh
 vC0EueYOpcwICChxMjspXPm12rq6oN/1kIiwalZivraEdX+WE79738ZCjiG+por+afu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NtOsPI/vL3wkycVVvPccbjCj69PvW3xTQTZrO5lK/Gg=; b=WGAAufseeIfHcbXRuUF49dGl14
 Kv0EzZ7KpQTEHr5U1xbYq63bNOTYNpHSEVxj0X77UvqFNavdYXLLJTDAX6XmDf2rI22RkqKNbPK9f
 cV8742oqhUjKfceWpLx5m/yY37yIWo+qXjfLc6C51k+PpdVa8nY+ZjpvyHkc+bgdo9vA=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOlrq-0008RP-SZ for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:54 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 7EF221380297;
 Tue,  2 Jul 2024 18:20:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 02 Jul 2024 18:20:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719958843; x=
 1720045243; bh=NtOsPI/vL3wkycVVvPccbjCj69PvW3xTQTZrO5lK/Gg=; b=j
 Aa5HVXDC1BrRBAqox3y0ZJ2XsqGqXFPVVZ66cuHpQXFRjVJffTpaOfcZ5Get8xJ8
 VP3upThf+DFciHW409tuOU1toSaLbBFon8/DVpbX55erGnToYcNyHgXLv7N9CF9R
 zfR/HT3pV3fqbO6I7598S0NdHOvviWmXysiblWyJAERkvXRwiu/9dITVhU0LgjYw
 SC/kZSi/ZqNNyt40xS0HZ/QeCQY/2duGVX0rm1xYP88fPDSDVkwG+yGvZDrPlpV1
 E03ALQcIjhyhRDwh9wzimVauMWtQwDWE3nsK4GGHRNrkuqgYsg0pj1mmhvhOtDWr
 Ml8M+fTCayJqYtesNseRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719958843; x=
 1720045243; bh=NtOsPI/vL3wkycVVvPccbjCj69PvW3xTQTZrO5lK/Gg=; b=P
 zyee007aju4PWEd3f6jXMz2jWty6G2u/MWM6b8EEI+XuWTHKF4J3zLVhVXkCJxCg
 R65D5leqasqyV59xt0WiwEaJnTcRA0RMJ1wy12zeXpFD0vvEHHo0x2g+b2Tpzu1O
 C38RHo55L7zkEsSJE9sOp8a96SktWDKq9NnY8j7C8nr6ML4iSBt5GIeA+4UhMnuO
 Z63wLcWNm2YsELwp7rxvTXiUmjs956nZlcmVpDqM9pSd+QXBrpuZ3gtDLln4s9FD
 7mwF3sYTndc19LBhzLbMyyusBvx5SQ2qfzwSzoa/UgLLY9W0djVkcmamh95oytBP
 fQJMBzGYPZbsiEO6wAYGw==
X-ME-Sender: <xms:O32EZitr-cOgzvbUL6MC2kw0Kukh6o5QS45QRXZndLtyWMTDqCYrfQ>
 <xme:O32EZndfFeXz32hOZsvMdk6MZNOGH9qMuOC_hlmO9mmVL6jOBqAGvR-duSaLCGC2p
 CkX4RYW2O0JjvctnB8>
X-ME-Received: <xmr:O32EZtzn8ujU4e18OIc35YTEhVLTs0rBd2JgNNyHir95jLZXS1LSqx_D05ey7XEWs2nyl1JAhC4ynwOO6bjjYXk4FiS5WGIyofzej0fd8mqnUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepuefgvedtfe
 fhfeefueduudfhkefhgfevjeefieeiffdttefhudduveejkeevffelnecuffhomhgrihhn
 pehtvghsthgrnhihthhhihhnghdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdr
 jhhp
X-ME-Proxy: <xmx:O32EZtPMbzc66mbDDzyNMvjLkKydjuYCGEPkKzcRHoG9nrwQJXxylg>
 <xmx:O32EZi-MZxWA-0Krt9j8pEaOndRVXe_vpNcdLKor0vTCZDthNFRkoA>
 <xmx:O32EZlWGQ6O7x7K5XCnXpiR9FeQls2XL8qQUisc1B1bGtVua-ABbyw>
 <xmx:O32EZrchai1fDUXubNL8t1t2ZMCSALOOOASuJYC8EfbpAfW-9iEenw>
 <xmx:O32EZkJQAENm1n9hNgD2WIAYCicG90Lwm0927mpheh3E3t5nOOk0Zv85>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 18:20:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/5] firewire: ohci: add static inline functions to
 deserialize for Self-ID DMA operation
Date: Wed,  3 Jul 2024 07:20:32 +0900
Message-ID: <20240702222034.1378764-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The SelfI-ID is one type of DMAs defined in 1394 OHCI
 specification.
 It is operated by two registers, one interrupt, and has one format of buffer.
 This commit adds some static inline functions to deserialize the data in
 the buffer and registers. Some KUnit tests are also added to check their
 reliability.
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.149 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sOlrq-0008RP-SZ
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

The SelfI-ID is one type of DMAs defined in 1394 OHCI specification. It is
operated by two registers, one interrupt, and has one format of buffer.

This commit adds some static inline functions to deserialize the data in
the buffer and registers. Some KUnit tests are also added to check their
reliability.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/.kunitconfig       |  1 +
 drivers/firewire/Kconfig            | 16 +++++++++
 drivers/firewire/Makefile           |  1 +
 drivers/firewire/ohci-serdes-test.c | 56 +++++++++++++++++++++++++++++
 drivers/firewire/ohci.h             | 42 ++++++++++++++++++++++
 5 files changed, 116 insertions(+)
 create mode 100644 drivers/firewire/ohci-serdes-test.c

diff --git a/drivers/firewire/.kunitconfig b/drivers/firewire/.kunitconfig
index 74259204fcdd..21b7e9eef63d 100644
--- a/drivers/firewire/.kunitconfig
+++ b/drivers/firewire/.kunitconfig
@@ -5,3 +5,4 @@ CONFIG_FIREWIRE_KUNIT_UAPI_TEST=y
 CONFIG_FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST=y
 CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST=y
 CONFIG_FIREWIRE_KUNIT_SELF_ID_SEQUENCE_HELPER_TEST=y
+CONFIG_FIREWIRE_KUNIT_OHCI_SERDES_TEST=y
diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index 95e72e0b592b..905c82e26ce7 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -92,6 +92,22 @@ config FIREWIRE_OHCI
 	  To compile this driver as a module, say M here:  The module will be
 	  called firewire-ohci.
 
+config FIREWIRE_KUNIT_OHCI_SERDES_TEST
+	tristate "KUnit tests for serialization/deserialization of data in buffers/registers" if !KUNIT_ALL_TESTS
+	depends on FIREWIRE && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds the KUnit tests to check serialization and deserialization
+	  of data in buffers and registers defined in 1394 OHCI specification.
+
+	  KUnit tests run during boot and output the results to the debug
+	  log in TAP format (https://testanything.org/). Only useful for
+	  kernel devs running KUnit test harness and are not for inclusion
+	  into a production build.
+
+	  For more information on KUnit and unit tests in general, refer
+	  to the KUnit documentation in Documentation/dev-tools/kunit/.
+
 config FIREWIRE_SBP2
 	tristate "Storage devices (SBP-2 protocol)"
 	depends on FIREWIRE && SCSI
diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
index 21b975e0a387..1ff550e93a8c 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_PROVIDE_OHCI1394_DMA_INIT) += init_ohci1394_dma.o
 obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += uapi-test.o
 obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += packet-serdes-test.o
 obj-$(CONFIG_FIREWIRE_KUNIT_SELF_ID_SEQUENCE_HELPER_TEST) += self-id-sequence-helper-test.o
+obj-$(CONFIG_FIREWIRE_KUNIT_OHCI_SERDES_TEST) += ohci-serdes-test.o
diff --git a/drivers/firewire/ohci-serdes-test.c b/drivers/firewire/ohci-serdes-test.c
new file mode 100644
index 000000000000..304a09ff528e
--- /dev/null
+++ b/drivers/firewire/ohci-serdes-test.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+// ohci-serdes-test.c - An application of Kunit to check serialization/deserialization of data in
+//			buffers and registers defined in 1394 OHCI specification.
+//
+// Copyright (c) 2024 Takashi Sakamoto
+
+#include <kunit/test.h>
+
+#include "ohci.h"
+
+
+static void test_self_id_count_register_deserialization(struct kunit *test)
+{
+	const u32 expected = 0x803d0594;
+
+	bool is_error = ohci1394_self_id_count_is_error(expected);
+	u8 generation = ohci1394_self_id_count_get_generation(expected);
+	u32 size = ohci1394_self_id_count_get_size(expected);
+
+	KUNIT_EXPECT_TRUE(test, is_error);
+	KUNIT_EXPECT_EQ(test, 0x3d, generation);
+	KUNIT_EXPECT_EQ(test, 0x165, size);
+}
+
+static void test_self_id_receive_buffer_deserialization(struct kunit *test)
+{
+	const u32 buffer[] = {
+		0x0006f38b,
+		0x807fcc56,
+		0x7f8033a9,
+		0x8145cc5e,
+		0x7eba33a1,
+	};
+
+	u8 generation = ohci1394_self_id_receive_q0_get_generation(buffer[0]);
+	u16 timestamp = ohci1394_self_id_receive_q0_get_timestamp(buffer[0]);
+
+	KUNIT_EXPECT_EQ(test, 0x6, generation);
+	KUNIT_EXPECT_EQ(test, 0xf38b, timestamp);
+}
+
+static struct kunit_case ohci_serdes_test_cases[] = {
+	KUNIT_CASE(test_self_id_count_register_deserialization),
+	KUNIT_CASE(test_self_id_receive_buffer_deserialization),
+	{}
+};
+
+static struct kunit_suite ohci_serdes_test_suite = {
+	.name = "firewire-ohci-serdes",
+	.test_cases = ohci_serdes_test_cases,
+};
+kunit_test_suite(ohci_serdes_test_suite);
+
+MODULE_DESCRIPTION("FireWire buffers and registers serialization/deserialization unit test suite");
+MODULE_LICENSE("GPL");
diff --git a/drivers/firewire/ohci.h b/drivers/firewire/ohci.h
index c4d005a9901a..d83fd4731d56 100644
--- a/drivers/firewire/ohci.h
+++ b/drivers/firewire/ohci.h
@@ -156,4 +156,46 @@
 
 #define OHCI1394_phy_tcode		0xe
 
+// Self-ID DMA.
+
+#define OHCI1394_SelfIDCount_selfIDError_MASK		0x80000000
+#define OHCI1394_SelfIDCount_selfIDError_SHIFT		31
+#define OHCI1394_SelfIDCount_selfIDGeneration_MASK	0x00ff0000
+#define OHCI1394_SelfIDCount_selfIDGeneration_SHIFT	16
+#define OHCI1394_SelfIDCount_selfIDSize_MASK		0x000007fc
+#define OHCI1394_SelfIDCount_selfIDSize_SHIFT		2
+
+static inline bool ohci1394_self_id_count_is_error(u32 value)
+{
+	return !!((value & OHCI1394_SelfIDCount_selfIDError_MASK) >> OHCI1394_SelfIDCount_selfIDError_SHIFT);
+}
+
+static inline u8 ohci1394_self_id_count_get_generation(u32 value)
+{
+	return (value & OHCI1394_SelfIDCount_selfIDGeneration_MASK) >> OHCI1394_SelfIDCount_selfIDGeneration_SHIFT;
+}
+
+// In 1394 OHCI specification, the maximum size of self ID stream is 504 quadlets
+// (= 63 devices * 4 self ID packets * 2 quadlets). The selfIDSize field accommodates it and its
+// additional first quadlet, since the field is 9 bits (0x1ff = 511).
+static inline u32 ohci1394_self_id_count_get_size(u32 value)
+{
+	return (value & OHCI1394_SelfIDCount_selfIDSize_MASK) >> OHCI1394_SelfIDCount_selfIDSize_SHIFT;
+}
+
+#define OHCI1394_SELF_ID_RECEIVE_Q0_GENERATION_MASK	0x00ff0000
+#define OHCI1394_SELF_ID_RECEIVE_Q0_GENERATION_SHIFT	16
+#define OHCI1394_SELF_ID_RECEIVE_Q0_TIMESTAMP_MASK	0x0000ffff
+#define OHCI1394_SELF_ID_RECEIVE_Q0_TIMESTAMP_SHIFT	0
+
+static inline u8 ohci1394_self_id_receive_q0_get_generation(u32 quadlet0)
+{
+	return (quadlet0 & OHCI1394_SELF_ID_RECEIVE_Q0_GENERATION_MASK) >> OHCI1394_SELF_ID_RECEIVE_Q0_GENERATION_SHIFT;
+}
+
+static inline u16 ohci1394_self_id_receive_q0_get_timestamp(u32 quadlet0)
+{
+	return (quadlet0 & OHCI1394_SELF_ID_RECEIVE_Q0_TIMESTAMP_MASK) >> OHCI1394_SELF_ID_RECEIVE_Q0_TIMESTAMP_SHIFT;
+}
+
 #endif /* _FIREWIRE_OHCI_H */
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
