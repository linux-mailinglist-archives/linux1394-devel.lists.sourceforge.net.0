Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA38B5037
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 06:32:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Igq-0000ht-M1;
	Mon, 29 Apr 2024 04:32:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Igp-0000hk-5l
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8x1ayh0rdEcHJ/0K+RxhHA07RKEwCYeuO2LAWr/frNA=; b=TCTHL6AGl/vPxVwkOYruWnUjHq
 Wo9H4Odquvpn+4pzbwHuTz/dP+ClLASbunyn49n7lldXkEsx9J7XndEV8Tv45g+LM/ME3UDBBv8pq
 vMLg36dC36TWm4Q+XMEE1iA2WAAPhvoJhpRV6qsaO16zrYDx9OBW3iO/RgC1dvO+Rzqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8x1ayh0rdEcHJ/0K+RxhHA07RKEwCYeuO2LAWr/frNA=; b=HChPE8naRPnHhsSvNUGM+6HSEa
 jHYjmiBd9QAb3zuQoEncxhMTIseKn4g3oVd0RcAbwb88mjca1B0D+rjtnAC79kdPqadQ3AEWNb4DM
 ER+7IDcH9d+LtkY4badgoVvpheiT+35VdXSaJnWi3zGEzNvtl5BCS6XRoix5qqItywOk=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Ign-0003Al-UR for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:31 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.nyi.internal (Postfix) with ESMTP id B5A061380221;
 Mon, 29 Apr 2024 00:32:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 29 Apr 2024 00:32:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714365144; x=
 1714451544; bh=8x1ayh0rdEcHJ/0K+RxhHA07RKEwCYeuO2LAWr/frNA=; b=J
 8ZEgBcrwRhO8sLViLhketzlN+StkEwk97LCKZ/NoL/RLQBCni8AivV99eS5spyzz
 XjMl8IMn28zdp4B5nn1QFUv66sQvqcJUiFNr+Kh4WQTa8EM4T1v9uYU2NhHV5hH+
 XyUYM5NSz4adV9Q06ZiZ0ncttpcgg++ddBIo+8b0kxydIqKSYVOcHMbQBKXQLdRI
 2xY9K8v6Kcc6wTak2ng2qQJOgZEQcii4d7DVufcuFR5+TphhwRPByYMwvaGkjqt6
 RcjS631pZ8DyeV/nanK84jSw1yHoafd/t8N/1IxCqrHBcm/J8/t2Yy3rHFzai9q8
 9CyKXZmv/VdcAVYzPEJeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714365144; x=
 1714451544; bh=8x1ayh0rdEcHJ/0K+RxhHA07RKEwCYeuO2LAWr/frNA=; b=K
 IcrUOg1rK1jO4pZNtc8rmnaTx/ECBBEzytM/P9aH6xfPK2ecD8eRNdMxfeAKpdCM
 U0UjlOp6n9C7MWT9euyjYVmrxstC07RgUKfD2nLCfeDmQ6UB9y3K9nOD05dz89eY
 5JWZlUQE1a9GZwL6k8YpNPeuQYJ+SIsq12oZxglIBphA16q2fTwq3QpMH3i4IanR
 MBKLHlzFEjprXJ3PqfddDnLkD9w468OuzkwIC1lY95YEIQz2BoJ9Fe64XyEfxjSR
 9qrAvbf/Ca1RRqYrbNSWjaGKigtrx5EijDcF1sBAc522jZ1TZyr53NDKxOKhOJoP
 wbkRJm4qMYSzb3Ec/8P9Q==
X-ME-Sender: <xms:2CIvZjTGW16oHoa_2OhRxOkF461kbjpoSB3IahnpovO2DaiVn8ak4Q>
 <xme:2CIvZkw4DLnxUkGHztz8MerwAG3FLAufcqU1gosf1CZNB1GxggWZ67EmEYy8rWP-a
 GjY2-tFY-I6eR2jxRA>
X-ME-Received: <xmr:2CIvZo2YOIpjSRIGxymU4L6nSQnI7lUbb5VgfUeVcFQGi4SELOH3S56yKZI1yFLz5by1_lOpRAfb0nlfk8v47iySKDuHUI-EtlJ43wTjgsroOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtledgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2CIvZjAOB-CqyhxaodiYNYLMnRZWfXunUZn6rTf_liql0SpU7qgOng>
 <xmx:2CIvZsjuQ6o3bnJ-SQW3IAIauX_wqwevbEg6jwrlylNe1Z5flc5jEw>
 <xmx:2CIvZnr3upjF0AmnFukqQacsTdoRwZBTH75T8YfbTUXiqlXP1MJ8mA>
 <xmx:2CIvZniMCGWUuUho70FpnnjoFxMBRmW8OIVf0_rS-yGee5sbT-80Wg>
 <xmx:2CIvZvsMw5tlt6hS2h4lw0EJTcQgTRe_S5w6NekVAano8JBg5HQT-Nf4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 00:32:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/5] firewire: core: add support for Linux kernel tracepoints
Date: Mon, 29 Apr 2024 13:32:14 +0900
Message-ID: <20240429043218.609398-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
References: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The Linux Kernel Tracepoints framework is enough useful to
 trace packet data inbound to and outbound from core. This commit adds firewire
 subsystem to use the framework. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/Makefile | 2 +- drivers/firewire/core-trace.c | 5 +++++
 include/trace/events/firewire.h | 15 +++++++++++++++ 3 files chan [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1Ign-0003Al-UR
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
 drivers/firewire/Makefile       |  2 +-
 drivers/firewire/core-trace.c   |  5 +++++
 include/trace/events/firewire.h | 15 +++++++++++++++
 3 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firewire/core-trace.c
 create mode 100644 include/trace/events/firewire.h

diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
index bbde29a0fba6..013e1f2641bd 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -3,7 +3,7 @@
 # Makefile for the Linux IEEE 1394 implementation
 #
 
-firewire-core-y += core-card.o core-cdev.o core-device.o \
+firewire-core-y += core-trace.o core-card.o core-cdev.o core-device.o \
                    core-iso.o core-topology.o core-transaction.o
 firewire-ohci-y += ohci.o
 firewire-sbp2-y += sbp2.o
diff --git a/drivers/firewire/core-trace.c b/drivers/firewire/core-trace.c
new file mode 100644
index 000000000000..96cbd9d384dc
--- /dev/null
+++ b/drivers/firewire/core-trace.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (c) 2024 Takashi Sakamoto
+
+#define CREATE_TRACE_POINTS
+#include <trace/events/firewire.h>
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
new file mode 100644
index 000000000000..bc55eaabf695
--- /dev/null
+++ b/include/trace/events/firewire.h
@@ -0,0 +1,15 @@
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
+#include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
