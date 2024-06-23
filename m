Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7D1913ED1
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOh-0005ng-F7;
	Sun, 23 Jun 2024 22:09:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOf-0005nX-FU
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vrAz9favDBg/4g1lGjoFO1edTxLzgyyvZvPQK9eEMNc=; b=h9s6xlMcycWxG2JehKPC+5nYT6
 OOW/mFV9UrsmNc5VYnhjet0kHoFf3dL5waAEWY7uLajk9T9jgnM+casNGoISyi4uAziX7ECI8rpph
 zJhFcP95PeT8DKpD9qD+PoPOusgNMQ4E+z64ZkZSCUqc1tDYSxfZgDdCzkplaAnQmJmo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vrAz9favDBg/4g1lGjoFO1edTxLzgyyvZvPQK9eEMNc=; b=ia6BiC7urgYAmT6B2hJUAvk++Z
 jk5bQjKiH5altTRQ97hoah3x26gCZ0cQDjsqdhdGvk5BAu6A9R3RB6CaSgGbm28/SNtFHrjnOHD2h
 BpEOC4eDSBlM+KiH+kMiui8XQOO93MozRfBZXC7zwJAIY7FmhYbyGvGU7DMSJcSpabD8=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOf-0002KC-RO for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:17 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 8266F1380233;
 Sun, 23 Jun 2024 18:09:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 23 Jun 2024 18:09:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180551; x=
 1719266951; bh=vrAz9favDBg/4g1lGjoFO1edTxLzgyyvZvPQK9eEMNc=; b=j
 XJ4mpZlZ5dBJbjgmJhE4nUhnyUdOa7KsSL45cckZV+hCLfbZfnp++TX4YtXUQyDe
 mMDE7g8Ll3b9gNUAIt6+cjZwSHdCEv5OYsBcsHf7wEQQuPXdD/MeXHjmOlEfYwaP
 ycD8/HHkwWyFBl7eM55C4L92Ef0zZFZtPpYfMxyfUlUwOq2XMIHKQNQp2P47bI+B
 IljBQUYYKXvW7UNVAHSg2XTv6kmv+wbp8My1OcJlg0xALAFckPz7MQC+XwxGQ50c
 7FAS/6pwbsspK6VGKB54gZZ86TEhD5F7VLpkwD96aaZ1IfmUTwWgbfAc1I8PjrG3
 9CoohDdDr6FlfaAT0BKAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180551; x=
 1719266951; bh=vrAz9favDBg/4g1lGjoFO1edTxLzgyyvZvPQK9eEMNc=; b=k
 HzSj2sb45KzER1tg7D1be/vhCesFlEPIsUX276cnyX5S5rpa8MUjUP9Qjl7Eia9Y
 48JojUXjznWL+ggK+8SW51QecR3FyhBdYzCoAfttR/t/i+Nnq4zp+Q/gn2iTHBDB
 /0B/HKLm3z/t/OXi2YBKSwUxisVOddG9qtITHJs3SAmOQWMlxXT6pxjVG28Kc3tN
 MxYNVmaYuc3QZR8/2IzIn0pA0UJm5ZROOIPzgRqhuk+LtoqEWz1rFhJG53JWHMkg
 X+30p7DP5Vm6rUf3TU2TKnNpCAlK1FrX58EUtJZrPVBeeXP0HC7zw42ggYGtRLjb
 DKI+CP/Jsl/X1gV6CtP3g==
X-ME-Sender: <xms:B514ZrqEiDtK6E_PLuFSJVk_2tdWhdQ5GCq8lkcniiY9zrgZB5ZHEA>
 <xme:B514Zlq7ze9jAxqRmRsREkKCmNfbHiSrUnkiATa6Z4cr19qVGSyTFGGGxDvkNJg2q
 NQPqZjQXVk2kdbT7W8>
X-ME-Received: <xmr:B514ZoP5Q6slmPVPaW_bJriT6u4drKIoknld392XL8nMPzTJcaOlGYSdQ34c9yFwh2jTYi5YjLOyu2VRKdKbtGHGQern1KxWhd5TBdw6H7L->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:B514Zu5axOHZSSQvnLM9yIOf2RfafLAibUopKIqM2WqomB0UrEFQhQ>
 <xmx:B514Zq5P-P2RBZ14bVSbvGwYaJhJtQjJevOB3nip_El06RLpBxiHmA>
 <xmx:B514ZmjdnhMFP8xYM64BBr29yZji1_sgztCnQ-cpa-WYJDM_gXCAfg>
 <xmx:B514Zs5GDdSfEh60CAlLx01MwPYTIdwPyHUgEzxvPJOsFoAqWv5flw>
 <xmx:B514ZqFkcEkMy2MOvQW1aGrEEZ15veoWQjYm2wYlps-oCaSQD6Df6Nmc>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/7] firewire: core: add tracepoints events for flushing of
 isochronous context
Date: Mon, 24 Jun 2024 07:08:55 +0900
Message-ID: <20240623220859.851685-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It is helpful to trace the flushing of isochronous context
 when the core function is requested them by both in-kernel unit drivers and
 userspace applications. This commit adds some tracepoints events for the
 aim. Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sLVOf-0002KC-RO
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

It is helpful to trace the flushing of isochronous context when the core
function is requested them by both in-kernel unit drivers and userspace
applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |  4 ++++
 include/trace/events/firewire.h | 36 +++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 49feb4c28224..5bad23fcce0c 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -197,6 +197,10 @@ EXPORT_SYMBOL(fw_iso_context_queue);
 
 void fw_iso_context_queue_flush(struct fw_iso_context *ctx)
 {
+	trace_isoc_outbound_flush(ctx);
+	trace_isoc_inbound_single_flush(ctx);
+	trace_isoc_inbound_multiple_flush(ctx);
+
 	ctx->card->driver->flush_queue_iso(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_queue_flush);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index c984b7d6380f..b404e6324671 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -670,6 +670,42 @@ DEFINE_EVENT_CONDITION(isoc_stop_template, isoc_inbound_multiple_stop,
 	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
 );
 
+DECLARE_EVENT_CLASS(isoc_flush_template,
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
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_template, isoc_outbound_flush,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT)
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_template, isoc_inbound_single_flush,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE)
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_template, isoc_inbound_multiple_flush,
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
