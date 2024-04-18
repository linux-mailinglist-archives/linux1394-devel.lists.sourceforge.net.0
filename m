Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB778A95F0
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO02-0001pS-Sw;
	Thu, 18 Apr 2024 09:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzo-0001nY-K4
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I8JF/lc0fwY+8HUxUwF74jT5UxEyTs7wRVVyo2OzKhg=; b=O3X43GtNkC5Ungsmd6hPU9/aYg
 hj1PUtOjmAHgroO9E8oFR7Z7AMwBl+yJhYNs7nm8RwrZX+Dzln7uYaZFSUKt/UtUPUTMsCaI3WX6N
 gf7cyDScekV2l4zuAD6il72GQ+HWMX+Zg0FjbCRJifH5wrurBBLFSj5aiK6HKRnmPrKI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I8JF/lc0fwY+8HUxUwF74jT5UxEyTs7wRVVyo2OzKhg=; b=gcJmDKCUbY1ev8XdNuZtwuSlh2
 i7jm0hLjqASPhkFH1o75mSB311XkMf+jCGF6Tgbx5gayKYt9w81kMWwSWiGe3PTGXcCy7GATsm7Gd
 eX2ycfVUEShQ/wrcyCN6/zVMfO9JgceCu+LgMTmIHeLXgf+5cs92X46nIPYzVhhRLX90=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzd-0001QM-Pv for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:56 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2169111400F6;
 Thu, 18 Apr 2024 05:23:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432200; x=
 1713518600; bh=I8JF/lc0fwY+8HUxUwF74jT5UxEyTs7wRVVyo2OzKhg=; b=c
 VzmE+6p60aLdEBC73ImhLsE0bhZv6wPyQLbSjxY9N5/JIhIsEZKgBOakVwR5n7+Y
 v1GROfYVXqsSGe1qK3hkm1IWf7lXtf8tGabpVxiCD0a2MgedIJq9eWG+tJ6rTebi
 lU2KiXKs7LrMWEgHqRpIZEeA160bJ8k5p2eduPv19w4sQ4RK2BmD3C1XzpS7GSA/
 jYhEjfeVrDa9IqOlGC1pdr/Qmr+3GG6CXpKsjdiyWY/lfLR9vxSWZBj1alO+WzmO
 roWxSRC/qBO7zZwIlKe2dN578ftEupuGrSFVSx9G9vjbzp0pQUVfkvYKdU/V1HBS
 jVPSGCiGHdYyB/5oivrkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432200; x=
 1713518600; bh=I8JF/lc0fwY+8HUxUwF74jT5UxEyTs7wRVVyo2OzKhg=; b=F
 NxU8BAO9nyZIwT1e7f0ujBthRff7xUmLgItgICiS3jln6fqvjCIUxwXxXNHD8fRk
 lfmbdA+M2sI4dwXtcHEvJu8TSuYTWzAeAAsVQjHCuERy6qqc/dIv06JcdQc6B8aX
 ur3zss6X5APx6ocSmid/uuaOAsgrek+Y2pJ/d7nypD+Q+LcL930PSK48zGdtA/83
 E8PsnqS80c6/+RVI5dRvUd06VeTA+wwYPZuYRrC3kYmjokOymLh61wH3H0KCzx2j
 0PVyR7wejin8lgUTrAvYZdONlYM57RmXMhJZRLqN4zfX7vDeH97wWonGv+hNlxpr
 UBsmDNpF5+hFge7mB/HKw==
X-ME-Sender: <xms:h-YgZoCfnVQoDA19oqqICd_nGJNMEIlSvvxclMwqvVFEMcLi6BJqwA>
 <xme:h-YgZqgFYPZZMzQkHrvfcvF6Oox5QoCSVaoYmsVwxhnt8u4rgBsCdBzYmM7EOU7Ur
 ju5jd9Jzyp8kZa0_Zw>
