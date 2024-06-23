Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A71913ED2
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOh-0006iU-09;
	Sun, 23 Jun 2024 22:09:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOe-0006iB-Qs
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4jv+vH9w4muGcg/CaV1mNrjjlpC8b6fJLqUg5lO7nd8=; b=kKWHkFB+h6+5oNbSqqGw992SmU
 hGP+cVKcMTUz2JyjGnfEmVZsueG6BKyaiSW5jCVly6aKEaidlVDV0Le4NEkrZB9QvY0iXtiBuN5w2
 c67FxKRhavGayem/YFA4Uakr/V2eeN/GgrKxV91O+9uRsNK+kGsbuth65dYtPR11xZvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4jv+vH9w4muGcg/CaV1mNrjjlpC8b6fJLqUg5lO7nd8=; b=k+zerkrrkgVXWVHl3dkb8L9TE+
 Qz7ZoYjTXGYhsnhUEjs++Jt1LfKiXPDK37ZGgo37E/zA1ZU4UWitYXUlSHqettS73pQw5KZ8La+u0
 G7J8qFl4AGvUKyF7pIigUyMKZjCrXREHAnS92j6YujccQiNun4yhvZOY7VD38sVvXxI8=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOf-0002KD-SA for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:17 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 87C7C1380230;
 Sun, 23 Jun 2024 18:09:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 23 Jun 2024 18:09:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180546; x=
 1719266946; bh=4jv+vH9w4muGcg/CaV1mNrjjlpC8b6fJLqUg5lO7nd8=; b=b
 L4dBHfY9jNVzuFy/lfbTazdIWgx4o/l7Bx2VpdSJiZtB+kAVAVAADr8ahUNyWRqp
 aF69/jKl2M0Iv+Kb35ZFMUti2MrCZgPdXzpjCXs+6Q+QUMhsXD1INtIhhiioIGQV
 ilsS0YCeOHuHGKZrC/S8S30ge+Ik4A36/n6N8qTnCljkctBwXmbxovq5I2jYUNwL
 WbjMIL4axQT5LN4eji9AiHkz0pa9RKpXU6+er6UtFvy16yYqv8lZ3Ob8+XEjS3yr
 g1NC/WRnWQ4iw0Zm2zg2aLrcLTEEvjBkTsgmmw8ZNNl8p9rx1PiCK7lpx2VtxkFb
 ZVdWhln/AxbRaN+iWkg+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180546; x=
 1719266946; bh=4jv+vH9w4muGcg/CaV1mNrjjlpC8b6fJLqUg5lO7nd8=; b=s
 vkd+hGRkKbx5V8pLbMMmTF6WW/Lr1SdFfsApmPP6pp3DgN5I4sS2swc++xyaAobC
 VUXcHWzaADMZAiBd3S7i90caufHSWBbP6P7ljUcDCSIVCBbhqDZlcS9x9NO3NiuS
 xq4s8CStvlgW2FoaPW80HYA4ijLQAnktQvvKafbb3m/F0IfZf704N2enA3beD2wv
 SuQkPGlol2Om9GMA42iAOOcVMa6K/Y4yaRAcc7bmyQklD2lEc7LxNq4hNGMmV96B
 mgUOn858WZYj9FvAYJMiiJWcn1Vd+OivjiOSEeLZALaqnYjh9Il5dNprEHFsH4ZO
 orJmoxw20qDdsY9iKlOKQ==
X-ME-Sender: <xms:Ap14Zi2cAnuk8awYDFcQ-GVB2o_PbgDD5VCV6DGbVmd2dqTA2EcyqA>
 <xme:Ap14ZlEJ3_-BLDhxIusJh8RbEeL7ad6Fq6ylbmmW3f5poQgCVlF8KJsbHIGzDKl7p
 h8n5J6M2pCNMjWg83U>
