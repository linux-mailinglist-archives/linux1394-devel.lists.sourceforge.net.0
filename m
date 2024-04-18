Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D08A95E9
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:23:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxNza-0001m0-57;
	Thu, 18 Apr 2024 09:23:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzJ-0001lI-Li
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pDuQTeVfsflAIh2eh8sJYnJy46ZF9XX7CYX71/BIe2I=; b=KUOl7vO4hHODrUOoyKuH2/5JeH
 IERX3vGkV/aoNSDhltqv1bQdNMF16FwdpeA2FkV5ZopTHkFAtaJG36uTXDmmnP5DTcx7dY82Aj0f3
 o+nb5OiFqqpVwT33cVbPCaAS3HvioLo47kg8IyQLpPlNIpNhcLDnYE+Ul8QViMiHJkeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pDuQTeVfsflAIh2eh8sJYnJy46ZF9XX7CYX71/BIe2I=; b=eh4EGBWTB3JhkHvG778qv5ekHh
 njG1/0fJkf2a0bvOofYmyJ8XCVAuMRvKrLJf8FzrTWKyq3RQNlrX43Nn4dM6RnkfyJ5lt1XKeD2Xr
 Stvs8e7biLT1GEeJ3Z/aj8m79XHOiw95t/d9IY+uGhCxOCqufAkq3MHQ79pYdfKxrMg0=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzH-0001Pg-MA for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:25 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 68F7811400BC;
 Thu, 18 Apr 2024 05:23:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432190; x=
 1713518590; bh=pDuQTeVfsflAIh2eh8sJYnJy46ZF9XX7CYX71/BIe2I=; b=m
 rTj9MFKBK293jz5z/9JUdfDciS9gKKubIbMKGAf1I7nlmpPj+X6oE6GcDBTUbN/b
 e6d66gdfx/QgzapEYAQyA18cIT0kaTt3O1rZKLGvb/5EBbL79MJ2BS30TdjmUnyx
 7y3bDjoKE0A/TNeImixqNSxer6m+ZC4exNEUbSz/DMbe/Wtaiz4asclkCprSu/34
 5nlpB4/ay8UM7u1CCDwJIYjaB/idGrS51e6K11t1FVgoRFp/RYWFri3pb44wOPy7
 G60uMkitET5LuUq4fSA2oVcykKdHUTFVbZgZrInues83Hwyv7qSCbEjLn6cjy/2t
 uZOht483Y/kBFd4/UQpCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432190; x=
 1713518590; bh=pDuQTeVfsflAIh2eh8sJYnJy46ZF9XX7CYX71/BIe2I=; b=k
 NVydw9DNhO0vifcZ6QGOt9GvBI/d3yGr6pXXHtRqh7CTs2PYvHod9VHMKJkv4n8k
 aIMhqXNmf6+u4R0hjIj48OP7WUD37OpaBtx5jddSQNS7l2+zuC4FMKPa9sotgTPI
 9VqrdHx+RkdWz7U0H250Jtv9ifStpfGEbfjzbzntwrlmieyLzouLrfwa3LXiwnY0
 g14PKhjqvdWsoxYpVBESL1t5RHayiCITy/Kl6HLXiYmEMnr6q+Ac9PMA4CdX2gdZ
 GKfdPhDTKbEQK7FK16GlW7hwN598dE+MzrfQ6c3X5XHjB1ZdNydln3FSN0Fvtq8I
 fTEgAmiLHfiWm3szJRXpQ==
X-ME-Sender: <xms:fuYgZgzi6xh7qdkKDFAcNDyq1xD3HafEk30uRmJBsxYafhfb3wQ3RQ>
 <xme:fuYgZkQjjJylQJTHPXcjY7rwuadwWKwBxAhii45fD2Bq0E4tpnSBNOJ1yShRGd3e8
 fO05WH6z_8JaXcA72Y>
X-ME-Received: <xmr:fuYgZiV0agGEtHrbWpoCW9l48X4pBxrcArbsUj0yvxRjrzdCm7C5HB6cwjSfTkW620Zyb_ICSbzfLqd7mHS4sPZqOJpBloiLfWY_8DpvUYvg_g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:fuYgZugdrKupBye4fLlQRmf2tKPOSXOWVv7z-F5ot0r6ME5QWYBdRQ>
 <xmx:fuYgZiDwSrnzT08KMGugehT2f8_FZwRY1ScVNdZtczHqULph-rGvWw>
 <xmx:fuYgZvKZC9dwQeBSlSVbU2IASJTitJ07RMqB_RMrDbSmIp7k1yAJHg>
 <xmx:fuYgZpCJ9TX7asDVVy1dcuw8Z1kItmFilKp2bocrIpSbvNN2rU8_BQ>
 <xmx:fuYgZlPhN78_lxfK7L7kNEs1O4YsYlLysdIqgHPjKFYD4S_o9lgylzsb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:09 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 02/13] firewire: core: replace local macros with common
 inline functions for asynchronous packet header
