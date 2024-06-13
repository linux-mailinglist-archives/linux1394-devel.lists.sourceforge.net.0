Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 411E290734E
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkIK-00041z-Pv;
	Thu, 13 Jun 2024 13:15:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkI6-00040i-IW
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GSAYRBUvcjGEeAPQd68KE4zWaTpTf65RgbA4e/6KOeU=; b=IsmAtwgrCzPLBpEovL8cXscHnW
 FkKWq9jslhDbwSDBpufM6bamdo2Umwwi+lIn34K/BoqYv6C3VYRTbaTFto3TKUmX3ADQIvvJOGX3Y
 o+VzGLrKMw8xEXSBJzQscY7coOxpobqspjdYnpaIeJRzFP67/l0EfPVXq3LCR+Tn16Mo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GSAYRBUvcjGEeAPQd68KE4zWaTpTf65RgbA4e/6KOeU=; b=m81D7v/+y1SDdkNIr4O5+cy4Ij
 inZtDXSG17NSSXhbBDcmt1uJ+aqu9ONddTyAxyH49hNkrCkNECaxdksZ0ju2bNXXxXx/thX3/ssPj
 mN6tKXy4iv73rYNjJwSaNUx8ZU6dKGLnudjZhQWS5O8ns2mijUbajdvjaw7Plw9rd+Uw=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkI6-0003m4-Nd for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 64B2311400B7;
 Thu, 13 Jun 2024 09:14:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 13 Jun 2024 09:14:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284487; x=
 1718370887; bh=GSAYRBUvcjGEeAPQd68KE4zWaTpTf65RgbA4e/6KOeU=; b=g
 nwcf8mFMrqdgLhjWpeVyTH1fyvITD4tCyk4k4wjRm0ri4Buu3XMXG+T+k0CKWum/
 jyxJbNMZw2mQaaJPccfChaczriERktkLAG8w/OIRkC7Vc6xYBxeQCXm5RYHM0tIQ
 9sb6x6dtDiYe9xS2nJZ0v0KRlvslcYwJsF0AIrTb30nxbRbcNS8jBfR+YEU8s90A
 kRsVmEYysI0+qZNwENZoF/GvFHiVc8YeL0Fcm2yuAvMiZD6IlJuq+dyj1StJY9Ai
 mwzrAl1e/ZK1bIQljtyljADI1Xg/ao+K9sxeW2MDrSfvnSzlvDLTjDqRGd/0Olph
 Ug29osT1iZcoOvBJZtwgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284487; x=
 1718370887; bh=GSAYRBUvcjGEeAPQd68KE4zWaTpTf65RgbA4e/6KOeU=; b=I
 h9Qj/k2cMyT9k95zlQFDCX9jcS2QIEBkpXxsGdxDmQWBJZJPa5lgFQCs86W/hSyG
 4u/wxtmyI9u0F3cp0mHXnFiN4gDe7jjnb3hNpp5PvEcABi1xY+prfo+BNnNL8KSm
 tfhcMTaapmXZ/CoCQgVHabP7N7TRSUUn3tdg1aXiHdC9tcVgVnFpfIU1GEhPoj+5
 JR6iRhyckuBeIvXA3+lz23GQSPMtLwTm/G/ejRS/WYngGGfVFcj+o/uNdn4RY2My
 dqU2FZGlSFwrjfCZsOt/rs2nsrGoGvQRQH5Oeiw3CR8K1xpxMfN493rvnW0Wma1a
 UP46maPqBSbL4zBXoAuaA==
X-ME-Sender: <xms:x_BqZs0B7YWUf2xrmCJhgK6B4oQ3DUxSeWlEPrWds07Vuqo5Rp4aGQ>
 <xme:x_BqZnEOeqzFkTJVKrD45t2opqaHYgyypVzvp9WWK8kqIqv7g2a9R9ogfQLyIumow
 QbXWHwIjEBD3bVmvJ4>
