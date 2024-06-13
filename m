Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C2B90734F
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkIL-0000nd-VX;
	Thu, 13 Jun 2024 13:15:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkIF-0000nC-Qs
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a3iKFf3cgzA8fuhlXuxo5mFXhLHZpHmIQrt+HGCliT0=; b=a3UJvr1UNhOLB2t6taXgSFIiTk
 gA2PWGuaWmi5eBg+mCNXlmq8prhmhZkZLIu2HILdc9H4DstO6m7+gLJfeHFHOZ3bSFPeGj6Bk2dC6
 Vxnw/7cen+wvlNSEPy5e2lOy1clHtE3GeHQQkX0Mqca4Ddh/39/nzej4Aq+P+KG34fzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a3iKFf3cgzA8fuhlXuxo5mFXhLHZpHmIQrt+HGCliT0=; b=Unmr7zslFkqTiOK+n5FjN752JQ
 0ebDK9Fq8tNseMn1pvdeLSJxr2GF36FPN1SAx9oUv830Zv/dmb22nHatrraBFRMO6XhV9WhRXURC8
 8hde2oRZ+tyuia61AwHyvNl9wrqDTem7PsTbYdMygsq6qgQSmGzFf+Q6cinxsCHy3YVo=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkIB-0003mV-6s for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id D50521380099;
 Thu, 13 Jun 2024 09:14:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 13 Jun 2024 09:14:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284491; x=
 1718370891; bh=a3iKFf3cgzA8fuhlXuxo5mFXhLHZpHmIQrt+HGCliT0=; b=A
 uFr9FRxT94ZornUIuVu0mtp0WshtQK4TabiCvmYdjWk2oBswq4Bp8cfq7vP7NUXI
 dBSpciW7RhAKmOPsQU0vF2Ah+276ymDh+F7IJO2161qUk9JbN19Lrq+/wR2FmVeC
 r2jr2CmqLjYI4kOOm9uAdIU8oS6Iwt01VHww1bh5bE5KKguOG7oPdeMxyVF3r3Px
 7R2NPrEhzRsz5Cx1BVahlO7heuHEcGhb828Af+b4ND0ftDXHkaJMQSgfMb8xvONW
 lgFknLDMRqiBg2MZ4ktIrOKAiLjITIhJNosGi+ddv9iaUNRjAhllGwP4ONJw/sru
 vpcddIyoWmCGQCO7HtMmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284491; x=
 1718370891; bh=a3iKFf3cgzA8fuhlXuxo5mFXhLHZpHmIQrt+HGCliT0=; b=D
 FMNXnWvNeoQ8bv/xK7GsC1IMCuzZIOgQt4PedrVK7SEer/qFyHwOTX4ta9TZJ41S
 OqTvkW+NhruRmTh8YjQbA8TqXCib57vMD2M1Cdo/by1kpDqird8V4koAhXJrEUOX
 PgU81kJv9/XgfYVPe6eYTtvhanv58ZdJo1kU5kx0H2ywWm3fVf68Fog0/jRn57D7
 zX1+xcw8IMl1RZd94gUL8wPuyXSYH0C/MGVNSRn3RI/4ROEhmeOoUqwBNqNF7jly
 hsO4iFK2wFEYt7OnyniFbL7YOY0VpDBxL2cdRSEsKuPWy/HWhAxiW/03N+7CKvOr
 k0HPUbcW0lBlyV7URLjhA==
X-ME-Sender: <xms:y_BqZklUwJedKip6nKL345PjS_5hiMcdqbeUUNDdTWkmf4n0EOlBqA>
 <xme:y_BqZj2V37F3oaVWEtQhFk-MzztkN26OTN0DHATKZhmlqFBYQeHRsPLsDLE7yXRkl
 mBrGrszuhzWXi-jejk>
