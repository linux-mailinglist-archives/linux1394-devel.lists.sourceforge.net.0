Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB8A815E77
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPr-0002hU-EL;
	Sun, 17 Dec 2023 10:30:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPq-0002hL-2Z
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zuT1CkGiLdT6oVSTIHR17WNH4PptubpxnOyzoYj857U=; b=mzvgfQNZGTE7jLgz5E/sJE8W0D
 Ma6ZfUlVB9mTAb5GFevCPLrbM4kYwLPeauik1Jdy0khRkaSKG11BjlNWGwm+g97KM9TuWvY2AwgIy
 Bi9iObbuy8JBA3UK6P3F10YITrUyQA36RIax9qT/ZIDd+seAoXb2o+qTyEUv29rRy8as=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zuT1CkGiLdT6oVSTIHR17WNH4PptubpxnOyzoYj857U=; b=VWzCpSjMgCnzFx5UfC9KiRlLCF
 LFWHodGN/1Wwg+ZLnwb/O+SG+945Sd6l8FF4R8oiEGqHPB/iVu/vUu4uuhc8eMzTaUvNI27SckbWR
 RuIoAghB0z0c+C4iJ6Jd2d05j1qmSk6fqYwAlxpIeOHo06FNcxl0LYg3jjv6Leh01qLI=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPp-00047t-Kw for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:34 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 16B1F5C011D;
 Sun, 17 Dec 2023 05:30:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 17 Dec 2023 05:30:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809022; x=
 1702895422; bh=zuT1CkGiLdT6oVSTIHR17WNH4PptubpxnOyzoYj857U=; b=W
 Bo7FkL2AwPXvHa40KrLdpILElFQK7ysX5Rdd9C+ESvBqiQH0UM1VRVNmlfbPYT+r
 V2rMkimslZnvyUC2FSuXbBV6J+UggE3/Tw6VSN7z2KUera1x63QbT1x/MT7NWA1U
 +VSADRs8M1sR40ezaePmu2xGXsS3JfTduykhMZ+6FJbO4K06GxLREb2K3dtCC8sw
 frB11UCPtc296UaFJ0qkRrW45/kYT3xqhYp6d1b2JITIOf3KYPOvvp4yYfi7xXXV
 epdjiYHxBWml0eJeyX5vWlo+B3Jc/SgUCSf2UqaV1jjeh84JF6BO/hwQWCZbXNvc
 LcO6pheSLyrIzZZgIG2oQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809022; x=
 1702895422; bh=zuT1CkGiLdT6oVSTIHR17WNH4PptubpxnOyzoYj857U=; b=j
 kJryLQ0fhJvwgnsAkGHT8zFdqlgWmpOozHDyK5JIeC1YOrGOfmi1KnRhGp8AMXRP
 U8hLKw+TIayJYkYCaspdZl0XR31wl+Z91TUf7COrbnSfCcovfcqHZSAaSVQcg3qt
 Va2FFmPJUCD3A+GbrShHMdgU3GGbmqaMcHb0TdDkUpiEju9uBRTuOgkZ3WnA4sN1
 LCIUMiaethl7HL1S3fZ7ll+3qxLgvnLmpr+VOVS5I/GdkvY7i0i05d6jazN5ylUI
 dseAo6fbbL1pgQu2QohhUy0jJDkNMSiRK/R0IwYyOt4HPP9znOavhEvV08edbZuK
 +HheYbfvtbxB9vwBI8CBQ==
X-ME-Sender: <xms:vc1-ZQE9RlNvhNJ77VVqw-eGXLitKVDgBUidxIRx-FZqPUHCnTD0Ug>
 <xme:vc1-ZZX7mPJi61hNykQdnGTPFLj3DEE1qtTfp-7UqAZOJcoJHEDMCUaKhrFhzfMC-
 OrL9C52q2WgzKTpLOc>
