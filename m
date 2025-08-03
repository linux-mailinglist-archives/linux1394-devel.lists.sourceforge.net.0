Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB36B19404
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Aug 2025 14:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a52jussf4FqhBGx1IP4xJmB4/yKtsan3L/Jd5Mny6Ss=; b=UnhW1k/DF8hQF8ykfOT4fZxPyv
	I6+fCe0uh3vbqZXXhmPKUYWrLiRFzvUz7ioLTKU2D8M58UsA29CFzzubrNvcK0OZzJLYMRgFLghnF
	4bMvDf4aeQC4/PK6vhYVz8k65w1bJA3rTR6S/u/LzEwjHznKg6GkkPfQWHIjsK+RfPlk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uiXhc-0005hK-Uh;
	Sun, 03 Aug 2025 12:20:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uiXhb-0005hB-7g
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b2fyZFzRWVmgOWs4mun/1WkdQS/q7qojuVcYuOgaoDg=; b=XK5Rm2us+XiFb7H7YvOrke2bVQ
 LhhWs9cHg9AGugf2CKMDmq/Y2t1LaNlOYKZRNGmAx6epdIpAIRTYwg2zZZLiGhcu5HrIzlmjAlM3Y
 vDsO6uSWk3RcGWioMVzkqAHyedCd52qsnwu4boEYsFuiU2yrGQwRSP4+iA3N2iBDVLP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b2fyZFzRWVmgOWs4mun/1WkdQS/q7qojuVcYuOgaoDg=; b=ZYn9epdZvmlnzR+qAmBam+odM/
 eOv50sjPfSwGTRVU/VAHQcrdbHfb+tb3tLGYPNPLjuQaSPmu3SOX7wmvKtpxekMU9AJXnI6/CLCri
 NEF7bgvh4WL+0Yu+YJTd8+Mgu640U6BdrfzGoeH85hF/BN33KgjX0WGeyK8Hvt2Qq5gk=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiXha-00054y-Jf for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:35 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id A35F01D0004E;
 Sun,  3 Aug 2025 08:20:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 03 Aug 2025 08:20:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1754223623; x=
 1754310023; bh=b2fyZFzRWVmgOWs4mun/1WkdQS/q7qojuVcYuOgaoDg=; b=S
 qJN1OvcFMlMwBV21lwkixIW4D1GSXL44Wqlmlq1OfHMCJUSZFbD08m71Oe+CYwPX
 SFVVyitY1OVVJiZ3tUoJ+wbMls+bywvT3o1XIzLDAZs14T5L/kkF/d4GcU0UJkgG
 w7lTsTapRHFzYpSArIy/Cl+SH0mEtzdTVmlz//MkJZhtJTHuhOH2l7NWQsT1Exo+
 1lJ8tEb/b2iQqXLuwQUjSmP/vS0nwiFyrRxVLgVW6v0LlEuhOcBuIR6YzoHW1vW/
 1Uyv3uOtBN07fQHw8L4MwT6DdKty1ydYHdsR0yish7BaLJnuJVVm0FUc/edO7ivS
 5NE3SFF32nKQ+4dFVxgiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754223623; x=1754310023; bh=b
 2fyZFzRWVmgOWs4mun/1WkdQS/q7qojuVcYuOgaoDg=; b=SUvDXZI9IT9kzXlJc
 G2e0QapDA08pKPXriDP3wjgr4+tlHC+QZhByvuU6dlcPfIOTh4tdrk2sjWLzralB
 nRj24BDPkHxvhl2TXnpAkf1X98hssSIOO28kyW9xC8cConKE+OaXspv9NyGjiRj4
 6Jzt9OCsMNDe9gGQLRtUTEyT1r2AxyORxbvgQ1FBG/I+GmB4m05kE7+56baHP/4K
 B7nEbGFgCfa5aiSGKpJijyjPlSaMeHoE2G8SIHlexiGDL7bTYa9vGME8yKxzuuu6
 K1zUiN0+o8H3HS/F52EMhsmfmZGf8tb0A0qEqXUivIbFg7vDunnxmS3S4aVQAXfg
 vTIIw==
X-ME-Sender: <xms:B1SPaBzUA-sObdltYyN9ptCXx7VTr_axiHllT8wP7aHYgmOHLecraA>
 <xme:B1SPaKP1yDwt3EucO8UVXOZVmU1UL23kv7m-ogiQTVTT7lfUeEYj-tnZwkKRl4Wpf
 ZlvFMb5rGcYkdkz9MM>
X-ME-Received: <xmr:B1SPaNTzHNhQNP4gmee3wBCzb6Gtpw4DfIjOvMhkqH3gXeqZUvUgJ1r56UE98AkfAGyWUSE9k3SUyduT2-ulbGh7-KBV1uUiTRyGzioX4YN1>
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
X-ME-Proxy: <xmx:B1SPaAb8aIIWKIdv3o3aXqlQt8N6j_BTOinMbSNHJm5q3hCN6rnzbw>
 <xmx:B1SPaC2qehSqc9T4Qq7Hkoaq4yvzcZzMMb4ixgYmXB7UEYhcLASMug>
 <xmx:B1SPaIXrGAlHOFoKiGEN-ktbRXNQSbfZD7TE6L06Dk-Sa9g-HI2X7Q>
 <xmx:B1SPaEVJnKDLsROMPTYkMl1XyqgKEqhlcCR1vaaY7pSCuTQ1M7qdyw>
 <xmx:B1SPaC2lqznvNXfK4efS31NHz1w-k8F92dX1BKlczux5LTQJqQoqaKis>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Aug 2025 08:20:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 2/4] firewire: core: call handler for exclusive regions
 outside RCU read-side critical section
Date: Sun,  3 Aug 2025 21:20:13 +0900
Message-ID: <20250803122015.236493-3-o-takashi@sakamocchi.jp>
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
 Content preview: The previous commit added reference counting to ensure safe
 invocations of address handlers. This commit moves the invocation of handlers
 for exclusive regions outside of the RCU read-side critical section. The
 address handler for the requested region is selected within the critical
 section, [...] 
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
X-Headers-End: 1uiXha-00054y-Jf
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

The previous commit added reference counting to ensure safe invocations of
address handlers.

This commit moves the invocation of handlers for exclusive regions outside
of the RCU read-side critical section. The address handler for the
requested region is selected within the critical section, then invoked
outside of it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 29ca9f3f14ce..a742971c65fa 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -935,17 +935,19 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	scoped_guard(rcu) {
 		handler = lookup_enclosing_address_handler(&address_handler_list, offset,
 							   request->length);
-		if (handler) {
+		if (handler)
 			get_address_handler(handler);
-			handler->address_callback(card, request, tcode, destination, source,
-						  p->generation, offset, request->data,
-						  request->length, handler->callback_data);
-			put_address_handler(handler);
-		}
 	}
 
-	if (!handler)
+	if (!handler) {
 		fw_send_response(card, request, RCODE_ADDRESS_ERROR);
+		return;
+	}
+
+	// Outside the RCU read-side critical section. Without spinlock. With reference count.
+	handler->address_callback(card, request, tcode, destination, source, p->generation, offset,
+				  request->data, request->length, handler->callback_data);
+	put_address_handler(handler);
 }
 
 static void handle_fcp_region_request(struct fw_card *card,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
