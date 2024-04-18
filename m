Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C948A95F9
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:25:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO0W-0008NO-5Y;
	Thu, 18 Apr 2024 09:24:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzq-0008Lk-6h
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3OABItpF1JJisjkVcgLVvbjO0GkY74R1iQwCloYtwbM=; b=lNEi7ocglv7SzlBNYDVykSfoux
 pOpD0qDug4n+Vzqxntb6XPJjyo68eVQz7xVCfCk3NhT3c89futjBUx/TTldlsH5P9lm53iMkOY5oQ
 rfY0ukBBIPG7r5miWgg2u8JEXWOSS7vBcbDKydRXm1mrj9LaxQBi3pOduYV3tBysK0Fs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3OABItpF1JJisjkVcgLVvbjO0GkY74R1iQwCloYtwbM=; b=Mzymv9clE0f//dQkIrDBhIudEz
 zY9f8QIfc6oPmXf07hCL/KbMytD+/Qly+37OYPUEiR4Fp6gbXDqfP4jx8mP3VWtA1/g0DtxcFvWkP
 RHIKPde9NnJkLU9tOmlbaBvKVNp2DaQcxR18/h72t3fUNoyGRnDdkXwFmxCms9y+1K4s=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzo-0001Qm-FY for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:57 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 760D8114010A;
 Thu, 18 Apr 2024 05:23:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Thu, 18 Apr 2024 05:23:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432201; x=
 1713518601; bh=3OABItpF1JJisjkVcgLVvbjO0GkY74R1iQwCloYtwbM=; b=S
 sg59SjcTv4+DcqC8eMlsZ/zPxkKv2iNV/yvgcOUwG87KpxzoC3t3ix3nE1nuh0Ns
 LfB8FuqlCTwKvIVZbFF4zp82gIsq1SpTgi230MPYdSCwhMJn91gVs6aYz30OBA5/
 lOGnwkhH7pWo0yRaJKGHdHstXAnjqlP1nl7IpMlQ7x3l/Pw/df+0FXLkOlSdmxv8
 t4orY++nOeDIm90HuafC3HmxCqpbouaMB+/aJcStAK1hkg3QPPGkMY5aLvfYceUL
 +VCXdT8ECBMA0QtMu4f3AnfyEpAEG+UVutwSlxx1gFKsrlIGfESXlj2StgZ60hEn
 Cki/wv/NhbRABYhUx4nkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432201; x=
 1713518601; bh=3OABItpF1JJisjkVcgLVvbjO0GkY74R1iQwCloYtwbM=; b=b
 n6wtJ5pHVVmTnjKnScJB0ZzTxISLQPJmAVhKli9CSUIoMIBlziSN/RFl7OC5gA7H
 wGkXgzwqatmJ0ym8MylluMLrPIIQtEsqC04Kv+eae4aWLru6eec22AqRxGUrSplw
 f1g7WO48BspDa9pY+QilhFxv1b5rKLisSjrTZRcLXUl2jxDXK7GwHxOh1zVmM5CM
 s4l6/SLg72c4CEyq8InWwgWvfpwP2mdELkQamQgRbV+SCc5ZWCLhoB6lbk5q6uyI
 TdXgCDRhKayLST68tinhzMYzZVyICiqVSlN5cD/flkVb13MaIKqwVy+oKbQ+2MEe
 9fcIUtQ9ql16/tLfjpmBg==
X-ME-Sender: <xms:ieYgZphEQ2gse6UcCFn-954uezXYBU3Px5Y6wesViI9evv4ct-Tyfw>
 <xme:ieYgZuDgWijWfvc6G7TLIxD0FrTOF-AbP36UNiOi9du0fTe4gyRjdHKwdS-imfKUh
 zRu4npJLEsjBXYm7Ic>
X-ME-Received: <xmr:ieYgZpFXm1puASJXlZ59_qH8lmnCI4vFBPBpOKEShcQdHmps5XhClmM0JhWFSN99YGonX9JrBPuupqWrqLDKgT_mEpuKK8mdW4SYC9LPhDABbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ieYgZuT6X-Ee2xWpYtDftVGEjv-T_vUwKYJorGV8AdhA4fNDMO5lQw>
 <xmx:ieYgZmxvum82f2R9LGOP_f-AdhlqVqXDnVxRC4188MCUaYZiHVnJzg>
 <xmx:ieYgZk4V8_Ks81qgw6A6kB0KZl5QoNnedIOvE3gSg_n41ImyWyPTiw>
 <xmx:ieYgZry3KZGQJsSxhxZaOEgvbedmIQipH0cl9NCHBykqNgGoA0OOGQ>
 <xmx:ieYgZh9-ox2WDnMSE-m7xRJwEahebUoK0JqrKzulQfL_PPwjIYgAaMUb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:20 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 10/13] firewire: core: add tracepoints events for
 asynchronous outbound request
