Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F218A95F8
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO04-0002uS-3T;
	Thu, 18 Apr 2024 09:24:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzp-0002tR-UK
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HJ3aHw2ntpRqnqoos49E4hWJ+XH7yH2ocsiFtJ2lzRs=; b=Qq5/NIZd+LMu839zBKU+K7JnEE
 E9YBhfSwPe+pp0VpUAxZdnjFAOe6+9eZNGnIuUbU7s8zFYd5M0auPYdcHbtKaBWZCr1Z4JyjMrWwX
 jlwbvFTStgkp7ZtSG9or6YEZ8zXwjAcvemmJHgYlPxMwhiaPaDdFs7OR+ZL+yNPxsjgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HJ3aHw2ntpRqnqoos49E4hWJ+XH7yH2ocsiFtJ2lzRs=; b=jifsZtUqYd/vuUSslSi8VA/tDn
 Q9BAKO7KYxv/ieMmoWJJLlppD1H+vXx2BdeDezEQ7ZkJ9EgS4Y8MSij8MK9QriatK3Zsi2EqOEDlZ
 V+lc2rk6FcR5nSTE7syuBkwfhGSnwc7KlqG//nP6UyL6/UihCVW2cnuODjSrd+dDvhOA=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzo-0001Qc-EI for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:57 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id D4F8113800C6;
 Thu, 18 Apr 2024 05:23:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 18 Apr 2024 05:23:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432202; x=
 1713518602; bh=HJ3aHw2ntpRqnqoos49E4hWJ+XH7yH2ocsiFtJ2lzRs=; b=G
 VKFDobg+YjM+jyKPdvZmoV0f7KvXBLV406VfF0atmc3m9oWmhZ9lTiFupWZVMlFP
 q+dt3HrxboPkuGL8J9dInaMnM1ORs8taYxzD0AvacRmEzUNjF6Aah4KOCN3mNRAe
 xjyKshclp9phxPmKYqpr34MFcmTd84liMRvX7HLj5jnFlzRooibwF2QXs1yyQbCm
 XEkvbHL3qQHEKnqWf8qMTewIQoa5e02m0PI4xeXdF9KQE4inDvlD9AKr7S7imoB3
 deKrGMoLd0QyPVrS0SjI2uOeV3rqzt4x5yMNB7iUvECvUf3lLMdPRc1CssRE1l+W
 c8twBKXdH0oKNULl1zPhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432202; x=
 1713518602; bh=HJ3aHw2ntpRqnqoos49E4hWJ+XH7yH2ocsiFtJ2lzRs=; b=j
 YCnF71imnzATdTUYfKxZAb4G+nE085BHkYhBbc+yV+bl0vHGgO5jXkMcxJh5Q6Va
 Doi94TxcACHQ92CPCN8QaCTOHCA+NA4ZW48kA2L6aoQWcaGLBlLFSubouqCi2X9Y
 gyluSsdUDQ98PXhQDKDzEKtdAWm0G5tBMjFt/PPhhsvlru7fkDvqt68Z1LTp4SmY
 banjcDHDBvO2E52oVbXkxFe/+VmdO2WFPprxA1Ro41Wk/ytMgiit6tAl9nCudW1y
 SvgwC3dWZ4fzLDXcVptjpUk03UWjuuhC8+fFHSP44N9/FVqcBoM7//QbQAFCn1CT
 eKcuzimtsQIf4T581wFtg==
X-ME-Sender: <xms:iuYgZjUUVfkTjG5JGRA8GGiULafhupEdYWfVhatNzhGRfMC0SWRkCQ>
 <xme:iuYgZrlUM3jYM0ZhIByGy_R3_TLMoLRQIKfrvI_cRAZrou6dB6K1k3Rfv1QHWRNe7
 n6AMb1_A13tZMSt7gU>
X-ME-Received: <xmr:iuYgZvag5ct9bbklV5Pkc75Oxmx2KJRZU6zbuC6lz6KYi6rquhwZP04IHno_4MdLC2R6EB8GKp31vsmGpvzX7mg-ngvlZluFpvM31UP7hUOmpA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iuYgZuX4DRuDHrfh53wJ9weXNhWT7enn3b5MWm2-kJzbrKZrzTdJsw>
 <xmx:iuYgZtl78Ff5AwvxdzIKrASHIiItsNLZ9i833JUlQOASPpU-n053yA>
 <xmx:iuYgZrdNnFtKuLSH76FUj_9B9aCNxCpR9bx-tzTZmRXc2eXPXXa95Q>
 <xmx:iuYgZnESsTjMheCbu0RYEhFhIVA-cbzi1s3VX-XeVbHeqLPJby5RQA>
 <xmx:iuYgZizLEx34yh4xASfXfWVDVx7aGfqRAEpmsNIIT6lHfM58G96rp-Tw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:21 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 11/13] firewire: core: add tracepoints event for
 asynchronous inbound response
