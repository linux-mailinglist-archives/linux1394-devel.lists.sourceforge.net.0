Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AF8B9A006
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Sep 2025 15:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6jLg8Ny8exOslRN/efPxBx54o1PZqfbnWea9h5U5SeE=; b=Vn8POTLjZm5zxov7x7ZUGD/mAX
	m3uhNH6/vBaz8cGMZdJ+yJF8BXU7vQHZTKwRiEC/DeKty7y7tDq7x1KcScYGb0IvJsQG+tT7Her1m
	ms8Og8DYQcF4KFAYyDk4q8VD1Y5lk7kMMO3B6NO6SW9sRvHtrIc/5tS/VBcK3JEcJI4U=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1POH-0004f3-9n;
	Wed, 24 Sep 2025 13:18:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1POF-0004eu-Ob
 for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=JMdzoILl9yxt4OMSFWIM7JE8xz
 FoKcCxmkcKqGBj8V3v5l5OyGiyxuyId9+OkCOiCVAo6L4HEXNc9iVgHIQNBhKmYxjF0Ic+OdzxZAA
 W6nw00elkW0uYyAvvDPfpz3DfsbQRB2ttb6H0Kxm44Schls8UxLE9Vjznz0WzggT5300=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=Z18T2mO5Yg0C8+tJNh4iZirfl9
 FhkqHTYi2AyRgXfwoC/Fk+NHVACfgPSoXJcR0Z/p4q4SafdX5pwPf4by2Arul/OgFnEvJ0Uto8cKi
 yq1tsG6EaEGFouBzV3dCd3q+tUA6gFpp55a4dGYjXLawMEUNaBqce2s20AJI+KuY2wc8=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1POF-0003Lv-Bt for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:18:35 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id CC7C9140013C;
 Wed, 24 Sep 2025 09:18:29 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 24 Sep 2025 09:18:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758719909; x=
 1758806309; bh=YZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=V
 pdKojZM5CyqIwc1iAHP7az1rOh3s0Gw91sk7BkBtU8bHP35Jg31h2aFpAwzcSfcR
 3rlmmC1GalJOuyabRN3VDc402PyuoSjW79ugVEvKImfmybKCIJN7xY6tvw5W7N6P
 SW3WZTh/2LEtvwOgjzCEAKJvA09SNb55D32+197AuIzJ785ZDB1ivv77oLsDl991
 MT0/Y6OOD36xyMNehz1lOB+mSXmUWaEqhEWMQnionGde/yINLj0blpxKAyD4C1rI
 aO99TRJanEJcJ+fCqifYHvkb5p9k1FA1IISuVshuFXhKIMy02bso7/rM+wbZeqf7
 9CoO+2nkL/D3neZj3nW5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758719909; x=1758806309; bh=Y
 ZTE+1HoIfy758ZocvG1+0WaCqinIXSMBBaXpX5YQGs=; b=FU5wBtC48d0SlKa0E
 Y+DYx7p7FXxJGnvBFhAu73+RMwXIzR5kRyf4jmHGwSPexFSk7Y8jH8TX5zh8wwzM
 r1fJL4dgIvlMkA/RjUOaWCvXIwzbU7SNCSn1rMewTHNoojunBEvQi8s/e6LKSKZ/
 yiYjw3hNbvP0EfuvHbULfem7LkxHjkXG/xbh84PG+f6XjcBE63GpsSJpW2nnSuOU
 4Ht1KFmEqLlWzLfjPpEK3ReAqO1AODqKF1Uh7yXL7MXbCrE91Ht+hJooed+7BqtR
 7p+VRkU5C2lZobKHPwguEvBbT4VKd0dxOckrWu4fWGelRpOmq8EoQxaiVpcTav+e
 NAY0w==
X-ME-Sender: <xms:pe_TaAIFXfWj7vAyCpZI9gEOjyaINeSHgy99GlnoO0vIOzrLswp9yA>
 <xme:pe_TaOE2zYzTD_T7-duQE0Zv-qa9VhRd74P2N-At2Vk0dyKco0NEGsV5nz2K0dwzA
 ChhjLFt6eegCPp3pr55LmPv6qfplvGTd3UeEqsa-_X1C2CEB6q04-k>
X-ME-Received: <xmr:pe_TaIQB4fEr62Y4gzPKa8f5U0gAWSnMi5JaufcJcp_fuPArFBIg3U1CrdoyRKYXFwS6pntY2eXnz1fMUno-OdwbMziA5XQ-f6TSK8xhSwQCXg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeifeejudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:pe_TaKEocp9ceqDFfhIx6huwMZJOZi5uE7P_lmAE_5CC_KTuodlNcQ>
 <xmx:pe_TaE-lHGLGRLgdasipfmVYqpetmN6saLQTSPbpliQK5jJs0b1QvQ>
 <xmx:pe_TaEJUXRuH-THkd3WsICOq8GpaHFK_FGwffBnNj04jGGsb1FaZ2g>
 <xmx:pe_TaHY0xp1vRuQWMfnPTHBqGmSXIyM0oewvj5W_UEqC9q1UxIyGRg>
 <xmx:pe_TaC9ruU7ggltGTnGeScIaSBpf3Y04Hr8DwJYMuwjJTOkCL5ujwRxH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Sep 2025 09:18:28 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 2/2] Revert "firewire: core: disable bus management work
 temporarily during updating topology"
Date: Wed, 24 Sep 2025 22:18:23 +0900
Message-ID: <20250924131823.262136-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250924131823.262136-1-o-takashi@sakamocchi.jp>
References: <20250924131823.262136-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v1POF-0003Lv-Bt
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
