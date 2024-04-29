Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7200E8B503D
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 06:32:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Ih0-0007G8-EP;
	Mon, 29 Apr 2024 04:32:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Igz-0007Fz-Da
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uAd9uG+pG3IVzb8Q4IOhm2kmGzAT+zLhAYTmas+8y24=; b=FKey4gFZioVDCqGf2y8giY28Bx
 OcK/1LhFOcMTCrHpv5x9A2DXJ86rcxJRPgBcoMn8K7FMdzDmNLQi/CAkGiXSeXm4sr6RN1h/pI6iG
 HT+yKLImsM/ElTztjaTAPmAAyygUU6e1dU4Otdgl2UEkoyzTFIIi0PVevCUWFrsrDOaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uAd9uG+pG3IVzb8Q4IOhm2kmGzAT+zLhAYTmas+8y24=; b=A4dhciDXRYO2OIEcaUFLnxDPst
 zUWEoJOt7lF5O+SQrxWou7SxvMFZ0AcnKaFL3Ou9uUUsGx+IhSSWrlOf42ACVrefKJMslwpSf0e2Z
 obhnSD8sFoYl1sluwphfU/IyEze4+DSflMhZnhr8qb9pw0XVSuRuNUWesnsXzvR2AMO8=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Igy-0003CN-GE for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:41 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 5390211400A1;
 Mon, 29 Apr 2024 00:32:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 29 Apr 2024 00:32:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714365150; x=
 1714451550; bh=uAd9uG+pG3IVzb8Q4IOhm2kmGzAT+zLhAYTmas+8y24=; b=J
 cCKgJa3jLHNuASB5BfOfj9GwllUfEmWmccgqgXqpcPIE8/7GRXg+KqTZO9FMXXjd
 Uax0QiaQuOKrWT22Yk6N0QpkS5Io2QIs+y9iNT+HIJykZkHM3kEQkVNksTLp9t1W
 lW0stGL1r0de+A3T3JQYzXx8meww2GOZU3mosHujsRNb3FDBXTBY5jeHg5vgn6/c
 c/NcBs1D9yT8C7f7zEFHlHY5QFru48fCkssJVzWONyNxQVa+j6ahHQWaKCxodcfI
 BNyxgufjlU4f4PrQEbIFQJU7kVviiK8PNxkpvB9MDMIRJ2p0yq+WVW/RSk707oEp
 n9al8xDdhn5UYnJCBh6KA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714365150; x=
 1714451550; bh=uAd9uG+pG3IVzb8Q4IOhm2kmGzAT+zLhAYTmas+8y24=; b=R
 u5TwtdQ1GXbD0aTFOWKhFX3afcfAx+pt7CwWZbyDg+egd9wXVXxPNl9k4fcuorgd
 kTw+D2hWYt5PUpwNbiXxmZ//sW7gYaCEyjeEX/pmS+2KX/3iNsBXlV8UQMz8F7l/
 WnCJ+KS9q4eZ8X53TJO1BZa7AggsS7PyAMQSiGNUB0/D+n5VcLDkGPQN0Oej9jEz
 BhECJk7v1a3AMx4aQlz8PUwEIvpomyPHU1C6LlPai4KftZfOVG0tt7w6NKluQ4AR
 fDvaHBdI866wo//dgoWRfVE5B13umi3eFDyfSRfd3kHajXW6Uy5iqBpyvKHrV8v4
 x5Ot5uoJyiNBklfAZO+tg==
X-ME-Sender: <xms:3iIvZiRa8JzJP4ExWPQ1rIT80i7_qUKWq3F_ODy1s5iFt1shLOHlwA>
 <xme:3iIvZnzVeFx1lKEIBf4_2o48XHCB3Gzt-sHcXpUj93cDFxDFl2b73vkuZ705jTwna
 m6bm570A7ZarjnzjtQ>
X-ME-Received: <xmr:3iIvZv2l8DwO3am49wVVhs5AbZGgMT1JkaG0pc-I3a9EUOfctO1Gb2AAeFrjMjo-4DsnVTN-VDH5mezdDFvb29Bwkdsjj-ruxl9mBVzektG9AA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtledgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:3iIvZuBmt9cUF0C31x85mtgW8Zs9qUYr7JnYjCSv7V5drDBJBgSZEQ>
 <xmx:3iIvZrjRR_JTkZ7X2AccwziI5YBQdGHqcuUOcd8Ncie4xQz10ZKHfw>
 <xmx:3iIvZqo3hhUHJYxz-kzcGtaFZ8V9pyChSny34bbhooQK-kE2fbKv9A>
 <xmx:3iIvZugAfu9Unykt-I3i6OU-OrWIMXJVsgSjvhJW25jKG-9G3nW0cw>
 <xmx:3iIvZutd5irFlWFirqwD31Nj_IEmUlH3jtGUKYdBhaqvZuCpP4PIixL3>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 00:32:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/5] firewire: core: add tracepoints events for asynchronous
 outbound response
