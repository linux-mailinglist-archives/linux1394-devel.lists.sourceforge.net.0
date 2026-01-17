Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6968D38F0C
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7AcqDsPfgKixePcwgkMwJV8GIzUYPJk7w5UPn0IzfK4=; b=VzfB5YJ5aLNG4TRqPEvgRe7S7V
	EWYnX5K0AXm1FVWmA73a69iifjPGUjFPQNl7i0Mdi0BysL6kkbMl9/W6z0xuh8JHv+rPcW4u2KLye
	xiA45AEihn/hDmOlcHizMRnvvIXKSYz/NYhllUO+Ev9WRAKm7CptRzP7b/AX/bU8GhqA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7ID-00051j-I7;
	Sat, 17 Jan 2026 14:28:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7IA-00051Q-Lp
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L69nTUKr80md3xIu1CjiVgzag8CMaupxPGCGNgA0l6Y=; b=ay8B9X9dYxXv9QNWCAQN/uMlOj
 9Ltmi/mFhvWkSgzFV9Ct2zqpnFeFYNdQr+T+THBNZACH02lYlziU6Mkx0Uag77Ivvn68AEHG7e51F
 haMudAL89J8bUw/I5zO5xl6jwuec3htgfXKoHMgM2k7kBnNjPA7B9+rZXRTsZetIpzuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L69nTUKr80md3xIu1CjiVgzag8CMaupxPGCGNgA0l6Y=; b=mjqffcMUep8Gtq1K/TDEXex1Vh
 jyJSVhJ61oqwuut2zTFJQAh3NvuvLXaSy/7AyEd36w2GCYS/Ny7fCCBFBZesCUdASNlR6VhC2irlG
 HdDpvseORZih2MU8mkbie+tdRS23q072b6nFo6z9kMrjYU7b0OL16Ch4CfBbU5ll3Vhw=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7I9-0001W9-3V for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:41 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 9047A7A0336;
 Sat, 17 Jan 2026 09:28:30 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sat, 17 Jan 2026 09:28:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660110; x=
 1768746510; bh=L69nTUKr80md3xIu1CjiVgzag8CMaupxPGCGNgA0l6Y=; b=Z
 94nX7l4G4KPUaPNYckbndQCY8CzRstwE8Pa3GNa3f+huSrI89k5esbaLPZAQFkKS
 vIQgHEQe8e0uElLgNgp28QgD/ovAESFgGYzzXfVsHNmjzGnuy5+bpVUHxDJDg5H+
 AreG+andu8WKvrmMI2frVi2vyoovJcOi4dspb3RVXuSgA88R5JJtPpsoARRcdgeH
 icAkka3ktWfgT6/qrCpjuE3qy0BhES/MEJNMX+5mujQqmW/IWkYu7cu/iRmSnxdL
 J0+CebITCa+xpKtitFNdf7vAnlkYOGMme8R8oYWLRaXev99IRlR7vjyDxhIRa24k
 JWxNkxHdTJX0cPtTQ4EvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660110; x=1768746510; bh=L
 69nTUKr80md3xIu1CjiVgzag8CMaupxPGCGNgA0l6Y=; b=CbIOu9003/AETFFAY
 s4eTgXlWrfDiRkCIg+tFQdGW1vp8V0VN/Uu7pIMkUjD17MKskhKtShE0o0NxHOes
 C6MLzQTAKSU6/gtvJxCzWKL4LW7Nmt8fpE788w9ioHIH2YNMgpBDy+rQwobE7n5b
 D+H6/92ZJkoDrz97pEAfLQWL8QQVTlNZmW/cP9ZYVTxiUb3ynfYk5negNpAxgA3S
 R2mtvTgFK4ufzQ8Rv9u1et3ejuqAetdhwWS3foFq0jj7zxutwn4rh+MIfK4lsEOt
 /GlfSn5vKPzib0c+5kF58JSnngcJNc3tOB50p/Z+A+vkzv/ZfhTzhKUWCXp48V0Z
 2fBBg==
