Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B29988B503C
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 06:32:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Ih0-0005Vx-6F;
	Mon, 29 Apr 2024 04:32:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Igx-0005Vc-Ia
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vWynpCJ7ctqWnEViz41ox0kp4vazZvpoqgenoJ6du9s=; b=EXB7j9WsLVA/zDo9IKcjGz6whW
 XO6IaDkmnjshHsT8Euc0iQMAORqeoVuDvFKujjCjWjIl6b2+yy12p0YLTjRdRxcPb/j4FewJfbDey
 zH1Eb81J3Aoqa2H5dsz8xwEuqXZ/ARcysgGhaffPni/rbyYtvw7MrNVUGu+JW88bHEfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vWynpCJ7ctqWnEViz41ox0kp4vazZvpoqgenoJ6du9s=; b=ACawyLfK4GZfoKAmIUM1nlC8yQ
 /W1tAGKJQ3hYj0vz+I86ZNjfRZXaLl7WJUnOgWC5AACuI7CGn+qhxsPFO7N7e8JhzxteWpWnH+PhK
 P6TfzzlRG+X7I36uCKbjJ2QYSLjhscJUdEWwog8B9/fC+xxmsMiXucWBO/4QjTp58GIs=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Igw-0003CD-Vj for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id D7AEA138015C;
 Mon, 29 Apr 2024 00:32:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 Apr 2024 00:32:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714365148; x=
 1714451548; bh=vWynpCJ7ctqWnEViz41ox0kp4vazZvpoqgenoJ6du9s=; b=d
 69Xhl/RXAWsf+q9taZy2ym9CIhcAYIlttZSFP5nyKoKo8VuKO6vNnhK8Ln1bv642
 u4pqJp72ZFUHJOjo2Y3VeM/d42+KTsLkRVB2qT4MMH5HuQINSk5put3B7Fn50Grl
 I7xvegK6+rL+RHG5x7wmS85Vu3Wa81Q5wJltczj4iuEpu4QK0wGuSP12vD1cMbie
 sJimcDitZOKjoZJNHVolgJxh/jQfMKjn0zq6xh6+BuFPxhXrc+gDEwMPXLrGEyGg
 Ho+M50WD2BinuojpGENV/ByVKxDR4LFxFirLsUl1pRggGr/QvXTuzD2K2Z68SQun
 OMUuh6h6mwnXi/U9vniGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714365148; x=
 1714451548; bh=vWynpCJ7ctqWnEViz41ox0kp4vazZvpoqgenoJ6du9s=; b=a
 1ssg9l2IPsuLk1tgkIEKdt1+d1nh7BEIGVASKUmpIWf6wajI9Q6/gOONFMSSnHhm
 XJa+H80qyff6QM0F2O8OyOIFsjbx+G3j4ZQBLMl10SlIiI8FQkYgnN/XF1rt3+8O
 2C2R5Ef1i8Tk0f7VweH81mSSRrDxIrFgvSObPEbsSKKDRJ2/h+AVHq3KR/AX92RX
 HbPb2LIGa2GfTgfyUh1nnZfu9ntrrJ6usK4sW3U+6/cy/z9WmdSnDQ8Ud5BG5Oxa
 A4/KBOwAdAnXTTLZyOaaaQTBNBQ0N2oqQqV6kFkGK/PEM8Ibt+UN9uCLAzigkkUd
 sbb78DdFCkcMq7MH1vwYg==
X-ME-Sender: <xms:3CIvZnJZn-KrBcICVRWhthBliOPE0_ASJgmsIjW9JsgrStqkSsfV8Q>
 <xme:3CIvZrKdQ0EcDYs3xO6D-iPZzf3EEDk7PRMCu7vIbtCC-GrAPBZv7_Pk40mtaEFMK
 DAibCMnjIo3u56RT-E>