X-ME-Received: <xmr:vc1-ZaJU59dOSoBm-VrqFo3rNfYeUfc_hJarc_2IJU5HA-gA_W3lcj38C4qMEf8ipSTNtQ3Yd5g2jamkJqKMuI8-5v5JDw-AgIJ-50lpteWmiGI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeugfevtd
 efhfeffeeuudduhfekhffgveejfeeiiefftdethfduudevjeekveffleenucffohhmrghi
 nhepthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhi
 rdhjph
X-ME-Proxy: <xmx:vc1-ZSEBxImL65VY1V2XCdDF9io3AkKgVYwCQgeqcAe5UJB7Q9SUgA>
 <xmx:vc1-ZWXlJ6aVfMYzlJMZ6L2hfarQmg0pOtejOwNxa9Dw7nt0N299BQ>
 <xmx:vc1-ZVMGGCeBPZ6BKkMv_vRhQstCdJISn4xGZIfitkJsDk7iLZAC_A>
 <xmx:vs1-ZZevE0Njs4uriwxE8Q_f98zEn0YR0s-5W6ZQrD-8QA6xlOVPcg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:20 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/8] firewire: test: add KUnit test for internal CSR API
Date: Sun, 17 Dec 2023 19:30:06 +0900
Message-Id: <20231217103012.41273-4-o-takashi@sakamocchi.jp>
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
 Content preview: The operation over CSR space is important since it is related
 to detection of nodes and units, addition of system devices. Any test of
 the operation is enough useful. This commit adds a skeleton of KUnit test
 for the purpose. 
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
X-Headers-End: 1rEoPp-00047t-Kw
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

The operation over CSR space is important since it is related to detection
of nodes and units, addition of system devices. Any test of the operation
is enough useful.

This commit adds a skeleton of KUnit test for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/.kunitconfig   |  1 +
 drivers/firewire/Kconfig        | 16 ++++++++++++++++
 drivers/firewire/core-device.c  |  4 ++++
 drivers/firewire/csr-api-test.c | 19 +++++++++++++++++++
 4 files changed, 40 insertions(+)
 create mode 100644 drivers/firewire/csr-api-test.c

diff --git a/drivers/firewire/.kunitconfig b/drivers/firewire/.kunitconfig
index 1599e069395f..03104cdd06eb 100644
--- a/drivers/firewire/.kunitconfig
+++ b/drivers/firewire/.kunitconfig
@@ -2,3 +2,4 @@ CONFIG_KUNIT=y
 CONFIG_PCI=y
 CONFIG_FIREWIRE=y
 CONFIG_FIREWIRE_KUNIT_UAPI_TEST=y
+CONFIG_FIREWIRE_KUNIT_CSR_API_TEST=y
diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index 0a6596b027db..184906fdb77a 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -34,6 +34,22 @@ config FIREWIRE_KUNIT_UAPI_TEST
 	  For more information on KUnit and unit tests in general, refer
 	  to the KUnit documentation in Documentation/dev-tools/kunit/.
 
+config FIREWIRE_KUNIT_CSR_API_TEST
+	tristate "KUnit tests for internal CSR API" if !KUNIT_ALL_TESTS
+	depends on FIREWIRE && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds the KUnit tests for internal API for Control and
+	  Status Registers.
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
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 137001f8a695..14c7461c05f6 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -1313,3 +1313,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		break;
 	}
 }
+
+#ifdef CONFIG_FIREWIRE_KUNIT_CSR_API_TEST
+#include "csr-api-test.c"
+#endif
diff --git a/drivers/firewire/csr-api-test.c b/drivers/firewire/csr-api-test.c
new file mode 100644
index 000000000000..a76d767373e9
--- /dev/null
+++ b/drivers/firewire/csr-api-test.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// csr-api-test.c - An application of Kunit to test implementation for CSR operation.
+//
+// Copyright (c) 2023 Takashi Sakamoto
+//
+// This file can not be built independently since it is intentionally included in core-device.c.
+
+#include <kunit/test.h>
+
+static struct kunit_case csr_api_test_cases[] = {
+	{}
+};
+
+static struct kunit_suite csr_api_test_suite = {
+	.name = "firewire-csr-api",
+	.test_cases = csr_api_test_cases,
+};
+kunit_test_suite(csr_api_test_suite);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