X-ME-Received: <xmr:y_BqZiqx4w14aBUBCSU9pkgFouDW28slZH2rZksBVUphDcP5PN0Q3aAdfGYincO6DIgp2DPKvLgUwIXTAmIPmO53Sv747I8pGZjhwln5Q958xQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgiedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:y_BqZgmXuX6C4QMmWI4KsBKt96dpSouoUyEw9_d6BaBjklb2KkXp0A>
 <xmx:y_BqZi0pR_nKRj7qKVgaLIneraSnM4Dbx7A7-kMwUoTYoyIiRbrrug>
 <xmx:y_BqZnuSrY4j2rmticLMx9pxZCe_BpcjEHiTMgkFnsgt7bw0z209DA>
 <xmx:y_BqZuVxg9eTR3sziaCkw9D5JQQxbCGHcmFL9vNWJ1co2xezbJGPjw>
 <xmx:y_BqZgBPC_iPG8Bul_W2zHv2PnVSgzYVKKFJytN6c7qCm0CY4T3fo7C8>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/8] firewire: core: record card index in
 async_phy_outbound_complete tracepoints event
Date: Thu, 13 Jun 2024 22:14:37 +0900
Message-ID: <20240613131440.431766-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The asynchronous transmission of phy packet is initiated on
 one of 1394 OHCI controller, however the existing tracepoints events has
 the lack of data about it. This commit adds card_index member into event
 structure
 to store the index of host controller in use, and prints it. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
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
X-Headers-End: 1sHkIB-0003mV-6s
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

The asynchronous transmission of phy packet is initiated on one of 1394
OHCI controller, however the existing tracepoints events has the lack of
data about it.

This commit adds card_index member into event structure to store the index
of host controller in use, and prints it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c        | 2 +-
 drivers/firewire/core-transaction.c | 2 +-
 include/trace/events/firewire.h     | 9 ++++++---
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index ff8739f96af5..9a7dc90330a3 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1559,7 +1559,7 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 	struct client *e_client = e->client;
 	u32 rcode;
 
-	trace_async_phy_outbound_complete((uintptr_t)packet, status, packet->generation,
+	trace_async_phy_outbound_complete((uintptr_t)packet, card->index, status, packet->generation,
 					  packet->timestamp);
 
 	switch (status) {
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index e522dc3d9897..bd5a467cfd60 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -464,7 +464,7 @@ static DECLARE_COMPLETION(phy_config_done);
 static void transmit_phy_packet_callback(struct fw_packet *packet,
 					 struct fw_card *card, int status)
 {
-	trace_async_phy_outbound_complete((uintptr_t)packet, packet->generation, status,
+	trace_async_phy_outbound_complete((uintptr_t)packet, card->index, packet->generation, status,
 					  packet->timestamp);
 	complete(&phy_config_done);
 }
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index a59dc26b2a53..61c7a2461fbc 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -244,23 +244,26 @@ TRACE_EVENT(async_phy_outbound_initiate,
 );
 
 TRACE_EVENT(async_phy_outbound_complete,
-	TP_PROTO(u64 packet, unsigned int generation, unsigned int status, unsigned int timestamp),
-	TP_ARGS(packet, generation, status, timestamp),
+	TP_PROTO(u64 packet, unsigned int card_index, unsigned int generation, unsigned int status, unsigned int timestamp),
+	TP_ARGS(packet, card_index, generation, status, timestamp),
 	TP_STRUCT__entry(
 		__field(u64, packet)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, status)
 		__field(u16, timestamp)
 	),
 	TP_fast_assign(
 		__entry->packet = packet;
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->status = status;
 		__entry->timestamp = timestamp;
 	),
 	TP_printk(
-		"packet=0x%llx generation=%u status=%u timestamp=0x%04x",
+		"packet=0x%llx card_index=%u generation=%u status=%u timestamp=0x%04x",
 		__entry->packet,
+		__entry->card_index,
 		__entry->generation,
 		__entry->status,
 		__entry->timestamp
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