X-ME-Received: <xmr:Ap14Zq4VYiB_RE2Psh7Q-DU7OzezyGeJZOgr2K9gW33T_nrjDRNwiivIxBQqaeN1lokWglSq59SOkfD61twpBq2GLrFUZxfusurs1LA7Wuh->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Ap14Zj37iA4C9T1Sm9fxMYEzMaVXXPabnEf1d1vx5GVq27y5AnuOyA>
 <xmx:Ap14ZlGLiwBy8QOofg-aWHkmXX0HgmrE7cGWusD42K_oOFKcnnEw7Q>
 <xmx:Ap14Zs-zJ8jkopzkiysGgcKTkinzzipKX03eD_SOR_SnqHY-Gr5cPg>
 <xmx:Ap14Zqka5ZsvkzEoDdn-RqaY60ReZJo8IkS18t7vrq0iLuzkyjgQzg>
 <xmx:Ap14ZqRRBOx7QRUP4f2QtkN8VI7Iyc6ASsYZUuX2yf-LKeHT-kvqr6ie>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:05 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/7] firewire: core: add tracepoints events for
 allocation/deallocation of isochronous context
Date: Mon, 24 Jun 2024 07:08:52 +0900
Message-ID: <20240623220859.851685-2-o-takashi@sakamocchi.jp>
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
 Content preview: It is helpful to trace the allocation and dealocation of
 isochronous
 when the core function is requested them by both in-kernel unit drivers and
 userspace applications. This commit adds some tracepoints events for the
 aim. Content analysis details:   (-0.2 points, 6.0 required)
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
 [103.168.172.144 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLVOf-0002KD-SA
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

It is helpful to trace the allocation and dealocation of isochronous
when the core function is requested them by both in-kernel unit drivers
and userspace applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |  10 +++
 include/trace/events/firewire.h | 105 ++++++++++++++++++++++++++++++++
 2 files changed, 115 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index af70e74f9a7e..ddb999297c72 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -22,6 +22,8 @@
 
 #include "core.h"
 
+#include <trace/events/firewire.h>
+
 /*
  * Isochronous DMA context management
  */
@@ -148,12 +150,20 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->callback.sc = callback;
 	ctx->callback_data = callback_data;
 
+	trace_isoc_outbound_allocate(ctx, channel, speed);
+	trace_isoc_inbound_single_allocate(ctx, channel, header_size);
+	trace_isoc_inbound_multiple_allocate(ctx);
+
 	return ctx;
 }
 EXPORT_SYMBOL(fw_iso_context_create);
 
 void fw_iso_context_destroy(struct fw_iso_context *ctx)
 {
+	trace_isoc_outbound_destroy(ctx);
+	trace_isoc_inbound_single_destroy(ctx);
+	trace_isoc_inbound_multiple_destroy(ctx);
+
 	ctx->card->driver->free_iso_context(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_destroy);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 25289a063deb..0cca1ef841f3 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -436,6 +436,111 @@ TRACE_EVENT(self_id_sequence,
 #undef PHY_PACKET_SELF_ID_GET_POWER_CLASS
 #undef PHY_PACKET_SELF_ID_GET_INITIATED_RESET
 
+TRACE_EVENT_CONDITION(isoc_outbound_allocate,
+	TP_PROTO(const struct fw_iso_context *ctx, unsigned int channel, unsigned int scode),
+	TP_ARGS(ctx, channel, scode),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+		__field(u8, channel)
+		__field(u8, scode)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+		__entry->channel = channel;
+		__entry->scode = scode;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u channel=%u scode=%u",
+		__entry->context,
+		__entry->card_index,
+		__entry->channel,
+		__entry->scode
+	)
+);
+
+TRACE_EVENT_CONDITION(isoc_inbound_single_allocate,
+	TP_PROTO(const struct fw_iso_context *ctx, unsigned int channel, unsigned int header_size),
+	TP_ARGS(ctx, channel, header_size),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+		__field(u8, channel)
+		__field(u8, header_size)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+		__entry->channel = channel;
+		__entry->header_size = header_size;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u channel=%u header_size=%u",
+		__entry->context,
+		__entry->card_index,
+		__entry->channel,
+		__entry->header_size
+	)
+);
+
+TRACE_EVENT_CONDITION(isoc_inbound_multiple_allocate,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL),
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
+);
+
+DECLARE_EVENT_CLASS(isoc_destroy_template,
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
+DEFINE_EVENT_CONDITION(isoc_destroy_template, isoc_outbound_destroy,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT)
+);
+
+DEFINE_EVENT_CONDITION(isoc_destroy_template, isoc_inbound_single_destroy,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE)
+);
+
+DEFINE_EVENT_CONDITION(isoc_destroy_template, isoc_inbound_multiple_destroy,
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
