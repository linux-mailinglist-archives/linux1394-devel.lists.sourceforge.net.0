Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7503290734A
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkI2-00040H-FE;
	Thu, 13 Jun 2024 13:14:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkI0-000408-9b
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NvQzQ47m1U5OGfyvPMSQ/8AM7Gju2h3IEllXTQfsmL0=; b=Li4uC0oZsMRRMQ3aHcYidGUI3H
 Fa2WxWPVMy2Qre/nsh+il/id+o/UpDOMu+Mz8WNCtLIt66f6iLbDswFYhOqtB1rbGBzabaGn5ISPB
 rnSoL1QuFjxaK1Pfut6llc/sqHmSE3BCVejkg96oEawc+KK5zc1dmvw6zP/8yGPZOWNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NvQzQ47m1U5OGfyvPMSQ/8AM7Gju2h3IEllXTQfsmL0=; b=cY5lsXB/q1jZcc+/viMzq7x8GX
 axtdLUsotoWStw/uSDlOwqaUw+f/wxud8yr32ZwesI1KCHGbNDO1CVXMb3j9+FIxvlUWYWSKWBplZ
 6biKMUunTFVnUsyuLsDJvrPTl4uqSrLpfu5GTieOCTQ31NvAidnjPJzYlLAM+81L0U7Q=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkI0-0003ln-9V for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:52 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id DD7451140116;
 Thu, 13 Jun 2024 09:14:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 13 Jun 2024 09:14:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284485; x=
 1718370885; bh=NvQzQ47m1U5OGfyvPMSQ/8AM7Gju2h3IEllXTQfsmL0=; b=J
 dpUn8lCinPAti/1z3AaRXC2eM8IzqpM0hH9khCFIarnMriHSG47ChkNMekxTtTaN
 vJELFnO5d6D47MDBcw569ePg3UK+Fi4QGilXslv0HnteLJLAX36nRjraB+PQGgrc
 q5jz7J88wkBKDpfO9I/Tf9scns8/bM/cSKfvWTtDOG9BgQLP2UcF4UE6+h0Om36B
 cZNmEaN0gWFJSB4B+J+GpmoahmdnR6FyFcrfsFlzQ2b3TcGBXLUU8LGoMwG9LIhE
 rBYEbQweNKQfgHLB0Tkym1CcrdapEycC8wloqwfYOg6G3MgBEaMxvL/eoTckmSt1
 04hLPhPOjX+pJUvyKtV/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284485; x=
 1718370885; bh=NvQzQ47m1U5OGfyvPMSQ/8AM7Gju2h3IEllXTQfsmL0=; b=H
 qPOEfgcXQbBaeAEtVCT5Fk7rdzcZ3hkCI+IyP+7WKn/+uh7xziPBErRS8e98760b
 ckaokiZSAjbTbJu0TkWmaDYqkSx164Vt9yQ+cQ/g7SCbVy6SjAOoZCoT0+rOrRFj
 k0YlWvWBySkw+Z6cgFiSpTSJLWUBLnmMEAh1QkyTyC/EUTjcZwTd4KwW/qlv9bmF
 B9d+E42SsKIyz397cReb9M6OGIvON3DtXR4JOJfiwfaYiNsaKi6Zt5Y5/NTk/Ou5
 RHIfzPU5IwDVGBQEWT2WQNep6tEVJpibEsz/XoJ6Sm2LIPBR7ZV/GgDzteddm96N
 y9QjPrepyQfTMh0I9LqVA==
X-ME-Sender: <xms:xfBqZncGP4svRLI5v7UBNwpJhcsXP5HPO11JGa0vMr6-ot-3uwou_Q>
 <xme:xfBqZtPGTlnKP_jqn7bAPEc3KvBSbPvw1bOs291pzbZ-fe6v7yL0rLuvcDNeOyWpl
 0nEYIZ6AlNe_riBEsM>
