Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B208A95F5
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO07-0005kP-Rk;
	Thu, 18 Apr 2024 09:24:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzp-0005i7-JV
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FDQwV+EcmAsl476lXLMlzTwzlhfthYLIcTW64tkepxs=; b=bXOmXDBmwqHxCMQ5wk3Wu1enWY
 SvtFLLuPudqHZCawXdSbLWkrHA/I5xfz0avaOR8zT5Ri2Fx/LeP0XfrBbfxQIIqZrdk9fvGkBopVh
 N3HhQR7hz7Anr1d862vcxZ/226xWW93GkMBAeR2/9JQdTVqdRyUFQvoHou23eSj727BU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FDQwV+EcmAsl476lXLMlzTwzlhfthYLIcTW64tkepxs=; b=k6U6cnwqYXMKCswDjBcduiyVBL
 Uu4hfA5YHtqnULNPS83HuscsOs8k/sF+5TPjK3Qb7GvJS1iJdCYwY3Yyr7Yyd3M2fNtl2YoQ1GN5S
 HsvVe4AKJI28j+p7AGtA1/xqCAMDYYfcx88kDNZljHLYCza7lgatN38zTpn5WEmWOoBI=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzo-0001QY-EV for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:57 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 3ACCD114011F;
 Thu, 18 Apr 2024 05:23:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Thu, 18 Apr 2024 05:23:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432204; x=
 1713518604; bh=FDQwV+EcmAsl476lXLMlzTwzlhfthYLIcTW64tkepxs=; b=D
 nCEBtErDjGHapb0yZmxwr/smuBOJ8BOlxPLPFVjxuJjSd0M0lm910U9ImP2sg9w5
 F3F+XhKaTF38VWhhr55QSAo5v0qOIRlAgNCLsV+IB2Ja1Jg/R91YfEhc19Pb6ZVP
 bhOxCSdJb3ih1LV22RI7f6dXPd/nr5v317mekRc7UnBjhlPAv+saNZKVpYvIa5t9
 0p0Bt2v5gozXE2gnhpjXsyDupWgDv5pTvtcSOSQQBtNm5WIHGKKkV2KcaBA0y0MW
 CKW29wHD/sJYCFI4Eg5wUCh1av4eWKuZJznPxgYp7eIr7J4UsKzSAR8nluhNLaIt
 K0fIenCw79P09EszTlW0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432204; x=
 1713518604; bh=FDQwV+EcmAsl476lXLMlzTwzlhfthYLIcTW64tkepxs=; b=Y
 AU48IzpAhqW+/UinTkLuykptFSZdSD4R+pifposyY5U+vmFSScvVPh7SwISJuX4A
 OvKRqkKlQmL4L6fT4NyCMk6ZMwk72HSM2HHLtWotC2ZQly1wWmwvlGdXBXixH35E
 fFOYJxleJekLqmXZ4FfR8EVPNlEOjkDG7WjdVwQYY1R+s7fdHszrJlKPPC7wpPFD
 gNSqq2mKKRiCvpABYWoaAlzrLWwZCfVUFyUTmZjYjzw+g0EgNSdy1cey/RTE5Bf4
 rQKRctbIcV8PzUKRl7RjqZAm+fqg1SlU6H35kk7Ucya1SMXR4h/ASsuhyEOsKech
 9lE+4AYtJiThtgcud+/2w==
X-ME-Sender: <xms:jOYgZgoTLxKXFe6IDwIe00JZxVCqMwcWOXoG-NyHR7GqgZfba36FOQ>
 <xme:jOYgZmozVIoAaradK5Uq6_asGKklja57XxHZk7oX-v-qQJkfBCv33IGdwoX7dRQI0
 lTwpVL0_FPk2QiPlcQ>
