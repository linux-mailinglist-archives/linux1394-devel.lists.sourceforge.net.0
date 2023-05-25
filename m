Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFDE7109D8
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281T-0006QP-CI;
	Thu, 25 May 2023 10:16:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281S-0006Pn-4W
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=nEPCwtfOXUn2CVgMnDW7GD1S4p
 wCK7UVkzp10wUXVBaOsMpWciimebXySQcy7LHYBmIYRzD7sqqiLKbgvLntaENCliW+Q2IqO8ZKmPf
 yxjlsY0kX2mczjaC3cNqY/euYXga7IY/0cWURcqW/Kv9jlyWaEc3Efa89Yg8SdfVumx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=KXVr4Zt1xrTFzl3t/8HXd44DQH
 IIQ5n1hpz6PDZCl0HHXZS8KgQVz6zZK0ajQV0z/YkTKmRxHsuNjVDkSNnMxQMTmA1nZ1SwtZiJsTp
 yzQAeqVFmtkv3HDQ1Aw0dhPlJ3M9UKEvkLm8MHLXR8P27ptikw0h1RhiRLnx+U75mrms=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281O-0004V3-Dx for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 9BF0C5C0185;
 Thu, 25 May 2023 06:16:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 25 May 2023 06:16:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009791; x=
 1685096191; bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=M
 38HuQLBfosmKb8msy8QXeWAgz9AL5eSQIhTGBE0JIvDunZ5bcc1Db3Qc5nX8Lzfd
 vNBZ2wnjUX3p78KO/oSUksA0Xgz5OE6jpFZcRJoW1IsFoSAfntWB8RHUvyuXHRLq
 pdbQ6Jxig5+Bz6yHo2fD3S8Ty09mNRVtPCdKbCibhIGemUTHL8+HtLCWRiemotp0
 er5DPfFwpdy5dGV0jJs+BUtF+y3qFnojUmQbIqFMPWQXpdRk1KNm6vWjiAcJ4gQW
 FaUBSotqY+kwXZnWYhbzds+3REGi7ohTcpypi1E3mqMnEmIqv1tl4hLAHRfPgsCh
 GD81EAOx9RpKe2y396M7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685009791; x=
 1685096191; bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=r
 wlAKzTuDanT/5QAAVyo+XdEGMUNsmC0L7csDWOLf9mZYcoL/G1bFzQX+Hzgn3hrS
 S6gLkVvVxDgi0i2AXOZFA19oLsG+GLJYeshqmMBetHyITTXQxI1Oe1SFtMu9xktx
 qCcF6iWKwnNweBlGKB0ZFhInqRk/4bTUPh5lES66HIkqgSN+urIDJRJQjICESCT/
 TEmxskSLEVCC2CRTVTy+gVvFPN7Su7nYfommglqFY3ARPyu5YK7gidRkyVNJRLV2
 ycNgiJ9+rvcpDFDelGX+oVq8IB6fPNPn16LA4oO6KJ920TG9IJj/Bh0wK9/DD5/t
 VSrNMR72oK1Wmj1XBWftg==
X-ME-Sender: <xms:fzVvZJg3uO8fh4FLIJGZ9TaZSG0r6a1YYi-3eDwnkpnvw6B3pf8EYw>
 <xme:fzVvZOBXeOuGAgxWayDtizDa1mbZExhu4MH8QLz3cU-hXxjs0ZQpg78XmZmfwC09U
 nrluDNaGeyFDO9Y_-c>
X-ME-Received: <xmr:fzVvZJECEZsSgQVkr1zdYnZU2i1GA1Rs6It9kcg7pzAjSpmF-My_DMJgOoorbJ-xcZv5Yg5e7h-d1aPsGD8FRU2L9h_aylenyNARpM9PYcXSog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeduuddttd
 euueduledvleethfetleeuledvvddvjeeiueekkeektdegudekffdvveenucffohhmrghi
 nhepvdejrdhithdpthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgr
 mhhotggthhhirdhjph
X-ME-Proxy: <xmx:fzVvZOTJG69B7Tiac3-vk04TxssSdrcK441xMlkYMVsGIzn5bkhz6w>
 <xmx:fzVvZGySq5ivACiwHT0KFSxGAf26H_UqL-xHTfV8GrG8E3XeKpy0xQ>
 <xmx:fzVvZE78EEtK7gvXdDxMYXBRDUUIvdRa2Xv2X6ejo9brg6LgYv-4wQ>
 <xmx:fzVvZLqtRLp5fdF4h3NIw2qq8uE_x0brURdkHZAkNXvxIqYH2ecwlQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:30 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/12] firewire: add KUnit test to check layout of UAPI
 structures
