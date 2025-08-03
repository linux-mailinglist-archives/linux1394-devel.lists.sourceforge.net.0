Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A616B19402
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Aug 2025 14:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFK8kYwhdhLAAdrZFFVnHJsRts+hQDVJRzIV9XiJiSw=; b=CUnpdqxVEHMw/LltCsOH7u47T2
	UUO9aV9Qb0anFlGIAFU/gFNPFplYDcOrBlglIuoTeHvS5m/Cy2xQgf+E0taqyHhFSIqsWL/X0zHl6
	5ilo/j2i8PXZ/rhc4M7D6CmufDf7dmf0Cl+lNvov15mCOaNQIiDJVBG/zyd64Xv4v9gs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uiXhd-0006Br-AM;
	Sun, 03 Aug 2025 12:20:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uiXhb-0006BZ-DP
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pp+pwOmICXcqQR9UclsW6KRuxHBE1pvoqo0FGtllvWg=; b=Uu2rDONmRlvD2wUvOUDGdab8yV
 bJ12VuiSPdscdfIAeL5i3Im3HayrlKVoegTAaMPZTrnv+PbrHE4nd8d/QH4KLrE3lI7e7vKVHzgLW
 KUKbEpud12IzpXPfUQgglXvO9Ypcj/igdPv9S2T2o1vcPv/HasSI5NJ4cYZAWKYIpFIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pp+pwOmICXcqQR9UclsW6KRuxHBE1pvoqo0FGtllvWg=; b=nKf012Nch265IkpZu+1PlFXHD1
 a4FWvJjzWxAvWmifjdZHwCjKdVRgHIqkkjOQzsMPdUoAbEpGyr6AoYOXKQ0pjVhL0tyf7y/64JCbi
 IWu4WNE1gr26Lg6QsY6JoPhm+Kjkh4mGlPt8pzBeerxjc+qyU5FfSPWeQiJtePzKEYuM=;
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiXhb-000555-Lb for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:36 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 2DEE27A0065;
 Sun,  3 Aug 2025 08:20:25 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sun, 03 Aug 2025 08:20:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1754223625; x=
 1754310025; bh=pp+pwOmICXcqQR9UclsW6KRuxHBE1pvoqo0FGtllvWg=; b=k
 xWMbMr4WmqTmxbR+Qjd0fPSNzL52yXGFwkcd09RULOkrxFycZ/8mUvODcrEAiCHu
 W7rNOPR4dLDiHPe3TBMBXmSJCcxhIExTzY9PN7X0Sq/Lnn3EINZ4t71w+2UfJ4qs
 i123x1i3nG7liUbwzqBZvi2RcgTYnOlvIBovcZwUkehgKXhysWvPPDWPHtkgME6h
 ZRdiUm3m/FGa97x4I7P+6T5bXBP8hT+OmuKevP7P3drMss6zZI1mnPyughWwhhrG
 eBFi1ax5wAAUSUAJEhRmIdm+7YAVz6PVEJtUk5CMZcUkzEuInP/gxbZnAo9F2hEG
 e5+w1ZvLvfuTAAX1rW2fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754223625; x=1754310025; bh=p
 p+pwOmICXcqQR9UclsW6KRuxHBE1pvoqo0FGtllvWg=; b=NOsdxfbRuHiHu0Jhp
 4slm2ARVjwwhDzA/SvZ29z720tH4s7r2uBtawORftzWKlK6NlWfP1cs7muUwRw8I
 g+4Cf21XyPZoavKqPBgQl08gn2RIyg4hatTFdn2qecNJ6CN9d4Kzzt1fks0g03Zu
 ZUqyzEq73S4F+AQnWmaYwNAQJquwYjOtYi3XPLLmzLAGfixTPREpISp2K0CyjNLU
 NG1x41X8+eOuDHrdfRWf3Hnxls5oWJZ3vXWw0LknlBYmje3SBT7GMoEVvBOoqsr9
 bk+/eGeO2Rw4pNqfX3iMH1YodfU/fi/7uqnapH8/WnWDhjnpnae4rLIHq960K96E
 W+8aQ==
