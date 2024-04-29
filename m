Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7E68B5039
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 06:32:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Igs-0007FS-RG;
	Mon, 29 Apr 2024 04:32:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Igq-0007FF-8F
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+v/W52sgfzq2ue59zU7TOTW/CP2Eu1i/HIwanBpCTGo=; b=gg7uU8KjOU2gc65+jjyVD5CtQu
 hjdnDW2A3LZZVWBZRszhUFwtvuGIh31K3kjS+2hkTlbi1Yb05NTlf9I8iDBubhfWP9/YgF0rXnNj5
 JmftUBZj/HJrHVS7pjpbhdv3IRK/R6cxIL0tasVFNWPh3Ca6B2HJ3FXQYaXHo99qx75o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+v/W52sgfzq2ue59zU7TOTW/CP2Eu1i/HIwanBpCTGo=; b=BbpP7WAJqp6jVtbd6kzCd2yuu8
 mSzbcclErphE8jsUu7kE0rnUID8S9dBlHe9gPEMv59CnaM8hntUXIhu1i5jhtvJNTZ6B/EHYZ8v2X
 Pcpe9OC2M0e8slCuYpSyrM5ZMe2p17p6k2V2PYCRlY1aCPHRv2MwbMxOrV18MFkX2LzQ=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Igp-0003Aw-8H for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 254B5138022A;
 Mon, 29 Apr 2024 00:32:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 Apr 2024 00:32:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714365146; x=
 1714451546; bh=+v/W52sgfzq2ue59zU7TOTW/CP2Eu1i/HIwanBpCTGo=; b=m
 hIqjVgFsaxOAzUeO8VhexcX1tutTW8fRH6/8yqvdHtn7I0lVCOKtA32gXM6Kp2WQ
 3MNOOyBXF/XesEjjD61xmAA9gFJduY7suu7Swu2aVmTZam7W8xbn+JtGabieCDMy
 Sie3iafuUfHx+QpG2BxQMCcBUsbMfka7wwtrkBy+JHd7Jt+iuqkB7F4/Xo9kmxUn
 jLqKZsl3jhHjqFblc0A9d20NPvm0R4my6Jh52JyqjiQXVTE9DAUPzN8SDaLn3x8v
 A0nh6Prq27rQKy8+yzsZaGMkgzKwKeOjD2QhQg/ZkiDXs6SK+rGMSMvD0zPQ9Yzt
 /ZtmcT53hhtMGALOXwNFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714365146; x=
 1714451546; bh=+v/W52sgfzq2ue59zU7TOTW/CP2Eu1i/HIwanBpCTGo=; b=C
 6uWSeZA+QV2Lz2HO4gNWWFBq2HMU5UYwoqD0jBNMfb6nBrYO3AMLHXDX0c6Wwokx
 pr8aqLSeigSpk1okQOTMpyGPVPYSV1vqbForjKBe6IO+5zxVTVs6ONmbAVBiLHbJ
 G48f53B1llBNllVYqw95nmrBQtE2Lbc0tlQ/NfLb7DbWFCxkow6QYGbEKUSPUkaZ
 7/+fUJB2UcGXG9pF0HP21rP0GYOe9492BxfjxrOf5Rp1RH6evYrAABmDjkxQ618A
 iUwdW9xuttJpQRQPt+LWoT6Pqkl5DmuPX/il5tlAi1rfRh8Oq2oJyeIi+kc8Uv9e
 YKN8WWhlWx4pGaDqjk85A==
X-ME-Sender: <xms:2SIvZnKaVjajli1-GmJNpWfdck4-RHX_oEzybjYUuKmcWni4AByNiw>
 <xme:2SIvZrJKsHZ2PRHSaCJFfUpEgCADAdtcPGJ3kLTK99yC43hC-7s4StOO-IviwMdTu
 RhRJq395KeaVxw9qyg>