X-ME-Sender: <xms:jpxraZAl70L3cPLYKKBFcR4XbFHxRDTbeTFhpjpi4w__MKzHJIFdsQ>
 <xme:jpxraXrf4-YM0sQxjB4XDh3orvmfpgNrCKmUB_nuVTPr1GLp5xdlxZ4WAR_vjqbSL
 BqGS8KJ9ro3VFsvXXjD6DXYfs14dqYUgeJJhh4r-MrnV8oL75AYeg>
X-ME-Received: <xmr:jpxracjMGEgG01fSCfo_6Vk6wHzfrSh9F2w1AdJboLfgLsjnfjbNoryXXHIZbF7z2zMe9cwFzG4d3_J_8O6INz8b1ubXUSg8KgvuOt031UvbCA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeelueffudduhf
 ffkeffvdefvdekheefjefggeegieehkedutdevkeefgefggeekffenucffohhmrghinhep
 tggrlhhlsggrtghkrdhstgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggp
 rhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtg
 hpthhtoheplhhinhhugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jpxracChGZZqQ-_dsqYmjQzZsOFfWfdh1lR_fzDdCKCIqm1dq-EvbA>
 <xmx:jpxraZFsJvtuP_5EAeg9BMo_zoxwKD-nEKwrS0PFJt9ezM76Im7BdA>
 <xmx:jpxracKNsiHuCDEMWf9B52GhBwEmG3_RoMNkLy-zeyvU0remg0fU5w>
 <xmx:jpxraVnde1x26lVo6o5TPjnImsEe__-vIUBss2JSSecGR3Us3eN6Gg>
 <xmx:jpxraWkWmoCgtVI4EjdVpyRQnCDjdhk1HU2-neKLmpYCHxSQlIuxOL8m>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:29 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/9] firewire: ohci: refactor isoc single-channel state using
 a union
Date: Sat, 17 Jan 2026 23:28:15 +0900
Message-ID: <20260117142823.440811-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI driver, some members of struct iso_context are
 only used for single-channel isochronous contexts. This commit groups these
 members into a union. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 68 +++++++++++++++++++++++++ 1 file changed,
 41 insertions(+), 27 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vh7I9-0001W9-3V
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI driver, some members of struct iso_context are only used for
single-channel isochronous contexts.