X-ME-Received: <xmr:xfBqZgiSEAnnizMclsCoe9M5aNYdWS6x0t3bE-iw77It_pI-DE1JKFa8IYLAHU0lSu1G0B_fQYR_x9zE7CpS_GON8qrQMeZR01jyQKOauxfAuw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xfBqZo_JhJNMj_sXP2PpjpdIELxLQlm7gHoNgue3RmMszD28VvQSOQ>
 <xmx:xfBqZjsQuCp8zV5xc-GkpvRu34OjpRQKhgSTFesv-rFl-kuB_40SSw>
 <xmx:xfBqZnGHPjCGuSuNAhAqooQt_YKeVRIRdOtfBka_EJMMTHKlWy4BRg>
 <xmx:xfBqZqPCGAXChUau8omklrFcPEEMJ2ZGkWmaUYzUHuJz4h1qDDDZnw>
 <xmx:xfBqZs7JII7FS7ENQ9cuT3iXSIYHCEoHyOrrvjEcuKf5DOWDM9_U-IEp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:44 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/8] firewire: core: record card index in tracepoinrts events
 derived from async_outbound_complete_template
Date: Thu, 13 Jun 2024 22:14:33 +0900
Message-ID: <20240613131440.431766-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.156 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkI0-0003ln-9V
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
 drivers/firewire/core-transaction.c |  6 +++---
 include/trace/events/firewire.h     | 17 ++++++++++-------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 571fdff65c2b..de75e758fd07 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -174,8 +174,8 @@ static void transmit_complete_callback(struct fw_packet *packet,
 	struct fw_transaction *t =
 	    container_of(packet, struct fw_transaction, packet);
 
-	trace_async_request_outbound_complete((uintptr_t)t, packet->generation, packet->speed,
-					      status, packet->timestamp);
+	trace_async_request_outbound_complete((uintptr_t)t, card->index, packet->generation,
+					      packet->speed, status, packet->timestamp);
 
 	switch (status) {
 	case ACK_COMPLETE:
@@ -674,7 +674,7 @@ static void free_response_callback(struct fw_packet *packet,
 {
 	struct fw_request *request = container_of(packet, struct fw_request, response);
 
-	trace_async_response_outbound_complete((uintptr_t)request, packet->generation,
+	trace_async_response_outbound_complete((uintptr_t)request, card->index, packet->generation,
 					       packet->speed, status, packet->timestamp);
 
 	// Decrease the reference count since not at in-flight.
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index d695a560673f..ca6ea9bd1eba 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -71,10 +71,11 @@ DECLARE_EVENT_CLASS(async_outbound_initiate_template,
 
 // The value of status is one of ack codes and rcodes specific to Linux FireWire subsystem.
 DECLARE_EVENT_CLASS(async_outbound_complete_template,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
-	TP_ARGS(transaction, generation, scode, status, timestamp),
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp),
 	TP_STRUCT__entry(
 		__field(u64, transaction)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, scode)
 		__field(u8, status)
@@ -82,14 +83,16 @@ DECLARE_EVENT_CLASS(async_outbound_complete_template,
 	),
 	TP_fast_assign(
 		__entry->transaction = transaction;
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->scode = scode;
 		__entry->status = status;
 		__entry->timestamp = timestamp;
 	),
 	TP_printk(
-		"transaction=0x%llx generation=%u scode=%u status=%u timestamp=0x%04x",
+		"transaction=0x%llx card_index=%u generation=%u scode=%u status=%u timestamp=0x%04x",
 		__entry->transaction,
+		__entry->card_index,
 		__entry->generation,
 		__entry->scode,
 		__entry->status,
@@ -144,8 +147,8 @@ DEFINE_EVENT(async_outbound_initiate_template, async_request_outbound_initiate,
 );
 
 DEFINE_EVENT(async_outbound_complete_template, async_request_outbound_complete,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
-	TP_ARGS(transaction, generation, scode, status, timestamp)
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp)
 );
 
 DEFINE_EVENT(async_inbound_template, async_response_inbound,
@@ -194,8 +197,8 @@ DEFINE_EVENT_PRINT(async_outbound_initiate_template, async_response_outbound_ini
 );
 
 DEFINE_EVENT(async_outbound_complete_template, async_response_outbound_complete,
-	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
-	TP_ARGS(transaction, generation, scode, status, timestamp)
+	TP_PROTO(u64 transaction, unsigned int card_index, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, card_index, generation, scode, status, timestamp)
 );
 
 #undef ASYNC_HEADER_GET_DESTINATION
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
