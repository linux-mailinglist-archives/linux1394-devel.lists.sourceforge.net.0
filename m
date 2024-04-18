Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CACB8A95EF
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO04-0001pg-8y;
	Thu, 18 Apr 2024 09:24:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzq-0001nn-0R
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EOlC4Zi0Zmvr/N4ssp9EJZk79C5SCm6pNZw7lzj8X9g=; b=g082uU82Djyub+5quq+y2w9Qb9
 vOQzJu+M79+gE7HXhxuUlE3tujgER7OvL81Jf5D8T/IRrtuBhmB1KPOUSoBmuiTU9KQnBoabmg3d0
 KOHHkX4eow2jwPHybFjO8YTo6+2sdpf25FGn/RCVSsG/4eAVjcSHbF6qsITyYeiGSTpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EOlC4Zi0Zmvr/N4ssp9EJZk79C5SCm6pNZw7lzj8X9g=; b=PNOe+ZXR/z0oCJ30LWnVuU5xxa
 m1coaDyKSu579zx+93wbok20i/VkFDVuoLe0QJAHy4qJEmeoEoicE3gibDvPVlvfdJMFyNIX85HYM
 2s8PRT/WPWQsXtPGU08czh+bWmdg6it+vcF3mlshlQ9LmkT4bA+u7E7IjVrBzeUqgOH4=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzo-0001Qr-Fm for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:57 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 99CD61140156;
 Thu, 18 Apr 2024 05:23:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432205; x=
 1713518605; bh=EOlC4Zi0Zmvr/N4ssp9EJZk79C5SCm6pNZw7lzj8X9g=; b=C
 uDOMn5qNjXJaOklHhGGbmujk5dfKMhifgd44/yrcg2WTgKNNFRzdrsnhV9azaRd2
 r/T8AutERuXyOWlLVTC26yWNBl8b8dcuWrD0eET9heq3lwwPFDcAoU9kL2tUOd45
 adARqMLJ3tAwTe8VJ+eM66JL5+6rEGKRSIlpRcrXTULUUlldBqQSjIFZSPmuszBP
 hx2f3DK0qqms+x9Wv0WN1R5OP2T0cRV+VWOlHw3QajVWHWsqfUdVUykRcBmu1mwk
 koRy/ox8pCzBi8xaCWiNXaID3QOqUallBWxa2yACqI4Jhb3a5Q+vlEhdGk0sAGbV
 Qd+NNNVYIAKzPwjjcEx5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432205; x=
 1713518605; bh=EOlC4Zi0Zmvr/N4ssp9EJZk79C5SCm6pNZw7lzj8X9g=; b=W
 tn1C5B3va83kDpDyYKnT0eFWvZaxQZOik5FvHxfcHiio9BtLa09tRgr5idJsavUR
 bUED4wWjxFzvpIO9V06NyQuTNppgBTjEH+5D80GV6X84PTHPNiuhnbTOb8sKjbes
 ldeDujR1jpoeZxVUXBsJHx0sUK7WiPgjsiBeV7mmjhziEoQ/qVcLSCclArAQM9YG
 u2gPyaBHF+J7lKW1vypf1KVWSjav+7VuuLGXRvxCA5zGqQTTG6K0FqfCT9qhY6TS
 AkJYz9p0Jw4wxLuczxkhV/L5r7pSYPH1t+TRP+ESHzdaUL7jHQAxSC+4pAcK7SlW
 fS7P3RQRCP4BsbNGs94tA==
X-ME-Sender: <xms:jeYgZho45otOSuA8ROFSxeMDM8x0aE-rmaCgx2KfYFgN-TXaaH-dfA>
 <xme:jeYgZjpbW_NwOIVSV9izhtcPvIYDfGlBSYKlOgzXp8TnpnBRMybIaVrIALtWglKxp
 kwFuSipGnPzKzQgouo>
X-ME-Received: <xmr:jeYgZuNLtA7X1FigDX5fS7wKr3UV3-98O6UnjlwDEAZJNsiPZqfydZ0tUrLdSTcvjg3wDyDAvbLD67QXf3VWbDj8TYZ1_j2WmcMOLAuRxW3_DA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:jeYgZs6tGVO-1jbkrWKf75uv7S1-2f2ipPvkjD1nyVElVSczAhrXsg>
 <xmx:jeYgZg7ZQY5Esg3Tp3ZzMJFY2fWNrdEOgHkEPj1c206mqU7cZzWyuA>
 <xmx:jeYgZkib2ngTycPh9cYvCDHEgX-_xHVwKqA733tY8TVSdmR21F8zIw>
 <xmx:jeYgZi5flOUyJ5WDwZXP5CFQHK2QVGToQREzH1TP9JPZ7tukdip8aA>
 <xmx:jeYgZgG6HQry5RoWQxArsnCE7qu5QX0jx047_DlMejerq4tPwEf2Kbeb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 13/13] firewire: core: add tracepoints events for
 asynchronous outbound response
