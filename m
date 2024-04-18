Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DEA8A95F6
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO02-0002uD-IC;
	Thu, 18 Apr 2024 09:24:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzd-0002sz-F7
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vL3gfEnrZ6VG6CxRuzJnshuYqrkqgK5QLXVwi+2Zjvk=; b=MFyh78mD8BWi6uJcKZiWoeY1ZR
 KXowmtm4nIgngXHkfL5Azb83AeaQZMIm4NSCMMz/Jk/t/WfoUV4vzeqkqEl97nphks1SLBZS4+g9u
 cka8OU3LHTc/iJzSgZX07FBxtH9zbhPenyJ18MEIYg8BfQxClaggTXhtibEQO6296WBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vL3gfEnrZ6VG6CxRuzJnshuYqrkqgK5QLXVwi+2Zjvk=; b=Nl8aGrb1EqEI9bn2m8HgXA3JgU
 2RbJvazJ+R3Tj6cYY7l3bEIoUttiZzDjHrYo47r9Dyj072LBIksupY/zZl7HIaUxGjK1r5awlIsrF
 hxwJ+pfqfBkWkR5cWnKHZbJe445I5vTYj1uMk1vEnvrOI74AoCQ9KU46YqOiKcRSotgo=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzH-0001PX-MQ for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:37 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D0F0111400E8;
 Thu, 18 Apr 2024 05:23:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 18 Apr 2024 05:23:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432191; x=
 1713518591; bh=vL3gfEnrZ6VG6CxRuzJnshuYqrkqgK5QLXVwi+2Zjvk=; b=S
 DpCfHiTmxCUNjceeL26iIkk/37jNK1aMuYGy8c/E1IVaReDzwspj35dYwzyTgQae
 pGX44J0C9GUtScqFLTYuvOtPL9y0lwWVgix9lpgxBFZYGOK+tgpf42z7ZnuR+MSt
 5lA7tRE6b4TdSwrWaY/zUXWoKS4Ad06SeZYuzRhJyzBJAwHm6hf0grls0mHDFdQI
 E5Gu3l2YOT/tebzmVA9Qr1CUF6qz09iHJdc9xmTb8tQl1U2z/1MGQmpwJrNDM/r8
 wEc7wFnF0Pg0XCWO557uFfPbntE2js1xaIWotk6IZN//KBOOxGYCCORROPAPlMnQ
 IIF2QARe0Ue+c5v44f3ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432191; x=
 1713518591; bh=vL3gfEnrZ6VG6CxRuzJnshuYqrkqgK5QLXVwi+2Zjvk=; b=I
 O93r7TBbgYtIbd4ypetKV0CVCaTz3hXk6RBZHNV2jVhYYZvtfcqQ6SDcsY73e9IN
 l5SKYzrIlIPFP039eTLkwqe4+wYIyTLZ1OW0/jl9Q9i1Lw84pronvvtPO7X1K8pE
 YfteCndGULnO5BlrgjFGwLNpzSBrDVQSqtUakp6nI8pGTx2WbdHayvabS7XD1c4p
 I+vxroDUkDuNAdh45by73MEVLGBoXxXOeYm0Y18NL0fuOtlPOmMbPduU2nC2rbcg
 acTTytjw5eCP6oHcH03BdsOcAzstPzwH/9+litmc+HqJB4DXTBn5qp7nPkk/yWZM
 /owJE1JQ4TmafJ526XAEQ==
X-ME-Sender: <xms:f-YgZl-ytnimD8qDu_6kcFkE9k2lbqY5nCx6gXudLHzbnwtO-aVgfg>
 <xme:f-YgZptolaNpdkcKZmONm-MGJuGrYCjh4LalErUCb3cTgxKxX_X6xtvVVj2i6AaAx
 3K0dHVdBlZKt3aYk6Q>
