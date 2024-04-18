Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEF38A95F3
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:24:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxO01-0005jm-8K;
	Thu, 18 Apr 2024 09:24:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzc-0005gK-Va
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+bYK+97MmRa/Ky4nfoRqpy88xXQ8TuiU/pcMg4OPnk=; b=jykDAbkIs9nXDypEZBcpuWSbmf
 ohiwuN0x4S1jvxWpDOK0nsVpDRGPqv525zANkoQccXe2q8ZiuXdcwKpioDRUdDGkuVLGSNDu+HNsA
 AzRCTZYMoGkl9kDE7z39FFYy6+ZIRerzwZscbfyK0H0n+riHPaEkeP/TXin0dTUAVtg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e+bYK+97MmRa/Ky4nfoRqpy88xXQ8TuiU/pcMg4OPnk=; b=fTr2uPYG83eiiJI5fNo221kQnZ
 SNJzityS1AT0mrtfEXaXCMTNq/cjGUaA+KZOgzpcQt56BVTIE1TpOmX+f8ov6nfS0SmPRBFZvmA11
 hrvO6uWrf8kWKiotzrX0BMLxo4YbcOrkadwTuzeVQ2Q+JBxSa1NpwN1X1ofSk/NL90Yo=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzN-0001QA-E6 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:36 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B32541140121;
 Thu, 18 Apr 2024 05:23:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Thu, 18 Apr 2024 05:23:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713432198; x=
 1713518598; bh=e+bYK+97MmRa/Ky4nfoRqpy88xXQ8TuiU/pcMg4OPnk=; b=j
 gCeem/i7hOGoJRPWD74Y3vg3gZGNQI/Qhd9qZcr/JywlZHsDHxXzKWnijdRHicqu
 SnwI9xah4cAhL45tSb415zZvwiRJx+SaAWdQ+OOLU2UIdZI1ADN1gbI98gbS2tTc
 9TX43SK4iZ50dTtXt/h4WEa2nMn7OjFNRib1maEyhxnl/SmUsaXq0jenZZom1Q2G
 wnG/Z/RtyvJC6a+TkQs9P2OrbUrRuoLUWcg/K3PpA4XvMfAot632tcqgCHhX5d/E
 JJrcOMKoaKi4W9u3kNq9a97GtQjSNQafrm5qQoaYRQJUaopKKywulVsvfdgvBnTW
 HzPzvQ1vQQqBFBYUt1yxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713432198; x=
 1713518598; bh=e+bYK+97MmRa/Ky4nfoRqpy88xXQ8TuiU/pcMg4OPnk=; b=c
 vKw6z75l+Ubezx6INQOX/CDgZ6CpU1UJwgSUlnOkAuu0qlcqGkS3Di5c6jeWZX/G
 jmuWvwkc/rrN0g6EvtvmUvL23IatpwBs4C313qWCKxCIpyEnUOXIB3bhpuUMQLW3
 XDqlW8zJaZCnHoVP8hczWbfjwA8xOV4wZhvOt8ulOLlTIdY69UV08aGQryqIZQ8i
 QoyhI6v+/Sk0Pqmx/e2gYP9gz2gq/htvHpF8zhlHUDOxd496FNefLxWnMxt9lsfW
 cQzCIGeBRJAaOgMxDjfw2uzI8uhIR5ui/7OvIwM0sn5nnk6lqTJjaz1GnfVIz1Mk
 0zaU05xjQ24s9SVKEb55w==
X-ME-Sender: <xms:huYgZmwLgy3NO8qaJEkVUpJrPiYUr9RFPseP9-EpohXLcEMLzFwkDw>
 <xme:huYgZiQBlZQYITtsyF9yspdGnYflitzuNLetqwW239Of2FmhPmK--om5TT8DesxVu
 RASmA0VbZVj5jfMxAA>
X-ME-Received: <xmr:huYgZoUsCF89GXlOiNEKvWDpyGpmVRYNrsOTAZPvzxYIyPxNQMgPDiP437_-yyfnQaYk0JkfE7a3V49p_SLc-vpSKf_04hZoQ7AGrbcOtbTPFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:huYgZsje-XM1e9AGKlSk86ZrL49tu8ufh8pz8o6R1Ll6K40OqKaNcg>
 <xmx:huYgZoBPL-wv-DcKqE7Bckh9EAQjacsexCicaquExstdnX1Xa-GDEg>
 <xmx:huYgZtJ1eNz8hiIyXaulbDqdaequYFB1Usgta1Q6WpUN9XaxRwY49w>
 <xmx:huYgZvBnWkV-TuoCrBZDjCQZATTvn46f5vAwJt6Uvq5mjRuAPmJuIw>
 <xmx:huYgZrPMxI5T_LhETwyNG18yytHw_zfrnYHcPGNjCyhUbL5XhzlILA4J>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 08/13] firewire: core: replace local macros with common
 inline functions for isochronous packet header
Date: Thu, 18 Apr 2024 18:22:58 +0900
Message-ID: <20240418092303.19725-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418092303.19725-8-o-takashi@sakamocchi.jp>
References: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
 <20240418092303.19725-2-o-takashi@sakamocchi.jp>
 <20240418092303.19725-3-o-takashi@sakamocchi.jp>
 <20240418092303.19725-4-o-takashi@sakamocchi.jp>
 <20240418092303.19725-5-o-takashi@sakamocchi.jp>
 <20240418092303.19725-6-o-takashi@sakamocchi.jp>
 <20240418092303.19725-7-o-takashi@sakamocchi.jp>
 <20240418092303.19725-8-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit replaces the local macros with the common inline
 functions to serialize the packer header for Asynchronous Streaming Packet.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-transaction.c
 | 12 +++++------- 1 file changed, 5 insertions(+), 7 deletions(-) 
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
X-Headers-End: 1rxNzN-0001QA-E6
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

This commit replaces the local macros with the common inline functions
to serialize the packer header for Asynchronous Streaming Packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 24febc23c0c4..52d8d483c178 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -31,9 +31,6 @@
 #include "core.h"
 #include "packet-header-definitions.h"
 
-#define HEADER_TCODE(tcode)		((tcode) << 4)
-#define HEADER_DATA_LENGTH(length)	((length) << 16)
-
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
 	((async_header_get_destination(header) & 0x3f) == 0x3f)
 
@@ -215,10 +212,11 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 	int ext_tcode;
 
 	if (tcode == TCODE_STREAM_DATA) {
-		packet->header[0] =
-			HEADER_DATA_LENGTH(length) |
-			destination_id |
-			HEADER_TCODE(TCODE_STREAM_DATA);
+		// The value of destination_id argument should include tag, channel, and sy fields
+		// as isochronous packet header has.
+		packet->header[0] = destination_id;
+		isoc_header_set_data_length(packet->header, length);
+		isoc_header_set_tcode(packet->header, TCODE_STREAM_DATA);
 		packet->header_length = 4;
 		packet->payload = payload;
 		packet->payload_length = length;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