X-ME-Received: <xmr:x_BqZk4Efl7CZx2FWg_IeStuUeJ4IMCZWvjJKrbTwUx2uXK1DUOZrI_18S1elrRlWSve8J_vyNCLICShMbXF1iIz2-msHENl_inb2amYIfoftQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgiedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:x_BqZl1VUVTRgl5XsInG33MWMTOZa3uVhutnDiXMMVaH9x_DRBAsbw>
 <xmx:x_BqZvGqUo2fOO9CLcJI-S3gR_KiaAAkL3EAxdKAtLqFkqs6b5g0jw>
 <xmx:x_BqZu_q2YZiODgIIBcV0fUS0DpID0iaKdZ56MgmYyNxC0GErHs2Ww>
 <xmx:x_BqZklTzXxkLRLyenL9PJpf5EQzWkdMKOm5wWv2EmolbuUgT-GJ_w>
 <xmx:x_BqZkTFc7CYe23saoJXpzpEmvWWHvB-LbTAnhjmLuLUPqusRaU56l67>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/8] firewire: core: record card index in tracepoinrts events
 derived from async_outbound_initiate_template
Date: Thu, 13 Jun 2024 22:14:34 +0900
Message-ID: <20240613131440.431766-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
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
 Content analysis details:   (-5.2 points, 6.0 required)
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
 [103.168.172.156 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.156 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.156 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkI6-0003m4-Nd
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
 drivers/firewire/core-transaction.c | 10 ++++++----
 include/trace/events/firewire.h     | 20 ++++++++++++--------
 2 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index de75e758fd07..3f9361d15607 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -398,7 +398,8 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	trace_async_request_outbound_initiate((uintptr_t)t, generation, speed, t->packet.header, payload,
+	trace_async_request_outbound_initiate((uintptr_t)t, card->index, generation, speed,
+					      t->packet.header, payload,
 					      tcode_is_read_request(tcode) ? 0 : length / 4);
 
 	card->driver->send_request(card, &t->packet);
@@ -879,9 +880,10 @@ void fw_send_response(struct fw_card *card,
 	// Increase the reference count so that the object is kept during in-flight.
 	fw_request_get(request);
 
-	trace_async_response_outbound_initiate((uintptr_t)request, request->response.generation,
-					       request->response.speed, request->response.header,
-					       data, data ? data_length / 4 : 0);
+	trace_async_response_outbound_initiate((uintptr_t)request, card->index,
+					       request->response.generation, request->response.speed,
+					       request->response.header, data,
+					       data ? data_length / 4 : 0);
 
 	card->driver->send_response(card, &request->response);
 }
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index ca6ea9bd1eba..a3d9916cbad1 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -36,10 +36,11 @@
 #define QUADLET_SIZE	4
 
 DECLARE_EVENT_CLASS(async_outbound_initiate_template,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, header, data, data_count),
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, header, data, data_count),
 	TP_STRUCT__entry(
 		__field(u64, transaction)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, scode)
 		__array(u32, header, ASYNC_HEADER_QUADLET_COUNT)
@@ -47,6 +48,7 @@ DECLARE_EVENT_CLASS(async_outbound_initiate_template,
 	),
 	TP_fast_assign(
 		__entry->transaction = transaction;
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->scode = scode;
 		memcpy(__entry->header, header, QUADLET_SIZE * ASYNC_HEADER_QUADLET_COUNT);
@@ -54,8 +56,9 @@ DECLARE_EVENT_CLASS(async_outbound_initiate_template,
 	),
 	// This format is for the request subaction.
 	TP_printk(
-		"transaction=0x%llx generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
+		"transaction=0x%llx card_index=%u generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
 		__entry->transaction,
+		__entry->card_index,
 		__entry->generation,
 		__entry->scode,
 		ASYNC_HEADER_GET_DESTINATION(__entry->header),
@@ -142,8 +145,8 @@ DECLARE_EVENT_CLASS(async_inbound_template,
 );
 
 DEFINE_EVENT(async_outbound_initiate_template, async_request_outbound_initiate,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, header, data, data_count)
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, header, data, data_count)
 );
 
 DEFINE_EVENT(async_outbound_complete_template, async_request_outbound_complete,
@@ -178,11 +181,12 @@ DEFINE_EVENT_PRINT(async_inbound_template, async_request_inbound,
 );
 
 DEFINE_EVENT_PRINT(async_outbound_initiate_template, async_response_outbound_initiate,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
-	TP_ARGS(transaction, generation, scode, header, data, data_count),
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, card_index, generation, scode, header, data, data_count),
 	TP_printk(
-		"transaction=0x%llx generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x rcode=%u header=%s data=%s",
+		"transaction=0x%llx card_index=%u generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x rcode=%u header=%s data=%s",
 		__entry->transaction,
+		__entry->card_index,
 		__entry->generation,
 		__entry->scode,
 		ASYNC_HEADER_GET_DESTINATION(__entry->header),
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
