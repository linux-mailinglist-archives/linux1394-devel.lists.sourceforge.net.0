Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E94B99E59
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Sep 2025 14:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6jLg8Ny8exOslRN/efPxBx54o1PZqfbnWea9h5U5SeE=; b=Y9MZAwLOMVyCH4xL6zopib89F+
	A5aUvZpEgOoDh8lH1M8ontRW6+njSsPich3HnaKbIuqmrmbf0fs2pWmHUUfJfOlzUU//RjGKj+zMW
	WdWi8KhwtTda+p0U89pYd8b/geRMM6VJXlDZ9Ixdeu5EmWWF0mOiLJsEDpX1tvAN5NBM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1OpG-0004Qr-Ul;
	Wed, 24 Sep 2025 12:42:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1OpE-0004QZ-MH
 for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 12:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=XEXfVMm1grKWAAGccFkMNh+QeA
 jF1AxEnAQ7v2/JpTJfUITY5E0n6gGz85pNdqrrczdlNkZKmcZPV+I9nUhaj5WOAhL4UWbwrL4DTA0
 /2/7mmHS80FTEZ2Evy7zVM0FLzoRmyYL2kAbhUXxnasZpm49K8GSsDy+vnFEhTBiKIJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=UMYTrR/ypnZ4y5tM6d531kdp+V
 WWn0bLIGHbhLWt7MlQ2u6DqEzkr1a16tXfxwfEjilBLDltQOl2qQWPhj9TiCE3rC51NL5xFzafNYn
 4vLGH5j9pECiHq2ZPGT/LSX7LeVAdvyz9zGXQWlsmHx9BXTkzXjQXmCa8uON1RYWqvnA=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1OpE-0000V1-Aa for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 12:42:25 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 932CEEC00C5;
 Wed, 24 Sep 2025 08:42:18 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Wed, 24 Sep 2025 08:42:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758717738; x=
 1758804138; bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=A
 gJ44/lNxqEoTfG7Q427T97GekBFqFmkRhZYz7tGIOOJdb3N3fFg6R08UGF7gT0eB
 Wtp6OdUA2/SKfXUgPDhnPm6Q+iSjTWvzL5PRTNfBXvpDcflt9cvCRhHBydNpwXog
 gtRMKV5ZdLkTToysgzW99J1TJoKXYjEhyX1if42KVWInfEVQ0n+YeBfbYBJIEkRC
 13HrKB3Isn+q+seoyCWWFA4WFnFJbzAowwCnzi6kv1UPuK995Dz0QpN7zAzt6KBQ
 ZfORzmbrDORAJrgRbu48AXhhMFBB5PdVhRJ8+S96bkKc6v9JwzPdJxdIGzncZ0pl
 10uylcnHX1IGyfCt9lA+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758717738; x=1758804138; bh=Y
 ZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=Y5YS8ZOyLfisl9D7N
 rtupkpOEOfR/opLOikqAs3QrQvDh+iS8b4HxIOlIhVFxRvGtb2ktdEXaLkphZEP0
 uEIuvEBc7lkmoYA4bx3tB9cLQktHOT/GqRtoItY2/ZcLFfttYH1xskfVj8iDhb/Q
 pFQJHBRzyYJ8qAyiavtCPmcc5hE9iKaZtAhqsZsmkqoon/6AikxGkZRhL76sRz4C
 3UBzWvxChoQMB+3MDw5O5gKcwso6069euliXnalnzjt/aD8PqG2ESTpush8/GcOQ
 iN76D5sgVzHpc37pONWpvh8XBRdknupHyOADBw7+K3wSB9HfI4w8V5ErvfmoA8iy
 OsMsQ==
X-ME-Sender: <xms:KufTaGvLn4dayuvXzJgosSlTyBUjBnFgCOZafscyrGSpTzL6qq16Zg>
 <xme:KufTaJYHSsgPiho4IJZ6-ZkpevCPWxjyfUkvriKLuz1FAQSGU3LWINCbGkEDwo57m
 tppZh0k_ycUE75MQwzIWNFAL_vt27F4uyotI_9iD8D4CI6oQ5U8KiCA>
X-ME-Received: <xmr:KufTaJV8ZMZjj7bziULZwi7NkJk3SArqRC-Ukw4zGuaDA0pJH0-nUR_xzT7q-1ggeq_G2L7sgapWJlba6kecYmcy5XsB4dTXBNFiugsoXZJw8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeifeeigecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:KufTaN7Uqm08PI-45FvV3bjFmeppT7v1zuKTcAj0RFrRIprfci729w>
 <xmx:KufTaEjJOMmCvXF8Z7_30vtvOjphNh56q018bBeTkSymqOEXr44w7A>
 <xmx:KufTaEdbNmKcDsKUva4tEdr_UfLKZ1ruwnhBrfBj3uEZHuTz7D4ocw>
 <xmx:KufTaJevGJO0cfRiaTjs_vfMi3O6AX53pHUGpr6hcYO7F5m8y1LRDQ>
 <xmx:KufTaKBFeIConiydQ0QjDH28zP4h6hvpB2pbQdRRRyUOppJK115bWTBp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Sep 2025 08:42:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] Revert "firewire: core: disable bus management work
 temporarily during updating topology"
Date: Wed, 24 Sep 2025 21:42:12 +0900
Message-ID: <20250924124212.231080-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250924124212.231080-1-o-takashi@sakamocchi.jp>
References: <20250924124212.231080-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit abe7159125702c734e851bc0c52b51cd446298a5.
 The bus manager work item acquires the spin lock of fw_card again, thus no
 need to serialize it against fw_core_handle_bus_reset(). Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-topology.c |
 8 -------- 1 file changed, 8 deletions(-) 
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
X-Headers-End: 1v1OpE-0000V1-Aa
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

This reverts commit abe7159125702c734e851bc0c52b51cd446298a5.

The bus manager work item acquires the spin lock of fw_card again, thus
no need to serialize it against fw_core_handle_bus_reset().

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 90b988035a2a..2f73bcd5696f 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -460,14 +460,8 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 {
 	struct fw_node *local_node;
 
-	might_sleep();
-
 	trace_bus_reset_handle(card->index, generation, node_id, bm_abdicate, self_ids, self_id_count);
 
-	// Disable bus management work during updating the cache of bus topology, since the work
-	// accesses to some members of fw_card.
-	disable_delayed_work_sync(&card->bm_work);
-
 	scoped_guard(spinlock, &card->lock) {
 		// If the selfID buffer is not the immediate successor of the
 		// previously processed one, we cannot reliably compare the
@@ -501,8 +495,6 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 		}
 	}
 
-	enable_delayed_work(&card->bm_work);
-
 	fw_schedule_bm_work(card, 0);
 
 	// Just used by transaction layer.
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
