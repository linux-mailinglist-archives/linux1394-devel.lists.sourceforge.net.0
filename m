Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE9D714891
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b8r-0003ux-KW;
	Mon, 29 May 2023 11:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8p-0003up-SH
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=hGBJuQIJ6qucOGccTTSxFAvHCs
 Ti/XKsiwEOIYXvipKEwjwPAkCyqIMWbtlROFF6sSau9glFpNhP8yrz2gc1DtilYobFcSOkiEkWyx8
 Hsw9LSU28x3uN1hHz2tNQK5gtQHo3rawfX1O/D4w45STBTXnqfXDX5blxDFPlrE2uFg8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=UoMQgcO0h6AUrgB/ZB7KyVn+XU
 A7LVnbsqWzM9dn+quXKlK4o2TvWs8PEJSzhCiK8HhT5jdUieOpOKtEMuFEPtRytF8r6VJWY+CWXQ2
 oFx6E1SYmAJi/SwaZ4XwS6qmNnbA8HZxLuGrYe/fOlhb05nib/USqRZPb/ZhhfLdBvGg=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8o-005hme-4j for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:23 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id C752F320091F;
 Mon, 29 May 2023 07:34:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 29 May 2023 07:34:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360054; x=
 1685446454; bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=v
 FnlkzXvIaoeUJG2V7A6I+SlEcQjMThQZZv35UNB4qNEfjcE6kKzEzA5WSyEiompo
 m1N3baGcPJBpbQVSr4wfFbSSO8aUPJq8MuW2Zskr4s8qKNSyNBYcqQeT0NZ/fteH
 wDteuuAmrjCU5vpVbTLIMTnMF0VqKpJpgKGJGtlDhYvlUHeoWL4hGnghbaa2kPNx
 BiqZ5RADuv+pPdrCN2Lf5BPLcZusYZqDQsAcYHZQXi3SwFAxJvir6eKNLtiKp9na
 3rV9Qa+SA10kTiYyTMfefurN7PYxN/5CK9K4zidYqaw7EPAOqRGRP1NE7nEEDB97
 xfmrt2a7rjlHuO7CAvbZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1685360054; x=
 1685446454; bh=JW0p8/eDaYU/cW3GeziZHaBybYl27FrC9hzeWZqxqbk=; b=A
 Ycer1p4RYkzYrb9aRjz1THEgwEW8CYs4RzwzAAcnBR/nI05NRjBDOO6yYcaIpjle
 wIN3Ivh9q4/CGZS+Nr25+TN+ZX2cs5N+LlhN9dBHWVFFSDTte4Gtkauca0IO7Nsj
 gwi7HCsmGtX6AeVcbmmRumvOyO46TQYMqMU2Z2hWYjLpd6e6zHKFocrjvB1mebtU
 ewDmTE2ckKn1BHN7DLZQ0pVfatuMLJ5bROAwi/LYyvTzBXgVnh/8QLyPS7k0CIgD
 2yQUONsydfsUfvQT6gAVxQcJJ6E0H8EtKz41YgmA0JHHHhBJwOMheankksxJBxWZ
 QKUy7vlNgwPLq02/kXzRg==
X-ME-Sender: <xms:to10ZFdMFmTh1O3abW-DhLlBuMKFNSb_8YaCxpcov1SGwP3GdatwoQ>
 <xme:to10ZDPHPsAqj1ZMxDWI2ZfNp8lqWFcr2aItYwzw8RWOTtGDTI1xFKS0nI1taFFye
 iqo5VEOrjIk07NxCyc>
X-ME-Received: <xmr:to10ZOj6FhYh4j3W3az96YLvDadrOvJHfraPp6K_CJ5BSiCY8Ht9p9h-kR7T1YKBp8xIPvcjdai7v9b_gcHeO4b-60_h0HFQVhbFlRJ7wcnZ4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeduuddttd
 euueduledvleethfetleeuledvvddvjeeiueekkeektdegudekffdvveenucffohhmrghi
 nhepvdejrdhithdpthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgr
 mhhotggthhhirdhjph
X-ME-Proxy: <xmx:to10ZO-w-M9ZA5k9UHbS1x89v1yI-CVccbdZ-pOpUTjSutb6bzdsvA>
 <xmx:to10ZBvUcZbnY89JXHQGfirh71l81KDpLk5ks-S_gRS8-KKk02kU9w>
 <xmx:to10ZNEt0sZLoFXuApfQYTjvOAtkRVvJCnfgffMy_Nrqa1bgdwZVcg>
 <xmx:to10ZCVL1WOdQZRbF2v0vLODXYeZR6xOzVMag28ko_sXbsOkRjQpfQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/12] firewire: add KUnit test to check layout of UAPI
 structures
Date: Mon, 29 May 2023 20:33:55 +0900
Message-Id: <20230529113406.986289-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
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
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q3b8o-005hme-4j
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