Date: Thu, 25 May 2023 19:16:14 +0900
Message-Id: <20230525101625.888906-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
References: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In future commits,
 some new structure will be added to express
 new type of event. They are exposed to user space as the part of UAPI. It
 is likely to get trouble in ioctl compatibility layer for 32 bi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281O-0004V3-Dx
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
Cc: kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In future commits, some new structure will be added to express new type
of event. They are exposed to user space as the part of UAPI. It is likely
to get trouble in ioctl compatibility layer for 32 bit binaries in 64 bit
host machine since the layout of structure could differ depending on
System V ABI for these architectures. Actually the subsystem already got
such trouble at v2.6.27. It is preferable to decide the layout of
structure carefully so that the layer is free from such trouble.

This commit utilizes KUnit framework to check the layout of structure for
the purpose. A test is added for the existent issue.

Cc: kunit-dev@googlegroups.com
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/.kunitconfig |  4 ++++
 drivers/firewire/Kconfig      | 16 +++++++++++++++
 drivers/firewire/Makefile     |  3 +++
 drivers/firewire/uapi-test.c  | 38 +++++++++++++++++++++++++++++++++++
 4 files changed, 61 insertions(+)
 create mode 100644 drivers/firewire/.kunitconfig
 create mode 100644 drivers/firewire/uapi-test.c

diff --git a/drivers/firewire/.kunitconfig b/drivers/firewire/.kunitconfig
new file mode 100644
index 000000000000..1599e069395f
--- /dev/null
+++ b/drivers/firewire/.kunitconfig
@@ -0,0 +1,4 @@
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_FIREWIRE=y
+CONFIG_FIREWIRE_KUNIT_UAPI_TEST=y
diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index ec00a6f70da8..0a6596b027db 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -18,6 +18,22 @@ config FIREWIRE
 	  To compile this driver as a module, say M here: the module will be
 	  called firewire-core.
 
+config FIREWIRE_KUNIT_UAPI_TEST
+	tristate "KUnit tests for layout of structure in UAPI" if !KUNIT_ALL_TESTS
+	depends on FIREWIRE && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds the KUnit tests whether structures exposed to user
+	  space have expected layout.
+
+	  KUnit tests run during boot and output the results to the debug
+	  log in TAP format (https://testanything.org/). Only useful for
+	  kernel devs running KUnit test harness and are not for inclusion
+	  into a production build.
+
+	  For more information on KUnit and unit tests in general, refer
+	  to the KUnit documentation in Documentation/dev-tools/kunit/.
+
 config FIREWIRE_OHCI
 	tristate "OHCI-1394 controllers"
 	depends on PCI && FIREWIRE && MMU
diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
index e58c8c794778..b24b2879ac34 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -15,3 +15,6 @@ obj-$(CONFIG_FIREWIRE_SBP2) += firewire-sbp2.o
 obj-$(CONFIG_FIREWIRE_NET)  += firewire-net.o
 obj-$(CONFIG_FIREWIRE_NOSY) += nosy.o
 obj-$(CONFIG_PROVIDE_OHCI1394_DMA_INIT) += init_ohci1394_dma.o
+
+firewire-uapi-test-objs += uapi-test.o
+obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += firewire-uapi-test.o
diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
new file mode 100644
index 000000000000..4dc633b91336
--- /dev/null
+++ b/drivers/firewire/uapi-test.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// uapi_test.c - An application of Kunit to check layout of structures exposed to user space for
+//		 FireWire subsystem.
+//
+// Copyright (c) 2023 Takashi Sakamoto
+
+#include <kunit/test.h>
+#include <linux/firewire-cdev.h>
+
+// Known issue added at v2.6.27 kernel.
+static void structure_layout_event_response(struct kunit *test)
+{
+#if defined(CONFIG_X86_32)
+	// 4 bytes alignment for aggregate type including 8 bytes storage types.
+	KUNIT_EXPECT_EQ(test, 20, sizeof(struct fw_cdev_event_response));
+#else
+	// 8 bytes alignment for aggregate type including 8 bytes storage types.
+	KUNIT_EXPECT_EQ(test, 24, sizeof(struct fw_cdev_event_response));
+#endif
+
+	KUNIT_EXPECT_EQ(test, 0, offsetof(struct fw_cdev_event_response, closure));
+	KUNIT_EXPECT_EQ(test, 8, offsetof(struct fw_cdev_event_response, type));
+	KUNIT_EXPECT_EQ(test, 12, offsetof(struct fw_cdev_event_response, rcode));
+	KUNIT_EXPECT_EQ(test, 16, offsetof(struct fw_cdev_event_response, length));
+	KUNIT_EXPECT_EQ(test, 20, offsetof(struct fw_cdev_event_response, data));
+}
+
+static struct kunit_case structure_layout_test_cases[] = {
+	KUNIT_CASE(structure_layout_event_response),
+	{}
+};
+
+static struct kunit_suite structure_layout_test_suite = {
+	.name = "firewire-uapi-structure-layout",
+	.test_cases = structure_layout_test_cases,
+};
+kunit_test_suite(structure_layout_test_suite);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
