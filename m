Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C96F58B8621
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24T8-0003BN-1L;
	Wed, 01 May 2024 07:33:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24T6-0003BD-0A
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UXhYUUuJV5tMvW12H0m4FPip2YTr/sl2Xn2dSZa5qW8=; b=WkQYynLlCUsLyrCP1HYA5w77Cy
 UBVDa8b1mziiuj+Qea185HMY9tbm909m7wjNo/DHIrVd090jXyVsHR9tjog69y9PgYIxUO4XFy8Ci
 niUKoeGiWJVAAop/mR5qK1jbVFFFGe45DPWjBzJypbtdIvBjdOvKnCXHVhR0KggWhFVw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UXhYUUuJV5tMvW12H0m4FPip2YTr/sl2Xn2dSZa5qW8=; b=d82R+WA++4j+6eYHx/X4q0wgSV
 c4ZnwpYgOM5OvEUR5ec3VJfDL8SNQ+yEJJtYdVKryUUTz8Q82L+yK/Ec1+6yUtI0NjNPee89i6gzX
 EHQfC0OIafazhrCkS3zVNiBsZXZeUj01kxjxq6FgzlXLJMGCWY4U4CJrLEPvKJOeIGhQ=;
Received: from wfout7-smtp.messagingengine.com ([64.147.123.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24T4-0003Xa-W9 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:33:32 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.west.internal (Postfix) with ESMTP id CACED1C000F0;
 Wed,  1 May 2024 03:33:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 01 May 2024 03:33:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714548800; x=
 1714635200; bh=UXhYUUuJV5tMvW12H0m4FPip2YTr/sl2Xn2dSZa5qW8=; b=W
 de8Sqkafz1D2bcq4aia9vDn7yU0eNXX/hQjOnVxmu91+kCed+Z6edaikvFfcv7U4
 enzsgP+8Em+EJ16x0AET+sJAE+/B/EZXZA/39xlEznBsQ2Wfy3ZV/6GVDqx1Vm4d
 CcPX/wf6TMyk/KqZHz+F0lTIRwoqYEFEY+TzQrjP6gCbpHQMpnDPYUfwV6d3Oca4
 mU04Kzu6fQKH54L8bFWbUDOGpdG+8Mx8qiAYGW3+dYtxno+B+zWRnG+I7ijYDifQ
 X2bON+OncH6ILVKcLB9gIT9sTp5m9LPuRSOydEZFs+gMeZcXeCMXsfaQh9xqbQ5s
 4kholFG914roWyPx6BBYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714548800; x=
 1714635200; bh=UXhYUUuJV5tMvW12H0m4FPip2YTr/sl2Xn2dSZa5qW8=; b=Q
 ZVlLWT3oRZfRecIvSrMN9h3fc3JL2J84d6lkP6eceMVYpaz1GuiEvkMzditprYn+
 sC33K5+v0KbyYz8twHUH2zUdSJVltIKq74lMHjjsiBiRP6UR11xAaxu2aAPF6HcT
 Y4vgKUf7HkeIKljGInNhm7SnmQwpXwLyof0ijiccYynBFHF+7vJKGdcjVZVmlR49
 gAk+RTd2Kf1GBD+ZX3UjgbeXHpfP3S7ImpSqbs7Q15T2NbEiRX0S4fFRSuWaxI+C
 +HJMbofd7kPuz2F8TOT+oL+8sNdyPco0uLwq7H/eQftlx151GV8iaClO7JBrDsBk
 aaMULPcsk8Ga2dg7Dgbfg==
X-ME-Sender: <xms:QPAxZlnr_pAmOpwqj4xX1eOg7hSfuzsxzar6e_ubl5f541OR-625Bg>
 <xme:QPAxZg1H_i-UBOQgcvwN5mw10IAKu8ZVZLXK2zoykN494zQhxw5_gBsdANzGPjjio
 vhNod2YY7X6Sr2F9jk>
X-ME-Received: <xmr:QPAxZrpGdqBqtKFkO1x2flPbAw9FUronVaRS8OhsWcSoEm6IwgVrc1sIBmI4wkxE95eTZUnwy2z5AjBmxoWYprZHDHHBJUbp1kZ0AOltb0_DmsM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:QPAxZlmlQlrXK8r2EtC1-KR_WfebCuHBG8fDoT7a56qMe9FVTwcJHA>
 <xmx:QPAxZj0hPiceHd0FvXrzuHXC1KsjqRuWNmYgKDcHrBnzuGnuuSoh8g>
 <xmx:QPAxZkuRc5KY0zZymmDMnQzYbJXhdGoOdUbQtJSvszo_4RpUAfMPpg>
 <xmx:QPAxZnXQf50xSPy96YuG_kCuNnEGzK-pH-fttRo8O3mYq1M1vZuh3Q>
 <xmx:QPAxZky1oiLdOnK-W7du4HHVcorMlpL4csIDptiJYtyI1JM3iaIZkHJB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:33:19 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/5] firewire: core: add tracepoint event for handling bus
 reset
Date: Wed,  1 May 2024 16:32:38 +0900
Message-ID: <20240501073238.72769-6-o-takashi@sakamocchi.jp>
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
 Content preview: The core function expects hardware drivers to call
 fw_core_handle_bus_reset()
 when changing bus topology. The 1394 OHCI driver calls it when handling selfID
 event as a result of any bus-reset. This commit adds a tracepoints event
 for it. Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s24T4-0003Xa-W9
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

The core function expects hardware drivers to call
fw_core_handle_bus_reset() when changing bus topology. The 1394 OHCI
driver calls it when handling selfID event as a result of any bus-reset.

This commit adds a tracepoints event for it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c |  3 +++
 include/trace/events/firewire.h  | 28 +++++++++++++++++++++++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index f40c81534381..837cc44d8d9f 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -20,6 +20,7 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include <trace/events/firewire.h>
 
 #define SELF_ID_PHY_ID(q)		(((q) >> 24) & 0x3f)
 #define SELF_ID_EXTENDED(q)		(((q) >> 23) & 0x01)
@@ -507,6 +508,8 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 	struct fw_node *local_node;
 	unsigned long flags;
 
+	trace_bus_reset_handle(generation, node_id, bm_abdicate, self_ids, self_id_count);
+
 	spin_lock_irqsave(&card->lock, flags);
 
 	/*
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 92bcbe69bb42..4163959be57a 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -204,7 +204,6 @@ DEFINE_EVENT(async_outbound_complete_template, async_response_outbound_complete,
 #undef ASYNC_HEADER_GET_SOURCE
 #undef ASYNC_HEADER_GET_OFFSET
 #undef ASYNC_HEADER_GET_RCODE
-#undef QUADLET_SIZE
 
 TRACE_EVENT(async_phy_outbound_initiate,
 	TP_PROTO(u64 packet, unsigned int generation, u32 first_quadlet, u32 second_quadlet),
@@ -317,6 +316,33 @@ DEFINE_EVENT(bus_reset_arrange_template, bus_reset_postpone,
 	TP_ARGS(generation, short_reset)
 );
 
+TRACE_EVENT(bus_reset_handle,
+	TP_PROTO(unsigned int generation, unsigned int node_id, bool bm_abdicate, u32 *self_ids, unsigned int self_id_count),
+	TP_ARGS(generation, node_id, bm_abdicate, self_ids, self_id_count),
+	TP_STRUCT__entry(
+		__field(u8, generation)
+		__field(u8, node_id)
+		__field(bool, bm_abdicate)
+		__dynamic_array(u32, self_ids, self_id_count)
+	),
+	TP_fast_assign(
+		__entry->generation = generation;
+		__entry->node_id = node_id;
+		__entry->bm_abdicate = bm_abdicate;
+		memcpy(__get_dynamic_array(self_ids), self_ids, __get_dynamic_array_len(self_ids));
+	),
+	TP_printk(
+		"generation=%u node_id=0x%04x bm_abdicate=%s self_ids=%s",
+		__entry->generation,
+		__entry->node_id,
+		__entry->bm_abdicate ? "true" : "false",
+		__print_array(__get_dynamic_array(self_ids),
+			      __get_dynamic_array_len(self_ids) / QUADLET_SIZE, QUADLET_SIZE)
+	)
+);
+
+#undef QUADLET_SIZE
+
 #endif // _FIREWIRE_TRACE_EVENT_H
 
 #include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
