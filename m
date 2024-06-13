Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B83B907349
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkI3-0000lp-Lc;
	Thu, 13 Jun 2024 13:14:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkI2-0000ld-Bg
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BW6OLSA8eA0sNRRDy/oHw2tZ3PYVfyjw3JlPniCEi10=; b=bRxItr1ed7cixSheUZb/AN5Sg3
 kOFMdmPAKk4+qBTLn7YwHFoPRrNLJnwhm2nIwR7RUaiyYZ7EtQGBni4uSTMHNMyd3IyTXv7G37voG
 kE7gEbjST43Do553XN+eSJOZYJ53A+guyhhtZMXe4QKDvX69IrbDRizm51/K1Rz/5m2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BW6OLSA8eA0sNRRDy/oHw2tZ3PYVfyjw3JlPniCEi10=; b=gyzR2BccZ0W3boc7JmzgKFxGIj
 svd9uH3Z/zyg2r20ubzVnibC2rC4sw7kHNHfhb4LaUeKdceMB2yOkdESMrJvIn9/feE8fbSAEqE3S
 O6YEezmpVVhON0Ug/4gyI8lTcJT9bbUYZtPah3gm2jnnvVllEnjR6Yh1CsPEi6va774Q=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkI3-0003lr-9R for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:55 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id DEDBE13800CA;
 Thu, 13 Jun 2024 09:14:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Jun 2024 09:14:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284488; x=
 1718370888; bh=BW6OLSA8eA0sNRRDy/oHw2tZ3PYVfyjw3JlPniCEi10=; b=P
 HMMmZc7O5x27VmnBb5CpUkc8rSV1X7h+YrdVHF5CWA/0XGMbElvIAB47Qn0vX9xs
 wQaMMj4yOqN4YeyHJO9LAakLhZHXdOnxyg1Mnd+NWxX8eNaYqX4+pAvLIaVzCps5
 OSjMWiD0PvJtcxHB2O1skCXdp8/ZzKTEsJj571+nuXyHirgwsQUBkdS8WV4VX8Xd
 qjrM4TUen3T63zebvRyJUnCImPxvZTiVf78wJSBsIRqOAZYzXivTbwM0QGhjj47n
 ETbLMfTxHw2JXwynP4ulmckTxUEpA0TVBgtVAv93jG+oD4DgbngL3i+l+dl4PDkS
 qnqtoOsSz9cPsz7WcutOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284488; x=
 1718370888; bh=BW6OLSA8eA0sNRRDy/oHw2tZ3PYVfyjw3JlPniCEi10=; b=h
 E0I+fm8UCtfEX/OEtBOa0VydLof4+im1td8JWivHwCu379wdWhr1aUkh68LbFtCZ
 t82NT8F7XEpzBKBNmoJbw14R89riswyxzvhSU+NaHSKIsSb+7HTx9ZOFoLB6eH0M
 krW1vPcoPZTD4c/tqolVRoznIQkt111ottR15ozBViPlsQcrZmSRgLYJb8hFtRum
 WXhNu/JMbPJgA38OBDSDHxl+UwptEeQVMDrPL9mGlG4CW9tDwOWx7WQKfG0Mk3Eq
 mvZmDx5LKLdCedS+6zWlORTILnE5yd22EorCzwI8mXnJ9vDRsuj9kooL/E3QvgP3
 5qN8m7SSrWdNnDpDbd7JA==
X-ME-Sender: <xms:yPBqZtgqz0T4xPBqhjDcbtBVN2nctHhAGGpDLF1mBzwv6HYvF2Ca1g>
 <xme:yPBqZiBqyYPbfkOZAPdhDJoY9AkPaLjgoOXWAUl3woXJ_kO5eOOR5j54AMwwZ4d5d
 KWCTtowO_ZaG5OWHnI>
