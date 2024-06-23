Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFAF913ED7
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOo-0006jH-8w;
	Sun, 23 Jun 2024 22:09:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOm-0006j4-Rc
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5fRKzoSigHUcRzL6hQHux4tv35XsJTJ3RfGKgiIvETE=; b=MY7lLlQD6vLhMu3m7KdgJEz/9D
 NY+EfoO89oTZpKslFAF09lquQ7aXWi2GyXP1GpnKtGgeSf5EQd4BQ/EPHbWTYxBTh6T3pti0wY7RG
 ZOF9bwJ/fynGIVFBlgVX2wLQMPs/N5/kD4UERWNlt/oWkL59eteiSvAYkJvr8lr9KHSc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5fRKzoSigHUcRzL6hQHux4tv35XsJTJ3RfGKgiIvETE=; b=PHI87LnUhZGuZ1IB89sAO6Jgnh
 SHfdGpqcXmbCxEVU267CrpzCYvS/a3F6gDEfpMsU2Ih/BkzUvd1dpN/B7ERZT6WL8eykqaLVwp+Rw
 jPjftr8cS0uQOYp9A0EzpdcbLTsdPYDlVndh11muA0tMqWWhy5DUUACeIH3mvQbuHfC8=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOn-0002Kz-VH for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:25 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id A0963114011D;
 Sun, 23 Jun 2024 18:09:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sun, 23 Jun 2024 18:09:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180554; x=
 1719266954; bh=5fRKzoSigHUcRzL6hQHux4tv35XsJTJ3RfGKgiIvETE=; b=N
 PryTV9rG7lIrRx0eVKEz58uKC/DwC6x40hqXqI06BwttE2x8IZ2CBmjcPgMYWmjk
 LgfBlpeeyuQFCK+0MxVlQbo1ufQBL+dn5CiHMrE4VkaPkHWSgE7l21obGr6OlshJ
 OUrxqTRNJxMeWTjAEawgl7HpgIGycKTdpdroKFTAaV58ECYVZLT1/I2VU5J/szut
 iXk+/oB7D/l20O/SBSfWfqDWz+Doq91iLsbMdWCDnT/Qc219jn7KXFC4StPcNvIw
 VowC6EiIQbkgEXpvEUanI1dgEdyZxm916Lp5ZuwiWvmEG2qEyVWDURfLx2YoViSK
 x/1OEf8voKnD3M77l3Z0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180554; x=
 1719266954; bh=5fRKzoSigHUcRzL6hQHux4tv35XsJTJ3RfGKgiIvETE=; b=o
 8A1V56XedFurg9Vf+oYtF1DYxuCyDovNA3rRxp2LIQGpl3E3TfCJufr8WVAB+E+I
 lHwKuyZzPAll8Pl91wRAKavTl4L3KFMPdrFiCw13x5tS1ulxKqwY/I3KoRI3160q
 Hs/Jiq2kbjpsanaj6ygnWJGfJ736YBbtNY9JMxkJPvC3IQ07r0nkVFOPK15BoNwW
 DEg/xN12W05BDK17mPqhUBV+mY5b9MWE48R5XAiVS93vnvX9Ln41lmzPbVAFTigL
 D6Jzl0gRDzoTh/5hExfyGjoTAlKuzN0yNdwLtWPdAhfpptzmZOyJP+rBn8aHbE45
 2Zy/baX37yXiDdbMeu7rg==
X-ME-Sender: <xms:Cp14ZuCFV8RxIC6uqs2m09hsLoMLr1phM4odEhcumlW6qL8iD5sjZw>
 <xme:Cp14ZohcAS5_w3S875zVnqwb8Ey-qyGblpxxSos8Zp9C7faSl-1Qz2KKfRriSGVnp
 J6HGG_iMBUsaT7hP_M>
X-ME-Received: <xmr:Cp14ZhnudgQZtk3so7ANdB8PuyPsGwSk7g6w6LwJegyn0td4GsQJOTFVyu-ftSgbYJAF6UwdhN-cuIpNdptv8M9sCqNMUMyhfb-mP087N8nj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Cp14ZsxCfTLe0VZwCIYlk_3NAVqZb81mQMdwJ989U1j7efdVkaJ3ow>
 <xmx:Cp14ZjR9rMEMYD2CV1jvEtdPlbu0lDp82AkVffsGvCqXj7O1eqXC8g>
 <xmx:Cp14ZnajxHP3E9j89hR7w2rPsca_2ee6jX5DBVNQWULXjGnj_xU4Ow>
 <xmx:Cp14ZsQu-2ySmpZz9EOug_foQcdyp0Y_8cZeRS6HQr7Z8ZB-6dVRWQ>
 <xmx:Cp14Zud8Tjqm-gUS_JSGArSibLo_PMrNO-8l1Krx0YvDzZLPLsYO-N9v>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/7] firewire: core: add tracepoints events for queueing
 packets of isochronous context