X-ME-Received: <xmr:2SIvZvsRpBtq-QU6jxfOhYQtSGD-4qNh7LYIhynHrI9k2c17GuRiCSYylCmHTw5cBDxFgi65UUtSkgJNa7M9ZnL2NP36_8Y7MCdlcnmoRQLKSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtledgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2SIvZgaWSq96iXVfFCiQ62ep2BDwA-0jR9bhAN4_L-SOzJe-X1KCMw>
 <xmx:2SIvZuYIV2OTVWk9RbED7keMaJVORUYf2jEnV-mkls2FoIWxLFBR_A>
 <xmx:2SIvZkAK_KYESPQhLLgQgMXg5-j4A8NypLsLHXO8IE_zEVd_9ePlxA>
 <xmx:2SIvZsZuI_COnKOfAG_PYIo1pT-Hy6A-l89FwjYFAA7GOWz0hxyTJg>
 <xmx:2iIvZtkMyLyaQByvs6e9T9JfmB0BilxvrgNZDxcoXpeHQMdLdDojqRKN>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 00:32:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] firewire: core: add tracepoints events for asynchronous
 outbound request
Date: Mon, 29 Apr 2024 13:32:15 +0900
Message-ID: <20240429043218.609398-3-o-takashi@sakamocchi.jp>
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
 Content preview:  In a view of core transaction service,
 the asynchronous outbound
 request consists of two stages; initiation and completion. This commit adds
 a pair of event for them. The following example is for asynchronous lock
 request with compare_swap code to offset 0x'ffff'f000'0904 in node 0xffc0.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1Igp-0003Aw-8H
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

In a view of core transaction service, the asynchronous outbound request
consists of two stages; initiation and completion. This commit adds a pair
of event for them.

The following example is for asynchronous lock request with compare_swap
code to offset 0x'ffff'f000'0904 in node 0xffc0.

async_request_outbound_initiate: \
  transaction=0xffff955fc6a07a10 generation=5 scode=2 dst_id=0xffc0 \
  tlabel=54 tcode=9 src_id=0xffc1 offset=0xfffff0000904 \
  header={0xffc0d990,0xffc1ffff,0xf0000904,0x80002}
  data={0x80,0x940181}