X-ME-Received: <xmr:3CIvZvto8DwLw081NbG3HHRqEYo1PvCZ0mZu6UkLPQy2eXBv39piActtqz9M3w_mRGZaCuLktw8V-tFlsnwtSyQDKnHkpHXx9__Fygxftm1XOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtledgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:3CIvZgah9aZsWQnRAYUxVkUtWedkW-TH12eVHxrPiD6xwR3ifnkVjA>
 <xmx:3CIvZua3DKdEdnyS79FwdIQ_DhgFCsNYFmy_JtiGQOm6XAbbtEiCGw>
 <xmx:3CIvZkCNkQpzy0oTrbbm5rImQCkiipaO3diGd6BRgb4F00Dyvwhg0A>
 <xmx:3CIvZsY1fm5WrDQZQtqGIjp-GGv8JCPSMOa-ufKZN1Lx_vNRT-KpsA>
 <xmx:3CIvZtmb5Jk04HJ2BqAFbNEFmo4i75yWyz3Qw5Ea3x6YQq_SfcmEWAQ2>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 00:32:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] firewire: core: add tracepoint event for asynchronous
 inbound request
Date: Mon, 29 Apr 2024 13:32:17 +0900
Message-ID: <20240429043218.609398-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
References: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit adds an event for asynchronous inbound request.
 The following example is for asynchronous block write request as IEC 61883-1
 FCP request from node 0xffc1. async_request_inbound: \
 transaction=0xffff89fa08cf16c0
 generation=4 scode=2 status=2 \ timestamp=0x00b3 dst_id=0xffc0 tlabel=19
 tcode=1 src_id=0xffc1 \ offset=0xfffff0000d00 header={0xffc04d10, 0xffc1 [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s1Igw-0003CD-Vj
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

This commit adds an event for asynchronous inbound request.

The following example is for asynchronous block write request as IEC
61883-1 FCP request from node 0xffc1.

async_request_inbound: \
  transaction=0xffff89fa08cf16c0 generation=4 scode=2 status=2 \
  timestamp=0x00b3 dst_id=0xffc0 tlabel=19 tcode=1 src_id=0xffc1 \
  offset=0xfffff0000d00 header={0xffc04d10,0xffc1ffff,0xf0000d00,0x80000} \
  data={0x19ff08,0xffff0090}

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  8 +++++++-
 include/trace/events/firewire.h     | 21 +++++++++++++++++++++
 2 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 56510d305564..8c13f996a938 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -973,11 +973,13 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 {
 	struct fw_request *request;
 	unsigned long long offset;
+	unsigned int tcode;
 
 	if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
 		return;
 
-	if (tcode_is_link_internal(async_header_get_tcode(p->header))) {
+	tcode = async_header_get_tcode(p->header);
+	if (tcode_is_link_internal(tcode)) {
 		fw_cdev_handle_phy_packet(card, p);
 		return;
 	}
@@ -988,6 +990,10 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 		return;
 	}
 
+	trace_async_request_inbound((uintptr_t)request, p->generation, p->speed, p->ack,
+				    p->timestamp, p->header, request->data,
+				    tcode_is_read_request(tcode) ? 0 : request->length / 4);
+
 	offset = async_header_get_offset(p->header);
 
 	if (!is_in_fcp_region(offset, request->length))
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 2d5f6b196a22..a30cebed119a 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -153,6 +153,27 @@ DEFINE_EVENT(async_inbound_template, async_response_inbound,
 	TP_ARGS(transaction, generation, scode, status, timestamp, header, data, data_count)
 );
 
+DEFINE_EVENT_PRINT(async_inbound_template, async_request_inbound,
+	TP_PROTO(u64 transaction, unsigned int generation, unsigned int scode, unsigned int status, unsigned int timestamp, const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(transaction, generation, scode, status, timestamp, header, data, data_count),
+	TP_printk(
+		"transaction=0x%llx generation=%u scode=%u status=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u tcode=%u src_id=0x%04x offset=0x%012llx header=%s data=%s",
+		__entry->transaction,
+		__entry->generation,
+		__entry->scode,
+		__entry->status,
+		__entry->timestamp,
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
 #undef ASYNC_HEADER_GET_DESTINATION
 #undef ASYNC_HEADER_GET_TLABEL
 #undef ASYNC_HEADER_GET_TCODE
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