Date: Mon, 29 Apr 2024 13:32:18 +0900
Message-ID: <20240429043218.609398-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
References: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In a view of core transaction service,
 the asynchronous outbound
 response consists of two stages; initiation and completion. This commit adds
 a pair of events for the asynchronous outbound response. The following example
 is for asynchronous write quadlet request as IEC 61883-1 FCP response to
 node 0xffc1. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.153 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1Igy-0003CN-GE
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

In a view of core transaction service, the asynchronous outbound response
consists of two stages; initiation and completion.

This commit adds a pair of events for the asynchronous outbound response.
The following example is for asynchronous write quadlet request as IEC
61883-1 FCP response to node 0xffc1.

async_response_outbound_initiate: \
  transaction=0xffff89fa08cf16c0 generation=4 scode=2 dst_id=0xffc1 \
  tlabel=25 tcode=2 src_id=0xffc0 rcode=0 \
  header={0xffc16420,0xffc00000,0x0,0x0} data={}
async_response_outbound_complete: \
  transaction=0xffff89fa08cf16c0 generation=4 scode=2 status=1 \
  timestamp=0x0000

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 23 ++++++++++++++++-------
 include/trace/events/firewire.h     | 24 ++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 8c13f996a938..0e49ebf52500 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -668,6 +668,9 @@ static void free_response_callback(struct fw_packet *packet,
 {
 	struct fw_request *request = container_of(packet, struct fw_request, response);
 
+	trace_async_response_outbound_complete((uintptr_t)request, packet->generation,
+					       packet->speed, status, packet->timestamp);
+
 	// Decrease the reference count since not at in-flight.
 	fw_request_put(request);
 
@@ -850,6 +853,9 @@ static struct fw_request *allocate_request(struct fw_card *card,
 void fw_send_response(struct fw_card *card,
 		      struct fw_request *request, int rcode)
 {
+	u32 *data = NULL;
+	unsigned int data_length = 0;
+
 	/* unified transaction or broadcast transaction: don't respond */
 	if (request->ack != ACK_PENDING ||
 	    HEADER_DESTINATION_IS_BROADCAST(request->request_header)) {
@@ -857,17 +863,20 @@ void fw_send_response(struct fw_card *card,
 		return;
 	}
 
-	if (rcode == RCODE_COMPLETE)
-		fw_fill_response(&request->response, request->request_header,
-				 rcode, request->data,
-				 fw_get_response_length(request));
-	else
-		fw_fill_response(&request->response, request->request_header,
-				 rcode, NULL, 0);
+	if (rcode == RCODE_COMPLETE) {
+		data = request->data;
+		data_length = fw_get_response_length(request);
+	}
+
+	fw_fill_response(&request->response, request->request_header, rcode, data, data_length);
 
 	// Increase the reference count so that the object is kept during in-flight.
 	fw_request_get(request);
 
+	trace_async_response_outbound_initiate((uintptr_t)request, request->response.generation,
+					       request->response.speed, request->response.header,
+					       data, data ? data_length / 4 : 0);
+
 	card->driver->send_response(card, &request->response);
 }
 EXPORT_SYMBOL(fw_send_response);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index a30cebed119a..d4688e341837 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -174,6 +174,30 @@ DEFINE_EVENT_PRINT(async_inbound_template, async_request_inbound,
 	)
 );
 
+DEFINE_EVENT_PRINT(async_outbound_initiate_template, async_response_outbound_initiate,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, generation, scode, header, data, data_count),
+	TP_printk(
+		"transaction=0x%llx generation=%u scode=%u dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x rcode=%u header=%s data=%s",
+		__entry->transaction,
+		__entry->generation,
+		__entry->scode,
+		ASYNC_HEADER_GET_DESTINATION(__entry->header),
+		ASYNC_HEADER_GET_TLABEL(__entry->header),
+		ASYNC_HEADER_GET_TCODE(__entry->header),
+		ASYNC_HEADER_GET_SOURCE(__entry->header),
+		ASYNC_HEADER_GET_RCODE(__entry->header),
+		__print_array(__entry->header, ASYNC_HEADER_QUADLET_COUNT, QUADLET_SIZE),
+		__print_array(__get_dynamic_array(data),
+			      __get_dynamic_array_len(data) / QUADLET_SIZE, QUADLET_SIZE)
+	)
+);
+
+DEFINE_EVENT(async_outbound_complete_template, async_response_outbound_complete,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp),
+	TP_ARGS(transaction, generation, scode, status, timestamp)
+);
+
 #undef ASYNC_HEADER_GET_DESTINATION
 #undef ASYNC_HEADER_GET_TLABEL
 #undef ASYNC_HEADER_GET_TCODE
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