async_request_outbound_complete: \
  transaction=0xffff955fc6a07a10 generation=5 scode=2 status=2 \
  timestamp=0xd887

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |   7 ++
 include/trace/events/firewire.h     | 103 +++++++++++++++++++++++++++-
 2 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 3ecb0b945083..c9318024386f 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -29,6 +29,7 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include <trace/events/firewire.h>
 #include "packet-header-definitions.h"
 
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
@@ -173,6 +174,9 @@ static void transmit_complete_callback(struct fw_packet *packet,
 	struct fw_transaction *t =
 	    container_of(packet, struct fw_transaction, packet);
 
+	trace_async_request_outbound_complete((uintptr_t)t, packet->generation, packet->speed,
+					      status, packet->timestamp);
+
 	switch (status) {
 	case ACK_COMPLETE:
 		close_transaction(t, card, RCODE_COMPLETE, packet->timestamp);
@@ -394,6 +398,9 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 
 	spin_unlock_irqrestore(&card->lock, flags);
 
+	trace_async_request_outbound_initiate((uintptr_t)t, generation, speed, t->packet.header, payload,
+					      tcode_is_read_request(tcode) ? 0 : length / 4);
+
 	card->driver->send_request(card, &t->packet);
 }
 EXPORT_SYMBOL_GPL(__fw_send_request);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index bc55eaabf695..063695874cfb 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -7,8 +7,109 @@
 #define _FIREWIRE_TRACE_EVENT_H
 
 #include <linux/tracepoint.h>
+#include <linux/firewire.h>
 
-// Placeholder for future use.
+#include <linux/firewire-constants.h>
+
+#include "../../../drivers/firewire/packet-header-definitions.h"
+
+// The content of TP_printk field is preprocessed, then put to the module binary.
+#define ASYNC_HEADER_GET_DESTINATION(header)	\
+	(((header)[0] & ASYNC_HEADER_Q0_DESTINATION_MASK) >> ASYNC_HEADER_Q0_DESTINATION_SHIFT)
+
+#define ASYNC_HEADER_GET_TLABEL(header)	\
+	(((header)[0] & ASYNC_HEADER_Q0_TLABEL_MASK) >> ASYNC_HEADER_Q0_TLABEL_SHIFT)
+
+#define ASYNC_HEADER_GET_TCODE(header)	\
+	(((header)[0] & ASYNC_HEADER_Q0_TCODE_MASK) >> ASYNC_HEADER_Q0_TCODE_SHIFT)
+
+#define ASYNC_HEADER_GET_SOURCE(header)	\
+	(((header)[1] & ASYNC_HEADER_Q1_SOURCE_MASK) >> ASYNC_HEADER_Q1_SOURCE_SHIFT)
+
+#define ASYNC_HEADER_GET_OFFSET(header)	\
+	((((unsigned long long)((header)[1] & ASYNC_HEADER_Q1_OFFSET_HIGH_MASK)) >> ASYNC_HEADER_Q1_OFFSET_HIGH_SHIFT) << 32)| \
+	(header)[2]
+
+#define QUADLET_SIZE	4
+
+DECLARE_EVENT_CLASS(async_outbound_initiate_template,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, generation, scode, header, data, data_count),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, generation)
+		__field(u8, scode)
+		__array(u32, header, ASYNC_HEADER_QUADLET_COUNT)
+		__dynamic_array(u32, data, data_count)
+	),
+	TP_fast_assign(
+		__entry->transaction = transaction;
+		__entry->generation = generation;
+		__entry->scode = scode;
+		memcpy(__entry->header, header, QUADLET_SIZE * ASYNC_HEADER_QUADLET_COUNT);
+		memcpy(__get_dynamic_array(data), data, __get_dynamic_array_len(data));
+	),
+	// This format is for the request subaction.
+	TP_printk(
+		"transaction=0x%llx generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
+		__entry->transaction,
+		__entry->generation,
+		__entry->scode,
+		ASYNC_HEADER_GET_DESTINATION(__entry->header),
+		ASYNC_HEADER_GET_TLABEL(__entry->header),
+		ASYNC_HEADER_GET_TCODE(__entry->header),
+		ASYNC_HEADER_GET_SOURCE(__entry->header),
+		ASYNC_HEADER_GET_OFFSET(__entry->header),
+		__print_array(__entry->header, ASYNC_HEADER_QUADLET_COUNT, QUADLET_SIZE),
+		__print_array(__get_dynamic_array(data),
+			      __get_dynamic_array_len(data) / QUADLET_SIZE, QUADLET_SIZE)
+	)
+);
+
+// The value of status is one of ack codes and rcodes specific to Linux FireWire subsystem.
+DECLARE_EVENT_CLASS(async_outbound_complete_template,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, generation, scode, status, timestamp),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, generation)
+		__field(u8, scode)
+		__field(u8, status)
+		__field(u16, timestamp)
+	),
+	TP_fast_assign(
+		__entry->transaction = transaction;
+		__entry->generation = generation;
+		__entry->scode = scode;
+		__entry->status = status;
+		__entry->timestamp = timestamp;
+	),
+	TP_printk(
+		"transaction=0x%llx generation=%u scode=%u status=%u timestamp=0x%04x",
+		__entry->transaction,
+		__entry->generation,
+		__entry->scode,
+		__entry->status,
+		__entry->timestamp
+	)
+);
+
+DEFINE_EVENT(async_outbound_initiate_template, async_request_outbound_initiate,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, generation, scode, header, data, data_count)
+);
+
+DEFINE_EVENT(async_outbound_complete_template, async_request_outbound_complete,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, generation, scode, status, timestamp)
+);
+
+#undef ASYNC_HEADER_GET_DESTINATION
+#undef ASYNC_HEADER_GET_TLABEL
+#undef ASYNC_HEADER_GET_TCODE
+#undef ASYNC_HEADER_GET_SOURCE
+#undef ASYNC_HEADER_GET_OFFSET
+#undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