X-ME-Sender: <xms:CFSPaIIGGk8Vr-mdxAGp4-ixh_YRItuhDn8UGNDU4x_b5KhMsAZOmg>
 <xme:CFSPaBEPjLVJjD4xledXkcZq-OW60JTy3obAacgJqj5u4XGk6_Q37NaXwmIdt9Zdj
 DLR7gpthNE38sshdvI>
X-ME-Received: <xmr:CFSPaKqbb2FpO3uvQYCoL_D8GsyS5vU9rR0i7qD7xzQv7H7-pfYNL8eUsygcHbBzDAElVeBbbLjwwbKVBbJDSoIm8dQyS_kLX8XMmyzsbEme>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdelgeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:CFSPaCS2rIrB9vF3N3I_9FPRTgLdUGFBWO6o_wolfltrbv48MHXEcQ>
 <xmx:CFSPaPPcLwo9FhqpGeibpyMo5X-vHFhXiHjjx8JZR2zTuPo31sonFg>
 <xmx:CFSPaNNtZfV2rHNpxAxnQEVI4XQ12tE-OP4653bM4TJgvW5cRUfKwA>
 <xmx:CFSPaHvYKb7E5u4MJveR-dH2gbRp3VwjdJ4nyYSuz4gRzUnVC6aSnQ>
 <xmx:CVSPaEODc3-JudJ1hAIjbUO_APDzdAnN0zdUTX_6UVV92hTVmcmSJww2>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Aug 2025 08:20:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 3/4] firewire: core: call FCP address handlers outside RCU
 read-side critical section
Date: Sun,  3 Aug 2025 21:20:14 +0900
Message-ID: <20250803122015.236493-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
References: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The former commit added reference counting to ensure safe
 invocations of address handlers. Unlike the exclusive-region address handlers, 
 all FCP address handlers should be called on receiving an FCP r [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uiXhb-000555-Lb
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

The former commit added reference counting to ensure safe invocations of
address handlers. Unlike the exclusive-region address handlers, all FCP
address handlers should be called on receiving an FCP request.

This commit uses the part of kernel stack to collect address handlers up
to 4 within the section, then invoke them outside of the section.
Reference counting ensures that each handler remains valid and safe to
call.

Lifting the limitation of supporting only 4 handlers is left for future
work.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a742971c65fa..7a62c660e912 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -950,13 +950,17 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	put_address_handler(handler);
 }
 
+// To use kmalloc allocator efficiently, this should be power of two.
+#define BUFFER_ON_KERNEL_STACK_SIZE	4
+
 static void handle_fcp_region_request(struct fw_card *card,
 				      struct fw_packet *p,
 				      struct fw_request *request,
 				      unsigned long long offset)
 {
-	struct fw_address_handler *handler;
-	int tcode, destination, source;
+	struct fw_address_handler *buffer_on_kernel_stack[BUFFER_ON_KERNEL_STACK_SIZE];
+	struct fw_address_handler *handler, **handlers;
+	int tcode, destination, source, i, count;
 
 	if ((offset != (CSR_REGISTER_BASE | CSR_FCP_COMMAND) &&
 	     offset != (CSR_REGISTER_BASE | CSR_FCP_RESPONSE)) ||
@@ -977,18 +981,27 @@ static void handle_fcp_region_request(struct fw_card *card,
 		return;
 	}
 
+	count = 0;
+	handlers = buffer_on_kernel_stack;
 	scoped_guard(rcu) {
 		list_for_each_entry_rcu(handler, &address_handler_list, link) {
 			if (is_enclosing_handler(handler, offset, request->length)) {
 				get_address_handler(handler);
-				handler->address_callback(card, request, tcode, destination, source,
-							  p->generation, offset, request->data,
-							  request->length, handler->callback_data);
-				put_address_handler(handler);
+				handlers[count] = handler;
+				if (++count >= ARRAY_SIZE(buffer_on_kernel_stack))
+					break;
 			}
 		}
 	}
 
+	for (i = 0; i < count; ++i) {
+		handler = handlers[i];
+		handler->address_callback(card, request, tcode, destination, source,
+					  p->generation, offset, request->data,
+					  request->length, handler->callback_data);
+		put_address_handler(handler);
+	}
+
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