Date: Thu, 18 Apr 2024 18:23:03 +0900
Message-ID: <20240418092303.19725-14-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-13-o-takashi@sakamocchi.jp>
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
 <20240418092303.19725-11-o-takashi@sakamocchi.jp>
 <20240418092303.19725-12-o-takashi@sakamocchi.jp>
 <20240418092303.19725-13-o-takashi@sakamocchi.jp>
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
 response consists of two stages; initiation and completion. This commit adds
 a pair of events for the asynchronous outbound response. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c
 | 21 ++++++--- drivers/firewire/trace.h | 68 +++++++++++++++++++++++++++++
 2 files changed, 82 inserti [...] 
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
X-Headers-End: 1rxNzo-0001Qr-Fm
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

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 21 ++++++---
 drivers/firewire/trace.h            | 68 +++++++++++++++++++++++++++++
 2 files changed, 82 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 1b972e95fe36..c963832d9824 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -667,6 +667,8 @@ static void free_response_callback(struct fw_packet *packet,
 {
 	struct fw_request *request = container_of(packet, struct fw_request, response);
 
+	trace_async_response_outbound_complete(card, request, packet);
+
 	// Decrease the reference count since not at in-flight.
 	fw_request_put(request);
 
@@ -849,6 +851,9 @@ static struct fw_request *allocate_request(struct fw_card *card,
 void fw_send_response(struct fw_card *card,
 		      struct fw_request *request, int rcode)
 {
+	u32 *data = NULL;
+	unsigned int data_length = 0;
+
 	/* unified transaction or broadcast transaction: don't respond */
 	if (request->ack != ACK_PENDING ||
 	    HEADER_DESTINATION_IS_BROADCAST(request->request_header)) {
@@ -856,17 +861,19 @@ void fw_send_response(struct fw_card *card,
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
 
+	trace_async_response_outbound_initiate(card, request, &request->response, data,
+					       data ? data_length / 4 : 0);
+
 	card->driver->send_response(card, &request->response);
 }
 EXPORT_SYMBOL(fw_send_response);
diff --git a/drivers/firewire/trace.h b/drivers/firewire/trace.h
index ba09eb720933..0109a70d3b02 100644
--- a/drivers/firewire/trace.h
+++ b/drivers/firewire/trace.h
@@ -190,6 +190,74 @@ TRACE_EVENT(async_request_inbound,
 	)
 )
 
+TRACE_EVENT(async_response_outbound_initiate,
+	TP_PROTO(const struct fw_card *card, const struct fw_request *request,
+		 const struct fw_packet *packet, const u32 *data, unsigned int data_count),
+	TP_ARGS(card, request, packet, data, data_count),
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
+		__field(u8, rcode)
+		__dynamic_array(u32, data, data_count)
+	),
+	TP_fast_assign(
+		__entry->transaction = (u64)request;
+		__entry->scode = packet->speed;
+		__entry->generation = packet->generation;
+		__entry->destination = async_header_get_destination(packet->header);
+		__entry->tlabel = async_header_get_tlabel(packet->header);
+		__entry->retry = async_header_get_retry(packet->header);
+		__entry->tcode = async_header_get_tcode(packet->header);
+		__entry->priority = async_header_get_priority(packet->header);
+		__entry->source = async_header_get_source(packet->header);
+		__entry->rcode = async_header_get_rcode(packet->header);
+		memcpy(__get_dynamic_array(data), data, __get_dynamic_array_len(data));
+	),
+	TP_printk(
+		"transaction=0x%llx scode=%u generation=%u dst_id=0x%04x tlabel=%u retry=%u tcode=%u priority=%u src_id=0x%04x rcode=%u data=%s",
+		__entry->transaction,
+		__entry->scode,
+		__entry->generation,
+		__entry->destination,
+		__entry->tlabel,
+		__entry->retry,
+		__entry->tcode,
+		__entry->priority,
+		__entry->source,
+		__entry->rcode,
+		__print_array(__get_dynamic_array(data), __get_dynamic_array_len(data), sizeof(u32))
+	)
+)
+
+TRACE_EVENT(async_response_outbound_complete,
+	TP_PROTO(const struct fw_card *card, const struct fw_request *request,
+		 const struct fw_packet *packet),
+	TP_ARGS(card, request, packet),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, ack)
+		__field(u16, timestamp)
+	),
+	TP_fast_assign(
+		__entry->transaction = (u64)request;
+		__entry->ack = packet->ack;
+		__entry->timestamp = packet->timestamp;
+	),
+	TP_printk(
+		"transaction=0x%llx ack=%u timestamp=0x%04x",
+		__entry->transaction,
+		__entry->ack,
+		__entry->timestamp
+	)
+)
+
 #endif // _FIREWIRE_TRACE_EVENT_H
 
 #define TRACE_INCLUDE_PATH	.
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