This commit groups these members into a union.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 68 +++++++++++++++++++++++++----------------
 1 file changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 339047a2e768..b1dc0c4feb86 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -168,14 +168,18 @@ struct at_context {
 struct iso_context {
 	struct fw_iso_context base;
 	struct context context;
-	void *header;
-	size_t header_length;
 	unsigned long flushing_completions;
 	u32 mc_buffer_bus;
 	u16 mc_completed;
-	u16 last_timestamp;
 	u8 sync;
 	u8 tags;
+	union {
+		struct {
+			u16 last_timestamp;
+			size_t header_length;
+			void *header;
+		} sc;
+	};
 };
 
 #define CONFIG_ROM_SIZE		(CSR_CONFIG_ROM_END - CSR_CONFIG_ROM)
@@ -2735,29 +2739,28 @@ static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
 
 static void flush_iso_completions(struct iso_context *ctx, enum fw_iso_context_completions_cause cause)
 {
-	trace_isoc_inbound_single_completions(&ctx->base, ctx->last_timestamp, cause, ctx->header,
-					      ctx->header_length);
-	trace_isoc_outbound_completions(&ctx->base, ctx->last_timestamp, cause, ctx->header,
-					ctx->header_length);
+	trace_isoc_inbound_single_completions(&ctx->base, ctx->sc.last_timestamp, cause,
+					      ctx->sc.header, ctx->sc.header_length);
+	trace_isoc_outbound_completions(&ctx->base, ctx->sc.last_timestamp, cause, ctx->sc.header,
+					ctx->sc.header_length);
 
-	ctx->base.callback.sc(&ctx->base, ctx->last_timestamp,
-			      ctx->header_length, ctx->header,
-			      ctx->base.callback_data);
-	ctx->header_length = 0;
+	ctx->base.callback.sc(&ctx->base, ctx->sc.last_timestamp, ctx->sc.header_length,
+			      ctx->sc.header, ctx->base.callback_data);
+	ctx->sc.header_length = 0;
 }
 
 static void copy_iso_headers(struct iso_context *ctx, const u32 *dma_hdr)
 {
 	u32 *ctx_hdr;
 
-	if (ctx->header_length + ctx->base.header_size > PAGE_SIZE) {
+	if (ctx->sc.header_length + ctx->base.header_size > PAGE_SIZE) {
 		if (ctx->base.drop_overflow_headers)
 			return;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
 	}
 
-	ctx_hdr = ctx->header + ctx->header_length;
-	ctx->last_timestamp = (u16)le32_to_cpu((__force __le32)dma_hdr[0]);
+	ctx_hdr = ctx->sc.header + ctx->sc.header_length;
+	ctx->sc.last_timestamp = (u16)le32_to_cpu((__force __le32)dma_hdr[0]);
 
 	/*
 	 * The two iso header quadlets are byteswapped to little
@@ -2770,7 +2773,7 @@ static void copy_iso_headers(struct iso_context *ctx, const u32 *dma_hdr)
 		ctx_hdr[1] = swab32(dma_hdr[0]); /* timestamp */
 	if (ctx->base.header_size > 8)
 		memcpy(&ctx_hdr[2], &dma_hdr[2], ctx->base.header_size - 8);
-	ctx->header_length += ctx->base.header_size;
+	ctx->sc.header_length += ctx->base.header_size;
 }
 
 static int handle_ir_packet_per_buffer(struct context *context,
@@ -2920,18 +2923,18 @@ static int handle_it_packet(struct context *context,
 
 	sync_it_packet_for_cpu(context, d);
 
-	if (ctx->header_length + 4 > PAGE_SIZE) {
+	if (ctx->sc.header_length + 4 > PAGE_SIZE) {
 		if (ctx->base.drop_overflow_headers)
 			return 1;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
 	}
 
-	ctx_hdr = ctx->header + ctx->header_length;
-	ctx->last_timestamp = le16_to_cpu(last->res_count);
+	ctx_hdr = ctx->sc.header + ctx->sc.header_length;
+	ctx->sc.last_timestamp = le16_to_cpu(last->res_count);
 	/* Present this value as big-endian to match the receive code */
 	*ctx_hdr = cpu_to_be32((le16_to_cpu(pd->transfer_status) << 16) |
 			       le16_to_cpu(pd->res_count));
-	ctx->header_length += 4;
+	ctx->sc.header_length += 4;
 
 	if (last->control & cpu_to_le16(DESCRIPTOR_IRQ_ALWAYS))
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_INTERRUPT);
@@ -3008,12 +3011,16 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	}
 
 	memset(ctx, 0, sizeof(*ctx));
-	ctx->header_length = 0;
-	ctx->header = (void *) __get_free_page(GFP_KERNEL);
-	if (ctx->header == NULL) {
-		ret = -ENOMEM;
-		goto out;
+
+	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		ctx->sc.header_length = 0;
+		ctx->sc.header = (void *) __get_free_page(GFP_KERNEL);
+		if (!ctx->sc.header) {
+			ret = -ENOMEM;
+			goto out;
+		}
 	}
+
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
 		goto out_with_header;
@@ -3027,7 +3034,10 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	return &ctx->base;
 
  out_with_header:
-	free_page((unsigned long)ctx->header);
+	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		free_page((unsigned long)ctx->sc.header);
+		ctx->sc.header = NULL;
+	}
  out:
 	scoped_guard(spinlock_irq, &ohci->lock) {
 		switch (type) {
@@ -3127,7 +3137,11 @@ static void ohci_free_iso_context(struct fw_iso_context *base)
 
 	ohci_stop_iso(base);
 	context_release(&ctx->context);
-	free_page((unsigned long)ctx->header);
+
+	if (base->type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		free_page((unsigned long)ctx->sc.header);
+		ctx->sc.header = NULL;
+	}
 
 	guard(spinlock_irqsave)(&ohci->lock);
 
@@ -3475,7 +3489,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
 		case FW_ISO_CONTEXT_RECEIVE:
-			if (ctx->header_length != 0)
+			if (ctx->sc.header_length != 0)
 				flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH);
 			break;
 		case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
