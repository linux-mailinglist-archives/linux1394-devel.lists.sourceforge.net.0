Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB468B4A5F
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjc-000479-P5;
	Sun, 28 Apr 2024 07:14:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yja-00046n-Ix
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/PyKQzrC7jI33YYu3lpMq3bipG9vhbCODvaaOAKScU=; b=EEkxj4Yk3P8gL89R/f8mim7GFr
 AqdzWB444A5/7nNJSnSVdy4TggShtDBFFC89kr8hlczNrUFX8ggGQOzD3qYz+VqRyRJmXEjkJok3l
 gXQPCjhR0/gX7lPlSTJARfYzcy4bfisfE+C+XXf22Y++peH5as4Ew5Uu4qyxalDKYYMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z/PyKQzrC7jI33YYu3lpMq3bipG9vhbCODvaaOAKScU=; b=GU7CZ2snOpBXvO3j/MRZBSoiGX
 iuDYDVVVw7dZdLjwEa9MWUMeWUpS5cOgkTyOhGlwFMjLq3Iz4m4QuWN0HViJNvriBnvCr8ImPpZkH
 13kDgh/S4/trmGurNTvzqvFu45i52maSXZsZaCyUq1fmkSat2oFjySKILioJWLZMuAJ0=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjY-0000Gn-Pz for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:03 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.west.internal (Postfix) with ESMTP id 81D321800120;
 Sun, 28 Apr 2024 03:13:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 28 Apr 2024 03:13:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288434; x=
 1714374834; bh=z/PyKQzrC7jI33YYu3lpMq3bipG9vhbCODvaaOAKScU=; b=H
 /K7ZR6XsMkQUe8KAdqtfalhNJgh4EQnf0Os+9Q1IIp2++qVqZUwABkPVf/US4WYK
 IJbEDHX2UTTEFF5uNGFBZ0dZNGaySx7QOcPz2R05NuG/keRRkml+RhFbJ05gcXU5
 OI4BaTwerNXM63d+X99oyiK20zyQ/IBRH2zxTBgzCys1J9T6socmhUIszELHd60n
 Kx8jjcjrVnGrrSQyYRcp5Yw/JwP8Ck5fABtt8S37GA5oeLYQoHeR+7FIEqh/7FPi
 x3xTiKsgytcvSLlwEi+emnzzYkOkSXTP26acvxefqeeIF4MjkJinRFMU7zxBRvqH
 lpnZ5dtsiS3I5r2/sVQnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288434; x=
 1714374834; bh=z/PyKQzrC7jI33YYu3lpMq3bipG9vhbCODvaaOAKScU=; b=F
 TTymf+t0J35WEju6C5bMcG4MbhLqCkhPzW3HQYGpdenIt1Yw5xrnW0xAObbXc+fP
 AoNQR2/Qff8Z02PKlb2Bw1iKFtZqlVa1oDBMIsb+KMcrNOj8j4eK55kcQalZ/RxN
 rCswTwlnRpZ6zEZgX+Z9ilv0YWaKIr0axOHD1HXS8m9we7S37S1JLleiUPKVS0Xu
 GMFXF3rXI6NIxwRPct+Vj/18qwTJaZup5GwA2AQmimmP66fWeHBQjSFkPwfnP/HD
 4tyIMdy4ZjiPAvcqV5ZoPnsPtaQzo6V/FNIbymsOwkKLtDrJwFnXpa/aXc4SqgU0
 TnmQTUpntffDQj3+Fu3Pg==
X-ME-Sender: <xms:MfctZsO9O2jywZzMCBw7pvrtacnmGdI1QiNJ2E71-BaJp16ucaZt2w>
 <xme:MfctZi8ap1_7O-3HLhvCT0ykvS_sAKNouweF2A6yPFy9rP00LxWWL2XcR7sgU2yna
 3vlVMMYjWor-4RujNI>
X-ME-Received: <xmr:MfctZjS4YLi6rQUPkaGT0aSXqLAgkPMtNNCVPQ5_HsANuipBkSJShN04wxHqIIa-XTvbeEx7nXuEyaEVaQsJtCT9BNEoIIJiQrTAXZ9SVi5Dcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeugfevtd
 efhfeffeeuudduhfekhffgveejfeeiiefftdethfduudevjeekveffleenucffohhmrghi
 nhepthgvshhtrghnhihthhhinhhgrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhi
 rdhjph
