Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CA8B861C
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24Sy-0004fa-Uo;
	Wed, 01 May 2024 07:33:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24Sw-0004fS-Hk
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3et/NwBVInRkKPuHxHe5wh8LNXDVK91DOcQrlzNNZd0=; b=abA9+OrleJRIp9YUX/dFqmfpjL
 8d9iKlGoDPdSr3B9iPFFqjoKp+jmAGEStsFnNmebt40Xsw5cdNJ2GvGS+qNgOkZGFcwmImcLsEMqj
 juGGf1SXjk28QVkajI+s8BU74JDjAlKsHYf6f3AejbGTd+zCCjUZ0IwxvK0IkHJNox3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3et/NwBVInRkKPuHxHe5wh8LNXDVK91DOcQrlzNNZd0=; b=EQNEoojsHsjXO1/5S87LxSZ/1c
 7GrHqc+2wYDDtwv7iOYG/CxzjS0dyZgm3+ElF7GOKRpvPyM2mM0Semegu0+GHFh/QKdPK9KSPAm4G
 pTum5SmhiARXQnn+pEZEQ09FvZo/jCXKv48xJq88Zu2jPIc1z3HcPH5g+QAAI2g6pCG0=;
Received: from wfhigh1-smtp.messagingengine.com ([64.147.123.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24Sv-0003VZ-Dr for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:22 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.west.internal (Postfix) with ESMTP id 415831800113;
 Wed,  1 May 2024 03:33:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 01 May 2024 03:33:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714548795; x=
 1714635195; bh=3et/NwBVInRkKPuHxHe5wh8LNXDVK91DOcQrlzNNZd0=; b=V
 0XNnrNSwzWxyo8m1w4sguAKtA5S/Bm74mH4LsLVw9dlXjJOeYINWNJhBM6h4t+V2
 cUAFkePakBWZpWALgN9IHsKtZ1quW8vyLZHZ9QZAMXgSvVWWGLT+btoYaTNz0OkT
 UExdQHVStUdUuT5Ikt4YVeY3vdAubONyK7S4sUivglNc45LaRg0yeqs4P0AE05KW
 JK7P40EpJPgr7lWKE7/Ybfr4lwizPPz30YeB4ryWwGEoWB7OwBlN2MeP1Utspf1a
 Wq1C3/Nei9o6dnhgL3o5CN2z8UakiEC0jRCrbAD9ebaF/58xY+gRrK85x7D0ueoE
 HCWi03EQsf/On8p0x7w2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714548795; x=
 1714635195; bh=3et/NwBVInRkKPuHxHe5wh8LNXDVK91DOcQrlzNNZd0=; b=U
 KRtw/JaauZI7UP43GUzBAYaLO47enOH4bxivCUQaeuVOr2JrPlBbHnWbLu76bHQ3
 kwTxLldZRBGQwhxTl4hR1hIP2AzpcFzoozaCUpWaFYZy7aomjkm1HE+ZcYOY4Wa/
 hr1cQky3AtvNs7gkusb1Pclatv0H9TDkaRvCicYeJdFdexSu3JrmhMWgXqn15k3D
 bS9pkC5hKADzLwAbmhQiCjc1Ru4wfVwnm4Dd0E5egaQi1E0ToaW/dzEcnGXWhVdK
 AmBiNu8LJy783M2a2FI/X4Yim1lqNi2Pw+F7iKyebul27KcQoE15Sp7tdAvB3rfI
 4H/c8UzhobfSgyq1rPYzQ==
X-ME-Sender: <xms:O_AxZgmZEGbx4PSyM492TkcsnD6Dbx1njfqNwjnoJBXYC6udJMYi3g>
 <xme:O_AxZv1a0YiUqGpSJIJWvi_SRFd1TpK2asrMQ1pC1cMiHEdW4Z6azqxmpYhA4qp3j
 fjaVWFR5pUc0kCUKHw>
X-ME-Received: <xmr:O_AxZupjf5dqlRrqU1Z7K0r58eGPd6aoLIdBHBqgEWCh0pcmj_YH-vK7zSJp4ffm1NIYLAeqc2xfX5Y8gPL8bqheEJM7CSmCgob_kjOwHHKfMfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:O_AxZskynUHMi9IcK6rO6uND_-G4d9S52Mbf9_nmNU2oQl1O9bUNsg>
 <xmx:O_AxZu35HoeYZzLnPM8Q6EKCSC0KV4sY4OqZLkF81XNasPMJJ7pTRw>
 <xmx:O_AxZjv0HcpjbSYePqBQH969-xpgxxMvPFXYwJ3jN9C6i2YaoW46Lg>
 <xmx:O_AxZqWQL7swICdUrWibPwsYl9ah5BVuHKu6HpUsLk2UoTs3MtQ9-A>
 <xmx:O_AxZjyGvH-NHVnXWxKal9Z3O7_E6apjO1pP0GioJGpO3-LSw4xo3Fw_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:33:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/5] firewire: core: add tracepoints events for initiating bus
 reset
Date: Wed,  1 May 2024 16:32:36 +0900
Message-ID: <20240501073238.72769-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
References: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: At a commit 673249124304 ("firewire: core: option to log bus
 reset initiation"), some kernel log messages were added to trace initiation
 of bus reset. The kernel log messages are really helpful, while [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.152 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s24Sv-0003VZ-Dr
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

At a commit 673249124304 ("firewire: core: option to log bus reset
initiation"), some kernel log messages were added to trace initiation of
bus reset. The kernel log messages are really helpful, while nowadays it
is not preferable just for debugging purpose. For the purpose, Linux
kernel tracepoints is more preferable.

This commit adds some alternative tracepoints events.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c    |  7 +++++++
 include/trace/events/firewire.h | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index dac1b0fc7a42..5d43acf45a7d 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -23,6 +23,7 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include <trace/events/firewire.h>
 
 #define define_fw_printk_level(func, kern_level)		\
 void func(const struct fw_card *card, const char *fmt, ...)	\
@@ -221,6 +222,8 @@ static int reset_bus(struct fw_card *card, bool short_reset)
 	int reg = short_reset ? 5 : 1;
 	int bit = short_reset ? PHY_BUS_SHORT_RESET : PHY_BUS_RESET;
 
+	trace_bus_reset_initiate(card->generation, short_reset);
+
 	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
 		fw_notice(card, "initiating %s bus reset\n",
 		          short_reset ? "short" : "long");
@@ -230,6 +233,8 @@ static int reset_bus(struct fw_card *card, bool short_reset)
 
 void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
 {
+	trace_bus_reset_schedule(card->generation, short_reset);
+
 	if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
 		fw_notice(card, "scheduling %s bus reset\n",
 		          short_reset ? "short" : "long");
@@ -252,6 +257,8 @@ static void br_work(struct work_struct *work)
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
 	    time_before64(get_jiffies_64(), card->reset_jiffies + 2 * HZ)) {
+		trace_bus_reset_postpone(card->generation, card->br_short);
+
 		if (unlikely(fw_core_param_debug & FW_CORE_PARAM_DEBUG_BUSRESETS))
 			fw_notice(card, "delaying bus reset\n");
 		if (!queue_delayed_work(fw_workqueue, &card->br_work, 2 * HZ))
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index db49b9828bd1..92bcbe69bb42 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -284,6 +284,39 @@ TRACE_EVENT(async_phy_inbound,
 	)
 );
 
+DECLARE_EVENT_CLASS(bus_reset_arrange_template,
+	TP_PROTO(unsigned int generation, bool short_reset),
+	TP_ARGS(generation, short_reset),
+	TP_STRUCT__entry(
+		__field(u8, generation)
+		__field(bool, short_reset)
+	),
+	TP_fast_assign(
+		__entry->generation = generation;
+		__entry->short_reset = short_reset;
+	),
+	TP_printk(
+		"generation=%u short_reset=%s",
+		__entry->generation,
+		__entry->short_reset ? "true" : "false"
+	)
+);
+
+DEFINE_EVENT(bus_reset_arrange_template, bus_reset_initiate,
+	TP_PROTO(unsigned int generation, bool short_reset),
+	TP_ARGS(generation, short_reset)
+);
+
+DEFINE_EVENT(bus_reset_arrange_template, bus_reset_schedule,
+	TP_PROTO(unsigned int generation, bool short_reset),
+	TP_ARGS(generation, short_reset)
+);
+
+DEFINE_EVENT(bus_reset_arrange_template, bus_reset_postpone,
+	TP_PROTO(unsigned int generation, bool short_reset),
+	TP_ARGS(generation, short_reset)
+);
+
 #endif // _FIREWIRE_TRACE_EVENT_H
 
 #include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
