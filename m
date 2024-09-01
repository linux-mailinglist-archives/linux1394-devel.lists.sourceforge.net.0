Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 611B7967602
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:07:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiQ8-0000CR-N3;
	Sun, 01 Sep 2024 11:07:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiQ7-0000CA-0y
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=ele0xfEEHNahDJs0Q86usFRpa/
 E3NdJvqPT7KhVpPs1z9HDu1oy0VkqDduRI3mgP7JIS318yQ/OdnmRIWAo+MPt4dFsZeGYyMdLHeWq
 mwYA3wlHucD9ghyt/+NehCTWLMBE65+FQZDN9/SWkhNlZgve6yIkh/I5y684HcgNN/0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=Vs4fEkMJYm9w5vwiUi5ipaGDGm
 h95ApdK5qaCUhYXi9MSvyvMxBgbJD6T5Im1KPF3M4655NFmi30chK7h+TgTyEwugEgFfLxiqLxy2h
 EzDoYC4Iqqpy2ka0V6GkNYUNr/sPISwUAKABuq6qs5AcupiUiKys9cj8Mr5GPk/1RmGM=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiQ6-0006KN-9J for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:06:58 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B77A4114029C;
 Sun,  1 Sep 2024 07:06:52 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 01 Sep 2024 07:06:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725188812; x=
 1725275212; bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=o
 yb1ROk0bIMbFec7WLubjdPTHvALfa27/ZeEiI0/uHEAoKPQ5fujDz7SRdKDJci9V
 MW3IDQY8ejycn54QvSiHqvPxSdTCKPy9n1mPyPsmlKFfOjcG9ZwVl0GN0dNaMDNe
 nInn3jzDTd+kU45y29TkKMgm4VzGaZTbBxCTdOMjHPlFIRfWpzBZZsrHUwLM9PXS
 7JhQOJ2l2qhtduZVg0qbATw61+UzXCGvCRKzyAhz+iv7SXF+EbRwYS68ZnxIdIXi
 cRtTcb41oZ9it2fqWd2bnPjmS0s+ifSChRm7cRV2qSC3MCAmA5EIZVH/J6C8b1xn
 iigpW5CczcNMrr3K83ZCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725188812; x=
 1725275212; bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=m
 Gm22hSHYDHAAsFSqhPDKkpPMKmMhBOdQFArBdaU2ZCAIGh9NRAjTmwDrcLbdIdd1
 Nge8vZgEbBrzx0n/8rXvSw+4Zd8teXv2wBK4CvDTbpjEwaYtL6LQBaPvDpEy1FQb
 2uxfd7iZLmBJ+hbC+JYJGA8fhD/TtnH4cf4prKhfGM8iHvlTlL9Yw0is3gvLRppT
 xeW5GsG5uBCdw6l4Im0hjaT8DE81gkxjfIM2drD8tzM8BDmeClKaorNBVkmAe9IZ
 80oabxzRYZ9LlWsr+39eEI1vesV6FkAxg0utne3Bfz/HXsR8hCoOPsV5CBczlBJ2
 E20PVjsT+bGtjROaCKNRA==
X-ME-Sender: <xms:zErUZtWpT6MxjE_T-0pDuoGeNQ0sDl0vYhRxcb4yK4t-UO2ZVeYhkg>
 <xme:zErUZtnJ0qk5WydvK4Vbf7LHRTDpRxI50OmroKUmFcG9GUg4Cfqq_iuAgMRQFjh7M
 x8g_81pYvbFRetgQpY>
X-ME-Received: <xmr:zErUZpY_hekDMRAJCQktWz3QyNsKMcg8QxxPhXcWWfmPvD2BOkFa7ORMYBZeJVNrGVb-L__HdnuhGKV9eFbJTgqBUwyH_yhZoGSh2HD3uHc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeej
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrphgr
 ihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtohepvggumhhunh
 gurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhig
 qdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvg
 hvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:zErUZgVDCBxTPb0N8GIkMy5ulGf1y_NorL6o-5oUmpVsd3k351SelQ>
 <xmx:zErUZnnLmraRqXlbfLvoIa7J06mMAYCgYS4Ml2t0RTXWm23rHbTsVA>
 <xmx:zErUZtf0KdUQdvGLZLvV0TmQpgnFxhy-O_T1SxFsLcRDOhi8y3KLSg>
 <xmx:zErUZhH7pw-Ix7SihWS5NYtixossIvOChETUHrR7Nyy7-WkuawKzHA>
 <xmx:zErUZlV81ozcQLjTcy7TZNDXtNdPbN938EfumRwtsZaXHoD_sYRlDKZP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 07:06:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 2/5] firewire: core: add local API for work items
 scheduled to workqueue specific to isochronous contexts
Date: Sun,  1 Sep 2024 20:06:39 +0900
Message-ID: <20240901110642.154523-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
References: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the previous commit,
 the workqueue is added per the instance
 of fw_card structure for isochronous contexts. The workqueue is designed
 to be used by the implementation of fw_card_driver structure un [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiQ6-0006KN-9J
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
Cc: edmund.raile@protonmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the previous commit, the workqueue is added per the instance of fw_card
structure for isochronous contexts. The workqueue is designed to be used by
the implementation of fw_card_driver structure underlying the fw_card.

This commit adds some local APIs to be used by the implementation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 22 ++++++++++++++++++++--
 drivers/firewire/core.h     | 10 ++++++++++
 include/linux/firewire.h    |  1 +
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 101433b8bb51..124579a9c657 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -211,21 +211,39 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
 
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
+	int err;
+
 	trace_isoc_outbound_flush_completions(ctx);
 	trace_isoc_inbound_single_flush_completions(ctx);
 	trace_isoc_inbound_multiple_flush_completions(ctx);
 
-	return ctx->card->driver->flush_iso_completions(ctx);
+	might_sleep();
+
+	disable_work_sync(&ctx->work);
+
+	err = ctx->card->driver->flush_iso_completions(ctx);
+
+	enable_work(&ctx->work);
+
+	return err;
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
 int fw_iso_context_stop(struct fw_iso_context *ctx)
 {
+	int err;
+
 	trace_isoc_outbound_stop(ctx);
 	trace_isoc_inbound_single_stop(ctx);
 	trace_isoc_inbound_multiple_stop(ctx);
 
-	return ctx->card->driver->stop_iso(ctx);
+	might_sleep();
+
+	err = ctx->card->driver->stop_iso(ctx);
+
+	cancel_work_sync(&ctx->work);
+
+	return err;
 }
 EXPORT_SYMBOL(fw_iso_context_stop);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 96ae366889e0..1b78d66a88a0 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -159,6 +159,16 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
 
+static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
+{
+	INIT_WORK(&ctx->work, func);
+}
+
+static inline void fw_iso_context_schedule_work(struct fw_iso_context *ctx)
+{
+	queue_work(ctx->card->isoc_wq, &ctx->work);
+}
+
 
 /* -topology */
 
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 10e135d60824..72f497b61739 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -511,6 +511,7 @@ union fw_iso_callback {
 
 struct fw_iso_context {
 	struct fw_card *card;
+	struct work_struct work;
 	int type;
 	int channel;
 	int speed;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