Date: Mon, 24 Jun 2024 07:08:57 +0900
Message-ID: <20240623220859.851685-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It is helpful to trace the queueing packets of isochronous
 context when the core function is requested them by both in-kernel unit
 drivers
 and userspace applications. This commit adds some tracepoints events for
 the aim. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLVOn-0002Kz-VH
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

It is helpful to trace the queueing packets of isochronous context when
the core function is requested them by both in-kernel unit drivers and
userspace applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |  4 ++
 include/trace/events/firewire.h | 79 +++++++++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 93ca0dec1805..b3eda38a36f3 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -191,6 +191,10 @@ int fw_iso_context_queue(struct fw_iso_context *ctx,
 			 struct fw_iso_buffer *buffer,
 			 unsigned long payload)
 {
+	trace_isoc_outbound_queue(ctx, payload, packet);
+	trace_isoc_inbound_single_queue(ctx, payload, packet);
+	trace_isoc_inbound_multiple_queue(ctx, payload, packet);
+
 	return ctx->card->driver->queue_iso(ctx, packet, buffer, payload);
 }
 EXPORT_SYMBOL(fw_iso_context_queue);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index ad1546120aa3..0381b3ca4d0e 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -742,6 +742,85 @@ DEFINE_EVENT_CONDITION(isoc_flush_completions_template, isoc_inbound_multiple_fl
 	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
 );
 
+#define TP_STRUCT__entry_iso_packet(ctx, buffer_offset, packet)				\
+	TP_STRUCT__entry(								\
+		__field(u64, context)							\
+		__field(u8, card_index)							\
+		__field(u32, buffer_offset)						\
+		__field(bool, interrupt)						\
+		__field(bool, skip)							\
+		__field(u8, sy)								\
+		__field(u8, tag)							\
+		__dynamic_array(u32, header, packet->header_length / QUADLET_SIZE)	\
+	)
+
+#define TP_fast_assign_iso_packet(ctx, buffer_offset, packet)		\
+	TP_fast_assign(							\
+		__entry->context = (uintptr_t)ctx;			\
+		__entry->card_index = ctx->card->index;			\
+		__entry->buffer_offset = buffer_offset;			\
+		__entry->interrupt = packet->interrupt;			\
+		__entry->skip = packet->skip;				\
+		__entry->sy = packet->sy;				\
+		__entry->tag = packet->tag;				\
+		memcpy(__get_dynamic_array(header), packet->header,	\
+		       __get_dynamic_array_len(header));		\
+	)
+
+TRACE_EVENT_CONDITION(isoc_outbound_queue,
+	TP_PROTO(const struct fw_iso_context *ctx, unsigned long buffer_offset, const struct fw_iso_packet *packet),
+	TP_ARGS(ctx, buffer_offset, packet),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT),
+	TP_STRUCT__entry_iso_packet(ctx, buffer_offset, packet),
+	TP_fast_assign_iso_packet(ctx, buffer_offset, packet),
+	TP_printk(
+		"context=0x%llx card_index=%u buffer_offset=0x%x interrupt=%s skip=%s sy=%d tag=%u header=%s",
+		__entry->context,
+		__entry->card_index,
+		__entry->buffer_offset,
+		__entry->interrupt ? "true" : "false",
+		__entry->skip ? "true" : "false",
+		__entry->sy,
+		__entry->tag,
+		__print_array(__get_dynamic_array(header),
+			      __get_dynamic_array_len(header) / QUADLET_SIZE, QUADLET_SIZE)
+	)
+);
+
+TRACE_EVENT_CONDITION(isoc_inbound_single_queue,
+	TP_PROTO(const struct fw_iso_context *ctx, unsigned long buffer_offset, const struct fw_iso_packet *packet),
+	TP_ARGS(ctx, buffer_offset, packet),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE),
+	TP_STRUCT__entry_iso_packet(ctx, buffer_offset, packet),
+	TP_fast_assign_iso_packet(ctx, buffer_offset, packet),
+	TP_printk(
+		"context=0x%llx card_index=%u buffer_offset=0x%x interrupt=%s skip=%s",
+		__entry->context,
+		__entry->card_index,
+		__entry->buffer_offset,
+		__entry->interrupt ? "true" : "false",
+		__entry->skip ? "true" : "false"
+	)
+);
+
+TRACE_EVENT_CONDITION(isoc_inbound_multiple_queue,
+	TP_PROTO(const struct fw_iso_context *ctx, unsigned long buffer_offset, const struct fw_iso_packet *packet),
+	TP_ARGS(ctx, buffer_offset, packet),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL),
+	TP_STRUCT__entry_iso_packet(ctx, buffer_offset, packet),
+	TP_fast_assign_iso_packet(ctx, buffer_offset, packet),
+	TP_printk(
+		"context=0x%llx card_index=%u buffer_offset=0x%x interrupt=%s",
+		__entry->context,
+		__entry->card_index,
+		__entry->buffer_offset,
+		__entry->interrupt ? "true" : "false"
+	)
+);
+
+#undef TP_STRUCT__entry_iso_packet
+#undef TP_fast_assign_iso_packet
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
