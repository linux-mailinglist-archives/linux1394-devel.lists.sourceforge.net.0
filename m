Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 451B0945581
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 02:36:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZgHd-0000sJ-GZ;
	Fri, 02 Aug 2024 00:36:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZgHU-0000rx-0G
 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fGBvKcMjmz7YqvhXrQlAHy53rzEKiDR9wJlFL73blRo=; b=J5ySG+7GhM8a2m6Kr7k93B+skd
 H+BwTOpzBrQpHHEe51IqzYdF/SvvWF+d6pcDPKIja8kVieEkM4Z+q4WPFOOB8f/alWGteatU1BAic
 JvgqQgmyCOlfnf49eHdM9A7wEcIM9JUvM5PjrVGNHO2enKVU7gUBkcbMGWziQt2q3/V8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fGBvKcMjmz7YqvhXrQlAHy53rzEKiDR9wJlFL73blRo=; b=O1ZsOrU0cvVa1xtsl4654VnOht
 jy04LSYseBVSuQN2J+WDf30ZLHLbV68aCvj5mMySMCysO4OiX46zGZuMgF74ag8BrsmfAQTfCOLZ+
 DaMLvB1CP1xdSZvO7zicO8wVAkAfs7ZcQ9rNK/m3CROlRlmHweq1dkfTqw9MklgqtHOc=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZgHS-0000sR-Ju for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id B86F0138FC81;
 Thu,  1 Aug 2024 20:36:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 01 Aug 2024 20:36:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722558975; x=
 1722645375; bh=fGBvKcMjmz7YqvhXrQlAHy53rzEKiDR9wJlFL73blRo=; b=F
 lw2OSOW1QK10C2bl0w9ZFxr2XfYatOWF+7w4K00F6ofZy0duLvr6DkZFeYjip9TE
 b+jv/JMbpu6XHcdzumyp5I/RnQMBuRhBE613c+ca8xKjLFORJOb5Kzzv4i+cTAUX
 GT2YLAm330XLN7TEsFQ1C2FZ89tXtK7d5f+HS81GXPchzzE40mIU3QTQcFP8/bYw
 nGGXlV0VayTe/0xeiZQPoK3Rij2AnEyMqFITB1wDFXXAtBv/EGn1itriJ6azQKji
 kAstMQkzaCiKVv5OVSBx0qhHWGkrXyVtE1ydX9/P0MGhYk+d2qsPB2oiUPEgftfL
 1vY35EZ5tSMA2kHjXMeow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722558975; x=
 1722645375; bh=fGBvKcMjmz7YqvhXrQlAHy53rzEKiDR9wJlFL73blRo=; b=C
 SZQP/qfwVa0GHG+b9igDv78psRwnahxhWPoWuUbIURN/FJ20V3xrbftqN3urrYk6
 r8zXebGxKVptSWqVLfKnndiIX4KeDh/KxOx9zu/rTzcO2nM7E4o/2eBBBrfiOzLE
 E2XjceGaRSlMrJXhzTBZXI8qD2p0yqrfvTPFGf31pWAFzyqxgpXzntE/FzQGygGs
 BMjRJLu2irhH0hFVayEs2SDlbP6Q2pOQjl+cuuLjbmcZq1BbC8odSf48yrRA+5bM
 GOd0u+ptbuQF/94V+3nrUFHI04R/JR8YFgP956c1Wz10pasuFFPWfdSNZX4Iv5Qm
 gDluMLvEZm3zMKqYlrGwA==
X-ME-Sender: <xms:_ymsZsO22v2jDBI682-zQzbPOVzdXd4UAcqmMNjuTZwzU2Vu6xtdqQ>
 <xme:_ymsZi8fDXSH53n_06L1fQftPFnJv5sQCqr9HNyRzSmuE19Xxk8qAIM23sCR1PCAe
 BucqhGymhhlwW-MqEM>