X-ME-Received: <xmr:f-YgZjAk3bIVWbLCdx2P0slJ3eq82p8HunGE0wje8mlAnRVxVuKnDTxWZoc19G_ddvg1UHiZrz9fT-hDjZWq76Jc9PNVY8QrETOYdLlzeNwkYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:f-YgZpf0zhcnM-9GRSYr8d8Vd5vR6IxFzr5u36j6WmKKWijht60qXw>
 <xmx:f-YgZqOSVbwjE1xJhAK8-5nWuO6Guj7Y_kXotkmHujrJx4r0utSEMQ>
 <xmx:f-YgZrl9WBvi-S_t7O7ITmsNfhAihzL8h7016A7Vpkonq9x3Oh3P_A>
 <xmx:f-YgZktPy-x1JlyzO0VUT2YwnfRI0DEsNbUl3Bs2ZRxCBTWwF4nsrw>
 <xmx:f-YgZjYxdZhPlUT4NwGyFCZwYLCTydhbg9OxvQb_Fvmfk0P8FoKxCz6O>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 03/13] firewire: ohci: replace local macros with common
 inline functions for asynchronous packet header
Date: Thu, 18 Apr 2024 18:22:53 +0900
Message-ID: <20240418092303.19725-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-3-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit uses the common inline functions to serialize
 and deserialize header for asynchronous packet. Signed-off-by: Takashi
 Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 24 ++++++++ 1 file
 changed, 8 insertions(+), 16 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxNzH-0001PX-MQ
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

This commit uses the common inline functions to serialize and deserialize
header for asynchronous packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 38d19410a2be..5254cf5c2e58 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -40,6 +40,7 @@
 
 #include "core.h"
 #include "ohci.h"
+#include "packet-header-definitions.h"
 
 #define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
@@ -1550,21 +1551,15 @@ static int handle_at_packet(struct context *context,
 	return 1;
 }
 
-#define HEADER_GET_DESTINATION(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_TCODE(q)		(((q) >> 4) & 0x0f)
-#define HEADER_GET_OFFSET_HIGH(q)	(((q) >> 0) & 0xffff)
-#define HEADER_GET_DATA_LENGTH(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_EXTENDED_TCODE(q)	(((q) >> 0) & 0xffff)
-
 static void handle_local_rom(struct fw_ohci *ohci,
 			     struct fw_packet *packet, u32 csr)
 {
 	struct fw_packet response;
 	int tcode, length, i;
 
-	tcode = HEADER_GET_TCODE(packet->header[0]);
+	tcode = async_header_get_tcode(packet->header);
 	if (TCODE_IS_BLOCK_PACKET(tcode))
-		length = HEADER_GET_DATA_LENGTH(packet->header[3]);
+		length = async_header_get_data_length(packet->header);
 	else
 		length = 4;
 
@@ -1591,10 +1586,10 @@ static void handle_local_lock(struct fw_ohci *ohci,
 	__be32 *payload, lock_old;
 	u32 lock_arg, lock_data;
 
-	tcode = HEADER_GET_TCODE(packet->header[0]);
-	length = HEADER_GET_DATA_LENGTH(packet->header[3]);
+	tcode = async_header_get_tcode(packet->header);
+	length = async_header_get_data_length(packet->header);
 	payload = packet->payload;
-	ext_tcode = HEADER_GET_EXTENDED_TCODE(packet->header[3]);
+	ext_tcode = async_header_get_extended_tcode(packet->header);
 
 	if (tcode == TCODE_LOCK_REQUEST &&
 	    ext_tcode == EXTCODE_COMPARE_SWAP && length == 8) {
@@ -1640,10 +1635,7 @@ static void handle_local_request(struct context *ctx, struct fw_packet *packet)
 		packet->callback(packet, &ctx->ohci->card, packet->ack);
 	}
 
-	offset =
-		((unsigned long long)
-		 HEADER_GET_OFFSET_HIGH(packet->header[1]) << 32) |
-		packet->header[2];
+	offset = async_header_get_offset(packet->header);
 	csr = offset - CSR_REGISTER_BASE;
 
 	/* Handle config rom reads. */
@@ -1679,7 +1671,7 @@ static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 
 	spin_lock_irqsave(&ctx->ohci->lock, flags);
 
-	if (HEADER_GET_DESTINATION(packet->header[0]) == ctx->ohci->node_id &&
+	if (async_header_get_destination(packet->header) == ctx->ohci->node_id &&
 	    ctx->ohci->generation == packet->generation) {
 		spin_unlock_irqrestore(&ctx->ohci->lock, flags);
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