Date: Thu, 18 Apr 2024 18:23:00 +0900
Message-ID: <20240418092303.19725-11-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-10-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
 <20240418092303.19725-4-o-takashi@sakamocchi.jp>
 <20240418092303.19725-5-o-takashi@sakamocchi.jp>
 <20240418092303.19725-6-o-takashi@sakamocchi.jp>
 <20240418092303.19725-7-o-takashi@sakamocchi.jp>
 <20240418092303.19725-8-o-takashi@sakamocchi.jp>
 <20240418092303.19725-9-o-takashi@sakamocchi.jp>
 <20240418092303.19725-10-o-takashi@sakamocchi.jp>
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
 a pair of event for them. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-transaction.c | 6 +++ drivers/firewire/trace.h
 | 80 ++++++++++++++++++++++++++++- 2 files changed, 85 insertions(+), [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxNzo-0001Qm-FY
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
consists of two stages; initiation and completion.

This commit adds a pair of event for them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  6 +++
 drivers/firewire/trace.h            | 80 ++++++++++++++++++++++++++++-
 2 files changed, 85 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 52d8d483c178..11a60094182a 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -29,6 +29,7 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include "trace.h"
 #include "packet-header-definitions.h"
 
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
@@ -173,6 +174,8 @@ static void transmit_complete_callback(struct fw_packet *packet,
 	struct fw_transaction *t =
 	    container_of(packet, struct fw_transaction, packet);
 
+	trace_async_request_outbound_complete(card, t, packet);
+
 	switch (status) {
 	case ACK_COMPLETE:
 		close_transaction(t, card, RCODE_COMPLETE, packet->timestamp);
@@ -394,6 +397,9 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 
 	spin_unlock_irqrestore(&card->lock, flags);
 
+	trace_async_request_outbound_initiate(card, t, &t->packet, payload,
+					      tcode_is_read_request(tcode) ? 0 : length / 4);
+
 	card->driver->send_request(card, &t->packet);
 }
 EXPORT_SYMBOL_GPL(__fw_send_request);
diff --git a/drivers/firewire/trace.h b/drivers/firewire/trace.h
index d36a10460301..0f7d176ba647 100644
--- a/drivers/firewire/trace.h
+++ b/drivers/firewire/trace.h
@@ -7,8 +7,86 @@
 #define _FIREWIRE_TRACE_EVENT_H
 
 #include <linux/tracepoint.h>
+#include <linux/firewire.h>
 
-// Placeholder for future use.
+#include <linux/firewire-constants.h>
+
+#include "packet-header-definitions.h"
+
+TRACE_EVENT(async_request_outbound_initiate,
+	TP_PROTO(const struct fw_card *card, const struct fw_transaction *transaction,
+		 const struct fw_packet *packet, const u32 *data, size_t data_count),
+	TP_ARGS(card, transaction, packet, data, data_count),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, scode)
+		__field(u8, generation)
+		__field(u16, destination)
+		__field(u8, tlabel)
+		__field(u8, retry)
+		__field(u8, tcode)
+		__field(u8, priority)
+		__field(u16, source)
+		__field(u64, offset)
+		__dynamic_array(u32, data, data_count)
+	),
+	TP_fast_assign(
+		__entry->transaction = (u64)transaction;
+		__entry->scode = packet->speed;
+		__entry->generation = packet->generation;
+		__entry->destination = async_header_get_destination(packet->header);
+		__entry->tlabel = async_header_get_tlabel(packet->header);
+		__entry->retry = async_header_get_retry(packet->header);
+		__entry->tcode = async_header_get_tcode(packet->header);
+		__entry->priority = async_header_get_priority(packet->header);
+		__entry->source = async_header_get_source(packet->header);
+		__entry->offset = async_header_get_offset(packet->header);
+		memcpy(__get_dynamic_array(data), data, __get_dynamic_array_len(data));
+	),
+	TP_printk(
+		"transaction=0x%llx scode=%u generation=%u dst_id=0x%04x tlabel=%u retry=%u tcode=%u priority=%u src_id=0x%04x offset=0x%012llx data=%s",
+		__entry->transaction,
+		__entry->scode,
+		__entry->generation,
+		__entry->destination,
+		__entry->tlabel,
+		__entry->retry,
+		__entry->tcode,
+		__entry->priority,
+		__entry->source,
+		__entry->offset,
+		__print_array(__get_dynamic_array(data),
+			      __get_dynamic_array_len(data) / sizeof(u32), sizeof(u32))
+	)
+)
+
+TRACE_EVENT(async_request_outbound_complete,
+	TP_PROTO(const struct fw_card *card, const struct fw_transaction *transaction,
+		 const struct fw_packet *packet),
+	TP_ARGS(card, transaction, packet),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, scode)
+		__field(u8, generation)
+		__field(u8, ack)
+		__field(u16, timestamp)
+	),
+	TP_fast_assign(
+		__entry->transaction = (u64)transaction;
+		__entry->scode = packet->speed;
+		__entry->generation = packet->generation;
+		__entry->ack = packet->ack;
+		__entry->timestamp = packet->timestamp;
+	),
+	TP_printk(
+		"transaction=0x%llx scode=%u generation=%u ack=%u timestamp=0x%04x",
+		__entry->transaction,
+		__entry->scode,
+		__entry->generation,
+		__entry->ack,
+		__entry->timestamp
+	)
+)
 
 #endif // _FIREWIRE_TRACE_EVENT_H
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