X-ME-Received: <xmr:yPBqZtFH-56mQUXuSGXq7GjZWcH_Sj4V5Xjij31PN7lj6eXG0Y-HsE4N4F27nF_EAuSf9oTckfIFmibYRKT4_ArUP2jtSbuMuOmr2_byUDkMzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:yPBqZiTGEiuGv9plWJP2B_FC-Xyk5LQWwPRc1J71NdwF39cAMH1KKw>
 <xmx:yPBqZqx5dlLDl3jupwxIEqoC28cToDWA3iu7dI77ofmMgXeqLo6_Zw>
 <xmx:yPBqZo7yOGFF06M4meXVOb0pXYYgiq6zf8HwKzqpfFcAeGCcmdMlsQ>
 <xmx:yPBqZvxrsMBx3ZUoJnoBW_G7jF_ZibBzH10YDy5WNdMetBzV1k0Z6Q>
 <xmx:yPBqZl-Qfl3SMQY9q_qdSNsbLc70d9mKGXfcKIbJ7NQoi9D4VPMAUr7->
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:47 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/8] firewire: core: record card index in tracepoinrts events
 derived from async_inbound_template
Date: Thu, 13 Jun 2024 22:14:35 +0900
Message-ID: <20240613131440.431766-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The asynchronous transaction is initiated on one of 1394 OHCI
 controller, however the existing tracepoints events has the lack of data
 about it. This commit adds card_index member into event structure to store
 the index of host controller in use, and prints it. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkI3-0003lr-9R
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

The asynchronous transaction is initiated on one of 1394 OHCI controller,
however the existing tracepoints events has the lack of data about it.

This commit adds card_index member into event structure to store the index
of host controller in use, and prints it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  8 ++++----
 include/trace/events/firewire.h     | 20 ++++++++++++--------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 3f9361d15607..3503c238f8ae 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -1009,8 +1009,8 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 		return;
 	}
 
-	trace_async_request_inbound((uintptr_t)request, p->generation, p->speed, p->ack,
-				    p->timestamp, p->header, request->data,
+	trace_async_request_inbound((uintptr_t)request, card->index, p->generation, p->speed,
+				    p->ack, p->timestamp, p->header, request->data,
 				    tcode_is_read_request(tcode) ? 0 : request->length / 4);
 
 	offset = async_header_get_offset(p->header);
@@ -1080,8 +1080,8 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	}
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	trace_async_response_inbound((uintptr_t)t, p->generation, p->speed, p->ack, p->timestamp,
-				     p->header, data, data_length / 4);
+	trace_async_response_inbound((uintptr_t)t, card->index, p->generation, p->speed, p->ack,
+				     p->timestamp, p->header, data, data_length / 4);
 
 	if (!t) {
  timed_out:
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index a3d9916cbad1..b72f613cfa02 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -105,10 +105,11 @@ DECLARE_EVENT_CLASS(async_outbound_complete_template,
 
 // The value of status is one of ack codes and rcodes specific to Linux FireWire subsystem.
 DECLARE_EVENT_CLASS(async_inbound_template,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, status, timestamp, header, data, data_count),
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp, header, data, data_count),
 	TP_STRUCT__entry(
 		__field(u64, transaction)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, scode)
 		__field(u8, status)
@@ -118,6 +119,7 @@ DECLARE_EVENT_CLASS(async_inbound_template,
 	),
 	TP_fast_assign(
 		__entry->transaction = transaction;
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->scode = scode;
 		__entry->status = status;
@@ -127,8 +129,9 @@ DECLARE_EVENT_CLASS(async_inbound_template,
 	),
 	// This format is for the response subaction.
 	TP_printk(
-		"transaction=0x%llx generation=%u scode=%u status=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x rcode=%u header=%s data=%s",
+		"transaction=0x%llx card_index=%u generation=%u scode=%u status=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x rcode=%u header=%s data=%s",
 		__entry->transaction,
+		__entry->card_index,
 		__entry->generation,
 		__entry->scode,
 		__entry->status,
@@ -155,16 +158,17 @@ DEFINE_EVENT(async_outbound_complete_template, async_request_outbound_complete,
 );
 
 DEFINE_EVENT(async_inbound_template, async_response_inbound,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, status, timestamp, header, data, data_count)
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp, header, data, data_count)
 );
 
 DEFINE_EVENT_PRINT(async_inbound_template, async_request_inbound,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, status, timestamp, header, data, data_count),
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp, header, data, data_count),
 	TP_printk(
-		"transaction=0x%llx generation=%u scode=%u status=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
+		"transaction=0x%llx card_index=%u generation=%u scode=%u status=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
 		__entry->transaction,
+		__entry->card_index,
 		__entry->generation,
 		__entry->scode,
 		__entry->status,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
