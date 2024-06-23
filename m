Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F426913ED0
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOh-00045I-76;
	Sun, 23 Jun 2024 22:09:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOf-000459-5H
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AvtSoU7JkDe4YxYSHa6AAW4/NgOQlPr+OLHzR+pHBxM=; b=VdVWhPYNIlbDD5tVqywBlNRxHO
 brgHhJD2zFTeFOrxcAy32TD/MbsUomCeUBnz/7n4lL6k/gtivvb2D8ynTAvQFgWUc8PZj0aeBgudi
 mSHmObOaoM5fxV+KZcZ1URO+d9A76f+EPYC6LLm25Lz5/8ZH2t8L3qdTRHtTOuZwvDy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AvtSoU7JkDe4YxYSHa6AAW4/NgOQlPr+OLHzR+pHBxM=; b=kpVYATfJJuVU+UhIaPLE4wjqql
 AGrxBdngpcycVvgkwAYOV+3Q3jWvZa4ZR15ZXLTDD+QBZq/94pZX2wZPMEvYWpAzbTS+3WgShpzYA
 1LfCq9Zt2qpnVzhfFt1DhaC55Aaj1UgsXJM3GgryL9OOxnEC8ZWYfvm91sAhtt5LD7XY=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOe-0002K2-As for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:16 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 040171380232;
 Sun, 23 Jun 2024 18:09:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 23 Jun 2024 18:09:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180550; x=
 1719266950; bh=AvtSoU7JkDe4YxYSHa6AAW4/NgOQlPr+OLHzR+pHBxM=; b=T
 F3yDkXffdBoyOKifVdzrSFLRuGBTG4IS1ampLDU3MZDXdDN+D41a8s2NZYwWhlFQ
 irSBf3OSVRFsKPgiwWvSvUAIqAD1A49SrElTylwgFma4vMrZwdY7LjZwxexyrpHQ
 chRUvtRvLvPV89giRsrM0C3X3FVlf/+P4wp/eOhSqUJMYbKFvsOMJkyA/wbu0j+3
 2Ob1tVjnv6HkBpa0bodgxj4t2nXapn6CMpcB5t7hvm26hH8stuz7FSS/MriD5vUO
 uYNjJOdhjZMsr9BwS0FOgZcX1L0jMJ3KkcdaPNd+BxX8Izsna/pXKatIsPDMgfL6
 hBJNbn6ZPhaE1NntYttmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180550; x=
 1719266950; bh=AvtSoU7JkDe4YxYSHa6AAW4/NgOQlPr+OLHzR+pHBxM=; b=K
 MqvP78SZ7XUbLLQKokCJZQVUVv2zq1bNt/hZxNs4apBlFyzu1xh8xd3477PObgSG
 47x7pqSmox4kO8qA6Oi6S2+OqoHhR0RpL6kRREhAW78GgztGcMhRaI5lW324j5sE
 Y0S+I74tPBY2BokjTCR12de2AmMl6ZilMP3GJSzZGj8TdYkNYqYdOAdjltr2ivjg
 xFQ12S4qDbeIKnKXL7gNw+kphQp8gvzh6MMYLZPY20gwih0+vZXXCo66QYlpDWh+
 /nxu6IpfRFIqdp2HoVqS8aar1O1QiMEwFCkeqzsqXJcbAG1IeMJKdiMahY2E3hkt
 4texSQTa4ce2DccWHOnHg==
X-ME-Sender: <xms:BZ14ZrUMPsEx8qNnlSzQuZUpWs4YDjATrF_AoJIUrB3xvWTp_GzZ6A>
 <xme:BZ14ZjkjqPu5kCxx7xyNcc8_pFSwxMaDlC0DF2B8ylRWLH6OgCbPVWQDQ2WLPAb8U
 6pq1molQ6PdGuO3W2Y>
X-ME-Received: <xmr:BZ14ZnaNKBQu1rClXX1X_qkc4YkGDhotjpl1tp98psDlLTzNQdAgAQxQRYvhec9IRJ4Yz4fvHKa3Uqf1jX8gt7XmMbyGRLEE19koWQJN92_K>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:BZ14ZmWrBwZ5ZTAkHnkClZDvDJoQddIjUbbX-j_V1_YA9hRegLEaWA>
 <xmx:BZ14Zll8oEiqPe5sVH9VEIX_18y8HoDDj59ucmVfUZuBfyqtAzAsAg>
 <xmx:BZ14ZjeE_2zIzRqq8kfsEqjYLZaLITAJqSQqRxH5F-ycMHEa-P92Wg>
 <xmx:BZ14ZvFG5gDCcNOPIQh-ppeWOAylSTzCKQfY1u4Dt-3v5k3oPFsfHA>
 <xmx:BZ14ZqxbkwbkHG13DJhooUdZqLS3Wm4QF3SPcYDgW8k5Ji-1k9Ub4w5E>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:08 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/7] firewire: core: add tracepoints events for
 starting/stopping of isochronous context
