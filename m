Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDCB8197A2
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2V-00061g-2i;
	Wed, 20 Dec 2023 04:18:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2R-000616-Ro
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=l9dBbddDu4hcehPkLHFMGmropQ
 OY64g5/lmbnGvpqs428J2DbzGfCfuYY3ocqA1/S3VYlNWw5EAbiVN+N3f5g1kN4NE7xpfrhXNyU5p
 hbk6Jz12vr4HTtChyr0UjO6yddN+VgWupUDgRk3ATuys41W4CTouxiCQvFvENPkmyGmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=itTKkorLJlwormqOekBnackcXq
 FCOnieGvhAnGmobZ9OCmUkuKz2cCc1X+BfYlBhWPLqvxjwe/VKPH2UHD/1kfmTbxg3HIK9BrM5iLj
 wkRyOKA5xMHi2ct6n3zv1pGFLugnTeafAAw6B1DE4Gn5wKYvjf4Ziejn8m/vcRncbcY0=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2R-0008Uq-LT for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E41B53200A71;
 Tue, 19 Dec 2023 23:18:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 19 Dec 2023 23:18:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045900; x=
 1703132300; bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=t
 yyrCZ1mldw5oxES3sSKlitze9mgR3g5YAr0G6vzD5mIFAXHDlH7vyeGvkRxI5WOi
 t9axlL3r7m/Kx5hFU6BJ6Z601tcReVXtQm5l8pjsnADfddjGWKPe2ewF054+KlTC
 YusJ9T6etzA9F7ArVMBv5fUxHv6CVIq29jrQaQ5LvbRLKx8JwPNdSN5uT8wJFU5P
 WCPFW1gO5PZ+U4u9zx/Y2R2OvQ7dMjMN1AJV7K/F7oVRXSu3d+Ej7KogMzZB5yvY
 I1HokEdznOyglWn365PQnzUrUcbfhu8YpLGaKgh7UyrIKBOR0hxyzAzbYSq7rFrP
 zwDODqXVzozUtdvvizAyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045900; x=
 1703132300; bh=ALyVWm7/dGT5KixYxR7NqL6VJqyaNldFMTquZW7hL6k=; b=e
 Cnm3MzZWJiTerFmLesCAfuWaoh7k1VxoJ41Dqoqy8VgSjQJxZTlXn3I9gA4pOqnV
 0fpGI0r1GRKiykMPIV4m461q0wx+C9jxZZW+HUoJPlXY7onN6J2l4oK9tcC69kYA
 OTA5lYkLlhCOT/D8xf0ns5d/yilk5liyrsEILsI7T8GvhLL2XHcK3AvsiSdGJy28
 sO36uFvvu400env8d+4khvyEDFAgiDS60tkyer2HrMMqxM3yw+5Ai0aPWYy2fxax
 h5tLjVO2tzUscL78AdCNidv1I4PQ2xWqiJ4eBEjUzzPkYpwU6uudtXMMXKix6XpM
 xQv5zxyWh57wIa+61bsmg==
X-ME-Sender: <xms:DGuCZUxEErf0DnV_gHR8m9eOo_QdL45_BoZqPz50O2n5-8O1KxKoxw>
 <xme:DGuCZYR4KYIh1S0CgLqRgbRvO1l7zIIX6Aa61RanBKz94MJdvNSC1DtK_Z3a014my
 5MRmL5LfZ6Fae3uvOQ>
X-ME-Received: <xmr:DGuCZWVA_zaqiOXjbuPJKUJ_UotiUQ5s32HFwTmYMuot32Yw2zjTBVIcELM2fqgRLpUc5OduP93SERTcUscEP-usG-EwvRmkVWRj1u9Zztdv-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeugfevtd
 efhfeffeeuudduhfekhffgveejfeeiiefftdethfduudevjeekveffleenucffohhmrghi
 nhepthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhi
 rdhjph
X-ME-Proxy: <xmx:DGuCZSiViPYITeQ_sTkzFWByJaHbiLmKzmJJV-NIDxUtV6uNed3Tbw>
 <xmx:DGuCZWA2TRvANR6vjECvH4JQM1Q_LuMZ6mEnQrkDHXgfcQo-x2AbqA>
 <xmx:DGuCZTIDIeCC6ma9fGqRUF2ldPcO0wWYaZq6GWzF61iWb8-9zZm-uw>
 <xmx:DGuCZX4dXh5XPhfbl0a8mBTkGQZ03V8LdiRZO2MfjuTt14mkzpszTw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:18 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/8] firewire: test: add KUnit test for device attributes
Date: Wed, 20 Dec 2023 13:18:01 +0900
Message-Id: <20231220041806.39816-4-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1rFo2R-0008Uq-LT
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
