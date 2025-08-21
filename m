Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C3DB2E96E
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Aug 2025 02:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w2k+MV4yVh97nQAYslKFwt2bIlJWhsYGpIz2E0Vr3Qc=; b=Z6oGLtkEhVwoaxqF/CjiEXLvvR
	R3VscUyYE3oYxaMI6J2+Ow7ynRcbBd+XeRVbNd27Kse3nPl+e2RP5+KFq46IcG5IQtMZfnZIhc45K
	oAnLQ0FyUqa6ZcE3YpHIT4sTbgIikDCHd2aXKhRBbmwR/uWGSkmMeYWWAa4VOM3ITRIs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uotCN-0005w7-E1;
	Thu, 21 Aug 2025 00:30:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uotCL-0005vx-45
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nyWOmltExSU1DHt6R0TL8wUd6e6chXbsFXoPGfEB9CA=; b=mQ+djK9GHcuCVBx3PIJ5SbJhGM
 CeXanen7IcUp3mmIQ8VjMdWWBlPzexMAqszeLU8boQufqzkHn8l5LKw25BZ1APEHYwFHiihE2HYTr
 2skGV/k99nFaCjOBLNgw7zQKTL2k2CkgbOhjQMagRBuoDl5ZmgtBdFiW6pJBS9orlhFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nyWOmltExSU1DHt6R0TL8wUd6e6chXbsFXoPGfEB9CA=; b=HUClRJIDYWTCdqGuIPIEFOtjyd
 tgdXfBAbtlxiIiZBjUm8RrACckOfnCWyAawvLu0X9iwHRkQZdGbPsfAeJjxFwkN7caiYB215mAT5H
 pc6wsYDsezQazhjb4MxKeiocmEG1/PYtusTynZHxwzj6EWdOApoFU4MLEPuOefMAv7Vw=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uotCJ-0005BK-QM for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:33 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 27C06EC0143;
 Wed, 20 Aug 2025 20:30:26 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 20 Aug 2025 20:30:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755736226; x=
 1755822626; bh=nyWOmltExSU1DHt6R0TL8wUd6e6chXbsFXoPGfEB9CA=; b=k
 Uqp0JnrT4ES9WeUengP8OGEX7ZI/pwjqdDBcjiZS1iBHdUJtMmqZ3MzwI9vAPJ7U
 a1pg/avj3yyYaMCv9LJqNZpJfsNGvTnPj/+P+oohjfAJjLt5buD8UeSjA4PrKoBR
 sMzeJrk2Nr0QCAIO2f++g24rRYUZ/94ujVm2JIMMGeXrkum1HMn4ESqhfjekHPVw
 0qnop2DU5uXE8915+c1xnh6/WqlQq8PitZImfCzVt2e4OOV1WL/nawlZIVwhvNEg
 1Ip7t0f1Ku2xeQqwlW68Sb6TTROor5+L6fCUX8NgS3tAXXIr/tfpT1dY5fh5dhrL
 U+oZAfV6KCJRRr7MDK5qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755736226; x=1755822626; bh=n
 yWOmltExSU1DHt6R0TL8wUd6e6chXbsFXoPGfEB9CA=; b=KRPGF3NKdIZpZ1H5n
 JL678SjVaqDGuAW3A6rnnBqdUv0pG9IlBnxEzgOoh4qgoSP5wA91JMjEOF15CwFP
 x8OBLri/cv7oMfhcbLtuesdMBJsvLrFOM1C4oNo8ZhK7fFtNfNn8UUAwemW/Dwuz
 Q9hhrbtH+NfJrosGSFZW3cbdiEEzVBSAt5yfIJsw+JzQ97YT4GLoo48zYF8Ak2Ji
 uvi6WEvKgO6vx4tj/s3QNwaZZRpHiX3rbuFPz+SrpZ8GSzwvg511ydBX+nt4z97t
 S5sSk1VzSKWEktY5qMlC32Pl8n8uaj8vJB9V8/uYNhrz0ZEo9ZWokTtlUDG+qR37
 6MLyA==