X-ME-Received: <xmr:_ymsZjTZTqyff4mpwi1lmEqIkH_KSVZ0h4TmqHP9jbeScT3Wtb2fqK84XqOAfZViJI3cb6oC9EbC0H2fjyDqhA2VviuycEhfrcywY_LQuOua>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:_ymsZkufis3O7eYyffmAe7tKTi_OSbfL5ih4n6FKtSH67ZH8HJCieQ>
 <xmx:_ymsZkf5ii6sVUhLIwga1L0aYQNpQKNw2y1RuBnXqGgZ6S2thzEZIQ>
 <xmx:_ymsZo2JfI31vjQ8n9VYiGdVgU-3IPYsPSCQzgdPlrKjCqrKyR3WTA>
 <xmx:_ymsZo_QNKip_-bZ5Wi9EhHRDwCxGW8AMT_EPHFRXw7O3TYWAIQbmQ>
 <xmx:_ymsZlpIyy2fowIJxfJcH919MBWSIb8uRiwKOTc8xz2aWWGcWXMzj4Gp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 20:36:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/4] firewire: ohci: use static inline functions to serialize
 data of IT DMA
Date: Fri,  2 Aug 2024 09:36:06 +0900
Message-ID: <20240802003606.109402-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
References: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: THis commit replaces current implementation with the helper
 functions added in the former commit. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 34 ++++++++++++++++ 1 file changed,
 16 insertions(+), 18 deletions(-) 
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
 [103.168.172.149 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sZgHS-0000sR-Ju
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

THis commit replaces current implementation with the helper functions added
in the former commit.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e8429dbbc60d..8f2bbd0569fb 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -162,13 +162,6 @@ struct context {
 	struct tasklet_struct tasklet;
 };
 
-#define IT_HEADER_SY(v)          ((v) <<  0)
-#define IT_HEADER_TCODE(v)       ((v) <<  4)
-#define IT_HEADER_CHANNEL(v)     ((v) <<  8)
-#define IT_HEADER_TAG(v)         ((v) << 14)
-#define IT_HEADER_SPEED(v)       ((v) << 16)
-#define IT_HEADER_DATA_LENGTH(v) ((v) << 16)
-
 struct iso_context {
 	struct fw_iso_context base;
 	struct context context;
@@ -1457,9 +1450,14 @@ static int at_context_queue_packet(struct context *ctx,
 		break;
 
 	case TCODE_STREAM_DATA:
-		header[0] = cpu_to_le32((packet->header[0] & 0xffff) |
-					(packet->speed << 16));
-		header[1] = cpu_to_le32(packet->header[0] & 0xffff0000);
+		ohci1394_it_data_set_speed(header, packet->speed);
+		ohci1394_it_data_set_tag(header, isoc_header_get_tag(packet->header[0]));
+		ohci1394_it_data_set_channel(header, isoc_header_get_channel(packet->header[0]));
+		ohci1394_it_data_set_tcode(header, TCODE_STREAM_DATA);
+		ohci1394_it_data_set_sync(header, isoc_header_get_sy(packet->header[0]));
+
+		ohci1394_it_data_set_data_length(header, isoc_header_get_data_length(packet->header[0]));
+
 		d[0].req_count = cpu_to_le16(8);
 		break;
 
@@ -3403,14 +3401,14 @@ static int queue_iso_transmit(struct iso_context *ctx,
 		d[0].branch_address = cpu_to_le32(d_bus | z);
 
 		header = (__le32 *) &d[1];
-		header[0] = cpu_to_le32(IT_HEADER_SY(p->sy) |
-					IT_HEADER_TAG(p->tag) |
-					IT_HEADER_TCODE(TCODE_STREAM_DATA) |
-					IT_HEADER_CHANNEL(ctx->base.channel) |
-					IT_HEADER_SPEED(ctx->base.speed));
-		header[1] =
-			cpu_to_le32(IT_HEADER_DATA_LENGTH(p->header_length +
-							  p->payload_length));
+
+		ohci1394_it_data_set_speed(header, ctx->base.speed);
+		ohci1394_it_data_set_tag(header, p->tag);
+		ohci1394_it_data_set_channel(header, ctx->base.channel);
+		ohci1394_it_data_set_tcode(header, TCODE_STREAM_DATA);
+		ohci1394_it_data_set_sync(header, p->sy);
+
+		ohci1394_it_data_set_data_length(header, p->header_length + p->payload_length);
 	}
 
 	if (p->header_length > 0) {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