Date: Thu, 18 Apr 2024 18:22:52 +0900
Message-ID: <20240418092303.19725-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-2-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit uses common inline functions to serialize and
 deserialize header for asynchronous packet. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c | 138
 +++++++++++ 1 file changed, 56 insertions(+), 82 deletions(-) 
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
X-Headers-End: 1rxNzH-0001Pg-MA
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

This commit uses common inline functions to serialize and deserialize
header for asynchronous packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 138 +++++++++++-----------------
 1 file changed, 56 insertions(+), 82 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 130b95aca629..01ce07f87452 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -29,29 +29,13 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include "packet-header-definitions.h"
 
-#define HEADER_PRI(pri)			((pri) << 0)
 #define HEADER_TCODE(tcode)		((tcode) << 4)
-#define HEADER_RETRY(retry)		((retry) << 8)
-#define HEADER_TLABEL(tlabel)		((tlabel) << 10)
-#define HEADER_DESTINATION(destination)	((destination) << 16)
-#define HEADER_SOURCE(source)		((source) << 16)
-#define HEADER_RCODE(rcode)		((rcode) << 12)
-#define HEADER_OFFSET_HIGH(offset_high)	((offset_high) << 0)
 #define HEADER_DATA_LENGTH(length)	((length) << 16)
-#define HEADER_EXTENDED_TCODE(tcode)	((tcode) << 0)
 
-#define HEADER_GET_TCODE(q)		(((q) >> 4) & 0x0f)
-#define HEADER_GET_TLABEL(q)		(((q) >> 10) & 0x3f)
-#define HEADER_GET_RCODE(q)		(((q) >> 12) & 0x0f)
-#define HEADER_GET_DESTINATION(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_SOURCE(q)		(((q) >> 16) & 0xffff)
-#define HEADER_GET_OFFSET_HIGH(q)	(((q) >> 0) & 0xffff)
-#define HEADER_GET_DATA_LENGTH(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_EXTENDED_TCODE(q)	(((q) >> 0) & 0xffff)
-
-#define HEADER_DESTINATION_IS_BROADCAST(q) \
-	(((q) & HEADER_DESTINATION(0x3f)) == HEADER_DESTINATION(0x3f))
+#define HEADER_DESTINATION_IS_BROADCAST(header) \
+	((async_header_get_destination(header) & 0x3f) == 0x3f)
 
 #define PHY_PACKET_CONFIG	0x0
 #define PHY_PACKET_LINK_ON	0x1
@@ -248,28 +232,24 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 	} else
 		ext_tcode = 0;
 