X-ME-Sender: <xms:omimaFWvBNRjEOwMRHLwxmgH6nxTkLkmLr6pwY5hvBNT5TNcZCrXkA>
 <xme:omimaOiCp72vSs8ezo7rakmjsYUgPfycB8Bp01b8kqEyV6cMq4mpEY19-7kcQUAJs
 pJq7c8bQjpYDQO_mQU>
X-ME-Received: <xmr:omimaDUYZ7ukB7CJ8E4I5Aze0pBgsVfYyOQueBA96ixXBvpKU5JzsqIxww0g_UYcb5e1BPrV9Rj5BLZG4zBh2o--r2PWDiUggItqlLHE5ZEC9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheelkeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:omimaFOfFY32F4oDWFHh_HKs7WbOpeoqqVt6qqbOlzKQD7_-nPubng>
 <xmx:omimaPZfrwuTGjEA-gpn1o-MiX3S7NbZokiB62mjr0wuZyx3ctEdnQ>
 <xmx:omimaBroKIkIFuDfFUzIt7Whb4Znee8dcaHq9ouf0npHQSFE9li4Xw>
 <xmx:omimaLaytJM3mpi-eqtKpT4tx_serQ-obfvXsm-3m-GW2XXrX3QQzQ>
 <xmx:omimaO52Jt1GfRLW_yQ2a5akZX5NBjNmuRdSyzyGa_XoH4up3CxNBB5o>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Aug 2025 20:30:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/4] firewire: ohci: remove obsolete debug logging for AT/AR
 results