X-ME-Received: <xmr:jOYgZlN4I9Xe5cvt_IHNQt-CWGDYnY5jGA2nGKH1dcFPwc_mhFNILm9IPwqaTyMmZRUBPZvrDUFK5qsClsfwFVWDbnGwWUagENoTCDI2d1dOrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:jOYgZn45nMmFZ-_cBosJYh-DsU3A6sy4mbQJFYoeHlIDSq2XVH_dUw>
 <xmx:jOYgZv5yl7OUUs1hgkdJUlCiXEUf_RB0vgV4wbWqA05tt-XKcrPe7Q>
 <xmx:jOYgZnjG2k_hwqZDV55SunLwEoMVVxBQp1m0ODQ3rRG9Y881kdfdYg>
 <xmx:jOYgZp7isweVygzX18iDa36dXYIvUuCXAOE-eEI9jIG0NaDXi-Le7w>
 <xmx:jOYgZvGhclQBzklAMsJRnBNSgPmovfbPX6kdIgd-0L8AYF-484aRP2sU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 12/13] firewire: core: add tracepoint event for
 asynchronous inbound request
Date: Thu, 18 Apr 2024 18:23:02 +0900
Message-ID: <20240418092303.19725-13-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-12-o-takashi@sakamocchi.jp>
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
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit adds an event for asynchronous inbound request.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-transaction.c
 | 8 ++++- drivers/firewire/trace.h | 54 +++++++++++++++++++++++++++++ 2 files
 changed, 61 insertions(+ [...] 
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
X-Headers-End: 1rxNzo-0001QY-EV
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

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  8 ++++-
 drivers/firewire/trace.h            | 54 +++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 977d8a36f969..1b972e95fe36 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -972,11 +972,13 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
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
@@ -987,6 +989,10 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 		return;
 	}
 
+	trace_async_request_inbound(card, request, p->ack, p->speed, p->timestamp, p->generation,
+				    p->header, request->data,
+				    tcode_is_read_request(tcode) ? 0 : request->length / 4);
+
 	offset = async_header_get_offset(p->header);
 
 	if (!is_in_fcp_region(offset, request->length))
diff --git a/drivers/firewire/trace.h b/drivers/firewire/trace.h
index 5187f5f2b140..ba09eb720933 100644
--- a/drivers/firewire/trace.h
+++ b/drivers/firewire/trace.h
@@ -136,6 +136,60 @@ TRACE_EVENT(async_response_inbound,
 	)
 )
 
+TRACE_EVENT(async_request_inbound,
+	TP_PROTO(const struct fw_card *card, const struct fw_request *request, unsigned int ack,
+		 unsigned int scode, unsigned int timestamp, unsigned int generation,
+		 const u32 *header, const u32 *data, unsigned int data_count),
+	TP_ARGS(card, request, ack, scode, timestamp, generation, header, data, data_count),
+	TP_STRUCT__entry(
+		__field(u64, transaction)
+		__field(u8, scode)
+		__field(u8, ack)
+		__field(u8, generation)
+		__field(u16, timestamp)
+		__field(u16, destination)
+		__field(u8, tlabel)
+		__field(u8, retry)
+		__field(u8, tcode)
+		__field(u8, priority)
+		__field(u16, source)
+		__field(u64, offset)
+		__dynamic_array(u32, data, data_count)
+	),
+	TP_fast_assign(
+		__entry->transaction = (u64)request;
+		__entry->scode = scode;
+		__entry->ack = ack;
+		__entry->generation = generation;
+		__entry->timestamp = timestamp;
+		__entry->destination = async_header_get_destination(header);
+		__entry->tlabel = async_header_get_tlabel(header);
+		__entry->retry = async_header_get_retry(header);
+		__entry->tcode = async_header_get_tcode(header);
+		__entry->priority = async_header_get_priority(header);
+		__entry->source = async_header_get_source(header);
+		__entry->offset = async_header_get_offset(header);
+		memcpy(__get_dynamic_array(data), data, __get_dynamic_array_len(data));
+	),
+	TP_printk(
+		"transaction=0x%llx scode=%u ack=%u generation=%u timestamp=0x%04x dst_id=0x%04x tlabel=%u retry=%u tcode=%u priority=%u src_id=0x%04x offset=0x%012llx data=%s",
+		__entry->transaction,
+		__entry->scode,
+		__entry->ack,
+		__entry->generation,
+		__entry->timestamp,
+		__entry->destination,
+		__entry->tlabel,
+		__entry->retry,
+		__entry->tcode,
+		__entry->priority,
+		__entry->source,
+		__entry->offset,
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