X-ME-Received: <xmr:h-YgZrmwNwo1QhLfCeiDs5_Nfm0ma8h9CNRqGGnIIJErc0ae34GRIbVsicf18h_g0rdb_S37MxZh-DFI6UHaEmkeKBJuBU0hxLfiajSvMU55vA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:h-YgZuzg6_-KElappZdKrzW9JlTOaPHjQyYbtkX9-T5-J0m4u-gR6Q>
 <xmx:h-YgZtSQViEOOcBamlkgOgN3ALjSxpQgrNuZtYAwrETjp0pxM-M0eg>
 <xmx:h-YgZpa-UNSDVMfqoGhd337X6qt6Gcnw6O1mODJqHTR52_Go3jpNTQ>
 <xmx:h-YgZmR7gSrQp1joI_CPBFvteRwZClzFE9YcROZqWXeATKQ0ombBbA>
 <xmx:iOYgZodki2dy5YFEtsE4L5pyg5zH5nxdDshrAzjjb0YfCXEYppEF-BsC>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 09/13] firewire: core: add support for Linux kernel
 tracepoints
Date: Thu, 18 Apr 2024 18:22:59 +0900
Message-ID: <20240418092303.19725-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-9-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
 <20240418092303.19725-4-o-takashi@sakamocchi.jp>
 <20240418092303.19725-5-o-takashi@sakamocchi.jp>
 <20240418092303.19725-6-o-takashi@sakamocchi.jp>
 <20240418092303.19725-7-o-takashi@sakamocchi.jp>
 <20240418092303.19725-8-o-takashi@sakamocchi.jp>
 <20240418092303.19725-9-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The Linux Kernel Tracepoints framework is enough useful to
 trace packet data inbound to and outbound from core. This commit adds firewire
 subsystem to use the framework. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/Makefile | 5 ++++- drivers/firewire/trace.c | 5 +++++
 drivers/firewire/trace.h | 17 +++++++++++++++++ 3 files changed, 26 [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.153 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rxNzd-0001QM-Pv
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

The Linux Kernel Tracepoints framework is enough useful to trace
packet data inbound to and outbound from core.

This commit adds firewire subsystem to use the framework.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/Makefile |  5 ++++-
 drivers/firewire/trace.c  |  5 +++++
 drivers/firewire/trace.h  | 17 +++++++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firewire/trace.c
 create mode 100644 drivers/firewire/trace.h

diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
index bbde29a0fba6..92376e045805 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -3,12 +3,15 @@
 # Makefile for the Linux IEEE 1394 implementation
 #
 
-firewire-core-y += core-card.o core-cdev.o core-device.o \
+firewire-core-y += trace.o core-card.o core-cdev.o core-device.o \
                    core-iso.o core-topology.o core-transaction.o
 firewire-ohci-y += ohci.o
 firewire-sbp2-y += sbp2.o
 firewire-net-y  += net.o
 
+# Let "include/trace/define_trace.h" find the header.
+CFLAGS_trace.o := -I$(src)
+
 obj-$(CONFIG_FIREWIRE)      += firewire-core.o
 obj-$(CONFIG_FIREWIRE_OHCI) += firewire-ohci.o
 obj-$(CONFIG_FIREWIRE_SBP2) += firewire-sbp2.o
diff --git a/drivers/firewire/trace.c b/drivers/firewire/trace.c
new file mode 100644
index 000000000000..ffe427764a90
--- /dev/null
+++ b/drivers/firewire/trace.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (c) 2024 Takashi Sakamoto
+
+#define CREATE_TRACE_POINTS
+#include "trace.h"
diff --git a/drivers/firewire/trace.h b/drivers/firewire/trace.h
new file mode 100644
index 000000000000..d36a10460301
--- /dev/null
+++ b/drivers/firewire/trace.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (c) 2024 Takashi Sakamoto
+
+#define TRACE_SYSTEM	firewire
+
+#if !defined(_FIREWIRE_TRACE_EVENT_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _FIREWIRE_TRACE_EVENT_H
+
+#include <linux/tracepoint.h>
+
+// Placeholder for future use.
+
+#endif // _FIREWIRE_TRACE_EVENT_H
+
+#define TRACE_INCLUDE_PATH	.
+#define TRACE_INCLUDE_FILE	trace
+#include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