Date: Thu, 21 Aug 2025 09:30:16 +0900
Message-ID: <20250821003017.186752-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
References: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Between v6.11 and v6.12, a set of tracepoints was added to
 record asynchronous communication events: - firewire:async_phy_inbound -
 firewire:async_phy_outbound_initiate - firewire:async_phy_outbound_complete
 - firewire:async_response_inbound - firewire:async_response_outbound_initiate
 - firewire:asyn [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uotCJ-0005BK-QM
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

Between v6.11 and v6.12, a set of tracepoints was added to record
asynchronous communication events:

- firewire:async_phy_inbound
- firewire:async_phy_outbound_initiate
- firewire:async_phy_outbound_complete
- firewire:async_response_inbound
- firewire:async_response_outbound_initiate
- firewire:async_response_outbound_complete
- firewire:async_request_inbound
- firewire:async_request_outbound_initiate
- firewire:async_request_outbound_complete

These tracepoints cover the functionality of the existing debug logging.
This commit removes the logging.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 132 ++++++----------------------------------
 1 file changed, 19 insertions(+), 113 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 8cecdf4c6572..ae7f75fade8d 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -393,123 +393,15 @@ MODULE_PARM_DESC(quirks, "Chip quirks (default = 0"
 	", IR wake unreliable = "	__stringify(QUIRK_IR_WAKE)
 	")");
 
-#define OHCI_PARAM_DEBUG_AT_AR		1
-
 static int param_debug;
 module_param_named(debug, param_debug, int, 0644);
 MODULE_PARM_DESC(debug, "Verbose logging, deprecated in v6.11 kernel or later. (default = 0"
-	", AT/AR events = "	__stringify(OHCI_PARAM_DEBUG_AT_AR)
 	", or a combination, or all = -1)");
 
 static bool param_remote_dma;
 module_param_named(remote_dma, param_remote_dma, bool, 0444);
 MODULE_PARM_DESC(remote_dma, "Enable unfiltered remote DMA (default = N)");
 
-static const char *evts[] = {
-	[0x00] = "evt_no_status",	[0x01] = "-reserved-",
-	[0x02] = "evt_long_packet",	[0x03] = "evt_missing_ack",
-	[0x04] = "evt_underrun",	[0x05] = "evt_overrun",
-	[0x06] = "evt_descriptor_read",	[0x07] = "evt_data_read",
-	[0x08] = "evt_data_write",	[0x09] = "evt_bus_reset",
-	[0x0a] = "evt_timeout",		[0x0b] = "evt_tcode_err",
-	[0x0c] = "-reserved-",		[0x0d] = "-reserved-",
-	[0x0e] = "evt_unknown",		[0x0f] = "evt_flushed",
-	[0x10] = "-reserved-",		[0x11] = "ack_complete",
-	[0x12] = "ack_pending ",	[0x13] = "-reserved-",
-	[0x14] = "ack_busy_X",		[0x15] = "ack_busy_A",
-	[0x16] = "ack_busy_B",		[0x17] = "-reserved-",
-	[0x18] = "-reserved-",		[0x19] = "-reserved-",
-	[0x1a] = "-reserved-",		[0x1b] = "ack_tardy",
-	[0x1c] = "-reserved-",		[0x1d] = "ack_data_error",
-	[0x1e] = "ack_type_error",	[0x1f] = "-reserved-",
-	[0x20] = "pending/cancelled",
-};
-
-static void log_ar_at_event(struct fw_ohci *ohci,
-			    char dir, int speed, u32 *header, int evt)
-{
-	static const char *const tcodes[] = {
-		[TCODE_WRITE_QUADLET_REQUEST]	= "QW req",
-		[TCODE_WRITE_BLOCK_REQUEST]	= "BW req",
-		[TCODE_WRITE_RESPONSE]		= "W resp",
-		[0x3]				= "-reserved-",
-		[TCODE_READ_QUADLET_REQUEST]	= "QR req",
-		[TCODE_READ_BLOCK_REQUEST]	= "BR req",
-		[TCODE_READ_QUADLET_RESPONSE]	= "QR resp",
-		[TCODE_READ_BLOCK_RESPONSE]	= "BR resp",
-		[TCODE_CYCLE_START]		= "cycle start",
-		[TCODE_LOCK_REQUEST]		= "Lk req",
-		[TCODE_STREAM_DATA]		= "async stream packet",
-		[TCODE_LOCK_RESPONSE]		= "Lk resp",
-		[0xc]				= "-reserved-",
-		[0xd]				= "-reserved-",
-		[TCODE_LINK_INTERNAL]		= "link internal",
-		[0xf]				= "-reserved-",
-	};
-	int tcode = async_header_get_tcode(header);
-	char specific[12];
-
-	if (likely(!(param_debug & OHCI_PARAM_DEBUG_AT_AR)))
-		return;
-
-	if (unlikely(evt >= ARRAY_SIZE(evts)))
-		evt = 0x1f;
-
-	if (evt == OHCI1394_evt_bus_reset) {
-		ohci_notice(ohci, "A%c evt_bus_reset, generation %d\n",
-			    dir, (header[2] >> 16) & 0xff);
-		return;
-	}
-
-	switch (tcode) {
-	case TCODE_WRITE_QUADLET_REQUEST:
-	case TCODE_READ_QUADLET_RESPONSE:
-	case TCODE_CYCLE_START:
-		snprintf(specific, sizeof(specific), " = %08x",
-			 be32_to_cpu((__force __be32)header[3]));
-		break;
-	case TCODE_WRITE_BLOCK_REQUEST:
-	case TCODE_READ_BLOCK_REQUEST:
-	case TCODE_READ_BLOCK_RESPONSE:
-	case TCODE_LOCK_REQUEST:
-	case TCODE_LOCK_RESPONSE:
-		snprintf(specific, sizeof(specific), " %x,%x",
-			 async_header_get_data_length(header),
-			 async_header_get_extended_tcode(header));
-		break;
-	default:
-		specific[0] = '\0';
-	}
-
-	switch (tcode) {
-	case TCODE_STREAM_DATA:
-		ohci_notice(ohci, "A%c %s, %s\n",
-			    dir, evts[evt], tcodes[tcode]);
-		break;
-	case TCODE_LINK_INTERNAL:
-		ohci_notice(ohci, "A%c %s, PHY %08x %08x\n",
-			    dir, evts[evt], header[1], header[2]);
-		break;
-	case TCODE_WRITE_QUADLET_REQUEST:
-	case TCODE_WRITE_BLOCK_REQUEST:
-	case TCODE_READ_QUADLET_REQUEST:
-	case TCODE_READ_BLOCK_REQUEST:
-	case TCODE_LOCK_REQUEST:
-		ohci_notice(ohci,
-			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s, %012llx%s\n",
-			    dir, speed, async_header_get_tlabel(header),
-			    async_header_get_source(header), async_header_get_destination(header),
-			    evts[evt], tcodes[tcode], async_header_get_offset(header), specific);
-		break;
-	default:
-		ohci_notice(ohci,
-			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s%s\n",
-			    dir, speed, async_header_get_tlabel(header),
-			    async_header_get_source(header), async_header_get_destination(header),
-			    evts[evt], tcodes[tcode], specific);
-	}
-}
-
 static inline void reg_write(const struct fw_ohci *ohci, int offset, u32 data)
 {
 	writel(data, ohci->registers + offset);
@@ -855,8 +747,6 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	p.timestamp  = status & 0xffff;
 	p.generation = ohci->request_generation;
 
-	log_ar_at_event(ohci, 'R', p.speed, p.header, evt);
-
 	/*
 	 * Several controllers, notably from NEC and VIA, forget to
 	 * write ack_complete status at PHY packet reception.
@@ -1464,8 +1354,6 @@ static int handle_at_packet(struct context *context,
 	evt = le16_to_cpu(last->transfer_status) & 0x1f;
 	packet->timestamp = le16_to_cpu(last->res_count);
 
-	log_ar_at_event(ohci, 'T', packet->speed, packet->header, evt);
-
 	switch (evt) {
 	case OHCI1394_evt_timeout:
 		/* Async response transmit timed out. */
@@ -1670,6 +1558,25 @@ static void at_context_transmit(struct at_context *ctx, struct fw_packet *packet
 static void detect_dead_context(struct fw_ohci *ohci,
 				const char *name, unsigned int regs)
 {
+	static const char *const evts[] = {
+		[0x00] = "evt_no_status",	[0x01] = "-reserved-",
+		[0x02] = "evt_long_packet",	[0x03] = "evt_missing_ack",
+		[0x04] = "evt_underrun",	[0x05] = "evt_overrun",
+		[0x06] = "evt_descriptor_read",	[0x07] = "evt_data_read",
+		[0x08] = "evt_data_write",	[0x09] = "evt_bus_reset",
+		[0x0a] = "evt_timeout",		[0x0b] = "evt_tcode_err",
+		[0x0c] = "-reserved-",		[0x0d] = "-reserved-",
+		[0x0e] = "evt_unknown",		[0x0f] = "evt_flushed",
+		[0x10] = "-reserved-",		[0x11] = "ack_complete",
+		[0x12] = "ack_pending ",	[0x13] = "-reserved-",
+		[0x14] = "ack_busy_X",		[0x15] = "ack_busy_A",
+		[0x16] = "ack_busy_B",		[0x17] = "-reserved-",
+		[0x18] = "-reserved-",		[0x19] = "-reserved-",
+		[0x1a] = "-reserved-",		[0x1b] = "ack_tardy",
+		[0x1c] = "-reserved-",		[0x1d] = "ack_data_error",
+		[0x1e] = "ack_type_error",	[0x1f] = "-reserved-",
+		[0x20] = "pending/cancelled",
+	};
 	u32 ctl;
 
 	ctl = reg_read(ohci, CONTROL_SET(regs));
@@ -2601,7 +2508,6 @@ static int ohci_cancel_packet(struct fw_card *card, struct fw_packet *packet)
 		dma_unmap_single(ohci->card.device, packet->payload_bus,
 				 packet->payload_length, DMA_TO_DEVICE);
 
-	log_ar_at_event(ohci, 'T', packet->speed, packet->header, 0x20);
 	driver_data->packet = NULL;
 	packet->ack = RCODE_CANCELLED;
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