X-ME-Proxy: <xmx:MfctZkuSgJMjp12PpE9eEb9sEGXD799uREbQ9lTHbOZgvxbOk70AkA>
 <xmx:MfctZkdwlXR_uT8Aqm9xTfKI-i_iu67g9bPtC-wC6Wvg8xv4SftwPw>
 <xmx:MfctZo0023rDxPVH8lQ-IeFFec7wzMUYCqJmFIqA3nwAwmjA63gSMQ>
 <xmx:MfctZo-fJWuxuyqYUhxMEajHVMB3uRQwS9P1tv6bJA9yiQFY6nLfBw>
 <xmx:MvctZlqfDejf0lrBLiWeAI72IYY9Sj0GiKX1yF3lLKw7XDd5VlDnVjJh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:13:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/8] firewire: core: add common inline functions to
 serialize/deserialize asynchronous packet header
Date: Sun, 28 Apr 2024 16:13:39 +0900
Message-ID: <20240428071347.409202-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
References: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In both core and 1394 OHCI driver, some hard-coded values
 and macros are used to serialize/deserialize the header of asynchronous
 packets.
 It is inconvenient to reuse them. This commit adds some helper inline
 functions with their tests for the purpose. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.155 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s0yjY-0000Gn-Pz
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

In both core and 1394 OHCI driver, some hard-coded values and macros are
used to serialize/deserialize the header of asynchronous packets. It is
inconvenient to reuse them.

This commit adds some helper inline functions with their tests for the
purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/.kunitconfig                |   1 +
 drivers/firewire/Kconfig                     |  16 +
 drivers/firewire/Makefile                    |   3 +
 drivers/firewire/packet-header-definitions.h | 168 ++++++
 drivers/firewire/packet-serdes-test.c        | 538 +++++++++++++++++++
 5 files changed, 726 insertions(+)
 create mode 100644 drivers/firewire/packet-header-definitions.h
 create mode 100644 drivers/firewire/packet-serdes-test.c

diff --git a/drivers/firewire/.kunitconfig b/drivers/firewire/.kunitconfig
index 76444a2d5e12..60d9e7c35417 100644
--- a/drivers/firewire/.kunitconfig
+++ b/drivers/firewire/.kunitconfig
@@ -3,3 +3,4 @@ CONFIG_PCI=y
 CONFIG_FIREWIRE=y
 CONFIG_FIREWIRE_KUNIT_UAPI_TEST=y
 CONFIG_FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST=y
+CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST=y
diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
index 552a39df8cbd..869598b20e3a 100644
--- a/drivers/firewire/Kconfig
+++ b/drivers/firewire/Kconfig
@@ -50,6 +50,22 @@ config FIREWIRE_KUNIT_DEVICE_ATTRIBUTE_TEST
 	  For more information on KUnit and unit tests in general, refer
 	  to the KUnit documentation in Documentation/dev-tools/kunit/.
 
+config FIREWIRE_KUNIT_PACKET_SERDES_TEST
+	tristate "KUnit tests for packet serialization/deserialization" if !KUNIT_ALL_TESTS
+	depends on FIREWIRE && KUNIT
+	default KUNIT_ALL_TESTS
+	help
+	  This builds the KUnit tests for packet serialization and
+	  deserialization.
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
index b24b2879ac34..bbde29a0fba6 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -17,4 +17,7 @@ obj-$(CONFIG_FIREWIRE_NOSY) += nosy.o
 obj-$(CONFIG_PROVIDE_OHCI1394_DMA_INIT) += init_ohci1394_dma.o
 
 firewire-uapi-test-objs += uapi-test.o
+firewire-packet-serdes-test-objs += packet-serdes-test.o
+
 obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += firewire-uapi-test.o
+obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += firewire-packet-serdes-test.o
diff --git a/drivers/firewire/packet-header-definitions.h b/drivers/firewire/packet-header-definitions.h
new file mode 100644
index 000000000000..83e550427706
--- /dev/null
+++ b/drivers/firewire/packet-header-definitions.h
@@ -0,0 +1,168 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+// packet-header-definitions.h - The definitions of header fields for IEEE 1394 packet.
+//
+// Copyright (c) 2024 Takashi Sakamoto
+
+#ifndef _FIREWIRE_PACKET_HEADER_DEFINITIONS_H
+#define _FIREWIRE_PACKET_HEADER_DEFINITIONS_H
+
+#define ASYNC_HEADER_QUADLET_COUNT		4
+
+#define ASYNC_HEADER_Q0_DESTINATION_SHIFT	16
+#define ASYNC_HEADER_Q0_DESTINATION_MASK	0xffff0000
+#define ASYNC_HEADER_Q0_TLABEL_SHIFT		10
+#define ASYNC_HEADER_Q0_TLABEL_MASK		0x0000fc00
+#define ASYNC_HEADER_Q0_RETRY_SHIFT		8
+#define ASYNC_HEADER_Q0_RETRY_MASK		0x00000300
+#define ASYNC_HEADER_Q0_TCODE_SHIFT		4
+#define ASYNC_HEADER_Q0_TCODE_MASK		0x000000f0
+#define ASYNC_HEADER_Q0_PRIORITY_SHIFT		0
+#define ASYNC_HEADER_Q0_PRIORITY_MASK		0x0000000f
+#define ASYNC_HEADER_Q1_SOURCE_SHIFT		16
+#define ASYNC_HEADER_Q1_SOURCE_MASK		0xffff0000
+#define ASYNC_HEADER_Q1_RCODE_SHIFT		12
+#define ASYNC_HEADER_Q1_RCODE_MASK		0x0000f000
+#define ASYNC_HEADER_Q1_RCODE_SHIFT		12
+#define ASYNC_HEADER_Q1_RCODE_MASK		0x0000f000
+#define ASYNC_HEADER_Q1_OFFSET_HIGH_SHIFT	0
+#define ASYNC_HEADER_Q1_OFFSET_HIGH_MASK	0x0000ffff
+#define ASYNC_HEADER_Q3_DATA_LENGTH_SHIFT	16
+#define ASYNC_HEADER_Q3_DATA_LENGTH_MASK	0xffff0000
+#define ASYNC_HEADER_Q3_EXTENDED_TCODE_SHIFT	0
+#define ASYNC_HEADER_Q3_EXTENDED_TCODE_MASK	0x0000ffff
+
+static inline unsigned int async_header_get_destination(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[0] & ASYNC_HEADER_Q0_DESTINATION_MASK) >> ASYNC_HEADER_Q0_DESTINATION_SHIFT;
+}
+
+static inline unsigned int async_header_get_tlabel(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[0] & ASYNC_HEADER_Q0_TLABEL_MASK) >> ASYNC_HEADER_Q0_TLABEL_SHIFT;
+}
+
+static inline unsigned int async_header_get_retry(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[0] & ASYNC_HEADER_Q0_RETRY_MASK) >> ASYNC_HEADER_Q0_RETRY_SHIFT;
+}
+
+static inline unsigned int async_header_get_tcode(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[0] & ASYNC_HEADER_Q0_TCODE_MASK) >> ASYNC_HEADER_Q0_TCODE_SHIFT;
+}
+
+static inline unsigned int async_header_get_priority(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[0] & ASYNC_HEADER_Q0_PRIORITY_MASK) >> ASYNC_HEADER_Q0_PRIORITY_SHIFT;
+}
+
+static inline unsigned int async_header_get_source(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[1] & ASYNC_HEADER_Q1_SOURCE_MASK) >> ASYNC_HEADER_Q1_SOURCE_SHIFT;
+}
+
+static inline unsigned int async_header_get_rcode(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[1] & ASYNC_HEADER_Q1_RCODE_MASK) >> ASYNC_HEADER_Q1_RCODE_SHIFT;
+}
+
+static inline u64 async_header_get_offset(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	u32 hi = (header[1] & ASYNC_HEADER_Q1_OFFSET_HIGH_MASK) >> ASYNC_HEADER_Q1_OFFSET_HIGH_SHIFT;
+	return (((u64)hi) << 32) | ((u64)header[2]);
+}
+
+static inline u32 async_header_get_quadlet_data(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return header[3];
+}
+
+static inline unsigned int async_header_get_data_length(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[3] & ASYNC_HEADER_Q3_DATA_LENGTH_MASK) >> ASYNC_HEADER_Q3_DATA_LENGTH_SHIFT;
+}
+
+static inline unsigned int async_header_get_extended_tcode(const u32 header[ASYNC_HEADER_QUADLET_COUNT])
+{
+	return (header[3] & ASYNC_HEADER_Q3_EXTENDED_TCODE_MASK) >> ASYNC_HEADER_Q3_EXTENDED_TCODE_SHIFT;
+}
+
+static inline void async_header_set_destination(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						unsigned int destination)
+{
+	header[0] &= ~ASYNC_HEADER_Q0_DESTINATION_MASK;
+	header[0] |= (((u32)destination) << ASYNC_HEADER_Q0_DESTINATION_SHIFT) & ASYNC_HEADER_Q0_DESTINATION_MASK;
+}
+
+static inline void async_header_set_tlabel(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					   unsigned int tlabel)
+{
+	header[0] &= ~ASYNC_HEADER_Q0_TLABEL_MASK;
+	header[0] |= (((u32)tlabel) << ASYNC_HEADER_Q0_TLABEL_SHIFT) & ASYNC_HEADER_Q0_TLABEL_MASK;
+}
+
+static inline void async_header_set_retry(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					  unsigned int retry)
+{
+	header[0] &= ~ASYNC_HEADER_Q0_RETRY_MASK;
+	header[0] |= (((u32)retry) << ASYNC_HEADER_Q0_RETRY_SHIFT) & ASYNC_HEADER_Q0_RETRY_MASK;
+}
+
+static inline void async_header_set_tcode(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					  unsigned int tcode)
+{
+	header[0] &= ~ASYNC_HEADER_Q0_TCODE_MASK;
+	header[0] |= (((u32)tcode) << ASYNC_HEADER_Q0_TCODE_SHIFT) & ASYNC_HEADER_Q0_TCODE_MASK;
+}
+
+static inline void async_header_set_priority(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					     unsigned int priority)
+{
+	header[0] &= ~ASYNC_HEADER_Q0_PRIORITY_MASK;
+	header[0] |= (((u32)priority) << ASYNC_HEADER_Q0_PRIORITY_SHIFT) & ASYNC_HEADER_Q0_PRIORITY_MASK;
+}
+
+
+static inline void async_header_set_source(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					   unsigned int source)
+{
+	header[1] &= ~ASYNC_HEADER_Q1_SOURCE_MASK;
+	header[1] |= (((u32)source) << ASYNC_HEADER_Q1_SOURCE_SHIFT) & ASYNC_HEADER_Q1_SOURCE_MASK;
+}
+
+static inline void async_header_set_rcode(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					  unsigned int rcode)
+{
+	header[1] &= ~ASYNC_HEADER_Q1_RCODE_MASK;
+	header[1] |= (((u32)rcode) << ASYNC_HEADER_Q1_RCODE_SHIFT) & ASYNC_HEADER_Q1_RCODE_MASK;
+}
+
+static inline void async_header_set_offset(u32 header[ASYNC_HEADER_QUADLET_COUNT], u64 offset)
+{
+	u32 hi = (u32)(offset >> 32);
+	header[1] &= ~ASYNC_HEADER_Q1_OFFSET_HIGH_MASK;
+	header[1] |= (hi << ASYNC_HEADER_Q1_OFFSET_HIGH_SHIFT) & ASYNC_HEADER_Q1_OFFSET_HIGH_MASK;
+	header[2] = (u32)(offset & 0x00000000ffffffff);
+}
+
+static inline void async_header_set_quadlet_data(u32 header[ASYNC_HEADER_QUADLET_COUNT], u32 quadlet_data)
+{
+	header[3] = quadlet_data;
+}
+
+static inline void async_header_set_data_length(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						unsigned int data_length)
+{
+	header[3] &= ~ASYNC_HEADER_Q3_DATA_LENGTH_MASK;
+	header[3] |= (((u32)data_length) << ASYNC_HEADER_Q3_DATA_LENGTH_SHIFT) & ASYNC_HEADER_Q3_DATA_LENGTH_MASK;
+}
+
+static inline void async_header_set_extended_tcode(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						   unsigned int extended_tcode)
+{
+	header[3] &= ~ASYNC_HEADER_Q3_EXTENDED_TCODE_MASK;
+	header[3] |= (((u32)extended_tcode) << ASYNC_HEADER_Q3_EXTENDED_TCODE_SHIFT) & ASYNC_HEADER_Q3_EXTENDED_TCODE_MASK;
+}
+
+#endif // _FIREWIRE_PACKET_HEADER_DEFINITIONS_H
diff --git a/drivers/firewire/packet-serdes-test.c b/drivers/firewire/packet-serdes-test.c
new file mode 100644
index 000000000000..299e9f908463
--- /dev/null
+++ b/drivers/firewire/packet-serdes-test.c
@@ -0,0 +1,538 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+// packet-serdes-test.c - An application of Kunit to check serialization/deserialization of packets
+//			  defined by IEEE 1394.
+//
+// Copyright (c) 2024 Takashi Sakamoto
+
+#include <kunit/test.h>
+
+#include <linux/firewire-constants.h>
+
+#include "packet-header-definitions.h"
+
+static void serialize_async_header_common(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					  unsigned int dst_id, unsigned int tlabel,
+					  unsigned int retry, unsigned int tcode,
+					  unsigned int priority, unsigned int src_id)
+{
+	async_header_set_destination(header, dst_id);
+	async_header_set_tlabel(header, tlabel);
+	async_header_set_retry(header, retry);
+	async_header_set_tcode(header, tcode);
+	async_header_set_priority(header, priority);
+	async_header_set_source(header, src_id);
+}
+
+static void serialize_async_header_request(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					   unsigned int dst_id, unsigned int tlabel,
+					   unsigned int retry, unsigned int tcode,
+					   unsigned int priority, unsigned int src_id, u64 offset)
+{
+	serialize_async_header_common(header, dst_id, tlabel, retry, tcode, priority, src_id);
+	async_header_set_offset(header, offset);
+}
+
+static void serialize_async_header_quadlet_request(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						   unsigned int dst_id, unsigned int tlabel,
+						   unsigned int retry, unsigned int tcode,
+						   unsigned int priority, unsigned int src_id,
+						   u64 offset)
+{
+	serialize_async_header_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+				       offset);
+}
+
+static void serialize_async_header_block_request(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						 unsigned int dst_id, unsigned int tlabel,
+						 unsigned int retry, unsigned int tcode,
+						 unsigned int priority, unsigned int src_id,
+						 u64 offset, unsigned int data_length,
+						 unsigned int extended_tcode)
+{
+	serialize_async_header_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+				       offset);
+	async_header_set_data_length(header, data_length);
+	async_header_set_extended_tcode(header, extended_tcode);
+}
+
+static void serialize_async_header_response(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					    unsigned int dst_id, unsigned int tlabel,
+					    unsigned int retry, unsigned int tcode,
+					    unsigned int priority, unsigned int src_id,
+					    unsigned int rcode)
+{
+	serialize_async_header_common(header, dst_id, tlabel, retry, tcode, priority, src_id);
+	async_header_set_rcode(header, rcode);
+}
+
+static void serialize_async_header_quadlet_response(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						    unsigned int dst_id, unsigned int tlabel,
+						    unsigned int retry, unsigned int tcode,
+						    unsigned int priority, unsigned int src_id,
+						    unsigned int rcode)
+{
+	serialize_async_header_response(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					rcode);
+}
+
+static void serialize_async_header_block_response(u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						  unsigned int dst_id, unsigned int tlabel,
+						  unsigned int retry, unsigned int tcode,
+						  unsigned int priority, unsigned int src_id,
+						  unsigned int rcode, unsigned int data_length,
+						  unsigned int extended_tcode)
+{
+	serialize_async_header_response(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					rcode);
+	async_header_set_data_length(header, data_length);
+	async_header_set_extended_tcode(header, extended_tcode);
+}
+
+static void deserialize_async_header_common(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					    unsigned int *dst_id, unsigned int *tlabel,
+					    unsigned int *retry, unsigned int *tcode,
+					    unsigned int *priority, unsigned int *src_id)
+{
+	*dst_id = async_header_get_destination(header);
+	*tlabel = async_header_get_tlabel(header);
+	*retry = async_header_get_retry(header);
+	*tcode = async_header_get_tcode(header);
+	*priority = async_header_get_priority(header);
+	*src_id = async_header_get_source(header);
+}
+
+static void deserialize_async_header_request(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					     unsigned int *dst_id, unsigned int *tlabel,
+					     unsigned int *retry, unsigned int *tcode,
+					     unsigned int *priority, unsigned int *src_id,
+					     u64 *offset)
+{
+	deserialize_async_header_common(header, dst_id, tlabel, retry, tcode, priority, src_id);
+	*offset = async_header_get_offset(header);
+}
+
+static void deserialize_async_header_quadlet_request(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						     unsigned int *dst_id, unsigned int *tlabel,
+						     unsigned int *retry, unsigned int *tcode,
+						     unsigned int *priority, unsigned int *src_id,
+						     u64 *offset)
+{
+	deserialize_async_header_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					 offset);
+}
+
+static void deserialize_async_header_block_request(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						   unsigned int *dst_id, unsigned int *tlabel,
+						   unsigned int *retry, unsigned int *tcode,
+						   unsigned int *priority, unsigned int *src_id,
+						   u64 *offset,
+						   unsigned int *data_length,
+						   unsigned int *extended_tcode)
+{
+	deserialize_async_header_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					 offset);
+	*data_length = async_header_get_data_length(header);
+	*extended_tcode = async_header_get_extended_tcode(header);
+}
+
+static void deserialize_async_header_response(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+					      unsigned int *dst_id, unsigned int *tlabel,
+					      unsigned int *retry, unsigned int *tcode,
+					      unsigned int *priority, unsigned int *src_id,
+					      unsigned int *rcode)
+{
+	deserialize_async_header_common(header, dst_id, tlabel, retry, tcode, priority, src_id);
+	*rcode = async_header_get_rcode(header);
+}
+
+static void deserialize_async_header_quadlet_response(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						      unsigned int *dst_id, unsigned int *tlabel,
+						      unsigned int *retry, unsigned int *tcode,
+						      unsigned int *priority, unsigned int *src_id,
+						      unsigned int *rcode)
+{
+	deserialize_async_header_response(header, dst_id, tlabel, retry, tcode, priority, src_id, rcode);
+}
+
+static void deserialize_async_header_block_response(const u32 header[ASYNC_HEADER_QUADLET_COUNT],
+						    unsigned int *dst_id, unsigned int *tlabel,
+						    unsigned int *retry, unsigned int *tcode,
+						    unsigned int *priority, unsigned int *src_id,
+						    unsigned int *rcode, unsigned int *data_length,
+						    unsigned int *extended_tcode)
+{
+	deserialize_async_header_response(header, dst_id, tlabel, retry, tcode, priority, src_id, rcode);
+	*data_length = async_header_get_data_length(header);
+	*extended_tcode = async_header_get_extended_tcode(header);
+}
+
+static void test_async_header_write_quadlet_request(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc05100,
+		0xffc1ffff,
+		0xf0000234,
+		0x1f0000c0,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	u64 offset;
+	u32 quadlet_data;
+
+	deserialize_async_header_quadlet_request(expected, &dst_id, &tlabel, &retry, &tcode,
+						 &priority, &src_id, &offset);
+	quadlet_data = async_header_get_quadlet_data(expected);
+
+	KUNIT_EXPECT_EQ(test, 0xffc0, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x14, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_WRITE_QUADLET_REQUEST, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc1, src_id);
+	KUNIT_EXPECT_EQ(test, 0xfffff0000234, offset);
+	KUNIT_EXPECT_EQ(test, 0x1f0000c0, quadlet_data);
+
+	serialize_async_header_quadlet_request(header, dst_id, tlabel, retry, tcode, priority,
+					       src_id, offset);
+	async_header_set_quadlet_data(header, quadlet_data);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_write_block_request(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc06510,
+		0xffc1ecc0,
+		0x00000000,
+		0x00180000,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	u64 offset;
+	unsigned int data_length;
+	unsigned int extended_tcode;
+
+	deserialize_async_header_block_request(expected, &dst_id, &tlabel, &retry, &tcode,
+					       &priority, &src_id, &offset, &data_length,
+					       &extended_tcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc0, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x19, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_WRITE_BLOCK_REQUEST, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc1, src_id);
+	KUNIT_EXPECT_EQ(test, 0xecc000000000, offset);
+	KUNIT_EXPECT_EQ(test, 0x0018, data_length);
+	KUNIT_EXPECT_EQ(test, 0x0000, extended_tcode);
+
+	serialize_async_header_block_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					     offset, data_length, extended_tcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_write_response(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc15120,
+		0xffc00000,
+		0x00000000,
+		0x00000000,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	unsigned int rcode;
+
+	deserialize_async_header_quadlet_response(expected, &dst_id, &tlabel, &retry, &tcode,
+						  &priority, &src_id, &rcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc1, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x14, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_WRITE_RESPONSE, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc0, src_id);
+	KUNIT_EXPECT_EQ(test, RCODE_COMPLETE, rcode);
+
+	serialize_async_header_quadlet_response(header, dst_id, tlabel, retry, tcode, priority,
+						src_id, rcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected) - sizeof(expected[0]));
+}
+
+static void test_async_header_read_quadlet_request(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc0f140,
+		0xffc1ffff,
+		0xf0000984,
+		0x00000000,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	u64 offset;
+
+	deserialize_async_header_quadlet_request(expected, &dst_id, &tlabel, &retry, &tcode,
+						 &priority, &src_id, &offset);
+
+	KUNIT_EXPECT_EQ(test, 0xffc0, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x3c, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_READ_QUADLET_REQUEST, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc1, src_id);
+	KUNIT_EXPECT_EQ(test, 0xfffff0000984, offset);
+
+	serialize_async_header_quadlet_request(header, dst_id, tlabel, retry, tcode, priority,
+					       src_id, offset);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_read_quadlet_response(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc1f160,
+		0xffc00000,
+		0x00000000,
+		0x00000180,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	unsigned int rcode;
+	u32 quadlet_data;
+
+	deserialize_async_header_quadlet_response(expected, &dst_id, &tlabel, &retry, &tcode,
+						  &priority, &src_id, &rcode);
+	quadlet_data = async_header_get_quadlet_data(expected);
+
+	KUNIT_EXPECT_EQ(test, 0xffc1, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x3c, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_READ_QUADLET_RESPONSE, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc0, src_id);
+	KUNIT_EXPECT_EQ(test, RCODE_COMPLETE, rcode);
+	KUNIT_EXPECT_EQ(test, 0x00000180, quadlet_data);
+
+	serialize_async_header_quadlet_response(header, dst_id, tlabel, retry, tcode, priority,
+						src_id, rcode);
+	async_header_set_quadlet_data(header, quadlet_data);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_read_block_request(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc0e150,
+		0xffc1ffff,
+		0xf0000400,
+		0x00200000,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	u64 offset;
+	unsigned int data_length;
+	unsigned int extended_tcode;
+
+	deserialize_async_header_block_request(expected, &dst_id, &tlabel, &retry, &tcode,
+					       &priority, &src_id, &offset, &data_length,
+					       &extended_tcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc0, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x38, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_READ_BLOCK_REQUEST, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc1, src_id);
+	KUNIT_EXPECT_EQ(test, 0xfffff0000400, offset);
+	KUNIT_EXPECT_EQ(test, 0x0020, data_length);
+	KUNIT_EXPECT_EQ(test, 0x0000, extended_tcode);
+
+	serialize_async_header_block_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					     offset, data_length, extended_tcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_read_block_response(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc1e170,
+		0xffc00000,
+		0x00000000,
+		0x00200000,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	unsigned int rcode;
+	unsigned int data_length;
+	unsigned int extended_tcode;
+
+	deserialize_async_header_block_response(expected, &dst_id, &tlabel, &retry, &tcode,
+						&priority, &src_id, &rcode, &data_length,
+						&extended_tcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc1, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x38, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_READ_BLOCK_RESPONSE, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc0, src_id);
+	KUNIT_EXPECT_EQ(test, RCODE_COMPLETE, rcode);
+	KUNIT_EXPECT_EQ(test, 0x0020, data_length);
+	KUNIT_EXPECT_EQ(test, 0x0000, extended_tcode);
+
+	serialize_async_header_block_response(header, dst_id, tlabel, retry, tcode, priority,
+					      src_id, rcode, data_length, extended_tcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_lock_request(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc02d90,
+		0xffc1ffff,
+		0xf0000984,
+		0x00080002,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	u64 offset;
+	unsigned int data_length;
+	unsigned int extended_tcode;
+
+	deserialize_async_header_block_request(expected, &dst_id, &tlabel, &retry, &tcode,
+					       &priority, &src_id, &offset, &data_length,
+					       &extended_tcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc0, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x0b, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_LOCK_REQUEST, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc1, src_id);
+	KUNIT_EXPECT_EQ(test, 0xfffff0000984, offset);
+	KUNIT_EXPECT_EQ(test, 0x0008, data_length);
+	KUNIT_EXPECT_EQ(test, EXTCODE_COMPARE_SWAP, extended_tcode);
+
+	serialize_async_header_block_request(header, dst_id, tlabel, retry, tcode, priority, src_id,
+					     offset, data_length, extended_tcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+static void test_async_header_lock_response(struct kunit *test)
+{
+	static const u32 expected[ASYNC_HEADER_QUADLET_COUNT] = {
+		0xffc12db0,
+		0xffc00000,
+		0x00000000,
+		0x00040002,
+	};
+	u32 header[ASYNC_HEADER_QUADLET_COUNT] = {0, 0, 0, 0};
+
+	unsigned int dst_id;
+	unsigned int tlabel;
+	unsigned int retry;
+	unsigned int tcode;
+	unsigned int priority;
+	unsigned int src_id;
+	unsigned int rcode;
+	unsigned int data_length;
+	unsigned int extended_tcode;
+
+	deserialize_async_header_block_response(expected, &dst_id, &tlabel, &retry, &tcode,
+						&priority, &src_id, &rcode, &data_length,
+						&extended_tcode);
+
+	KUNIT_EXPECT_EQ(test, 0xffc1, dst_id);
+	KUNIT_EXPECT_EQ(test, 0x0b, tlabel);
+	KUNIT_EXPECT_EQ(test, 0x01, retry);
+	KUNIT_EXPECT_EQ(test, TCODE_LOCK_RESPONSE, tcode);
+	KUNIT_EXPECT_EQ(test, 0x00, priority);
+	KUNIT_EXPECT_EQ(test, 0xffc0, src_id);
+	KUNIT_EXPECT_EQ(test, RCODE_COMPLETE, rcode);
+	KUNIT_EXPECT_EQ(test, 0x0004, data_length);
+	KUNIT_EXPECT_EQ(test, EXTCODE_COMPARE_SWAP, extended_tcode);
+
+	serialize_async_header_block_response(header, dst_id, tlabel, retry, tcode, priority,
+					      src_id, rcode, data_length, extended_tcode);
+
+	KUNIT_EXPECT_MEMEQ(test, header, expected, sizeof(expected));
+}
+
+
+static struct kunit_case packet_serdes_test_cases[] = {
+	KUNIT_CASE(test_async_header_write_quadlet_request),
+	KUNIT_CASE(test_async_header_write_block_request),
+	KUNIT_CASE(test_async_header_write_response),
+	KUNIT_CASE(test_async_header_read_quadlet_request),
+	KUNIT_CASE(test_async_header_read_quadlet_response),
+	KUNIT_CASE(test_async_header_read_block_request),
+	KUNIT_CASE(test_async_header_read_block_response),
+	KUNIT_CASE(test_async_header_lock_request),
+	KUNIT_CASE(test_async_header_lock_response),
+	{}
+};
+
+static struct kunit_suite packet_serdes_test_suite = {
+	.name = "firewire-packet-serdes",
+	.test_cases = packet_serdes_test_cases,
+};
+kunit_test_suite(packet_serdes_test_suite);
+
+MODULE_LICENSE("GPL");
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