-	packet->header[0] =
-		HEADER_RETRY(RETRY_X) |
-		HEADER_TLABEL(tlabel) |
-		HEADER_TCODE(tcode) |
-		HEADER_DESTINATION(destination_id);
-	packet->header[1] =
-		HEADER_OFFSET_HIGH(offset >> 32) | HEADER_SOURCE(source_id);
-	packet->header[2] =
-		offset;
+	async_header_set_retry(packet->header, RETRY_X);
+	async_header_set_tlabel(packet->header, tlabel);
+	async_header_set_tcode(packet->header, tcode);
+	async_header_set_destination(packet->header, destination_id);
+	async_header_set_source(packet->header, source_id);
+	async_header_set_offset(packet->header, offset);
 
 	switch (tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
-		packet->header[3] = *(u32 *)payload;
+		async_header_set_quadlet_data(packet->header, *(u32 *)payload);
 		packet->header_length = 16;
 		packet->payload_length = 0;
 		break;
 
 	case TCODE_LOCK_REQUEST:
 	case TCODE_WRITE_BLOCK_REQUEST:
-		packet->header[3] =
-			HEADER_DATA_LENGTH(length) |
-			HEADER_EXTENDED_TCODE(ext_tcode);
+		async_header_set_data_length(packet->header, length);
+		async_header_set_extended_tcode(packet->header, ext_tcode);
 		packet->header_length = 16;
 		packet->payload = payload;
 		packet->payload_length = length;
@@ -281,9 +261,8 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 		break;
 
 	case TCODE_READ_BLOCK_REQUEST:
-		packet->header[3] =
-			HEADER_DATA_LENGTH(length) |
-			HEADER_EXTENDED_TCODE(ext_tcode);
+		async_header_set_data_length(packet->header, length);
+		async_header_set_extended_tcode(packet->header, ext_tcode);
 		packet->header_length = 16;
 		packet->payload_length = 0;
 		break;
@@ -655,7 +634,7 @@ EXPORT_SYMBOL(fw_core_remove_address_handler);
 struct fw_request {
 	struct kref kref;
 	struct fw_packet response;
-	u32 request_header[4];
+	u32 request_header[ASYNC_HEADER_QUADLET_COUNT];
 	int ack;
 	u32 timestamp;
 	u32 length;
@@ -695,7 +674,7 @@ int fw_get_response_length(struct fw_request *r)
 {
 	int tcode, ext_tcode, data_length;
 
-	tcode = HEADER_GET_TCODE(r->request_header[0]);
+	tcode = async_header_get_tcode(r->request_header);
 
 	switch (tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
@@ -706,12 +685,12 @@ int fw_get_response_length(struct fw_request *r)
 		return 4;
 
 	case TCODE_READ_BLOCK_REQUEST:
-		data_length = HEADER_GET_DATA_LENGTH(r->request_header[3]);
+		data_length = async_header_get_data_length(r->request_header);
 		return data_length;
 
 	case TCODE_LOCK_REQUEST:
-		ext_tcode = HEADER_GET_EXTENDED_TCODE(r->request_header[3]);
-		data_length = HEADER_GET_DATA_LENGTH(r->request_header[3]);
+		ext_tcode = async_header_get_extended_tcode(r->request_header);
+		data_length = async_header_get_data_length(r->request_header);
 		switch (ext_tcode) {
 		case EXTCODE_FETCH_ADD:
 		case EXTCODE_LITTLE_ADD:
@@ -731,46 +710,42 @@ void fw_fill_response(struct fw_packet *response, u32 *request_header,
 {
 	int tcode, tlabel, extended_tcode, source, destination;
 
-	tcode          = HEADER_GET_TCODE(request_header[0]);
-	tlabel         = HEADER_GET_TLABEL(request_header[0]);
-	source         = HEADER_GET_DESTINATION(request_header[0]);
-	destination    = HEADER_GET_SOURCE(request_header[1]);
-	extended_tcode = HEADER_GET_EXTENDED_TCODE(request_header[3]);
-
-	response->header[0] =
-		HEADER_RETRY(RETRY_1) |
-		HEADER_TLABEL(tlabel) |
-		HEADER_DESTINATION(destination);
-	response->header[1] =
-		HEADER_SOURCE(source) |
-		HEADER_RCODE(rcode);
-	response->header[2] = 0;
+	tcode = async_header_get_tcode(request_header);
+	tlabel = async_header_get_tlabel(request_header);
+	source = async_header_get_source(request_header);
+	destination = async_header_get_destination(request_header);
+	extended_tcode = async_header_get_extended_tcode(request_header);
+
+	async_header_set_retry(response->header, RETRY_1);
+	async_header_set_tlabel(response->header, tlabel);
+	async_header_set_destination(response->header, destination);
+	async_header_set_source(response->header, source);
+	async_header_set_rcode(response->header, rcode);
+	response->header[2] = 0;	// The field is reserved.
 
 	switch (tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
 	case TCODE_WRITE_BLOCK_REQUEST:
-		response->header[0] |= HEADER_TCODE(TCODE_WRITE_RESPONSE);
+		async_header_set_tcode(response->header, TCODE_WRITE_RESPONSE);
 		response->header_length = 12;
 		response->payload_length = 0;
 		break;
 
 	case TCODE_READ_QUADLET_REQUEST:
-		response->header[0] |=
-			HEADER_TCODE(TCODE_READ_QUADLET_RESPONSE);
+		async_header_set_tcode(response->header, TCODE_READ_QUADLET_RESPONSE);
 		if (payload != NULL)
-			response->header[3] = *(u32 *)payload;
+			async_header_set_quadlet_data(response->header, *(u32 *)payload);
 		else
-			response->header[3] = 0;
+			async_header_set_quadlet_data(response->header, 0);
 		response->header_length = 16;
 		response->payload_length = 0;
 		break;
 
 	case TCODE_READ_BLOCK_REQUEST:
 	case TCODE_LOCK_REQUEST:
-		response->header[0] |= HEADER_TCODE(tcode + 2);
-		response->header[3] =
-			HEADER_DATA_LENGTH(length) |
-			HEADER_EXTENDED_TCODE(extended_tcode);
+		async_header_set_tcode(response->header, tcode + 2);
+		async_header_set_data_length(response->header, length);
+		async_header_set_extended_tcode(response->header, extended_tcode);
 		response->header_length = 16;
 		response->payload = payload;
 		response->payload_length = length;
@@ -807,7 +782,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 	u32 *data, length;
 	int request_tcode;
 
-	request_tcode = HEADER_GET_TCODE(p->header[0]);
+	request_tcode = async_header_get_tcode(p->header);
 	switch (request_tcode) {
 	case TCODE_WRITE_QUADLET_REQUEST:
 		data = &p->header[3];
@@ -817,7 +792,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 	case TCODE_WRITE_BLOCK_REQUEST:
 	case TCODE_LOCK_REQUEST:
 		data = p->payload;
-		length = HEADER_GET_DATA_LENGTH(p->header[3]);
+		length = async_header_get_data_length(p->header);
 		break;
 
 	case TCODE_READ_QUADLET_REQUEST:
@@ -827,7 +802,7 @@ static struct fw_request *allocate_request(struct fw_card *card,
 
 	case TCODE_READ_BLOCK_REQUEST:
 		data = NULL;
-		length = HEADER_GET_DATA_LENGTH(p->header[3]);
+		length = async_header_get_data_length(p->header);
 		break;
 
 	default:
@@ -872,7 +847,7 @@ void fw_send_response(struct fw_card *card,
 {
 	/* unified transaction or broadcast transaction: don't respond */
 	if (request->ack != ACK_PENDING ||
-	    HEADER_DESTINATION_IS_BROADCAST(request->request_header[0])) {
+	    HEADER_DESTINATION_IS_BROADCAST(request->request_header)) {
 		fw_request_put(request);
 		return;
 	}
@@ -926,11 +901,11 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	struct fw_address_handler *handler;
 	int tcode, destination, source;
 
-	destination = HEADER_GET_DESTINATION(p->header[0]);
-	source      = HEADER_GET_SOURCE(p->header[1]);
-	tcode       = HEADER_GET_TCODE(p->header[0]);
+	destination = async_header_get_destination(p->header);
+	source = async_header_get_source(p->header);
+	tcode = async_header_get_tcode(p->header);
 	if (tcode == TCODE_LOCK_REQUEST)
-		tcode = 0x10 + HEADER_GET_EXTENDED_TCODE(p->header[3]);
+		tcode = 0x10 + async_header_get_extended_tcode(p->header);
 
 	rcu_read_lock();
 	handler = lookup_enclosing_address_handler(&address_handler_list,
@@ -963,9 +938,9 @@ static void handle_fcp_region_request(struct fw_card *card,
 		return;
 	}
 
-	tcode       = HEADER_GET_TCODE(p->header[0]);
-	destination = HEADER_GET_DESTINATION(p->header[0]);
-	source      = HEADER_GET_SOURCE(p->header[1]);
+	tcode = async_header_get_tcode(p->header);
+	destination = async_header_get_destination(p->header);
+	source = async_header_get_source(p->header);
 
 	if (tcode != TCODE_WRITE_QUADLET_REQUEST &&
 	    tcode != TCODE_WRITE_BLOCK_REQUEST) {
@@ -997,7 +972,7 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 	if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
 		return;
 
-	if (TCODE_IS_LINK_INTERNAL(HEADER_GET_TCODE(p->header[0]))) {
+	if (TCODE_IS_LINK_INTERNAL(async_header_get_tcode(p->header))) {
 		fw_cdev_handle_phy_packet(card, p);
 		return;
 	}
@@ -1008,8 +983,7 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 		return;
 	}
 
-	offset = ((u64)HEADER_GET_OFFSET_HIGH(p->header[1]) << 32) |
-		p->header[2];
+	offset = async_header_get_offset(p->header);
 
 	if (!is_in_fcp_region(offset, request->length))
 		handle_exclusive_region_request(card, p, request, offset);
@@ -1027,10 +1001,10 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	size_t data_length;
 	int tcode, tlabel, source, rcode;
 
-	tcode	= HEADER_GET_TCODE(p->header[0]);
-	tlabel	= HEADER_GET_TLABEL(p->header[0]);
-	source	= HEADER_GET_SOURCE(p->header[1]);
-	rcode	= HEADER_GET_RCODE(p->header[1]);
+	tcode = async_header_get_tcode(p->header);
+	tlabel = async_header_get_tlabel(p->header);
+	source = async_header_get_source(p->header);
+	rcode = async_header_get_rcode(p->header);
 
 	spin_lock_irqsave(&card->lock, flags);
 	list_for_each_entry(iter, &card->transaction_list, link) {
@@ -1073,7 +1047,7 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	case TCODE_READ_BLOCK_RESPONSE:
 	case TCODE_LOCK_RESPONSE:
 		data = p->payload;
-		data_length = HEADER_GET_DATA_LENGTH(p->header[3]);
+		data_length = async_header_get_data_length(p->header);
 		break;
 
 	default:
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