Date: Thu, 18 Apr 2024 18:23:01 +0900
Message-ID: <20240418092303.19725-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-11-o-takashi@sakamocchi.jp>
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
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the transaction of IEEE 1394,
 the node to receive the asynchronous
 request transfers response packet to the requester. This commit adds an event
 for the incoming packet. Note that the code to decode the packet header is
 moved, against the note about the sanity check. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rxNzo-0001Qc-EI
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

In the transaction of IEEE 1394, the node to receive the asynchronous
request transfers response packet to the requester.

This commit adds an event for the incoming packet. Note that the code to
decode the packet header is moved, against the note about the sanity
check.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 54 +++++++++++++++--------------
 drivers/firewire/trace.h            | 48 +++++++++++++++++++++++++
 2 files changed, 76 insertions(+), 26 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 11a60094182a..977d8a36f969 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -1010,32 +1010,10 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	source = async_header_get_source(p->header);
 	rcode = async_header_get_rcode(p->header);
 
-	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(iter, &card->transaction_list, link) {
-		if (iter->node_id == source && iter->tlabel == tlabel) {
-			if (!try_cancel_split_timeout(iter)) {
-				spin_unlock_irqrestore(&card->lock, flags);
-				goto timed_out;
-			}
-			list_del_init(&iter->link);
-			card->tlabel_mask &= ~(1ULL << iter->tlabel);
-			t = iter;
-			break;
-		}
-	}
-	spin_unlock_irqrestore(&card->lock, flags);
-
-	if (!t) {
- timed_out:
-		fw_notice(card, "unsolicited response (source %x, tlabel %x)\n",
-			  source, tlabel);
-		return;
-	}
-
-	/*
-	 * FIXME: sanity check packet, is length correct, does tcodes
-	 * and addresses match.
-	 */
+	// FIXME: sanity check packet, is length correct, does tcodes
+	// and addresses match to the transaction request queried later.
+	//
+	// For the tracepoints event, let us decode the header here against the concern.
 
 	switch (tcode) {
 	case TCODE_READ_QUADLET_RESPONSE:
@@ -1061,6 +1039,30 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 		break;
 	}
 
+	spin_lock_irqsave(&card->lock, flags);
+	list_for_each_entry(iter, &card->transaction_list, link) {
+		if (iter->node_id == source && iter->tlabel == tlabel) {
+			if (!try_cancel_split_timeout(iter)) {
+				spin_unlock_irqrestore(&card->lock, flags);
+				goto timed_out;
+			}
+			list_del_init(&iter->link);
+			card->tlabel_mask &= ~(1ULL << iter->tlabel);
+			t = iter;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&card->lock, flags);
+
+	trace_async_response_inbound(card, t, p, data, data_length / 4);
+
+	if (!t) {
+ timed_out:
+		fw_notice(card, "unsolicited response (source %x, tlabel %x)\n",
+			  source, tlabel);
+		return;
+	}
+
 	/*
 	 * The response handler may be executed while the request handler
 	 * is still pending.  Cancel the request handler.
diff --git a/drivers/firewire/trace.h b/drivers/firewire/trace.h
index 0f7d176ba647..5187f5f2b140 100644
--- a/drivers/firewire/trace.h
+++ b/drivers/firewire/trace.h
@@ -88,6 +88,54 @@ TRACE_EVENT(async_request_outbound_complete,
 	)
 )
 
+TRACE_EVENT(async_response_inbound,
+	TP_PROTO(const struct fw_card *card, const struct fw_transaction *transaction,
+		 const struct fw_packet *packet, u32 *data, unsigned int data_count),
+	TP_ARGS(card, transaction, packet, data, data_count),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, scode)
+		__field(u8, generation)
+		__field(u16, timestamp)
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
+		__entry->transaction = (u64)transaction;
+		__entry->scode = packet->speed;
+		__entry->timestamp = packet->timestamp;
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
+		"transaction=0x%llx scode=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u retry=%u tcode=%u priority=%u src_id=0x%04x rcode=%u data=%s",
+		__entry->transaction,
+		__entry->scode,
+		__entry->timestamp,
+		__entry->destination,
+		__entry->tlabel,
+		__entry->retry,
+		__entry->tcode,
+		__entry->priority,
+		__entry->source,
+		__entry->rcode,
+		__print_array(__get_dynamic_array(data),
+			      __get_dynamic_array_len(data) / sizeof(u32), sizeof(u32))
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