Date: Mon, 24 Jun 2024 07:08:54 +0900
Message-ID: <20240623220859.851685-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is helpful to trace the starting and stopping of
 isochronous
 context when the core function is requested them by both in-kernel unit
 drivers
 and userspace applications. This commit adds some tracepoints events for
 the aim. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sLVOe-0002K2-As
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

It is helpful to trace the starting and stopping of isochronous context
when the core function is requested them by both in-kernel unit drivers
and userspace applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |   8 +++
 include/trace/events/firewire.h | 108 ++++++++++++++++++++++++++++++++
 2 files changed, 116 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 7ec84de846e6..49feb4c28224 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -171,6 +171,10 @@ EXPORT_SYMBOL(fw_iso_context_destroy);
 int fw_iso_context_start(struct fw_iso_context *ctx,
 			 int cycle, int sync, int tags)
 {
+	trace_isoc_outbound_start(ctx, cycle);
+	trace_isoc_inbound_single_start(ctx, cycle, sync, tags);
+	trace_isoc_inbound_multiple_start(ctx, cycle, sync, tags);
+
 	return ctx->card->driver->start_iso(ctx, cycle, sync, tags);
 }
 EXPORT_SYMBOL(fw_iso_context_start);
@@ -205,6 +209,10 @@ EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
 int fw_iso_context_stop(struct fw_iso_context *ctx)
 {
+	trace_isoc_outbound_stop(ctx);
+	trace_isoc_inbound_single_stop(ctx);
+	trace_isoc_inbound_multiple_stop(ctx);
+
 	return ctx->card->driver->stop_iso(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_stop);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 0334e02f9d94..c984b7d6380f 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -562,6 +562,114 @@ TRACE_EVENT(isoc_inbound_multiple_channels,
 	)
 );
 
+TRACE_EVENT_CONDITION(isoc_outbound_start,
+	TP_PROTO(const struct fw_iso_context *ctx, int cycle_match),
+	TP_ARGS(ctx, cycle_match),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+		__field(bool, cycle_match)
+		__field(u16, cycle)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+		__entry->cycle_match = cycle_match < 0 ? false : true;
+		__entry->cycle = __entry->cycle_match ? (u16)cycle_match : 0;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u cycle_match=%s cycle=0x%04x",
+		__entry->context,
+		__entry->card_index,
+		__entry->cycle_match ? "true" : "false",
+		__entry->cycle
+	)
+);
+
+DECLARE_EVENT_CLASS(isoc_inbound_start_template,
+	TP_PROTO(const struct fw_iso_context *ctx, int cycle_match, unsigned int sync, unsigned int tags),
+	TP_ARGS(ctx, cycle_match, sync, tags),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+		__field(bool, cycle_match)
+		__field(u16, cycle)
+		__field(u8, sync)
+		__field(u8, tags)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+		__entry->cycle_match = cycle_match < 0 ? false : true;
+		__entry->cycle = __entry->cycle_match ? (u16)cycle_match : 0;
+		__entry->sync = sync;
+		__entry->tags = tags;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u cycle_match=%s cycle=0x%04x sync=%u tags=%s",
+		__entry->context,
+		__entry->card_index,
+		__entry->cycle_match ? "true" : "false",
+		__entry->cycle,
+		__entry->sync,
+		__print_flags(__entry->tags, "|",
+			{ FW_ISO_CONTEXT_MATCH_TAG0, "0" },
+			{ FW_ISO_CONTEXT_MATCH_TAG1, "1" },
+			{ FW_ISO_CONTEXT_MATCH_TAG2, "2" },
+			{ FW_ISO_CONTEXT_MATCH_TAG3, "3" }
+		)
+	)
+);
+
+DEFINE_EVENT_CONDITION(isoc_inbound_start_template, isoc_inbound_single_start,
+	TP_PROTO(const struct fw_iso_context *ctx, int cycle_match, unsigned int sync, unsigned int tags),
+	TP_ARGS(ctx, cycle_match, sync, tags),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE)
+);
+
+DEFINE_EVENT_CONDITION(isoc_inbound_start_template, isoc_inbound_multiple_start,
+	TP_PROTO(const struct fw_iso_context *ctx, int cycle_match, unsigned int sync, unsigned int tags),
+	TP_ARGS(ctx, cycle_match, sync, tags),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
+);
+
+DECLARE_EVENT_CLASS(isoc_stop_template,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u",
+		__entry->context,
+		__entry->card_index
+	)
+)
+
+DEFINE_EVENT_CONDITION(isoc_stop_template, isoc_outbound_stop,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT)
+);
+
+DEFINE_EVENT_CONDITION(isoc_stop_template, isoc_inbound_single_stop,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE)
+);
+
+DEFINE_EVENT_CONDITION(isoc_stop_template, isoc_inbound_multiple_stop,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
+);
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
