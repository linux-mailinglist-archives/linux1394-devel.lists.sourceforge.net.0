Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED96D946ED0
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saasr-0005eI-NK;
	Sun, 04 Aug 2024 13:02:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasq-0005e6-8A
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=KpzKiRRjDfg7txBob8Sz7zqNoY
 44DvxV5CHGkhdaFrsFbQ9pABlR7tW2v9jz9CYYkdtNZD8A2Wl8//HLsX/EquBSSG1XzH42PPGvq0t
 uyTGMOMg8bTq2qsV8RstQVyVNu6chCqe+qp4Q4/Lm5HFRCs5cbiE8vQgCfZDs2nArafA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=ifw5nC+8ElaMiXc0R0QhW1JPlw
 7IGG3dlWR72a8izY5ufWVb/RoYqxTKtZxUsC/GVU3MTBNDPP3nZBoPpHn3i62/XFU3lAn+pig8ZuD
 AebYbUJDL9jy7SaEHTVgqtdAU/UJvM/VKqD07CV1pazTrVEHoDfoHEvvRMq1dJj+R3lk=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saaso-0001Dn-Ru for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 4B17B11481EB;
 Sun,  4 Aug 2024 09:02:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 04 Aug 2024 09:02:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776556; x=
 1722862956; bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=v
 4dlk2CgeNhcL7Ly2ue62WFXDjfMN/Bu806IMPBop8oqOYineurANx4G5ddPG6m4S
 +qT3tU3xv64Lo3wjYA+Kb3knaCGOIprhSv/n9iM/9i3nXp45lftExODrKZahcBXk
 cjlg+ZFSzbj/W5ea0AnrB39SquPVF+MlC+fZkqP3D6GYcRNz4T+mNKMv/5cHkmuX
 YizP6AFMn4Ay5o2z87S/5/wSR/8wkTbpJpiyY3614TwQ6bGB9BxOyFQ3yG6/H65h
 8h7V2MMT3ks9qeBlulO5wiCG+X67Iqda64aVGG8MTnkr0qhO5FPXgb0EwU8BleqH
 B5ryVKxuU9qruQ1aq320g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776556; x=
 1722862956; bh=Qc/S6YXZ+4o3poTVbyilyGCeWi9HX+4N+cgNY9BibBI=; b=a
 hxdGVbH5i/BdKRRvPn6D+pfzOPcEREtFwXJslIsJhLm4/r6Cw3BT2OD7aF11rOKf
 m8sEUseNk8iIOK1mKHhcDWfyouZfxuXcR1hqssnLtYX/oq2I0Dupq2YjrIuMEfrl
 3YloQ0abnE4GpvvXaORFSTxJdlohZZdwpyTKnS+WVjbcnFz8/1R0xIQrN9n5w0r0
 qxEl6Z68k4dRebt5RQVL0aanQYuxpea16mmmGKNCyiuVKQ3bj2BV/s1Edpm9ZJfY
 9o1FAiSSEDJYoNYeU1uAO3gFp2yz0aRS32z5weydfOiz0sn2QSzXoPSEF8FHivda
 hYj8ZACP++3iwFMu4T6MQ==
X-ME-Sender: <xms:7HuvZgd8-bbR5SoBxsDtxNxLhMhbtGoIN1gp6aynoPgSKm9qMDRm8w>
 <xme:7HuvZiM1Er7aXYw3_BRMR7VuYXSJWWyxmNB8_rx1lBGrIrPcyu8mJ55RPHjkumtQo
 _doY71gach-PTL4shI>
X-ME-Received: <xmr:7HuvZhhqIpf11NoZQN5WHBb0cypo7pQXQ3kiqIpim1bNtKWUc8JK-rI_o9oIX2bRUltGdD9MXP6ATHb2dPXpK6bK7aNw5JAXM-o4sSgCMFFM8Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:7HuvZl8o_CeAf8cT6PMMlhlQZz5tEs6eDA1FUKVx5lf0fRAF6DRMxg>
 <xmx:7HuvZstOemiNmSnJxcgC63ReJNeSTnDmdK7BHsyz4bWxWzhrO299Eg>
 <xmx:7HuvZsGK6IxyEYKGHLA86SY5N6vV5hLAaPEsaHH76L3X7-nzGsn84g>
 <xmx:7HuvZrMLNqYaAxJ_Vi-5zZrBSqeytuQ8z4ytyGVqYyhFMa41SBec3w>
 <xmx:7HuvZl5K1qP2XYeUxM8_pByw_mf95kf90xmCSETj0CIdyhFTEp2fCh3C>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:35 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 05/17] firewire: core: use guard macro to maintain RCU scope
 for transaction address handler
Date: Sun,  4 Aug 2024 22:02:12 +0900
Message-ID: <20240804130225.243496-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains address handlers by list. RCU
 is utilized for efficient read access to any entries in the list. This commit
 uses guard macro to maintain RCU locking and releasing. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c
 | 35 +++++++++++++ 1 file changed, 15 insertions(+), 20 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saaso-0001Dn-Ru
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

The core function maintains address handlers by list. RCU is utilized
for efficient read access to any entries in the list.

This commit uses guard macro to maintain RCU locking and releasing.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 35 +++++++++++++----------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 2a2cbd6e2f9b..a0224d4d8e11 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -925,16 +925,14 @@ static void handle_exclusive_region_request(struct fw_card *card,
 	if (tcode == TCODE_LOCK_REQUEST)
 		tcode = 0x10 + async_header_get_extended_tcode(p->header);
 
-	rcu_read_lock();
-	handler = lookup_enclosing_address_handler(&address_handler_list,
-						   offset, request->length);
-	if (handler)
-		handler->address_callback(card, request,
-					  tcode, destination, source,
-					  p->generation, offset,
-					  request->data, request->length,
-					  handler->callback_data);
-	rcu_read_unlock();
+	scoped_guard(rcu) {
+		handler = lookup_enclosing_address_handler(&address_handler_list, offset,
+							   request->length);
+		if (handler)
+			handler->address_callback(card, request, tcode, destination, source,
+						  p->generation, offset, request->data,
+						  request->length, handler->callback_data);
+	}
 
 	if (!handler)
 		fw_send_response(card, request, RCODE_ADDRESS_ERROR);
@@ -967,17 +965,14 @@ static void handle_fcp_region_request(struct fw_card *card,
 		return;
 	}
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(handler, &address_handler_list, link) {
-		if (is_enclosing_handler(handler, offset, request->length))
-			handler->address_callback(card, request, tcode,
-						  destination, source,
-						  p->generation, offset,
-						  request->data,
-						  request->length,
-						  handler->callback_data);
+	scoped_guard(rcu) {
+		list_for_each_entry_rcu(handler, &address_handler_list, link) {
+			if (is_enclosing_handler(handler, offset, request->length))
+				handler->address_callback(card, request, tcode, destination, source,
+							  p->generation, offset, request->data,
+							  request->length, handler->callback_data);
+		}
 	}
-	rcu_read_unlock();
 
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
