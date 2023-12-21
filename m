Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F234E81B899
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQF-00069S-N4;
	Thu, 21 Dec 2023 13:49:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQC-00068z-1h
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=WX6LmZltIjMfshI4RCMpygQeNK
 7gcEvgGHpLllcY7vu/FdwyaVRnPMbmdi8r2ByYR7tjmQwHkFDoGtAcB6xcgfMBp/bCJoNqk4oTESZ
 wVBcNczi5FDYcPFMMIUtiVYDP/dGQesze4jlN+ab9mptydk/GUGrgtWKKQ25TVl1Xtq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=g+peSQAhyvxr6t3IaNAj9Ro0/3
 l1+GCXa374EFghg0zbfYweTEdvO79+jNqUHCG5h680eEdKkf0tgZI8hElvWHO0aPqkLJyy292AU4c
 DlX2NYlmcQ12tTT/64HNZ24J71rg5bjjfKat4OTc6dRPJm0gah0InyLzwZ3Pzxbzsuz8=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQB-0002no-QN for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:08 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 375655C014E;
 Thu, 21 Dec 2023 08:48:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Thu, 21 Dec 2023 08:48:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703166537; x=
 1703252937; bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=B
 fOvB/bcjpVh9NapV+lTT63YGhg5xcUFI7RTheTspm8D3vY5nA6n/avarYfBPrmRD
 r9eCvk+DPJ0n/zl3YrMozcalpCexqptYCMf/z79tv96Jk3fZx8WKsuZrbrJ7daTD
 j1pi2rwEinkD6m5B3p5jojV2bQxTTqRy0ppydD6oX27C2qHaVvsOYRV9G2TMI4Uo
 fVJIvmgqHFE+NKQa2JDHj+AZU7i92eVOFWEoUNvpCqPMpDOJNatdDdhluquWW6sm
 cGE/PbuwTGytUrS69JT6DD4dxQky8BNlb70WOSjl7ZpdJwwEvIRKT0lDHj2q8PyA
 eBvGpqyZEtyncCxczSCAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703166537; x=
 1703252937; bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=f
 BRpnMncBb1krTat9dI8YIVk3rdL5SFSMzlBSBDGuj1u+rcL9n5ApgIpTZ0gcKevl
 kE+UiiLL5ciovqJMpg5N2b/c44dijGRZpw8wD+Fq8IaHr+TMKSO0zV359T2jbJE6
 HT+/ddI9mkPEtszTLWnKtWjNdHsyZwyAFKGjoU+7p61Ylk2mrthcRcHEdkNhDkQc
 vkGaGd9wHTWKQuK+hVYs63ohsTDRhBVUDw+Gt5f5POPHvKbdKv2Y5OB9s2lY9SqR
 fOPa9/xNok21/03lz0oy4nmkAk4e/M75TUFFc8YAn6RTvH+TxpHBGlz73qxtt33Z
 dQ7qdekXjT9mlU0Op6GVQ==
X-ME-Sender: <xms:SUKEZTVPHUEMk_Mfr7j_M6_cC92rLiCMuNmZ5jp8Y-BF30yTK-khOQ>
 <xme:SUKEZblzdlGyaL33_A4AMDTY6E_78vMzXyvm3jgDegVlGLert89GPv2wIHcu7RsLo
 uJCuERpZlnLeh1h9pc>
X-ME-Received: <xmr:SUKEZfbTUy-8viKw-lS66lxJJAvMpllhb7QtRfLuDsYFiAskPUHh01bEyL8gaYfviAlJOgApvzy7MX7mZVu75cWpEGwRSdBmGqMSL5olMLthbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeugfevtd
 efhfeffeeuudduhfekhffgveejfeeiiefftdethfduudevjeekveffleenucffohhmrghi
 nhepthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhi
 rdhjph
X-ME-Proxy: <xmx:SUKEZeWvy3aSvqZoar3Br5OgtrfzvN0K8xp-pSeMx8062IRzeqWqTA>
 <xmx:SUKEZdlmIY7XAgMix_8eS445z54nvh-Lhm0tGOIdMPBYmjlh33XDqA>
 <xmx:SUKEZbdckgXdIb1XfIXO6DYyazTc4fSP6yUT2WxBx4gc_dcpznVc1Q>
 <xmx:SUKEZdvy8JS1Qug7myWH4Ey2mbigFgtvDq1jm0b2-WmCAEejVgVHsw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:48:55 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] firewire: test: add KUnit test for device attributes
Date: Thu, 21 Dec 2023 22:48:44 +0900
Message-Id: <20231221134849.603857-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The traverse over CSR space results in attributes of node
 and unit devices. Any test of the traverse is useful. This commit adds a
 skeleton
 of KUnit test for the purpose. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/.kunitconfig | 1 + drivers/firewire/Kconfig | 16
 ++++++++++++++++
 drivers/firewire/core-device.c | 4 ++++ drivers/firewir [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGJQB-0002no-QN
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

The traverse over CSR space results in attributes of node and unit
devices. Any test of the traverse is useful.

This commit adds a skeleton of KUnit test for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/.kunitconfig            |  1 +
 drivers/firewire/Kconfig                 | 16 ++++++++++++++++
 drivers/firewire/core-device.c           |  4 ++++
 drivers/firewire/device-attribute-test.c | 19 +++++++++++++++++++
 4 files changed, 40 insertions(+)
 create mode 100644 drivers/firewire/device-attribute-test.c

diff --git a/drivers/firewire/.kunitconfig b/drivers/firewire/.kunitconfig
index 1599e069395f..76444a2d5e12 100644
--- a/drivers/firewire/.kunitconfig
+++ b/drivers/firewire/.kunitconfig
@@ -2,3 +2,4 @@ CONFIG_KUNIT=y
 CONFIG_PCI=y
 CONFIG_FIREWIRE=y
 CONFIG_FIREWIRE_KUNIT_UAPI_TEST=y
+CONFIG_FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST=y
diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index 0a6596b027db..552a39df8cbd 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -34,6 +34,22 @@ config FIREWIRE_KUNIT_UAPI_TEST
 	  For more information on KUnit and unit tests in general, refer
 	  to the KUnit documentation in Documentation/dev-tools/kunit/.
 
+config FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST
+	tristate "KUnit tests for device attributes" if !KUNIT_ALL_TESTS
+	depends on FIREWIRE && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds the KUnit tests for device attribute for node and
+	  unit.
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
index 315a2fe41643..fe1e64df476c 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -1313,3 +1313,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
 		break;
 	}
 }
+
+#ifdef CONFIG_FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST
+#include "device-attribute-test.c"
+#endif
diff --git a/drivers/firewire/device-attribute-test.c b/drivers/firewire/device-attribute-test.c
new file mode 100644
index 000000000000..87cfdf97c898
--- /dev/null
+++ b/drivers/firewire/device-attribute-test.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// device-attribute-test.c - An application of Kunit to test implementation for device attributes.
+//
+// Copyright (c) 2023 Takashi Sakamoto
+//
+// This file can not be built independently since it is intentionally included in core-device.c.
+
+#include <kunit/test.h>
+
+static struct kunit_case device_attr_test_cases[] = {
+	{}
+};
+
+static struct kunit_suite device_attr_test_suite = {
+	.name = "firewire-device-attribute",
+	.test_cases = device_attr_test_cases,
+};
+kunit_test_suite(device_attr_test_suite);
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
