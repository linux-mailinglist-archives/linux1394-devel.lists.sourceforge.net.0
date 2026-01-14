Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0331D1F063
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Jan 2026 14:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3KPWoH1tRmNQFDv3PWylpqXqoVNfD1ieyyH3EcozjZ4=; b=TPLh+a75JP0tEP4kv0OCsJili6
	nIAWQjbodkMO8aoM9micqvLZUbsyGhS3GNlR9cvuNDbNbxvZQI+B7tSxM3WgrgIcLGTUHxFbFwN8K
	ZykRnnTrgeAY6zsPlStxou8SrTBvbI2LEeVKXYkaEuqyqbTVTv3VrL+Jh+0yVeTd3nh4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vg0km-0005on-PR;
	Wed, 14 Jan 2026 13:17:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vg0kk-0005oU-OS
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Jan 2026 13:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IpASM2p6E0rzakcqtdz79OURDdED2p0UzZCg5lKRIeg=; b=KuM21u9prIEViDcCxrGUqjPKhI
 xgMZchHBGBECN1QaEGcX4RbeG5OkM3MQxhngRxKOCc1ntgQZ8/m62b/anONo/FygBJ4sARMDZf/nb
 GGNTB1EsEg5bCocnd3jfW7cPS1Bz/+tHmA0SQ3lEVwo4bIZVNGsxTr20pJ7/HJODoOiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IpASM2p6E0rzakcqtdz79OURDdED2p0UzZCg5lKRIeg=; b=E
 McH/v9xTTOYpLI/13gVlTEB2/LqpGmTldb6GbtmtsJ5mc4A3hEILb85ENapYHYJu3XLCblsDZbPFI
 F4Lc9CnifxzF7BjigCUTAWMpbwzOf8DRSEJH6Usk4s/9HRPdOHsLXED/N56MettunslMBS8Zdi1QX
 NcXr3wOo8d8YM04o=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vg0kk-0006Bk-6s for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Jan 2026 13:17:39 +0000
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 8E62F7A0088;
 Wed, 14 Jan 2026 08:17:32 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Wed, 14 Jan 2026 08:17:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1768396652; x=1768483052; bh=IpASM2p6E0
 rzakcqtdz79OURDdED2p0UzZCg5lKRIeg=; b=pBCqGR2zoYxnBBN8Ts4I6T9BaO
 x61+TkY6ycx7/AgpTBfadMkEfphft7FGzaRaDPqvZQnMOvtv0IyioFSejFaGa2UT
 6zO32USTk08kCvlCYQLf2LvdMfRvxST27UoOFowNAU++wbF3H/SfGthVwgGGVu0f
 AH/ZYOAQbIiuSACgOQVz18iaRJTqgIZfsQUaP2o8e0EhSPkcXb4IKWZ05cM3DkZO
 b0O8RFqolUXv+g1inez5qdHW5cK/jGaURG5+PDn6TrDVYcInGnFA6Tr0iOaiYwNs
 3eRof+LLSs4xPJPJBC8eJS0jRk92IXwfSit6D/yAmApIeqmpIYPVK7Lw56hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768396652; x=1768483052; bh=IpASM2p6E0rzakcqtdz79OURDdED2p0UzZC
 g5lKRIeg=; b=NNlheITc/WFBe6p/sxIBe5/inRVJMP4tXBCIiVknqnOvR3kOJ+l
 ie/nfXlE8mDUyiZUJG0VS78KZsQOgYV8i2n7OrY+K/LQIqjGU+ilRFXBxm4YWvNg
 NDoNHcZ5LLcJdbcV3QSJFLXfe94Tssdjcr+WmvJ9FtX00GpLmJ61yjweuQ0AE5au
 B/8yu8VI8KOMLGGN9YnEaIvcC/KWU0LhtUeNAPPxouAS34gg6KRpx8JxOuGpjgNw
 2pLzgH1vBKhjAQXs27ZgN8RdyizWoEQ/Ik8+l9fQGa2iBZGCigU/BniWB4CUkYYh
 j/c954xDEMCZ0n1lGufdewIYyKYnJJjS0hg==
X-ME-Sender: <xms:bJdnaQBTgDmPwAy4b5jPrWz0A_kjpPTM46zteyyEsxBQSZ1YMfu_XQ>
 <xme:bJdnaQegD3IGt0uTiHLtLMc1olPJhBs0qG4xDxUN-tuNbyMFVIo5mWZkSrCUIQKER
 6DBDeomM97hxNjUpkDbEPC54qzyj6soeJQfK2O48C_FJUr6phxJFg>
X-ME-Received: <xmr:bJdnabLqpxz4ni19F41dB-M60T0WEwaKe7v7DMoy60UAjSxWpgeO18gp6nLLfhNbC4rXTntqMAsTNOopC88i1eqpjb3ih8sl0v6MCo7PLpqT3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdefvdekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:bJdnaTfFCmbkAmKcrsSnO-IQJyIbyj0rmp_RvOO6cKA4aFAYDpbCPQ>
 <xmx:bJdnaS0VDnwwvTF460Mm3NY_vUqqCUkbPb2MbonLik8FRyFTmPVWiA>
 <xmx:bJdnachpU7ZxzB9n6-3sRcGHBesrMAgsFmKSpbbZijZ1t9WhA3yhkg>
 <xmx:bJdnaYTCa7uDwOMXfDyw4uiU5EqLCMHcYvhTPrHY85doNtBB2C9tOA>
 <xmx:bJdnaZ0jWRFsEopXS6_NBtPBITwpRIEdU1vnWbdAuDdBTQyW8Syy-FB7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Jan 2026 08:17:31 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: fix index of pages for dma address to 1394
 OHCI IT context
Date: Wed, 14 Jan 2026 22:17:29 +0900
Message-ID: <20260114131729.16133-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The index of pages for dma address was changed wrongly. This
 commit corrents it. Fixes: ef6bdffbb88d ("firewire: core: stop using page
 private to store DMA mapping address") Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 2 +- 1 file changed [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vg0kk-0006Bk-6s
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

The index of pages for dma address was changed wrongly. This commit
corrents it.

Fixes: ef6bdffbb88d ("firewire: core: stop using page private to store DMA mapping address")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index a43fe680d508..339047a2e768 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3272,7 +3272,7 @@ static int queue_iso_transmit(struct iso_context *ctx,
 			min(next_page_index, payload_end_index) - payload_index;
 		pd[i].req_count    = cpu_to_le16(length);
 
-		dma_addr_t dma_addr = buffer->dma_addrs[i];
+		dma_addr_t dma_addr = buffer->dma_addrs[page];
 		pd[i].data_address = cpu_to_le32(dma_addr + offset);
 
 		dma_sync_single_range_for_device(ctx->context.ohci->card.device,

base-commit: 993ab48006b3016cdd3f2b33905e8e167f955495
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
